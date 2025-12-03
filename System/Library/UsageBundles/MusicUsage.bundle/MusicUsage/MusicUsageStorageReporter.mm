@interface MusicUsageStorageReporter
- (MusicUsageStorageReporter)init;
- (float)sizeForCategory:(id)category;
- (id)queryForCategoryIdentifier:(id)identifier;
- (id)usageBundleApps;
- (void)reloadSizeForCategoryIdentifier:(id)identifier;
- (void)usageBundleApp:(id)app willDisplaySpecifier:(id *)specifier;
@end

@implementation MusicUsageStorageReporter

- (MusicUsageStorageReporter)init
{
  v6.receiver = self;
  v6.super_class = MusicUsageStorageReporter;
  v2 = [(MusicUsageStorageReporter *)&v6 init];
  if (v2)
  {
    [MPMediaQuery setFilteringDisabled:1];
    v3 = +[MPMediaLibrary deviceMediaLibrary];
    libraryDataProvider = [v3 libraryDataProvider];
    [MPMediaLibrary reloadDynamicPropertiesForLibraryDataProvider:libraryDataProvider];
  }

  return v2;
}

- (id)usageBundleApps
{
  v3 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsMusicShow];
  v5 = +[MPMediaQuery songsQuery];
  localSongsQuery = self->_localSongsQuery;
  self->_localSongsQuery = v5;

  [(MPMediaQuery *)self->_localSongsQuery setIgnoreSystemFilterPredicates:1];
  [(MPMediaQuery *)self->_localSongsQuery setIgnoreRestrictionsPredicates:1];
  [(MPMediaQuery *)self->_localSongsQuery setShouldIncludeNonLibraryEntities:1];
  [(MPMediaQuery *)self->_localSongsQuery addFilterPredicate:v3];
  [(MPMediaQuery *)self->_localSongsQuery setGroupingType:0];
  self->_localSongsFileSize = MusicUsageFileSizeForMediaQuery(self->_localSongsQuery);
  v7 = +[MPMediaQuery moviesQuery];
  localMusicMoviesQuery = self->_localMusicMoviesQuery;
  self->_localMusicMoviesQuery = v7;

  [(MPMediaQuery *)self->_localMusicMoviesQuery setIgnoreSystemFilterPredicates:1];
  [(MPMediaQuery *)self->_localMusicMoviesQuery setIgnoreRestrictionsPredicates:1];
  [(MPMediaQuery *)self->_localMusicMoviesQuery setShouldIncludeNonLibraryEntities:1];
  v29 = v3;
  [(MPMediaQuery *)self->_localMusicMoviesQuery addFilterPredicate:v3];
  v28 = v4;
  [(MPMediaQuery *)self->_localMusicMoviesQuery addFilterPredicate:v4];
  [(MPMediaQuery *)self->_localMusicMoviesQuery setGroupingType:0];
  self->_localMusicMoviesFileSize = MusicUsageFileSizeForMediaQuery(self->_localMusicMoviesQuery);
  v9 = +[MPMediaQuery tvShowsQuery];
  localMusicShowsQuery = self->_localMusicShowsQuery;
  self->_localMusicShowsQuery = v9;

  [(MPMediaQuery *)self->_localMusicShowsQuery setIgnoreSystemFilterPredicates:1];
  [(MPMediaQuery *)self->_localMusicShowsQuery setIgnoreRestrictionsPredicates:1];
  [(MPMediaQuery *)self->_localMusicShowsQuery setShouldIncludeNonLibraryEntities:1];
  [(MPMediaQuery *)self->_localMusicShowsQuery addFilterPredicate:v3];
  [(MPMediaQuery *)self->_localMusicShowsQuery addFilterPredicate:v4];
  [(MPMediaQuery *)self->_localMusicShowsQuery setGroupingType:0];
  self->_localMusicShowsFileSize = MusicUsageFileSizeForMediaQuery(self->_localMusicShowsQuery);
  *&v11 = [(MusicUsageStorageReporter *)self totalSize];
  v12 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:@"com.apple.MusicUsage" withTotalSize:v11];
  v13 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
  v14 = [v13 localizedStringForKey:@"BUNDLE_NAME" value:&stru_108A0 table:@"MusicUsage"];
  [v12 setName:v14];

  v27 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
  v26 = [v27 localizedStringForKey:@"ALL_MUSIC_HEADER" value:&stru_108A0 table:@"MusicUsage"];
  v25 = [PSUsageBundleCategory categoryNamed:v26 withIdentifier:@"MusicUsageCategoryLocalMusic" forUsageBundleApp:v12];
  v32[0] = v25;
  v15 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
  v16 = [v15 localizedStringForKey:@"MUSIC_MOVIES_HEADER" value:&stru_108A0 table:@"MusicUsage"];
  v17 = [PSUsageBundleCategory categoryNamed:v16 withIdentifier:@"MusicUsageCategoryMusicMovies" forUsageBundleApp:v12];
  v32[1] = v17;
  v18 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
  v19 = [v18 localizedStringForKey:@"MUSIC_SHOWS_HEADER" value:&stru_108A0 table:@"MusicUsage"];
  v20 = [PSUsageBundleCategory categoryNamed:v19 withIdentifier:@"MusicUsageCategoryMusicShows" forUsageBundleApp:v12];
  v32[2] = v20;
  v21 = [NSArray arrayWithObjects:v32 count:3];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_993C;
  v30[3] = &unk_10760;
  v30[4] = self;
  v22 = [v21 sortedArrayUsingComparator:v30];

  [v12 setCategories:v22];
  v31 = v12;
  v23 = [NSArray arrayWithObjects:&v31 count:1];

  return v23;
}

