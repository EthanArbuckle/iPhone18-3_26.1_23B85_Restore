@interface PGTopPeopleWallpaperSuggester
- (void)setupFilteringContexts;
@end

@implementation PGTopPeopleWallpaperSuggester

- (void)setupFilteringContexts
{
  IsIPad = PLPhysicalDeviceIsIPad();
  v4 = [PGPeopleWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v5 = [(PGPeopleWallpaperSuggesterFilteringContext *)v4 initForTopPeopleInOrientation:2];
    [(PGPeopleWallpaperSuggester *)self setPrimaryFilteringContext:v5];

    v7 = [[PGPeopleWallpaperSuggesterFilteringContext alloc] initForTopPeopleInOrientation:1];
    [(PGPeopleWallpaperSuggester *)self setSecondaryFilteringContext:v7];
  }

  else
  {
    v6 = [(PGPeopleWallpaperSuggesterFilteringContext *)v4 initForTopPeopleInOrientation:1];
    [(PGPeopleWallpaperSuggester *)self setPrimaryFilteringContext:v6];

    [(PGPeopleWallpaperSuggester *)self setSecondaryFilteringContext:0];
  }
}

@end