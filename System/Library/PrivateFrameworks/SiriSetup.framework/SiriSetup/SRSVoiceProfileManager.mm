@interface SRSVoiceProfileManager
- (SRSVoiceProfileManager)init;
- (void)deleteUserVoiceProfile:(id)profile;
- (void)markSATEnrollmentSuccessForVoiceProfile:(id)profile completion:(id)completion;
@end

@implementation SRSVoiceProfileManager

- (SRSVoiceProfileManager)init
{
  v6.receiver = self;
  v6.super_class = SRSVoiceProfileManager;
  v2 = [(SRSVoiceProfileManager *)&v6 init];
  if (v2)
  {
    mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
    voiceProfileManager = v2->_voiceProfileManager;
    v2->_voiceProfileManager = mEMORY[0x277D653F8];
  }

  return v2;
}

- (void)markSATEnrollmentSuccessForVoiceProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSRVoiceProfileManager *)self->_voiceProfileManager markSATEnrollmentSuccessForVoiceProfile:profileCopy completion:completionCopy];
  }
}

- (void)deleteUserVoiceProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SSRVoiceProfileManager *)self->_voiceProfileManager deleteUserVoiceProfile:profileCopy];
  }
}

@end