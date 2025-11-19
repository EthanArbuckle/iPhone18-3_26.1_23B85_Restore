@interface MFSecureMIMECompositionManager
+ (BOOL)isRevokedCertificate:(__SecCertificate *)a3 sendingAddress:(id)a4;
+ (__SecIdentity)copyEncryptionIdentityForAccount:(id)a3 sendingAddress:(id)a4 error:(id *)a5;
+ (__SecIdentity)copySigningIdentityForAccount:(id)a3 sendingAddress:(id)a4 error:(id *)a5;
+ (id)copyEncryptionCertificatesForAccount:(id)a3 recipientAddress:(id)a4 error:(id *)a5;
- (BOOL)_nts_copyEncryptionIdentity:(__SecIdentity *)a3 error:(id *)a4 certificatesByRecipient:(id *)a5 errorsByRecipient:(id *)a6;
- (BOOL)_nts_copySigningIdentity:(__SecIdentity *)a3 error:(id *)a4;
- (BOOL)_shouldAllowSend_nts;
- (BOOL)_updateEncryptionStatus_nts;
- (BOOL)_updateSigningStatus_nts;
- (BOOL)shouldAllowSend;
- (MFSecureMIMECompositionManager)initWithSendingAccount:(id)a3 signingPolicy:(int)a4 encryptionPolicy:(int)a5;
- (MFSecureMIMECompositionManagerDelegate)delegate;
- (NSSet)recipients;
- (NSString)sendingAddress;
- (id)compositionSpecification;
- (int)encryptionStatus;
- (int)signingStatus;
- (void)_determineEncryptionStatusWithNewRecipients:(id)a3;
- (void)_determineEncryptionStatusWithSendingAddress:(id)a3;
- (void)_determineIdentitiesWithSendingAddress:(id)a3 forSigning:(BOOL)a4 encryption:(BOOL)a5;
- (void)_determineRevocationStatusWithIdentity:(__SecIdentity *)a3 sendingAddress:(id)a4;
- (void)_determineSigningStatusWithSendingAddress:(id)a3;
- (void)_nts_setEncryptionIdentity:(__SecIdentity *)a3 error:(id)a4;
- (void)_nts_setSigningIdentity:(__SecIdentity *)a3 error:(id)a4;
- (void)addRecipients:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeRecipients:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSendingAddress:(id)a3;
@end

@implementation MFSecureMIMECompositionManager

- (MFSecureMIMECompositionManager)initWithSendingAccount:(id)a3 signingPolicy:(int)a4 encryptionPolicy:(int)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = MFSecureMIMECompositionManager;
  v10 = [(MFSecureMIMECompositionManager *)&v16 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MFSecureMIMECompositionManager_lock" andDelegate:0];
    lock = v10->_lock;
    v10->_lock = v11;

    v13 = dispatch_queue_create("com.apple.mobilemail.MFSecureMIMECompositionManagerQueue", 0);
    queue = v10->_queue;
    v10->_queue = v13;

    objc_storeStrong(&v10->_sendingAccount, a3);
    v10->_signingPolicy = a4;
    v10->_encryptionPolicy = a5;
    [(MFSecureMIMECompositionManager *)v10 _updateSigningStatus_nts];
    [(MFSecureMIMECompositionManager *)v10 _updateEncryptionStatus_nts];
  }

  return v10;
}

- (void)dealloc
{
  signingIdentity = self->_signingIdentity;
  if (signingIdentity)
  {
    CFRelease(signingIdentity);
  }

  encryptionIdentity = self->_encryptionIdentity;
  if (encryptionIdentity)
  {
    CFRelease(encryptionIdentity);
  }

  v5.receiver = self;
  v5.super_class = MFSecureMIMECompositionManager;
  [(MFSecureMIMECompositionManager *)&v5 dealloc];
}

