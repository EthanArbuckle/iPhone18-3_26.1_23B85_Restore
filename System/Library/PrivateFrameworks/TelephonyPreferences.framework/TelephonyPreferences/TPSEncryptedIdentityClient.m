@interface TPSEncryptedIdentityClient
- (id)encryptedIdentityInfoForSubscriptionContext:(id)a3 type:(int64_t)a4;
- (id)encryptedIdentityInfoForSubscriptionContext:(id)a3 type:(int64_t)a4 error:(id *)a5;
@end

@implementation TPSEncryptedIdentityClient

- (id)encryptedIdentityInfoForSubscriptionContext:(id)a3 type:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0;
  v7 = [(TPSEncryptedIdentityClient *)self encryptedIdentityInfoForSubscriptionContext:v6 type:a4 error:&v14];
  v8 = v14;
  v9 = [v8 domain];

  if (v9)
  {
    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] tps_stringWithTPSEncryptedIdentityType:a4];
      *buf = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_ERROR, "Retrieving encrypted identity information of type %@ for subscription context %@ failed with error %@.", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encryptedIdentityInfoForSubscriptionContext:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(TPSTelephonyController *)self telephonyClient];
  v10 = [MEMORY[0x277CCACA8] tps_ctStringWithTPSEncryptedIdentityType:a4];
  v11 = [v9 context:v8 getEncryptedIdentity:v10 error:a5];

  return v11;
}

@end