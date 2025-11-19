@interface SMSentinelZone
- (SMSentinelZone)initWithQueue:(id)a3;
- (void)saveZoneWithXPCActivity:(id)a3 completion:(id)a4;
@end

@implementation SMSentinelZone

- (SMSentinelZone)initWithQueue:(id)a3
{
  v4 = MEMORY[0x277CBC5F8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:@"SentinelZone" ownerName:*MEMORY[0x277CBBF28]];
  v8 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v7];
  v11.receiver = self;
  v11.super_class = SMSentinelZone;
  v9 = [(SMCloudKitZone *)&v11 initWithZone:v8 queue:v5];

  return v9;
}

- (void)saveZoneWithXPCActivity:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:0 masqueradeBundleID:0 xpcActivity:v8];

  v10 = [(SMCloudKitZone *)self privateDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SMSentinelZone_saveZoneWithXPCActivity_completion___block_invoke;
  v12[3] = &unk_2788C4E00;
  v13 = v7;
  v14 = a2;
  v12[4] = self;
  v11 = v7;
  [(SMCloudKitZone *)self saveZoneToDatabase:v10 qos:v9 withCompletion:v12];
}

void __53__SMSentinelZone_saveZoneWithXPCActivity_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(*(a1 + 48));
    v12 = 138413314;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,%@,%@,success,%d,error,%@,underlying error,%@", &v12, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
}

@end