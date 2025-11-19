@interface SFAppleIDIdentity
- (BOOL)certificateExpired;
- (BOOL)intermediateCertificateExpired;
- (BOOL)isDateInThePast:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentity:(id)a3;
- (BOOL)isInvalid;
- (BOOL)needsRenewal;
- (NSDate)certificateExpirationDate;
- (NSDate)intermediateCertificateExpirationDate;
- (NSString)intermediateCertificateSerialNumber;
- (SFAppleIDIdentity)initWithAppleID:(id)a3 altDSID:(id)a4;
- (SFAppleIDIdentity)initWithCoder:(id)a3;
- (SFAppleIDIdentity)initWithDictionary:(id)a3;
- (__SecCertificate)copyCertificateWithType:(int64_t)a3;
- (__SecIdentity)copyIdentity;
- (__SecKey)copyPrivateKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)verifyKeys;
- (uint64_t)isInvalid;
- (void)certificateExpired;
- (void)copyPrivateKey;
- (void)encodeWithCoder:(id)a3;
- (void)intermediateCertificateExpired;
- (void)isInvalid;
- (void)needsRenewal;
- (void)removeFromKeychain;
@end

@implementation SFAppleIDIdentity

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  accountIdentifier = self->_accountIdentifier;
  v17 = v4;
  if (accountIdentifier)
  {
    [v4 encodeObject:accountIdentifier forKey:@"AccountIdentifier"];
    v4 = v17;
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v17 encodeObject:altDSID forKey:@"AltDSID"];
    v4 = v17;
  }

  appleID = self->_appleID;
  if (appleID)
  {
    [v17 encodeObject:appleID forKey:@"AppleID"];
    v4 = v17;
  }

  certificateExpirationDate = self->_certificateExpirationDate;
  if (certificateExpirationDate)
  {
    [v17 encodeObject:certificateExpirationDate forKey:@"CertificateExpirationDate"];
    v4 = v17;
  }

  certificatePersistentReference = self->_certificatePersistentReference;
  if (certificatePersistentReference)
  {
    [v17 encodeObject:certificatePersistentReference forKey:@"CertificatePersistentReference"];
    v4 = v17;
  }

  intermediateCertificateExpirationDate = self->_intermediateCertificateExpirationDate;
  if (intermediateCertificateExpirationDate)
  {
    [v17 encodeObject:intermediateCertificateExpirationDate forKey:@"IntermediateCertificateExpirationDate"];
    v4 = v17;
  }

  intermediateCertificatePersistentReference = self->_intermediateCertificatePersistentReference;
  if (intermediateCertificatePersistentReference)
  {
    [v17 encodeObject:intermediateCertificatePersistentReference forKey:@"IntermediateCertificatePersistentReference"];
    v4 = v17;
  }

  lastValidationAttemptDate = self->_lastValidationAttemptDate;
  if (lastValidationAttemptDate)
  {
    [v17 encodeObject:lastValidationAttemptDate forKey:@"LastValidationAttemptDate"];
    v4 = v17;
  }

  lastValidationDate = self->_lastValidationDate;
  if (lastValidationDate)
  {
    [v17 encodeObject:lastValidationDate forKey:@"LastValidationDate"];
    v4 = v17;
  }

  if (self->_linkedToCurrentUser)
  {
    [v17 encodeBool:1 forKey:@"LinkedToCurrentUser"];
    v4 = v17;
  }

  modificationDate = self->_modificationDate;
  if (modificationDate)
  {
    [v17 encodeObject:modificationDate forKey:@"ModificationDate"];
    v4 = v17;
  }

  privateKeyPersistentReference = self->_privateKeyPersistentReference;
  if (privateKeyPersistentReference)
  {
    [v17 encodeObject:privateKeyPersistentReference forKey:@"PrivateKeyPersistentReference"];
    v4 = v17;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v17 encodeObject:serialNumber forKey:@"SerialNumber"];
    v4 = v17;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFAppleIDIdentity *)self isEqualToIdentity:v5];
  }

  return v6;
}

- (SFAppleIDIdentity)initWithAppleID:(id)a3 altDSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SFAppleIDIdentity;
  v9 = [(SFAppleIDIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_altDSID, a4);
    objc_storeStrong(&v10->_appleID, a3);
  }

  return v10;
}

