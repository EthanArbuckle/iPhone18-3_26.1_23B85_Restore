@interface BRCStringAdditions
+ (id)_br_currentMobileDocumentsDirForLegacy;
@end

@implementation BRCStringAdditions

+ (id)_br_currentMobileDocumentsDirForLegacy
{
  if (BRCurrentPersonaIsDataSeparated())
  {
    homeDirForCurrentPersona = [MEMORY[0x277CCACA8] br_personaGroupDirForFPFS:0];
    v3 = [homeDirForCurrentPersona stringByAppendingPathComponent:@"File Provider Storage/Library/Mobile Documents"];
  }

  else
  {
    homeDirForCurrentPersona = [MEMORY[0x277CFAEF0] homeDirForCurrentPersona];
    v4 = [homeDirForCurrentPersona stringByAppendingPathComponent:@"Library"];
    v3 = [v4 stringByAppendingPathComponent:*MEMORY[0x277CFAD60]];
  }

  return v3;
}

@end