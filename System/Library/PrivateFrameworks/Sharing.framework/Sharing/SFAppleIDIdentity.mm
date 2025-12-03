@interface SFAppleIDIdentity
- (BOOL)certificateExpired;
- (BOOL)intermediateCertificateExpired;
- (BOOL)isDateInThePast:(id)past;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentity:(id)identity;
- (BOOL)isInvalid;
- (BOOL)needsRenewal;
- (NSDate)certificateExpirationDate;
- (NSDate)intermediateCertificateExpirationDate;
- (NSString)intermediateCertificateSerialNumber;
- (SFAppleIDIdentity)initWithAppleID:(id)d altDSID:(id)iD;
- (SFAppleIDIdentity)initWithCoder:(id)coder;
- (SFAppleIDIdentity)initWithDictionary:(id)dictionary;
- (__SecCertificate)copyCertificateWithType:(int64_t)type;
- (__SecIdentity)copyIdentity;
- (__SecKey)copyPrivateKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)verifyKeys;
- (uint64_t)isInvalid;
- (void)certificateExpired;
- (void)copyPrivateKey;
- (void)encodeWithCoder:(id)coder;
- (void)intermediateCertificateExpired;
- (void)isInvalid;
- (void)needsRenewal;
- (void)removeFromKeychain;
@end

@implementation SFAppleIDIdentity

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentifier = self->_accountIdentifier;
  v17 = coderCopy;
  if (accountIdentifier)
  {
    [coderCopy encodeObject:accountIdentifier forKey:@"AccountIdentifier"];
    coderCopy = v17;
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v17 encodeObject:altDSID forKey:@"AltDSID"];
    coderCopy = v17;
  }

  appleID = self->_appleID;
  if (appleID)
  {
    [v17 encodeObject:appleID forKey:@"AppleID"];
    coderCopy = v17;
  }

  certificateExpirationDate = self->_certificateExpirationDate;
  if (certificateExpirationDate)
  {
    [v17 encodeObject:certificateExpirationDate forKey:@"CertificateExpirationDate"];
    coderCopy = v17;
  }

  certificatePersistentReference = self->_certificatePersistentReference;
  if (certificatePersistentReference)
  {
    [v17 encodeObject:certificatePersistentReference forKey:@"CertificatePersistentReference"];
    coderCopy = v17;
  }

  intermediateCertificateExpirationDate = self->_intermediateCertificateExpirationDate;
  if (intermediateCertificateExpirationDate)
  {
    [v17 encodeObject:intermediateCertificateExpirationDate forKey:@"IntermediateCertificateExpirationDate"];
    coderCopy = v17;
  }

  intermediateCertificatePersistentReference = self->_intermediateCertificatePersistentReference;
  if (intermediateCertificatePersistentReference)
  {
    [v17 encodeObject:intermediateCertificatePersistentReference forKey:@"IntermediateCertificatePersistentReference"];
    coderCopy = v17;
  }

  lastValidationAttemptDate = self->_lastValidationAttemptDate;
  if (lastValidationAttemptDate)
  {
    [v17 encodeObject:lastValidationAttemptDate forKey:@"LastValidationAttemptDate"];
    coderCopy = v17;
  }

  lastValidationDate = self->_lastValidationDate;
  if (lastValidationDate)
  {
    [v17 encodeObject:lastValidationDate forKey:@"LastValidationDate"];
    coderCopy = v17;
  }

  if (self->_linkedToCurrentUser)
  {
    [v17 encodeBool:1 forKey:@"LinkedToCurrentUser"];
    coderCopy = v17;
  }

  modificationDate = self->_modificationDate;
  if (modificationDate)
  {
    [v17 encodeObject:modificationDate forKey:@"ModificationDate"];
    coderCopy = v17;
  }

  privateKeyPersistentReference = self->_privateKeyPersistentReference;
  if (privateKeyPersistentReference)
  {
    [v17 encodeObject:privateKeyPersistentReference forKey:@"PrivateKeyPersistentReference"];
    coderCopy = v17;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v17 encodeObject:serialNumber forKey:@"SerialNumber"];
    coderCopy = v17;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFAppleIDIdentity *)self isEqualToIdentity:v5];
  }

  return v6;
}

- (SFAppleIDIdentity)initWithAppleID:(id)d altDSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = SFAppleIDIdentity;
  v9 = [(SFAppleIDIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_altDSID, iD);
    objc_storeStrong(&v10->_appleID, d);
  }

  return v10;
}