- (SFAppleIDIdentity)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SFAppleIDIdentity;
  v5 = [(SFAppleIDIdentity *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"Expires"];
    certificateExpirationDate = v5->_certificateExpirationDate;
    v5->_certificateExpirationDate = v6;

    v8 = [v4 objectForKeyedSubscript:@"CertificateReference"];
    certificatePersistentReference = v5->_certificatePersistentReference;
    v5->_certificatePersistentReference = v8;

    v10 = [v4 objectForKeyedSubscript:@"encDsId"];
    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"encDsId"];
    }

    else
    {
      v11 = &stru_1F1D30528;
    }

    encDSID = v5->_encDSID;
    v5->_encDSID = &v11->isa;

    v13 = [v4 objectForKeyedSubscript:@"IntermediateCertificateReference"];
    intermediateCertificatePersistentReference = v5->_intermediateCertificatePersistentReference;
    v5->_intermediateCertificatePersistentReference = v13;

    v15 = [v4 objectForKeyedSubscript:@"LastValidationAttempt"];
    lastValidationAttemptDate = v5->_lastValidationAttemptDate;
    v5->_lastValidationAttemptDate = v15;

    v17 = [v4 objectForKeyedSubscript:@"LastSuccessfulValidation"];
    lastValidationDate = v5->_lastValidationDate;
    v5->_lastValidationDate = v17;

    v19 = [v4 objectForKeyedSubscript:@"ModificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v19;

    v21 = [v4 objectForKeyedSubscript:@"SerialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v21;

    v23 = [v4 objectForKeyedSubscript:@"CertificatePrivateKeyReference"];
    privateKeyPersistentReference = v5->_privateKeyPersistentReference;
    v5->_privateKeyPersistentReference = v23;
  }

  return v5;
}

- (id)description
{
  NSAppendPrintF();
  v34 = 0;
  accountIdentifier = self->_accountIdentifier;
  NSAppendPrintF();
  v3 = v34;

  altDSID = self->_altDSID;
  NSAppendPrintF();
  v4 = v3;

  appleID = self->_appleID;
  NSAppendPrintF();
  v5 = v4;

  v6 = [(SFAppleIDIdentity *)self certificateExpirationDate];
  NSAppendPrintF();
  v7 = v5;

  certificatePersistentReference = self->_certificatePersistentReference;
  NSAppendPrintF();
  v8 = v7;

  v26 = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];
  NSAppendPrintF();
  v9 = v8;

  v10 = [(SFAppleIDIdentity *)self intermediateCertificateSerialNumber];
  NSAppendPrintF();
  v11 = v9;

  intermediateCertificatePersistentReference = self->_intermediateCertificatePersistentReference;
  NSAppendPrintF();
  v12 = v11;

  lastValidationAttemptDate = self->_lastValidationAttemptDate;
  NSAppendPrintF();
  v13 = v12;

  lastValidationDate = self->_lastValidationDate;
  NSAppendPrintF();
  v14 = v13;

  modificationDate = self->_modificationDate;
  NSAppendPrintF();
  v15 = v14;

  if (self->_linkedToCurrentUser)
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  v31 = v16;
  NSAppendPrintF();
  v17 = v15;

  [(SFAppleIDIdentity *)self needsRenewal];
  NSAppendPrintF();
  v18 = v17;

  serialNumber = self->_serialNumber;
  NSAppendPrintF();
  v19 = v18;

  privateKeyPersistentReference = self->_privateKeyPersistentReference;
  NSAppendPrintF();
  v20 = v19;

  return v19;
}

