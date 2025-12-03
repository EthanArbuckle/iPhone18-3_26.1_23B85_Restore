@interface SOSVoiceUtteranceVariants
+ (id)utteranceVariantsWithLocalUtterances:(id)utterances remoteUtterances:(id)remoteUtterances;
- (BOOL)hasUtterances;
- (id)description;
@end

@implementation SOSVoiceUtteranceVariants

- (BOOL)hasUtterances
{
  localUtterances = [(SOSVoiceUtteranceVariants *)self localUtterances];
  v4 = [localUtterances count];
  remoteUtterances = [(SOSVoiceUtteranceVariants *)self remoteUtterances];
  LOBYTE(v4) = v4 + [remoteUtterances count] != 0;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  localUtterances = [(SOSVoiceUtteranceVariants *)self localUtterances];
  remoteUtterances = [(SOSVoiceUtteranceVariants *)self remoteUtterances];
  v7 = [v3 stringWithFormat:@"<%@ %p localUtterances=%@ remoteUtterances=%@", v4, self, localUtterances, remoteUtterances];

  return v7;
}

+ (id)utteranceVariantsWithLocalUtterances:(id)utterances remoteUtterances:(id)remoteUtterances
{
  remoteUtterancesCopy = remoteUtterances;
  utterancesCopy = utterances;
  v7 = objc_opt_new();
  [v7 setLocalUtterances:utterancesCopy];

  [v7 setRemoteUtterances:remoteUtterancesCopy];

  return v7;
}

@end