@interface MFCertificateTrustInfo
- (MFCertificateTrustInfo)initWithCertificateType:(unint64_t)type trust:(__SecTrust *)trust sender:(id)sender;
- (NSString)commonName;
- (NSString)emailAddress;
- (unint64_t)keychainStatus;
- (void)dealloc;
- (void)keychainStatus;
- (void)removeCertificateFromKeychain;
- (void)saveCertificateToKeychain;
@end

@implementation MFCertificateTrustInfo

- (MFCertificateTrustInfo)initWithCertificateType:(unint64_t)type trust:(__SecTrust *)trust sender:(id)sender
{
  senderCopy = sender;
  v16.receiver = self;
  v16.super_class = MFCertificateTrustInfo;
  v9 = [(MFCertificateTrustInfo *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_certificateType = type;
    v9->_trust = CFRetain(trust);
    v11 = [senderCopy copy];
    sender = v10->_sender;
    v10->_sender = v11;

    mf_copyUncommentedAddress = [senderCopy mf_copyUncommentedAddress];
    uncommentedSender = v10->_uncommentedSender;
    v10->_uncommentedSender = mf_copyUncommentedAddress;
  }

  return v10;
}

- (void)dealloc
{
  CFRelease(self->_trust);
  v3.receiver = self;
  v3.super_class = MFCertificateTrustInfo;
  [(MFCertificateTrustInfo *)&v3 dealloc];
}

- (NSString)commonName
{
  [(MFCertificateTrustInfo *)self certificate];
  v2 = SecCertificateCopyCommonNames();
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)emailAddress
{
  [(MFCertificateTrustInfo *)self certificate];
  v2 = SecCertificateCopyRFC822Names();
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)keychainStatus
{
  if (self->_certificateType != 1)
  {
    return 0;
  }

  p_sender = &self->_sender;
  sender = self->_sender;
  v11 = 0;
  v5 = [MFMessageKeychainManager copyEncryptionCertificateForAddress:sender error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    if (CFEqual([(MFCertificateTrustInfo *)self certificate], v5))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    CFRelease(v5);
  }

  else
  {
    if (v6)
    {
      v9 = vm_imap_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MFCertificateTrustInfo *)p_sender keychainStatus];
      }
    }

    v8 = 0;
  }

  return v8;
}

- (void)saveCertificateToKeychain
{
  if (self->_certificateType == 1)
  {
    v2 = [MFMessageKeychainManager saveEncryptionCertificate:[(MFCertificateTrustInfo *)self certificate] forAddress:self->_sender];
  }
}

- (void)removeCertificateFromKeychain
{
  if (self->_certificateType == 1)
  {
    v4 = [MFMessageKeychainManager saveEncryptionCertificate:0 forAddress:self->_sender, v2, v3];
  }
}

- (void)keychainStatus
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *self;
  vf_publicDescription = [a2 vf_publicDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2114;
  v10 = vf_publicDescription;
  _os_log_error_impl(&dword_2720B1000, a3, OS_LOG_TYPE_ERROR, "#SMIMEErrors Error when retrieving encryption certificate for %@: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end