- (SFAppleIDIdentity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = SFAppleIDIdentity;
  v5 = [(SFAppleIDIdentity *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"Expires"];
    certificateExpirationDate = v5->_certificateExpirationDate;
    v5->_certificateExpirationDate = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"CertificateReference"];
    certificatePersistentReference = v5->_certificatePersistentReference;
    v5->_certificatePersistentReference = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"encDsId"];
    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"encDsId"];
    }

    else
    {
      v11 = &stru_1F1D30528;
    }

    encDSID = v5->_encDSID;
    v5->_encDSID = &v11->isa;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"IntermediateCertificateReference"];
    intermediateCertificatePersistentReference = v5->_intermediateCertificatePersistentReference;
    v5->_intermediateCertificatePersistentReference = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"LastValidationAttempt"];
    lastValidationAttemptDate = v5->_lastValidationAttemptDate;
    v5->_lastValidationAttemptDate = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"LastSuccessfulValidation"];
    lastValidationDate = v5->_lastValidationDate;
    v5->_lastValidationDate = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"ModificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:@"SerialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"CertificatePrivateKeyReference"];
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

  certificateExpirationDate = [(SFAppleIDIdentity *)self certificateExpirationDate];
  NSAppendPrintF();
  v7 = v5;

  certificatePersistentReference = self->_certificatePersistentReference;
  NSAppendPrintF();
  v8 = v7;

  intermediateCertificateExpirationDate = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];
  NSAppendPrintF();
  v9 = v8;

  intermediateCertificateSerialNumber = [(SFAppleIDIdentity *)self intermediateCertificateSerialNumber];
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

- (__SecCertificate)copyCertificateWithType:(int64_t)type
{
  v17[3] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (type == 1)
  {
    intermediateCertificatePersistentReference = [(SFAppleIDIdentity *)self intermediateCertificatePersistentReference];
  }

  else
  {
    if (type)
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

    intermediateCertificatePersistentReference = [(SFAppleIDIdentity *)self certificatePersistentReference];
  }

  v6 = intermediateCertificatePersistentReference;
  if (!intermediateCertificatePersistentReference)
  {
LABEL_16:
    [(SFAppleIDIdentity *)type copyCertificateWithType:&v14, &v15];
    v6 = v14;
    v8 = v15;
    goto LABEL_17;
  }

  v7 = *MEMORY[0x1E697B3C8];
  v16[0] = *MEMORY[0x1E697AFF8];
  v16[1] = v7;
  v17[0] = *MEMORY[0x1E697B000];
  v17[1] = intermediateCertificatePersistentReference;
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
  privateKeyPersistentReference = [(SFAppleIDIdentity *)self privateKeyPersistentReference];

  if (!privateKeyPersistentReference)
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
  privateKeyPersistentReference2 = [(SFAppleIDIdentity *)self privateKeyPersistentReference];
  v15[2] = *MEMORY[0x1E697B328];
  v16[1] = privateKeyPersistentReference2;
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

- (BOOL)isDateInThePast:(id)past
{
  if (!past)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DF00];
  pastCopy = past;
  date = [v3 date];
  v6 = [pastCopy compare:date];

  v7 = v6 == -1;
  return v7;
}

