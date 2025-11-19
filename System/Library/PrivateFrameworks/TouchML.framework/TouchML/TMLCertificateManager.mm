@interface TMLCertificateManager
+ (id)shared;
- (__SecKey)verificationKey;
- (id)certificateForSignatureVerification;
- (void)updateCertificateFromPath:(id)a3;
@end

@implementation TMLCertificateManager

+ (id)shared
{
  if (qword_2806D9108 != -1)
  {
    sub_26F200C04();
  }

  v3 = qword_2806D9100;

  return v3;
}

- (__SecKey)verificationKey
{
  verificationKey = self->_verificationKey;
  if (verificationKey)
  {
    return verificationKey;
  }

  if (!self->_certificate)
  {
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = objc_msgSend_certificateForSignatureVerification(self, a2, v2);
  v8 = SecCertificateCreateWithData(v6, v7);
  BasicX509 = SecPolicyCreateBasicX509();
  v10 = BasicX509;
  if (v8)
  {
    v11 = BasicX509 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
    verificationKey = 0;
    if (!BasicX509)
    {
      goto LABEL_18;
    }
  }

  else
  {
    trust = 0;
    v12 = 0;
    if (!SecTrustCreateWithCertificates(v8, BasicX509, &trust))
    {
      v13 = 0;
      if (MEMORY[0x27438B420](trust, &v13))
      {
        v12 = 0;
      }

      else
      {
        v12 = MEMORY[0x27438B400](trust);
      }
    }

    CFRelease(trust);
  }

  CFRelease(v10);
  verificationKey = v12;
LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }

  if (verificationKey)
  {
    self->_verificationKey = verificationKey;
  }

  return verificationKey;
}

- (id)certificateForSignatureVerification
{
  if (self->_certificate)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    v7 = objc_msgSend_initWithBase64EncodedString_options_(v4, v5, v6, self->_certificate, 1);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateCertificateFromPath:(id)a3
{
  if (a3)
  {
    v10 = 0;
    v5 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x277CCACA8], a2, v3, a3, 4, &v10);
    v6 = v10;
    if ((objc_msgSend_isEqualToString_(v5, v7, v8, self->_certificate) & 1) == 0)
    {
      objc_storeStrong(&self->_certificate, v5);
      self->_verificationKey = 0;
    }
  }

  else
  {
    certificate = self->_certificate;
    self->_certificate = 0;

    self->_verificationKey = 0;
  }
}

@end