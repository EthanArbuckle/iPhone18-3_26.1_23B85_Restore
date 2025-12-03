@interface TUCallProvider
- (TUCallProvider)initWithCallSource:(id)source configuration:(id)configuration;
@end

@implementation TUCallProvider

- (TUCallProvider)initWithCallSource:(id)source configuration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  identifier = [sourceCopy identifier];
  v9 = [(TUCallProvider *)self initWithIdentifier:identifier];

  if (v9)
  {
    bundleURL = [sourceCopy bundleURL];
    [(TUCallProvider *)v9 setBundleURL:bundleURL];

    bundleIdentifier = [sourceCopy bundleIdentifier];
    [(TUCallProvider *)v9 setBundleIdentifier:bundleIdentifier];

    handoffIdentifiers = [configurationCopy handoffIdentifiers];
    [(TUCallProvider *)v9 setHandoffIdentifiers:handoffIdentifiers];

    localizedName = [sourceCopy localizedName];
    [(TUCallProvider *)v9 setLocalizedName:localizedName];

    prioritizedTUSenderIdentities = [configurationCopy prioritizedTUSenderIdentities];
    [(TUCallProvider *)v9 setPrioritizedSenderIdentities:prioritizedTUSenderIdentities];

    ringtoneSoundURL = [configurationCopy ringtoneSoundURL];
    v16 = [ringtoneSoundURL URL];
    [(TUCallProvider *)v9 setOriginalRingtoneSoundURL:v16];

    ringtoneSoundURL2 = [configurationCopy ringtoneSoundURL];
    -[TUCallProvider setSandboxExtensionHandle:](v9, "setSandboxExtensionHandle:", [ringtoneSoundURL2 sandboxExtensionHandle]);

    iconTemplateImageData = [configurationCopy iconTemplateImageData];
    [(TUCallProvider *)v9 setIconTemplateImageData:iconTemplateImageData];

    -[TUCallProvider setMaximumCallGroups:](v9, "setMaximumCallGroups:", [configurationCopy maximumCallGroups]);
    -[TUCallProvider setMaximumCallsPerCallGroup:](v9, "setMaximumCallsPerCallGroup:", [configurationCopy maximumCallsPerCallGroup]);
    -[TUCallProvider setSupportsAudioOnly:](v9, "setSupportsAudioOnly:", [configurationCopy supportsAudioOnly]);
    -[TUCallProvider setSupportsAudioAndVideo:](v9, "setSupportsAudioAndVideo:", [configurationCopy supportsVideo]);
    -[TUCallProvider setSupportsEmergency:](v9, "setSupportsEmergency:", [configurationCopy supportsEmergency]);
    -[TUCallProvider setSupportsVoicemail:](v9, "setSupportsVoicemail:", [configurationCopy supportsVoicemail]);
    -[TUCallProvider setSupportsRecents:](v9, "setSupportsRecents:", [configurationCopy includesCallsInRecents]);
    -[TUCallProvider setAudioSessionID:](v9, "setAudioSessionID:", [configurationCopy audioSessionID]);
    supportedTUHandleTypes = [configurationCopy supportedTUHandleTypes];
    [(TUCallProvider *)v9 setSupportedHandleTypes:supportedTUHandleTypes];

    emergencyTUHandles = [configurationCopy emergencyTUHandles];
    [(TUCallProvider *)v9 setEmergencyHandles:emergencyTUHandles];

    emergencyTULabeledHandles = [configurationCopy emergencyTULabeledHandles];
    [(TUCallProvider *)v9 setEmergencyLabeledHandles:emergencyTULabeledHandles];

    -[TUCallProvider setSupportsCurrentPlatform:](v9, "setSupportsCurrentPlatform:", [configurationCopy supportsCurrentPlatform]);
    -[TUCallProvider setSupportsRinging:](v9, "setSupportsRinging:", [configurationCopy supportsRinging]);
    -[TUCallProvider setSupportsDynamicSystemUI:](v9, "setSupportsDynamicSystemUI:", [configurationCopy supportsDynamicSystemUI]);
    -[TUCallProvider setSupportsAudioTranslation:](v9, "setSupportsAudioTranslation:", [configurationCopy supportsAudioTranslation]);
  }

  return v9;
}

@end