- (BOOL)certificateExpired
{
  certificateExpirationDate = [(SFAppleIDIdentity *)self certificateExpirationDate];
  v4 = [(SFAppleIDIdentity *)self isDateInThePast:certificateExpirationDate];

  if (v4 && gLogCategory_SFAppleIDIdentity <= 30 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
  {
    [(SFAppleIDIdentity *)self certificateExpired];
  }

  return v4;
}

- (BOOL)intermediateCertificateExpired
{
  intermediateCertificateExpirationDate = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];
  v4 = [(SFAppleIDIdentity *)self isDateInThePast:intermediateCertificateExpirationDate];

  if (v4 && gLogCategory_SFAppleIDIdentity <= 30 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
  {
    [(SFAppleIDIdentity *)self intermediateCertificateExpired];
  }

  return v4;
}

- (BOOL)isInvalid
{
  certificateExpirationDate = [(SFAppleIDIdentity *)self certificateExpirationDate];

  if (!certificateExpirationDate)
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

  copyCertificate = [(SFAppleIDIdentity *)self copyCertificate];
  if (copyCertificate)
  {
    v5 = copyCertificate;
    intermediateCertificateExpirationDate = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];

    if (intermediateCertificateExpirationDate)
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
        copyIntermediateCertificate = [(SFAppleIDIdentity *)self copyIntermediateCertificate];
        if (copyIntermediateCertificate)
        {
          v8 = copyIntermediateCertificate;
          copyIdentity = [(SFAppleIDIdentity *)self copyIdentity];
          if (copyIdentity)
          {
            CFRelease(v5);
            CFRelease(v8);
LABEL_9:
            CFRelease(copyIdentity);
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
  date = [MEMORY[0x1E695DF00] date];
  certificateExpirationDate = [(SFAppleIDIdentity *)self certificateExpirationDate];

  if (!certificateExpirationDate)
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

  v5 = [date dateByAddingTimeInterval:7776000.0];
  certificateExpirationDate2 = [(SFAppleIDIdentity *)self certificateExpirationDate];
  v7 = [v5 compare:certificateExpirationDate2];

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

  intermediateCertificateExpirationDate = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];

  if (!intermediateCertificateExpirationDate)
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

  v9 = [date dateByAddingTimeInterval:7776000.0];
  intermediateCertificateExpirationDate2 = [(SFAppleIDIdentity *)self intermediateCertificateExpirationDate];
  v11 = [v9 compare:intermediateCertificateExpirationDate2];

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
  appleID = [(SFAppleIDIdentity *)self appleID];
  certificate = 0;
  certificatePersistentReference = [(SFAppleIDIdentity *)self certificatePersistentReference];

  if (certificatePersistentReference)
  {
    certificatePersistentReference2 = [(SFAppleIDIdentity *)self certificatePersistentReference];
    SFAppleIDCopyCertificateFromKeychainForReference(certificatePersistentReference2, &certificate);

    if (certificate)
    {
      v6 = SecCertificateCopyKey(certificate);
      certificatePersistentReference = v6;
      if (v6)
      {
        v11 = 0;
        SFAppleIDCopyKeychainReferenceForKey(v6, &v11);
        v7 = v11;
        if (v7)
        {
          SFAppleIDRemoveKeyFromKeychain(appleID, v7);
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
      certificatePersistentReference = 0;
    }

    certificatePersistentReference3 = [(SFAppleIDIdentity *)self certificatePersistentReference];
    SFAppleIDRemoveCertificateFromKeychain(appleID, certificatePersistentReference3);
  }

  else
  {
    v7 = 0;
  }

  privateKeyPersistentReference = [(SFAppleIDIdentity *)self privateKeyPersistentReference];

  if (privateKeyPersistentReference)
  {
    privateKeyPersistentReference2 = [(SFAppleIDIdentity *)self privateKeyPersistentReference];
    SFAppleIDRemoveKeyFromKeychain(appleID, privateKeyPersistentReference2);
  }

  if (certificate)
  {
    CFRelease(certificate);
  }

  if (certificatePersistentReference)
  {
    CFRelease(certificatePersistentReference);
  }
}

- (SFAppleIDIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SFAppleIDIdentity;
  v5 = [(SFAppleIDIdentity *)&v32 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"AccountIdentifier"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
      accountIdentifier = v5->_accountIdentifier;
      v5->_accountIdentifier = v6;
    }

    if ([coderCopy containsValueForKey:@"AltDSID"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AltDSID"];
      altDSID = v5->_altDSID;
      v5->_altDSID = v8;
    }

    if ([coderCopy containsValueForKey:@"AppleID"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppleID"];
      appleID = v5->_appleID;
      v5->_appleID = v10;
    }

    if ([coderCopy containsValueForKey:@"CertificateExpirationDate"])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CertificateExpirationDate"];
      certificateExpirationDate = v5->_certificateExpirationDate;
      v5->_certificateExpirationDate = v12;
    }

    if ([coderCopy containsValueForKey:@"CertificatePersistentReference"])
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CertificatePersistentReference"];
      certificatePersistentReference = v5->_certificatePersistentReference;
      v5->_certificatePersistentReference = v14;
    }

    if ([coderCopy containsValueForKey:@"IntermediateCertificateExpirationDate"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IntermediateCertificateExpirationDate"];
      intermediateCertificateExpirationDate = v5->_intermediateCertificateExpirationDate;
      v5->_intermediateCertificateExpirationDate = v16;
    }

    if ([coderCopy containsValueForKey:@"IntermediateCertificatePersistentReference"])
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IntermediateCertificatePersistentReference"];
      intermediateCertificatePersistentReference = v5->_intermediateCertificatePersistentReference;
      v5->_intermediateCertificatePersistentReference = v18;
    }

    if ([coderCopy containsValueForKey:@"LastValidationAttemptDate"])
    {
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastValidationAttemptDate"];
      lastValidationAttemptDate = v5->_lastValidationAttemptDate;
      v5->_lastValidationAttemptDate = v20;
    }

    if ([coderCopy containsValueForKey:@"LastValidationDate"])
    {
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastValidationDate"];
      lastValidationDate = v5->_lastValidationDate;
      v5->_lastValidationDate = v22;
    }

    if ([coderCopy containsValueForKey:@"LinkedToCurrentUser"])
    {
      v5->_linkedToCurrentUser = [coderCopy decodeBoolForKey:@"LinkedToCurrentUser"];
    }

    if ([coderCopy containsValueForKey:@"ModificationDate"])
    {
      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];
      modificationDate = v5->_modificationDate;
      v5->_modificationDate = v24;
    }

    if ([coderCopy containsValueForKey:@"SerialNumber"])
    {
      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
      serialNumber = v5->_serialNumber;
      v5->_serialNumber = v26;
    }

    if ([coderCopy containsValueForKey:@"PrivateKeyPersistentReference"])
    {
      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivateKeyPersistentReference"];
      privateKeyPersistentReference = v5->_privateKeyPersistentReference;
      v5->_privateKeyPersistentReference = v28;
    }

    v30 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqualToIdentity:(id)identity
{
  identityCopy = identity;
  if (self == identityCopy)
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
    accountIdentifier = [OUTLINED_FUNCTION_3_2() accountIdentifier];
    v11 = OUTLINED_FUNCTION_1(accountIdentifier);

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
    altDSID = [OUTLINED_FUNCTION_3_2() altDSID];
    v13 = OUTLINED_FUNCTION_1(altDSID);

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
    appleID = [OUTLINED_FUNCTION_3_2() appleID];
    v15 = OUTLINED_FUNCTION_1(appleID);

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
    certificateExpirationDate = [OUTLINED_FUNCTION_3_2() certificateExpirationDate];
    v17 = OUTLINED_FUNCTION_1(certificateExpirationDate);

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
    certificatePersistentReference = [OUTLINED_FUNCTION_3_2() certificatePersistentReference];
    v19 = OUTLINED_FUNCTION_1(certificatePersistentReference);

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
    intermediateCertificateExpirationDate = [OUTLINED_FUNCTION_3_2() intermediateCertificateExpirationDate];
    v21 = OUTLINED_FUNCTION_1(intermediateCertificateExpirationDate);

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
    intermediateCertificatePersistentReference = [OUTLINED_FUNCTION_3_2() intermediateCertificatePersistentReference];
    v23 = OUTLINED_FUNCTION_1(intermediateCertificatePersistentReference);

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
    lastValidationAttemptDate = [OUTLINED_FUNCTION_3_2() lastValidationAttemptDate];
    v25 = OUTLINED_FUNCTION_1(lastValidationAttemptDate);

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
    lastValidationDate = [OUTLINED_FUNCTION_3_2() lastValidationDate];
    v27 = OUTLINED_FUNCTION_1(lastValidationDate);

    if (!v27)
    {
      goto LABEL_45;
    }
  }

  linkedToCurrentUser = [(SFAppleIDIdentity *)self linkedToCurrentUser];
  if (linkedToCurrentUser != [(SFAppleIDIdentity *)identityCopy linkedToCurrentUser])
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
    modificationDate = [OUTLINED_FUNCTION_3_2() modificationDate];
    v30 = OUTLINED_FUNCTION_1(modificationDate);

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
    serialNumber = [OUTLINED_FUNCTION_3_2() serialNumber];
    v32 = OUTLINED_FUNCTION_1(serialNumber);

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
    privateKeyPersistentReference = [OUTLINED_FUNCTION_3_2() privateKeyPersistentReference];
    v33 = OUTLINED_FUNCTION_1(privateKeyPersistentReference);
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
  copyCertificate = [(SFAppleIDIdentity *)self copyCertificate];
  if (!copyCertificate)
  {
    return 0;
  }

  v4 = copyCertificate;
  copyPrivateKey = [(SFAppleIDIdentity *)self copyPrivateKey];
  if (copyPrivateKey)
  {
    v6 = copyPrivateKey;
    v7 = *MEMORY[0x1E695E480];
    v8 = SecIdentityCreate();
    if (!v8 && gLogCategory_SFAppleIDIdentity <= 60 && (gLogCategory_SFAppleIDIdentity != -1 || _LogCategory_Initialize()))
    {
      appleID = [(SFAppleIDIdentity *)self appleID];
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
  copyCertificate = [(SFAppleIDIdentity *)self copyCertificate];
  if (!copyCertificate)
  {
    OUTLINED_FUNCTION_6_3();
    v5 = 201203;
    goto LABEL_33;
  }

  v7 = copyCertificate;
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
    appleID = [self appleID];
    LogPrintF();
  }

  *a3 = 0;
  *a2 = 0;
}

- (void)certificateExpired
{
  appleID = [self appleID];
  certificateExpirationDate = [self certificateExpirationDate];
  OUTLINED_FUNCTION_7_0(certificateExpirationDate, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, appleID);
  LogPrintF();
}

- (void)intermediateCertificateExpired
{
  appleID = [self appleID];
  intermediateCertificateExpirationDate = [self intermediateCertificateExpirationDate];
  OUTLINED_FUNCTION_7_0(intermediateCertificateExpirationDate, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, appleID);
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
  appleID = [self appleID];
  LogPrintF();
}

- (void)needsRenewal
{
  appleID = [self appleID];
  LogPrintF();
}

@end