- (__SecCertificate)copyCertificateWithType:(int64_t)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (a3 == 1)
  {
    v5 = [(SFAppleIDIdentity *)self intermediateCertificatePersistentReference];
  }

  else
  {
    if (a3)
    {
      if (gLogCategory_SFAppleIDIdentity > 60)
      {
        v8 = 0;
        v10 = 0;
        v6 = 0;
        goto LABEL_12;
      }

      if (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize())
      {
        [SFAppleIDIdentity copyCertificateWithType:];
      }

      goto LABEL_16;
    }

    v5 = [(SFAppleIDIdentity *)self certificatePersistentReference];
  }

  v6 = v5;
  if (!v5)
  {
LABEL_16:
    [(SFAppleIDIdentity *)a3 copyCertificateWithType:&v14, &v15];
    v6 = v14;
    v8 = v15;
    goto LABEL_17;
  }

  v7 = *MEMORY[0x1E697B3C8];
  v16[0] = *MEMORY[0x1E697AFF8];
  v16[1] = v7;
  v17[0] = *MEMORY[0x1E697B000];
  v17[1] = v5;
  v16[2] = *MEMORY[0x1E697B328];
  v17[2] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  if (SecItemCopyMatching(v8, &cf))
  {
    if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDIdentity copyCertificateWithType:];
    }

    goto LABEL_17;
  }

  if (!cf)
  {
    if (gLogCategory_SFAppleIDIdentity > 60)
    {
LABEL_19:
      v10 = 0;
      goto LABEL_12;
    }

    if (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize())
    {
      [SFAppleIDIdentity copyCertificateWithType:];
    }

LABEL_17:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_19;
  }

  v9 = CFGetTypeID(cf);
  if (v9 != SecCertificateGetTypeID())
  {
    if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDIdentity copyCertificateWithType:];
    }

    goto LABEL_17;
  }

  v10 = cf;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (__SecKey)copyPrivateKey
{
  v16[3] = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = [(SFAppleIDIdentity *)self privateKeyPersistentReference];

  if (!v3)
  {
    [(SFAppleIDIdentity *)self copyPrivateKey];
    v7 = v13;
    v9 = v14;
    goto LABEL_6;
  }

  v4 = *MEMORY[0x1E697AFF8];
  v16[0] = *MEMORY[0x1E697B020];
  v5 = *MEMORY[0x1E697B3C8];
  v15[0] = v4;
  v15[1] = v5;
  v6 = [(SFAppleIDIdentity *)self privateKeyPersistentReference];
  v15[2] = *MEMORY[0x1E697B328];
  v16[1] = v6;
  v16[2] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  if (SecItemCopyMatching(v7, &cf))
  {
    if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDIdentity copyPrivateKey];
    }

    goto LABEL_19;
  }

  if (!cf)
  {
    if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDIdentity copyPrivateKey];
    }

    goto LABEL_19;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != SecKeyGetTypeID())
  {
    if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDIdentity copyPrivateKey];
    }

LABEL_19:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = cf;
LABEL_6:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isDateInThePast:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 date];
  v6 = [v4 compare:v5];

  v7 = v6 == -1;
  return v7;
}