- (void)addRecipients:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 copy];
    [(NSLock *)self->_lock lock];
    if (self->_invalidated)
    {
      [(NSLock *)self->_lock unlock];
    }

    else
    {
      recipients = self->_recipients;
      if (!recipients)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v8 = self->_recipients;
        self->_recipients = v7;

        recipients = self->_recipients;
      }

      [(NSMutableSet *)recipients unionSet:v5];
      encryptionPolicy = self->_encryptionPolicy;
      if (encryptionPolicy)
      {
        ++self->_encryptionStatusSemaphore;
      }

      v10 = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
      encryptionStatus = self->_encryptionStatus;
      [(NSLock *)self->_lock unlock];
      if (v10)
      {
        [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:0 errorsByRecipient:0 identity:0 error:0];
      }

      if (encryptionPolicy)
      {
        queue = self->_queue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __48__MFSecureMIMECompositionManager_addRecipients___block_invoke;
        v13[3] = &unk_279E346E0;
        v13[4] = self;
        v14 = v5;
        dispatch_async(queue, v13);
      }
    }
  }
}

- (void)removeRecipients:(id)a3
{
  v15 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_invalidated)
  {
    [(NSLock *)self->_lock unlock];
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_24;
  }

  v7 = [v15 allObjects];
  v8 = [(NSMutableDictionary *)self->_errorsByRecipient count];
  v9 = [(NSMutableDictionary *)self->_certificatesByRecipient count];
  [(NSMutableSet *)self->_recipients minusSet:v15];
  [(NSMutableDictionary *)self->_errorsByRecipient removeObjectsForKeys:v7];
  [(NSMutableDictionary *)self->_certificatesByRecipient removeObjectsForKeys:v7];
  if (!self->_encryptionStatusSemaphore)
  {
    if ([(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts]|| [(NSMutableDictionary *)self->_certificatesByRecipient count]!= v9)
    {
      encryptionStatus = self->_encryptionStatus;
    }

    else
    {
      v13 = [(NSMutableDictionary *)self->_errorsByRecipient count];
      encryptionStatus = self->_encryptionStatus;
      if (v13 == v8)
      {
        v10 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v11 = 0;
        goto LABEL_20;
      }
    }

    if ([(NSMutableDictionary *)self->_errorsByRecipient count])
    {
      v6 = [(NSMutableDictionary *)self->_errorsByRecipient copy];
    }

    else
    {
      v6 = 0;
    }

    if ([(NSMutableDictionary *)self->_certificatesByRecipient count])
    {
      v5 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
    }

    else
    {
      v5 = 0;
    }

    encryptionIdentity = self->_encryptionIdentity;
    if (encryptionIdentity)
    {
      v10 = CFRetain(encryptionIdentity);
      v4 = 0;
    }

    else
    {
      v4 = self->_encryptionIdentityError;
      v10 = 0;
    }

    v11 = 1;
    goto LABEL_20;
  }

  v10 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v11 = 0;
  encryptionStatus = 1;
LABEL_20:

  [(NSLock *)self->_lock unlock];
  if (v11)
  {
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v5 errorsByRecipient:v6 identity:v10 error:v4];
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_24:
}

- (void)invalidate
{
  [(NSLock *)self->_lock lock];
  delegate = self->_delegate;
  self->_delegate = 0;

  self->_invalidated = 1;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  delegate = self->_delegate;
  self->_delegate = v4;
  v6 = v4;

  [(NSLock *)self->_lock unlock];
}

- (MFSecureMIMECompositionManagerDelegate)delegate
{
  [(NSLock *)self->_lock lock];
  v3 = self->_delegate;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setSendingAddress:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  if (!self->_invalidated && ![(NSString *)self->_sendingAddress isEqualToString:v4])
  {
    v7 = [v4 copy];
    sendingAddress = self->_sendingAddress;
    self->_sendingAddress = v7;

    if (self->_signingPolicy && self->_sendingAddress)
    {
      ++self->_signingStatusSemaphore;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    v10 = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
    if (self->_encryptionPolicy && self->_sendingAddress)
    {
      ++self->_encryptionStatusSemaphore;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    signingStatus = self->_signingStatus;
    v12 = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
    encryptionStatus = self->_encryptionStatus;
    [(NSLock *)self->_lock unlock];
    if (v10)
    {
      [(MFSecureMIMECompositionManager *)self _notifyDelegateSigningStatusDidChange:signingStatus identity:0 error:0];
      if (!v12)
      {
        goto LABEL_4;
      }
    }

    else if (!v12)
    {
      goto LABEL_4;
    }

    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:0 errorsByRecipient:0 identity:0 error:0];
    goto LABEL_4;
  }

  [(NSLock *)self->_lock unlock];
  v5 = 0;
  v6 = 0;
  v7 = 0;
LABEL_4:
  if ((v5 & 1) != 0 || v6)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__MFSecureMIMECompositionManager_setSendingAddress___block_invoke;
    v14[3] = &unk_279E35028;
    v14[4] = self;
    v15 = v7;
    v17 = v5;
    v18 = v6;
    v16 = v4;
    dispatch_async(queue, v14);
  }
}

