@interface SRSVoiceProfileManager
- (SRSVoiceProfileManager)init;
- (void)deleteUserVoiceProfile:(id)a3;
- (void)markSATEnrollmentSuccessForVoiceProfile:(id)a3 completion:(id)a4;
@end

@implementation SRSVoiceProfileManager

- (SRSVoiceProfileManager)init
{
  v6.receiver = self;
  v6.super_class = SRSVoiceProfileManager;
  v2 = [(SRSVoiceProfileManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D653F8] sharedInstance];
    voiceProfileManager = v2->_voiceProfileManager;
    v2->_voiceProfileManager = v3;
  }

  return v2;
}

- (void)markSATEnrollmentSuccessForVoiceProfile:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSRVoiceProfileManager *)self->_voiceProfileManager markSATEnrollmentSuccessForVoiceProfile:v7 completion:v6];
  }
}

- (void)deleteUserVoiceProfile:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SSRVoiceProfileManager *)self->_voiceProfileManager deleteUserVoiceProfile:v5];
  }
}

@end