- (BOOL)certificateExpired
{
  v3 = [(SFAppleIDIdentity *)self certificateExpirationDate];
  v4 = [(SFAppleIDIdentity *)self isDateInThePast:v3];

  if (v4 && gLogCategory_SFAppleIDIdentity <= 30 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
  {
    [(SFAppleIDIdentity *)self certificateExpired];
  }

  return v4;
}

- (BOOL)intermediateCertificateExpired
{
  v3 = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];
  v4 = [(SFAppleIDIdentity *)self isDateInThePast:v3];

  if (v4 && gLogCategory_SFAppleIDIdentity <= 30 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
  {
    [(SFAppleIDIdentity *)self intermediateCertificateExpired];
  }

  return v4;
}

- (BOOL)isInvalid
{
  v3 = [(SFAppleIDIdentity *)self certificateExpirationDate];

  if (!v3)
  {
    if (([SFAppleIDIdentity isInvalid]& 1) != 0)
    {
      return 1;
    }

LABEL_28:
    if (gLogCategory_SFAppleIDIdentity <= 30 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      [(SFAppleIDIdentity *)self isInvalid];
    }

    return 1;
  }

  if ([(SFAppleIDIdentity *)self certificateExpired])
  {
    if (([SFAppleIDIdentity isInvalid]& 1) != 0)
    {
      return 1;
    }

    goto LABEL_28;
  }

  v4 = [(SFAppleIDIdentity *)self copyCertificate];
  if (v4)
  {
    v5 = v4;
    v6 = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];

    if (v6)
    {
      if ([(SFAppleIDIdentity *)self intermediateCertificateExpired])
      {
        if (gLogCategory_SFAppleIDIdentity > 50 || gLogCategory_SFAppleIDIdentity == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_27;
        }
      }

      else
      {
        v7 = [(SFAppleIDIdentity *)self copyIntermediateCertificate];
        if (v7)
        {
          v8 = v7;
          v9 = [(SFAppleIDIdentity *)self copyIdentity];
          if (v9)
          {
            CFRelease(v5);
            CFRelease(v8);
LABEL_9:
            CFRelease(v9);
            return 0;
          }

          if (([(SFAppleIDIdentity *)v5 isInvalid]& 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_28;
        }

        if (gLogCategory_SFAppleIDIdentity > 50 || gLogCategory_SFAppleIDIdentity == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_27;
        }
      }
    }

    else if (gLogCategory_SFAppleIDIdentity > 50 || gLogCategory_SFAppleIDIdentity == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_27;
    }

    [SFAppleIDIdentity isInvalid];
LABEL_27:
    CFRelease(v5);
    goto LABEL_28;
  }

  if (([SFAppleIDIdentity isInvalid]& 1) == 0)
  {
    goto LABEL_28;
  }

  return 1;
}

- (BOOL)needsRenewal
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(SFAppleIDIdentity *)self certificateExpirationDate];

  if (!v4)
  {
    if (gLogCategory_SFAppleIDIdentity <= 50)
    {
      if (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v5 = [v3 dateByAddingTimeInterval:7776000.0];
  v6 = [(SFAppleIDIdentity *)self certificateExpirationDate];
  v7 = [v5 compare:v6];

  if (v7 == 1)
  {
    if (gLogCategory_SFAppleIDIdentity <= 50)
    {
      if (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v8 = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];

  if (!v8)
  {
    if (gLogCategory_SFAppleIDIdentity <= 50)
    {
      if (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

LABEL_26:
    v12 = 1;
    goto LABEL_6;
  }

  v9 = [v3 dateByAddingTimeInterval:7776000.0];
  v10 = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];
  v11 = [v9 compare:v10];

  if (v11 == 1)
  {
    if (gLogCategory_SFAppleIDIdentity <= 50)
    {
      if (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize())
      {
LABEL_22:
        [SFAppleIDIdentity needsRenewal];
      }

LABEL_23:
      if (gLogCategory_SFAppleIDIdentity <= 30 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
      {
        [(SFAppleIDIdentity *)self needsRenewal];
      }

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (void)removeFromKeychain
{
  v3 = [(SFAppleIDIdentity *)self appleID];
  certificate = 0;
  v4 = [(SFAppleIDIdentity *)self certificatePersistentReference];

  if (v4)
  {
    v5 = [(SFAppleIDIdentity *)self certificatePersistentReference];
    SFAppleIDCopyCertificateFromKeychainForReference(v5, &certificate);

    if (certificate)
    {
      v6 = SecCertificateCopyKey(certificate);
      v4 = v6;
      if (v6)
      {
        v11 = 0;
        SFAppleIDCopyKeychainReferenceForKey(v6, &v11);
        v7 = v11;
        if (v7)
        {
          SFAppleIDRemoveKeyFromKeychain(v3, v7);
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      v4 = 0;
    }

    v8 = [(SFAppleIDIdentity *)self certificatePersistentReference];
    SFAppleIDRemoveCertificateFromKeychain(v3, v8);
  }

  else
  {
    v7 = 0;
  }

  v9 = [(SFAppleIDIdentity *)self privateKeyPersistentReference];

  if (v9)
  {
    v10 = [(SFAppleIDIdentity *)self privateKeyPersistentReference];
    SFAppleIDRemoveKeyFromKeychain(v3, v10);
  }

  if (certificate)
  {
    CFRelease(certificate);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

- (SFAppleIDIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SFAppleIDIdentity;
  v5 = [(SFAppleIDIdentity *)&v32 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"AccountIdentifier"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
      accountIdentifier = v5->_accountIdentifier;
      v5->_accountIdentifier = v6;
    }

    if ([v4 containsValueForKey:@"AltDSID"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AltDSID"];
      altDSID = v5->_altDSID;
      v5->_altDSID = v8;
    }

    if ([v4 containsValueForKey:@"AppleID"])
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppleID"];
      appleID = v5->_appleID;
      v5->_appleID = v10;
    }

    if ([v4 containsValueForKey:@"CertificateExpirationDate"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CertificateExpirationDate"];
      certificateExpirationDate = v5->_certificateExpirationDate;
      v5->_certificateExpirationDate = v12;
    }

    if ([v4 containsValueForKey:@"CertificatePersistentReference"])
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CertificatePersistentReference"];
      certificatePersistentReference = v5->_certificatePersistentReference;
      v5->_certificatePersistentReference = v14;
    }

    if ([v4 containsValueForKey:@"IntermediateCertificateExpirationDate"])
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IntermediateCertificateExpirationDate"];
      intermediateCertificateExpirationDate = v5->_intermediateCertificateExpirationDate;
      v5->_intermediateCertificateExpirationDate = v16;
    }

    if ([v4 containsValueForKey:@"IntermediateCertificatePersistentReference"])
    {
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IntermediateCertificatePersistentReference"];
      intermediateCertificatePersistentReference = v5->_intermediateCertificatePersistentReference;
      v5->_intermediateCertificatePersistentReference = v18;
    }

    if ([v4 containsValueForKey:@"LastValidationAttemptDate"])
    {
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastValidationAttemptDate"];
      lastValidationAttemptDate = v5->_lastValidationAttemptDate;
      v5->_lastValidationAttemptDate = v20;
    }

    if ([v4 containsValueForKey:@"LastValidationDate"])
    {
      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastValidationDate"];
      lastValidationDate = v5->_lastValidationDate;
      v5->_lastValidationDate = v22;
    }

    if ([v4 containsValueForKey:@"LinkedToCurrentUser"])
    {
      v5->_linkedToCurrentUser = [v4 decodeBoolForKey:@"LinkedToCurrentUser"];
    }

    if ([v4 containsValueForKey:@"ModificationDate"])
    {
      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];
      modificationDate = v5->_modificationDate;
      v5->_modificationDate = v24;
    }

    if ([v4 containsValueForKey:@"SerialNumber"])
    {
      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
      serialNumber = v5->_serialNumber;
      v5->_serialNumber = v26;
    }

    if ([v4 containsValueForKey:@"PrivateKeyPersistentReference"])
    {
      v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivateKeyPersistentReference"];
      privateKeyPersistentReference = v5->_privateKeyPersistentReference;
      v5->_privateKeyPersistentReference = v28;
    }

    v30 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 32), self->_accountIdentifier);
    objc_storeStrong((v5 + 40), self->_altDSID);
    objc_storeStrong((v5 + 48), self->_appleID);
    objc_storeStrong((v5 + 56), self->_certificateExpirationDate);
    objc_storeStrong((v5 + 64), self->_certificatePersistentReference);
    objc_storeStrong((v5 + 72), self->_intermediateCertificateExpirationDate);
    objc_storeStrong((v5 + 80), self->_intermediateCertificatePersistentReference);
    objc_storeStrong((v5 + 88), self->_lastValidationAttemptDate);
    objc_storeStrong((v5 + 96), self->_lastValidationDate);
    *(v5 + 24) = self->_linkedToCurrentUser;
    objc_storeStrong((v5 + 104), self->_modificationDate);
    objc_storeStrong((v5 + 120), self->_serialNumber);
    objc_storeStrong((v5 + 112), self->_privateKeyPersistentReference);
  }

  return v5;
}

- (BOOL)isEqualToIdentity:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v33 = 1;
    goto LABEL_46;
  }

  [(SFAppleIDIdentity *)self accountIdentifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() accountIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self accountIdentifier];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_3_2() accountIdentifier];
    v11 = OUTLINED_FUNCTION_1(v10);

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self altDSID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() altDSID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self altDSID];
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_3_2() altDSID];
    v13 = OUTLINED_FUNCTION_1(v12);

    if (!v13)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self appleID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() appleID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self appleID];
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_3_2() appleID];
    v15 = OUTLINED_FUNCTION_1(v14);

    if (!v15)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self certificateExpirationDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() certificateExpirationDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self certificateExpirationDate];
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_3_2() certificateExpirationDate];
    v17 = OUTLINED_FUNCTION_1(v16);

    if (!v17)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self certificatePersistentReference];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() certificatePersistentReference];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self certificatePersistentReference];
    objc_claimAutoreleasedReturnValue();
    v18 = [OUTLINED_FUNCTION_3_2() certificatePersistentReference];
    v19 = OUTLINED_FUNCTION_1(v18);

    if (!v19)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() intermediateCertificateExpirationDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];
    objc_claimAutoreleasedReturnValue();
    v20 = [OUTLINED_FUNCTION_3_2() intermediateCertificateExpirationDate];
    v21 = OUTLINED_FUNCTION_1(v20);

    if (!v21)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self intermediateCertificatePersistentReference];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() intermediateCertificatePersistentReference];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self intermediateCertificatePersistentReference];
    objc_claimAutoreleasedReturnValue();
    v22 = [OUTLINED_FUNCTION_3_2() intermediateCertificatePersistentReference];
    v23 = OUTLINED_FUNCTION_1(v22);

    if (!v23)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self lastValidationAttemptDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() lastValidationAttemptDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self lastValidationAttemptDate];
    objc_claimAutoreleasedReturnValue();
    v24 = [OUTLINED_FUNCTION_3_2() lastValidationAttemptDate];
    v25 = OUTLINED_FUNCTION_1(v24);

    if (!v25)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self lastValidationDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() lastValidationDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self lastValidationDate];
    objc_claimAutoreleasedReturnValue();
    v26 = [OUTLINED_FUNCTION_3_2() lastValidationDate];
    v27 = OUTLINED_FUNCTION_1(v26);

    if (!v27)
    {
      goto LABEL_45;
    }
  }

  v28 = [(SFAppleIDIdentity *)self linkedToCurrentUser];
  if (v28 != [(SFAppleIDIdentity *)v8 linkedToCurrentUser])
  {
LABEL_45:
    v33 = 0;
    goto LABEL_46;
  }

  [(SFAppleIDIdentity *)self modificationDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() modificationDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self modificationDate];
    objc_claimAutoreleasedReturnValue();
    v29 = [OUTLINED_FUNCTION_3_2() modificationDate];
    v30 = OUTLINED_FUNCTION_1(v29);

    if (!v30)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self serialNumber];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() serialNumber];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDIdentity *)self serialNumber];
    objc_claimAutoreleasedReturnValue();
    v31 = [OUTLINED_FUNCTION_3_2() serialNumber];
    v32 = OUTLINED_FUNCTION_1(v31);

    if (!v32)
    {
      goto LABEL_45;
    }
  }

  [(SFAppleIDIdentity *)self privateKeyPersistentReference];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() privateKeyPersistentReference];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
    v33 = 1;
  }

  else
  {
    [(SFAppleIDIdentity *)self privateKeyPersistentReference];
    objc_claimAutoreleasedReturnValue();
    v35 = [OUTLINED_FUNCTION_3_2() privateKeyPersistentReference];
    v33 = OUTLINED_FUNCTION_1(v35);
  }