uint64_t __52__MFSecureMIMECompositionManager_setSendingAddress___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineIdentitiesWithSendingAddress:*(a1 + 40) forSigning:*(a1 + 56) encryption:1];
  if (*(a1 + 56) == 1)
  {
    result = [*(a1 + 32) _determineSigningStatusWithSendingAddress:*(a1 + 40)];
  }

  if (*(a1 + 57) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);

    return [v3 _determineEncryptionStatusWithSendingAddress:v4];
  }

  return result;
}

- (NSString)sendingAddress
{
  [(NSLock *)self->_lock lock];
  v3 = self->_sendingAddress;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)_determineIdentitiesWithSendingAddress:(id)a3 forSigning:(BOOL)a4 encryption:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    v9 = objc_opt_class();
    sendingAccount = self->_sendingAccount;
    v18 = 0;
    v11 = [v9 copySigningIdentityForAccount:sendingAccount sendingAddress:v8 error:&v18];
    v12 = v18;
    if (!v5)
    {
LABEL_3:
      v13 = 0;
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v15 = objc_opt_class();
  v16 = self->_sendingAccount;
  v17 = 0;
  v14 = [v15 copyEncryptionIdentityForAccount:v16 sendingAddress:v8 error:&v17];
  v13 = v17;
LABEL_6:
  [(NSLock *)self->_lock lock];
  if (!self->_invalidated)
  {
    if (v6)
    {
      [(MFSecureMIMECompositionManager *)self _nts_setSigningIdentity:v11 error:v12];
    }

    if (v5)
    {
      [(MFSecureMIMECompositionManager *)self _nts_setEncryptionIdentity:v14 error:v13];
    }
  }

  [(NSLock *)self->_lock unlock];
  if (v11)
  {
    CFRelease(v11);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

- (void)_determineRevocationStatusWithIdentity:(__SecIdentity *)a3 sendingAddress:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  certificateRef = 0;
  SecIdentityCopyCertificate(a3, &certificateRef);
  if (!certificateRef)
  {
    v7 = vm_imap_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors SecIdentityCopyCertificate could not find certificate for %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if ([objc_opt_class() isRevokedCertificate:certificateRef sendingAddress:v6])
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:0];
    [(NSLock *)self->_lock lock];
    if (!self->_signingStatusSemaphore && (signingIdentity = self->_signingIdentity) != 0 && CFEqual(a3, signingIdentity))
    {
      [(MFSecureMIMECompositionManager *)self _nts_setSigningIdentity:0 error:v7];
      v10 = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
      signingStatus = self->_signingStatus;
      [(NSLock *)self->_lock unlock];
      if (v10)
      {
        queue = self->_queue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __88__MFSecureMIMECompositionManager__determineRevocationStatusWithIdentity_sendingAddress___block_invoke;
        v13[3] = &unk_279E35050;
        v13[4] = self;
        v15 = signingStatus;
        v7 = v7;
        v14 = v7;
        dispatch_async(queue, v13);
      }
    }

    else
    {
      [(NSLock *)self->_lock unlock];
    }

LABEL_7:
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_determineSigningStatusWithSendingAddress:(id)a3
{
  v4 = a3;
  v15 = 0;
  [(NSLock *)self->_lock lock];
  signingStatusSemaphore = self->_signingStatusSemaphore;
  if (!signingStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineSigningStatusWithSendingAddress:];
  }

  self->_signingStatusSemaphore = signingStatusSemaphore - 1;
  if (self->_invalidated)
  {
    v6 = 0;
LABEL_5:
    [(NSLock *)self->_lock unlock];
    goto LABEL_6;
  }

  v14 = 0;
  [(MFSecureMIMECompositionManager *)self _nts_copySigningIdentity:&v15 error:&v14];
  v6 = v14;
  if (self->_signingStatusSemaphore)
  {
    goto LABEL_5;
  }

  v7 = v15;
  if (v15)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__MFSecureMIMECompositionManager__determineSigningStatusWithSendingAddress___block_invoke;
    block[3] = &unk_279E35078;
    block[4] = self;
    v13 = v7;
    v12 = v4;
    dispatch_async(v8, block);
  }

  v9 = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
  signingStatus = self->_signingStatus;
  [(NSLock *)self->_lock unlock];
  if (v9)
  {
    [(MFSecureMIMECompositionManager *)self _notifyDelegateSigningStatusDidChange:signingStatus identity:v15 error:v6];
  }

LABEL_6:
  if (v15)
  {
    CFRelease(v15);
  }
}

