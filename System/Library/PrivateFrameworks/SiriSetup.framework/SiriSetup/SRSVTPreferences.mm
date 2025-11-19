@interface SRSVTPreferences
- (BOOL)compactVoiceTriggerEnabled:(id)a3;
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
    v3 = [MEMORY[0x277D7A8D0] sharedPreferences];
    preferences = v2->_preferences;
    v2->_preferences = v3;
  }

  return v2;
}

- (BOOL)compactVoiceTriggerEnabled:(id)a3
{
  v4 = a3;
  compactVoiceTriggerEnabledOverride = self->compactVoiceTriggerEnabledOverride;
  if (compactVoiceTriggerEnabledOverride)
  {
    v6 = [(NSNumber *)compactVoiceTriggerEnabledOverride BOOLValue];
  }

  else
  {
    preferences = self->_preferences;
    v12 = 0;
    v8 = [(VTPreferences *)preferences getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:&v12];
    v9 = v12;
    v10 = [(VTPreferences *)self->_preferences isCompactVoiceTriggerAvailableForLanguageCode:v4];
    if (v9)
    {
      NSLog(&cfstr_Getuserpreferr.isa, v9, v8);
    }

    v6 = (v8 == 1) & v10;
  }

  return v6;
}

@end