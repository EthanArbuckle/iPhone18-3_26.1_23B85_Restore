@interface WLAuthenticationCredentials
+ (id)generateAuthenticationCredentialsContainingSelfSignedCertificate;
@end

@implementation WLAuthenticationCredentials

+ (id)generateAuthenticationCredentialsContainingSelfSignedCertificate
{
  v2 = objc_alloc_init(WLAuthenticationCredentials);
  v3 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__WLAuthenticationCredentials_generateAuthenticationCredentialsContainingSelfSignedCertificate__block_invoke;
  v9[3] = &unk_279EB5280;
  v4 = v2;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  [WLAuthenticationUtilities generateSelfSignedCertificateWithOrganization:@"Apple Inc" commonName:@"iOS Migration" completion:v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v11;
  v7 = v4;

  return v4;
}

intptr_t __95__WLAuthenticationCredentials_generateAuthenticationCredentialsContainingSelfSignedCertificate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setLocalCertificate:a2];
  [*(a1 + 32) setPublicKey:a3];
  [*(a1 + 32) setPrivateKey:a4];
  v7 = *(a1 + 40);

  return dispatch_semaphore_signal(v7);
}

@end