- (BOOL)_updateSigningStatus_nts
{
  signingStatus = self->_signingStatus;
  if (self->_signingPolicy)
  {
    if (self->_signingStatusSemaphore)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (self->_signingIdentity == 0);
    }
  }

  else
  {
    v3 = 2;
  }

  self->_signingStatus = v3;
  return signingStatus != v3;
}

- (void)_nts_setSigningIdentity:(__SecIdentity *)a3 error:(id)a4
{
  v7 = a4;
  signingIdentity = self->_signingIdentity;
  v11 = v7;
  if (signingIdentity != a3)
  {
    if (signingIdentity)
    {
      CFRelease(signingIdentity);
    }

    if (a3)
    {
      signingIdentity = CFRetain(a3);
    }

    else
    {
      signingIdentity = 0;
    }

    v7 = v11;
    self->_signingIdentity = signingIdentity;
  }

  signingIdentityError = self->_signingIdentityError;
  p_signingIdentityError = &self->_signingIdentityError;
  if (signingIdentityError != v7)
  {
    objc_storeStrong(p_signingIdentityError, a4);
    v7 = v11;
  }

  MEMORY[0x2821F96F8](signingIdentity, v7);
}

- (BOOL)_nts_copySigningIdentity:(__SecIdentity *)a3 error:(id *)a4
{
  if (a3)
  {
    signingIdentity = self->_signingIdentity;
    if (signingIdentity)
    {
      signingIdentity = CFRetain(signingIdentity);
    }

    *a3 = signingIdentity;
  }

  if (!a4)
  {
    return 0;
  }

  v8 = self->_signingIdentityError;
  *a4 = v8;
  return v8 != 0;
}

- (int)signingStatus
{
  [(NSLock *)self->_lock lock];
  signingStatus = self->_signingStatus;
  [(NSLock *)self->_lock unlock];
  return signingStatus;
}

