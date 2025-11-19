@interface SOSVoiceUtteranceVariants
+ (id)utteranceVariantsWithLocalUtterances:(id)a3 remoteUtterances:(id)a4;
- (BOOL)hasUtterances;
- (id)description;
@end

@implementation SOSVoiceUtteranceVariants

- (BOOL)hasUtterances
{
  v3 = [(SOSVoiceUtteranceVariants *)self localUtterances];
  v4 = [v3 count];
  v5 = [(SOSVoiceUtteranceVariants *)self remoteUtterances];
  LOBYTE(v4) = v4 + [v5 count] != 0;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SOSVoiceUtteranceVariants *)self localUtterances];
  v6 = [(SOSVoiceUtteranceVariants *)self remoteUtterances];
  v7 = [v3 stringWithFormat:@"<%@ %p localUtterances=%@ remoteUtterances=%@", v4, self, v5, v6];

  return v7;
}

+ (id)utteranceVariantsWithLocalUtterances:(id)a3 remoteUtterances:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setLocalUtterances:v6];

  [v7 setRemoteUtterances:v5];

  return v7;
}

@end