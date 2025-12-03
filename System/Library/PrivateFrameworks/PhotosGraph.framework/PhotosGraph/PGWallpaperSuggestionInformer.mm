@interface PGWallpaperSuggestionInformer
- (PGWallpaperSuggestionInformer)initWithWorkingContext:(id)context;
- (id)personLocalIdentifiersForTopPeople:(BOOL)people;
@end

@implementation PGWallpaperSuggestionInformer

- (id)personLocalIdentifiersForTopPeople:(BOOL)people
{
  peopleCopy = people;
  v4 = [[PGSuggestionSession alloc] initWithProfile:2 workingContext:self->_workingContext];
  v5 = off_27887C1B0;
  if (!peopleCopy)
  {
    v5 = off_27887BC10;
  }

  v6 = [objc_alloc(*v5) initWithSession:v4];
  v7 = [v6 personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress:&__block_literal_global_32628];
  v8 = MEMORY[0x277CBEB98];
  allKeys = [v7 allKeys];
  v10 = [v8 setWithArray:allKeys];

  return v10;
}

- (PGWallpaperSuggestionInformer)initWithWorkingContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PGWallpaperSuggestionInformer;
  v6 = [(PGWallpaperSuggestionInformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, context);
  }

  return v7;
}

@end