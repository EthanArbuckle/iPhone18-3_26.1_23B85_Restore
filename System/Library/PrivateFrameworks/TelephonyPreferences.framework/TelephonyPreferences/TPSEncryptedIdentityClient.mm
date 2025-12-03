@interface TPSEncryptedIdentityClient
- (id)encryptedIdentityInfoForSubscriptionContext:(id)context type:(int64_t)type;
- (id)encryptedIdentityInfoForSubscriptionContext:(id)context type:(int64_t)type error:(id *)error;
@end

@implementation TPSEncryptedIdentityClient

- (id)encryptedIdentityInfoForSubscriptionContext:(id)context type:(int64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v14 = 0;
  v7 = [(TPSEncryptedIdentityClient *)self encryptedIdentityInfoForSubscriptionContext:contextCopy type:type error:&v14];
  v8 = v14;
  domain = [v8 domain];

  if (domain)
  {
    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] tps_stringWithTPSEncryptedIdentityType:type];
      *buf = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = contextCopy;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_ERROR, "Retrieving encrypted identity information of type %@ for subscription context %@ failed with error %@.", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encryptedIdentityInfoForSubscriptionContext:(id)context type:(int64_t)type error:(id *)error
{
  contextCopy = context;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  v10 = [MEMORY[0x277CCACA8] tps_ctStringWithTPSEncryptedIdentityType:type];
  v11 = [telephonyClient context:contextCopy getEncryptedIdentity:v10 error:error];

  return v11;
}

@end