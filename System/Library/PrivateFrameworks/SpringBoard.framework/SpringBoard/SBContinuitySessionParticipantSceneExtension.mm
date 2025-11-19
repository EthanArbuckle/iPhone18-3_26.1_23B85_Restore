@interface SBContinuitySessionParticipantSceneExtension
+ (id)settingsExtensions;
@end

@implementation SBContinuitySessionParticipantSceneExtension

+ (id)settingsExtensions
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = [MEMORY[0x277D0AE08] extensionForProtocol:&unk_2835FD468];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end