- (void)_determineEncryptionStatusWithSendingAddress:(id)a3
{
  v4 = a3;
  cf = 0;
  [(NSLock *)self->_lock lock];
  encryptionStatusSemaphore = self->_encryptionStatusSemaphore;
  if (!encryptionStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineEncryptionStatusWithSendingAddress:];
  }

  v6 = encryptionStatusSemaphore - 1;
  self->_encryptionStatusSemaphore = v6;
  if (v6 || self->_invalidated || ![(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts])
  {
    [(NSLock *)self->_lock unlock];
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  else
  {
    encryptionStatus = self->_encryptionStatus;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    [(MFSecureMIMECompositionManager *)self _nts_copyEncryptionIdentity:&cf error:&v13 certificatesByRecipient:&v12 errorsByRecipient:&v11];
    v8 = v13;
    v9 = v12;
    v10 = v11;
    [(NSLock *)self->_lock unlock];
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v9 errorsByRecipient:v10 identity:cf error:v8];
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_determineEncryptionStatusWithNewRecipients:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  cf = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        v13 = objc_opt_class();
        sendingAccount = self->_sendingAccount;
        v49 = 0;
        v15 = [v13 copyEncryptionCertificatesForAccount:sendingAccount recipientAddress:v12 error:&v49];
        v16 = v49;
        v17 = v16;
        if (v15)
        {
          v18 = v5;
          v19 = v15;
        }

        else
        {
          if (!v16)
          {
            goto LABEL_11;
          }

          v18 = v6;
          v19 = v17;
        }

        [v18 setObject:v19 forKey:v12];
LABEL_11:
      }

      v9 = [v7 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v9);
  }

  [(NSLock *)self->_lock lock];
  encryptionStatusSemaphore = self->_encryptionStatusSemaphore;
  if (!encryptionStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineEncryptionStatusWithNewRecipients:];
  }

  self->_encryptionStatusSemaphore = encryptionStatusSemaphore - 1;
  if (self->_invalidated)
  {
    [(NSLock *)self->_lock unlock];
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v24 = [v7 mutableCopy];
    [v24 minusSet:self->_recipients];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v46;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v45 + 1) + 8 * j);
          [v5 removeObjectForKey:v30];
          [v6 removeObjectForKey:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v27);
    }

    errorsByRecipient = self->_errorsByRecipient;
    if (!errorsByRecipient)
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v33 = self->_errorsByRecipient;
      self->_errorsByRecipient = v32;

      errorsByRecipient = self->_errorsByRecipient;
    }

    [(NSMutableDictionary *)errorsByRecipient addEntriesFromDictionary:v6];
    certificatesByRecipient = self->_certificatesByRecipient;
    if (!certificatesByRecipient)
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v36 = self->_certificatesByRecipient;
      self->_certificatesByRecipient = v35;

      certificatesByRecipient = self->_certificatesByRecipient;
    }

    [(NSMutableDictionary *)certificatesByRecipient addEntriesFromDictionary:v5];
    if (self->_encryptionStatusSemaphore)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v37 = 0;
      encryptionStatus = 1;
    }

    else
    {
      v39 = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
      encryptionStatus = self->_encryptionStatus;
      if (v39)
      {
        v43 = 0;
        v44 = 0;
        v42 = 0;
        [(MFSecureMIMECompositionManager *)self _nts_copyEncryptionIdentity:&cf error:&v44 certificatesByRecipient:&v43 errorsByRecipient:&v42];
        v21 = v44;
        v22 = v43;
        v23 = v42;
        v37 = 1;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v37 = 0;
      }
    }

    [(NSLock *)self->_lock unlock];
    v40 = cf;
    if (v37)
    {
      [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v22 errorsByRecipient:v23 identity:cf error:v21];
      v40 = cf;
    }

    if (v40)
    {
      CFRelease(v40);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateEncryptionStatus_nts
{
  encryptionStatus = self->_encryptionStatus;
  if (!self->_encryptionPolicy)
  {
    goto LABEL_7;
  }

  if (!self->_encryptionStatusSemaphore)
  {
    if (self->_encryptionIdentity)
    {
      v5 = [(NSMutableSet *)self->_recipients count];
      if (v5 == [(NSMutableDictionary *)self->_certificatesByRecipient count])
      {
        v4 = 0;
        goto LABEL_8;
      }
    }

LABEL_7:
    v4 = 2;
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:
  self->_encryptionStatus = v4;
  return encryptionStatus != v4;
}

- (void)_nts_setEncryptionIdentity:(__SecIdentity *)a3 error:(id)a4
{
  v7 = a4;
  encryptionIdentity = self->_encryptionIdentity;
  v11 = v7;
  if (encryptionIdentity != a3)
  {
    if (encryptionIdentity)
    {
      CFRelease(encryptionIdentity);
    }

    if (a3)
    {
      encryptionIdentity = CFRetain(a3);
    }

    else
    {
      encryptionIdentity = 0;
    }

    v7 = v11;
    self->_encryptionIdentity = encryptionIdentity;
  }

  encryptionIdentityError = self->_encryptionIdentityError;
  p_encryptionIdentityError = &self->_encryptionIdentityError;
  if (encryptionIdentityError != v7)
  {
    objc_storeStrong(p_encryptionIdentityError, a4);
    v7 = v11;
  }

  MEMORY[0x2821F96F8](encryptionIdentity, v7);
}

- (BOOL)_nts_copyEncryptionIdentity:(__SecIdentity *)a3 error:(id *)a4 certificatesByRecipient:(id *)a5 errorsByRecipient:(id *)a6
{
  if (a3)
  {
    encryptionIdentity = self->_encryptionIdentity;
    if (encryptionIdentity)
    {
      encryptionIdentity = CFRetain(encryptionIdentity);
    }

    *a3 = encryptionIdentity;
  }

  if (a4)
  {
    *a4 = self->_encryptionIdentityError;
  }

  if (a5)
  {
    if (![(NSMutableDictionary *)self->_certificatesByRecipient count])
    {
      *a5 = 0;
      if (a6)
      {
        goto LABEL_11;
      }

LABEL_15:
      if (a4)
      {
        return *a4 != 0;
      }

      return 0;
    }

    v12 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
    *a5 = v12;
  }

  if (!a6)
  {
    goto LABEL_15;
  }

LABEL_11:
  if ([(NSMutableDictionary *)self->_errorsByRecipient count])
  {
    v13 = [(NSMutableDictionary *)self->_errorsByRecipient copy];
    *a6 = v13;

    if (!a4)
    {
      return 0;
    }

    return *a4 != 0;
  }

  *a6 = 0;
  if (a4)
  {
    return *a4 != 0;
  }

  return 0;
}

- (int)encryptionStatus
{
  [(NSLock *)self->_lock lock];
  encryptionStatus = self->_encryptionStatus;
  [(NSLock *)self->_lock unlock];
  return encryptionStatus;
}

- (NSSet)recipients
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableSet *)self->_recipients copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)compositionSpecification
{
  [(NSLock *)self->_lock lock];
  if (*&self->_encryptionStatusSemaphore == 0 && [(MFSecureMIMECompositionManager *)self _shouldAllowSend_nts])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = [(MFSecureMIMECompositionManager *)self _shouldSign_nts];
    v5 = [(MFSecureMIMECompositionManager *)self _shouldEncrypt_nts];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    [v3 setObject:v6 forKeyedSubscript:@"ShouldSign"];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    [v3 setObject:v7 forKeyedSubscript:@"ShouldEncrypt"];

    if (v4)
    {
      signingIdentity = self->_signingIdentity;
      if (!signingIdentity)
      {
        [MFSecureMIMECompositionManager compositionSpecification];
      }

      [v3 setObject:signingIdentity forKeyedSubscript:@"SigningIdentity"];
      encryptionIdentity = self->_encryptionIdentity;
      if (encryptionIdentity)
      {
        [v3 setObject:encryptionIdentity forKeyedSubscript:@"EncryptionIdentity"];
      }
    }

    if (v5)
    {
      v10 = self->_encryptionIdentity;
      if (!v10)
      {
        [MFSecureMIMECompositionManager compositionSpecification];
      }

      [v3 setObject:v10 forKeyedSubscript:@"EncryptionIdentity"];
      if ([(NSMutableDictionary *)self->_certificatesByRecipient count])
      {
        v11 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
        [v3 setObject:v11 forKeyedSubscript:@"RecipientCertificates"];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return v3;
}

- (BOOL)shouldAllowSend
{
  [(NSLock *)self->_lock lock];
  v3 = [(MFSecureMIMECompositionManager *)self _shouldAllowSend_nts];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (BOOL)_shouldAllowSend_nts
{
  if (self->_signingPolicy == 2 && self->_signingStatus)
  {
    return 0;
  }

  if (self->_encryptionPolicy == 2)
  {
    return self->_encryptionStatus == 0;
  }

  return 1;
}

+ (__SecIdentity)copySigningIdentityForAccount:(id)a3 sendingAddress:(id)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [a3 signingIdentityPersistentReferenceForAddress:v7];
  v16 = 0;
  v9 = [MFMessageKeychainManager copyIdentityForPersistentReference:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (a5 && !v9)
  {
    if (v10)
    {
      v17 = *MEMORY[0x277CCA7E8];
      v18[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"You can’t send signed messages because a signing identity for the address “%@” could not be found.  Go to the Advanced settings for this account to choose a signing identity.", v7];
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:v13 title:0 userInfo:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (__SecIdentity)copyEncryptionIdentityForAccount:(id)a3 sendingAddress:(id)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [a3 encryptionIdentityPersistentReferenceForAddress:v7];
  v16 = 0;
  v9 = [MFMessageKeychainManager copyIdentityForPersistentReference:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (a5 && !v9)
  {
    if (v10)
    {
      v17 = *MEMORY[0x277CCA7E8];
      v18[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"You can’t send encrypted messages because an encryption identity for the address “%@” could not be found.  Go to the Advanced settings for this account to choose an encryption identity.", v7];
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:v13 title:0 userInfo:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)copyEncryptionCertificatesForAccount:(id)a3 recipientAddress:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v40 = 0;
  v8 = [a3 copyDataForRemoteEncryptionCertificatesForAddress:v7 error:&v40];
  v9 = v40;
  if ([v8 count])
  {
    v33 = a5;
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = SecCertificateCreateWithData(0, v15);
          if (v16)
          {
            v17 = v16;
            v18 = checkCertificateExpiration(v16, v7);

            if (!v18)
            {
              [v34 addObject:v17];
            }

            CFRelease(v17);
            v9 = v18;
          }

          else
          {
            v19 = vm_imap_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = v15;
              _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors SecCertificateCreateWithData() failed for %@", buf, 0xCu);
            }

            v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:@"An error occurred while retrieving the encryption certificate." title:0 userInfo:0];

            v9 = v20;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v12);
    }

    v21 = v34;
    if ([v34 count])
    {
      v21 = v34;
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v8 = v32;
    a5 = v33;
  }

  else
  {
    v35 = 0;
    v23 = [MFMessageKeychainManager copyEncryptionCertificateForAddress:v7 error:&v35];
    v24 = v35;
    v21 = v24;
    if (v23)
    {
      v25 = checkCertificateExpiration(v23, v7);

      if (v25)
      {
        v22 = 0;
      }

      else
      {
        v22 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v23, 0}];
      }

      CFRelease(v23);
      v9 = v25;
    }

    else
    {
      if (!v9)
      {
        if (v24)
        {
          v41 = *MEMORY[0x277CCA7E8];
          v42 = v24;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v27 = @"An error occurred while searching for an encryption certificate for “%@” in your keychain.";
        }

        else
        {
          v26 = 0;
          v27 = @"You can’t send encrypted messages because an encryption certificate for the address “%@” could not be found.";
        }

        v28 = [MEMORY[0x277CCACA8] stringWithFormat:v27, v7];
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v28 title:@"Unable to Encrypt" userInfo:v26];
      }

      v22 = 0;
    }
  }

  if (a5 && !v22 && v9)
  {
    v29 = v9;
    *a5 = v9;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (BOOL)isRevokedCertificate:(__SecCertificate *)a3 sendingAddress:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = [[v5 alloc] initWithCapacity:2];
  v8 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v6];

  if (v8)
  {
    [v7 addObject:v8];
    CFRelease(v8);
  }

  Revocation = SecPolicyCreateRevocation(3uLL);
  if (Revocation)
  {
    v10 = Revocation;
    [v7 addObject:Revocation];
    CFRelease(v10);
  }

  trust = 0;
  v11 = SecTrustCreateWithCertificates(a3, v7, &trust);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = trust == 0;
  }

  if (v12)
  {
    v13 = vm_imap_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MFSecureMIMECompositionManager isRevokedCertificate:v11 sendingAddress:v13];
    }

    goto LABEL_17;
  }

  v14 = MEMORY[0x2743C2800]();
  CFRelease(trust);
  v15 = vm_imap_log();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MFSecureMIMECompositionManager isRevokedCertificate:v14 sendingAddress:v16];
    }

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = 0;
    _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors Revocation check succeeded (SecTrustResultType: %d)", buf, 8u);
  }

  v17 = 1;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (void)isRevokedCertificate:(int)a1 sendingAddress:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isRevokedCertificate:(int)a1 sendingAddress:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "#SMIMEErrors Revocation check failed with status %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end