- (void)reloadSizeForCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"MusicUsageCategoryLocalMusic"])
  {
    self->_localSongsFileSize = MusicUsageFileSizeForMediaQuery(self->_localSongsQuery);
  }

  if ([identifierCopy isEqualToString:@"MusicUsageCategoryMusicMovies"])
  {
    self->_localMusicMoviesFileSize = MusicUsageFileSizeForMediaQuery(self->_localMusicMoviesQuery);
  }

  if ([identifierCopy isEqualToString:@"MusicUsageCategoryMusicShows"])
  {
    self->_localMusicShowsFileSize = MusicUsageFileSizeForMediaQuery(self->_localMusicShowsQuery);
  }
}

- (float)sizeForCategory:(id)category
{
  identifier = [category identifier];
  if ([identifier isEqualToString:@"MusicUsageCategoryLocalMusic"])
  {
    localSongsFileSize = self->_localSongsFileSize;
  }

  else
  {
    localSongsFileSize = 0;
  }

  if ([identifier isEqualToString:@"MusicUsageCategoryMusicMovies"])
  {
    localSongsFileSize = self->_localMusicMoviesFileSize;
  }

  if ([identifier isEqualToString:@"MusicUsageCategoryMusicShows"])
  {
    localSongsFileSize = self->_localMusicShowsFileSize;
  }

  return localSongsFileSize;
}

- (id)queryForCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"MusicUsageCategoryLocalMusic"])
  {
    v5 = self->_localSongsQuery;
  }

  else
  {
    v5 = 0;
  }

  if ([identifierCopy isEqualToString:@"MusicUsageCategoryMusicMovies"])
  {
    v6 = self->_localMusicMoviesQuery;

    v5 = v6;
  }

  if ([identifierCopy isEqualToString:@"MusicUsageCategoryMusicShows"])
  {
    v7 = self->_localMusicShowsQuery;

    v5 = v7;
  }

  return v5;
}

- (void)usageBundleApp:(id)app willDisplaySpecifier:(id *)specifier
{
  bundleIdentifier = [app bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.MusicUsage"];

  if (v6)
  {
    v7 = *specifier;
    v8 = [NSNumber numberWithBool:1];
    [v7 setProperty:v8 forKey:PSLazyIconLoading];

    v9 = *specifier;
    v10 = PSLazyIconAppID;

    [v9 setProperty:@"com.apple.Music" forKey:v10];
  }
}

@end