LABEL_46:
  return v33 & 1;
}

- (NSDate)certificateExpirationDate
{
  p_certificateExpirationDate = &self->_certificateExpirationDate;
  if (self->_certificateExpirationDate || ![(SFAppleIDIdentity *)self copyCertificate])
  {
    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    v7 = SFAppleIDExpirationDateForCertificate(v5, v6);
    v4 = v11;
    if (v7)
    {
      if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      objc_storeStrong(p_certificateExpirationDate, v11);
    }

    CFRelease(v2);
  }

  v8 = *p_certificateExpirationDate;
  v9 = v8;

  return v8;
}

- (NSDate)intermediateCertificateExpirationDate
{
  p_intermediateCertificateExpirationDate = &self->_intermediateCertificateExpirationDate;
  if (self->_intermediateCertificateExpirationDate || ![(SFAppleIDIdentity *)self copyIntermediateCertificate])
  {
    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    v7 = SFAppleIDExpirationDateForCertificate(v5, v6);
    v4 = v11;
    if (v7)
    {
      if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      objc_storeStrong(p_intermediateCertificateExpirationDate, v11);
    }

    CFRelease(v2);
  }

  v8 = *p_intermediateCertificateExpirationDate;
  v9 = v8;

  return v8;
}

- (NSString)intermediateCertificateSerialNumber
{
  p_intermediateCertificateSerialNumber = &self->_intermediateCertificateSerialNumber;
  if (self->_intermediateCertificateSerialNumber || ![(SFAppleIDIdentity *)self copyIntermediateCertificate])
  {
    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    v7 = SFAppleIDSerialNumberForCertificate(v5, v6);
    v4 = v11;
    if (v7)
    {
      if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      objc_storeStrong(p_intermediateCertificateSerialNumber, v11);
    }

    CFRelease(v2);
  }

  v8 = *p_intermediateCertificateSerialNumber;
  v9 = v8;

  return v8;
}

