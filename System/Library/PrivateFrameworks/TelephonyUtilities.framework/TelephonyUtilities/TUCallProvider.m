@interface TUCallProvider
- (TUCallProvider)initWithCallSource:(id)a3 configuration:(id)a4;
@end

@implementation TUCallProvider

- (TUCallProvider)initWithCallSource:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(TUCallProvider *)self initWithIdentifier:v8];

  if (v9)
  {
    v10 = [v6 bundleURL];
    [(TUCallProvider *)v9 setBundleURL:v10];

    v11 = [v6 bundleIdentifier];
    [(TUCallProvider *)v9 setBundleIdentifier:v11];

    v12 = [v7 handoffIdentifiers];
    [(TUCallProvider *)v9 setHandoffIdentifiers:v12];

    v13 = [v6 localizedName];
    [(TUCallProvider *)v9 setLocalizedName:v13];

    v14 = [v7 prioritizedTUSenderIdentities];
    [(TUCallProvider *)v9 setPrioritizedSenderIdentities:v14];

    v15 = [v7 ringtoneSoundURL];
    v16 = [v15 URL];
    [(TUCallProvider *)v9 setOriginalRingtoneSoundURL:v16];

    v17 = [v7 ringtoneSoundURL];
    -[TUCallProvider setSandboxExtensionHandle:](v9, "setSandboxExtensionHandle:", [v17 sandboxExtensionHandle]);

    v18 = [v7 iconTemplateImageData];
    [(TUCallProvider *)v9 setIconTemplateImageData:v18];

    -[TUCallProvider setMaximumCallGroups:](v9, "setMaximumCallGroups:", [v7 maximumCallGroups]);
    -[TUCallProvider setMaximumCallsPerCallGroup:](v9, "setMaximumCallsPerCallGroup:", [v7 maximumCallsPerCallGroup]);
    -[TUCallProvider setSupportsAudioOnly:](v9, "setSupportsAudioOnly:", [v7 supportsAudioOnly]);
    -[TUCallProvider setSupportsAudioAndVideo:](v9, "setSupportsAudioAndVideo:", [v7 supportsVideo]);
    -[TUCallProvider setSupportsEmergency:](v9, "setSupportsEmergency:", [v7 supportsEmergency]);
    -[TUCallProvider setSupportsVoicemail:](v9, "setSupportsVoicemail:", [v7 supportsVoicemail]);
    -[TUCallProvider setSupportsRecents:](v9, "setSupportsRecents:", [v7 includesCallsInRecents]);
    -[TUCallProvider setAudioSessionID:](v9, "setAudioSessionID:", [v7 audioSessionID]);
    v19 = [v7 supportedTUHandleTypes];
    [(TUCallProvider *)v9 setSupportedHandleTypes:v19];

    v20 = [v7 emergencyTUHandles];
    [(TUCallProvider *)v9 setEmergencyHandles:v20];

    v21 = [v7 emergencyTULabeledHandles];
    [(TUCallProvider *)v9 setEmergencyLabeledHandles:v21];

    -[TUCallProvider setSupportsCurrentPlatform:](v9, "setSupportsCurrentPlatform:", [v7 supportsCurrentPlatform]);
    -[TUCallProvider setSupportsRinging:](v9, "setSupportsRinging:", [v7 supportsRinging]);
    -[TUCallProvider setSupportsDynamicSystemUI:](v9, "setSupportsDynamicSystemUI:", [v7 supportsDynamicSystemUI]);
    -[TUCallProvider setSupportsAudioTranslation:](v9, "setSupportsAudioTranslation:", [v7 supportsAudioTranslation]);
  }

  return v9;
}

@end