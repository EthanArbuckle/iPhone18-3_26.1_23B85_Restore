@interface SRSVTPreferences
- (BOOL)compactVoiceTriggerEnabled:(id)enabled;
- (SRSVTPreferences)init;
@end

@implementation SRSVTPreferences

- (SRSVTPreferences)init
{
  v6.receiver = self;
  v6.super_class = SRSVTPreferences;
  v2 = [(SRSVTPreferences *)&v6 init];
  if (v2)
  {
    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    preferences = v2->_preferences;
    v2->_preferences = mEMORY[0x277D7A8D0];
  }

  return v2;
}

- (BOOL)compactVoiceTriggerEnabled:(id)enabled
{
  enabledCopy = enabled;
  compactVoiceTriggerEnabledOverride = self->compactVoiceTriggerEnabledOverride;
  if (compactVoiceTriggerEnabledOverride)
  {
    bOOLValue = [(NSNumber *)compactVoiceTriggerEnabledOverride BOOLValue];
  }

  else
  {
    preferences = self->_preferences;
    v12 = 0;
    v8 = [(VTPreferences *)preferences getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:&v12];
    v9 = v12;
    v10 = [(VTPreferences *)self->_preferences isCompactVoiceTriggerAvailableForLanguageCode:enabledCopy];
    if (v9)
    {
      NSLog(&cfstr_Getuserpreferr.isa, v9, v8);
    }

    bOOLValue = (v8 == 1) & v10;
  }

  return bOOLValue;
}

@end