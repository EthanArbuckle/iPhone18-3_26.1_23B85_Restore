@interface PKVirtualCardEncryptionFields
- (PKVirtualCardEncryptionFields)initWithCertificates:(id)a3;
- (id)dictionaryRepresentation;
- (void)prepareCertificateWithQueue:(id)a3 completion:(id)a4;
- (void)prepareOneTimeCertificateWithQueue:(id)a3 completion:(id)a4;
@end

@implementation PKVirtualCardEncryptionFields

- (PKVirtualCardEncryptionFields)initWithCertificates:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKVirtualCardEncryptionFields;
  v5 = [(PKVirtualCardEncryptionFields *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    certificates = v5->_certificates;
    v5->_certificates = v6;

    objc_storeStrong(&v5->_encryptionVersion, @"EV_ECC_v1");
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)prepareCertificateWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Getting persistent BAA certificate for web request", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PKVirtualCardEncryptionFields_prepareCertificateWithQueue_completion___block_invoke;
  v10[3] = &unk_1E79D58A8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  PKPersistentBAACertificateAndKey(0, v6, v10);
}

void __72__PKVirtualCardEncryptionFields_prepareCertificateWithQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    os_unfair_lock_lock((*(a1 + 32) + 24));
    objc_storeStrong((*(a1 + 32) + 8), a2);
    os_unfair_lock_unlock((*(a1 + 32) + 24));
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

- (void)prepareOneTimeCertificateWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Getting one time BAA certificate for web request", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__PKVirtualCardEncryptionFields_prepareOneTimeCertificateWithQueue_completion___block_invoke;
  v10[3] = &unk_1E79D58A8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  PKGenerateOneTimeBAACertificate(0, v6, v10);
}

void __79__PKVirtualCardEncryptionFields_prepareOneTimeCertificateWithQueue_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v8 = a4;
  v9 = [v13 count];
  if (!v8 && a3 && v9)
  {
    os_unfair_lock_lock((*(a1 + 32) + 24));
    objc_storeStrong((*(a1 + 32) + 8), a2);
    os_unfair_lock_unlock((*(a1 + 32) + 24));
    v10 = *(a1 + 40);
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = *(v10 + 16);
  }

  else
  {
    v12 = *(a1 + 40);
    if (!v12)
    {
      goto LABEL_9;
    }

    v11 = *(v12 + 16);
  }

  v11();
LABEL_9:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSArray *)self->_certificates count])
  {
    v4 = [(NSArray *)self->_certificates pk_arrayByApplyingBlock:&__block_literal_global_397];
    [v3 setObject:v4 forKeyedSubscript:@"certificates"];
  }

  os_unfair_lock_unlock(&self->_lock);
  encryptionVersion = self->_encryptionVersion;
  if (encryptionVersion)
  {
    [v3 setObject:encryptionVersion forKeyedSubscript:@"encryptionVersion"];
  }

  v6 = [v3 copy];

  return v6;
}

@end