@interface SSRVoiceProfileXPCServiceProxy
+ (id)sharedInstance;
- (BOOL)fetchEnrollmentStatusForSiriProfileId:(id)a3 forLanguageCode:(id)a4;
@end

@implementation SSRVoiceProfileXPCServiceProxy

- (BOOL)fetchEnrollmentStatusForSiriProfileId:(id)a3 forLanguageCode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSRVoiceProfileManager sharedInstance];
  v8 = [v7 isSATEnrolledForSiriProfileId:v6 forLanguageCode:v5];

  return v8;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1720 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1720, &__block_literal_global_1721);
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __48__SSRVoiceProfileXPCServiceProxy_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(SSRVoiceProfileXPCServiceProxy);

  return MEMORY[0x2821F96F8]();
}

@end