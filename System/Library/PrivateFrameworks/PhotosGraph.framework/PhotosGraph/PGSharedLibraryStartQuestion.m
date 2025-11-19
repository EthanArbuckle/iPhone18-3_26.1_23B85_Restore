@interface PGSharedLibraryStartQuestion
- (PGSharedLibraryStartQuestion)init;
@end

@implementation PGSharedLibraryStartQuestion

- (PGSharedLibraryStartQuestion)init
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = PGSharedLibraryStartQuestion;
  v2 = [(PGSharedLibraryStartQuestion *)&v9 init];
  v3 = v2;
  if (v2)
  {
    entityIdentifier = v2->_entityIdentifier;
    v2->_entityIdentifier = @"SharedLibraryStartQuestion";

    v3->_localFactoryScore = 1.0;
    v3->_state = 0;
    v10 = *MEMORY[0x277D3C8D0];
    v11[0] = @"?";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    additionalInfo = v3->_additionalInfo;
    v3->_additionalInfo = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

@end