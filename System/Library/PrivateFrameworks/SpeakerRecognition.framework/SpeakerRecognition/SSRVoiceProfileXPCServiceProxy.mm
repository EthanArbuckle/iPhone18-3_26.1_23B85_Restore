@interface SSRVoiceProfileXPCServiceProxy
+ (id)sharedInstance;
- (BOOL)fetchEnrollmentStatusForSiriProfileId:(id)id forLanguageCode:(id)code;
@end

@implementation SSRVoiceProfileXPCServiceProxy

- (BOOL)fetchEnrollmentStatusForSiriProfileId:(id)id forLanguageCode:(id)code
{
  codeCopy = code;
  idCopy = id;
  v7 = +[SSRVoiceProfileManager sharedInstance];
  v8 = [v7 isSATEnrolledForSiriProfileId:idCopy forLanguageCode:codeCopy];

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