- (__SecIdentity)copyIdentity
{
  v3 = [(SFAppleIDIdentity *)self copyCertificate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(SFAppleIDIdentity *)self copyPrivateKey];
  if (v5)
  {
    v6 = v5;
    v7 = *MEMORY[0x1E695E480];
    v8 = SecIdentityCreate();
    if (!v8 && gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      v10 = [(SFAppleIDIdentity *)self appleID];
      LogPrintF();
    }

    CFRelease(v4);
  }

  else
  {
    v8 = 0;
    v6 = v4;
  }

  CFRelease(v6);
  return v8;
}

- (int)verifyKeys
{
  v5 = 201234;
  cf = 0;
  v6 = [(SFAppleIDIdentity *)self copyCertificate];
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    v5 = 201203;
    goto LABEL_33;
  }

  v7 = v6;
  if (![(SFAppleIDIdentity *)self copyPrivateKey])
  {
    CFRelease(v7);
    OUTLINED_FUNCTION_6_3();
    v5 = 201206;
    goto LABEL_33;
  }

  v8 = OUTLINED_FUNCTION_2_0();
  v9 = SecCertificateCopyKey(v8);
  if (v9)
  {
    AlgorithmId = SecKeyGetAlgorithmId();
    if (gLogCategory_SFAppleIDIdentity <= 50 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = SecKeyGetAlgorithmId();
    if (gLogCategory_SFAppleIDIdentity <= 50 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (AlgorithmId == v2)
    {
      cf = 0;
      v11 = SecKeyCopyMatchingPrivateKey();
      if (self == v11 || v11 && CFEqual(self, v11))
      {
        if (gLogCategory_SFAppleIDIdentity <= 50 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:5000];
        [v2 mutableBytes];
        RandomBytes();
        v16 = 0;
        v12 = SFAppleIDSignedHashForData(v2, self, &v16);
        v13 = v16;
        v3 = v13;
        if (v12)
        {
          if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_29;
        }

        if ([(__CFData *)v13 length])
        {
          if (SFAppleIDVerifySignedHashForData(v2, v3, v9))
          {
            if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v5 = 201235;
            goto LABEL_29;
          }

          if (gLogCategory_SFAppleIDIdentity <= 50 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        else
        {
          v15 = *MEMORY[0x1E69E9848];
          FPrintF();
        }

        v5 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_6_3();
        v5 = 201233;
      }
    }

    else
    {
      v2 = 0;
      v11 = 0;
      v3 = 0;
      v5 = 201231;
    }
  }

  else
  {
    v2 = 0;
    v11 = 0;
    v3 = 0;
    v5 = 201230;
  }

LABEL_29:
  CFRelease(v7);
  CFRelease(self);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_33:

  return v5;
}

- (void)copyCertificateWithType:(void *)a3 .cold.5(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
  {
    v8 = @"?";
    if (a1 == 1)
    {
      v8 = @"Intermediate";
    }

    if (!a1)
    {
      v8 = @"Leaf";
    }

    v9 = v8;
    v10 = [a2 appleID];
    LogPrintF();
  }

  *a4 = 0;
  *a3 = 0;
}

- (void)copyPrivateKey
{
  if (gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
  {
    v6 = [a1 appleID];
    LogPrintF();
  }

  *a3 = 0;
  *a2 = 0;
}

- (void)certificateExpired
{
  v13 = [a1 appleID];
  v2 = [a1 certificateExpirationDate];
  OUTLINED_FUNCTION_7_0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF();
}

- (void)intermediateCertificateExpired
{
  v13 = [a1 appleID];
  v2 = [a1 intermediateCertificateExpirationDate];
  OUTLINED_FUNCTION_7_0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF();
}

- (uint64_t)isInvalid
{
  if (gLogCategory_SFAppleIDIdentity > 50)
  {
    return 1;
  }

  if (gLogCategory_SFAppleIDIdentity != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

- (void)isInvalid
{
  v1 = [a1 appleID];
  LogPrintF();
}

- (void)needsRenewal
{
  v1 = [a1 appleID];
  LogPrintF();
}

@end