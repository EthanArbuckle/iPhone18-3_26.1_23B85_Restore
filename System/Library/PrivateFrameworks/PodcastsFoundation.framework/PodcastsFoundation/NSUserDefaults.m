@interface NSUserDefaults
@end

@implementation NSUserDefaults

void __73__NSUserDefaults_MTAdditions___applePodcastsFoundationSharedUserDefaults__block_invoke()
{
  v4 = +[MTConstants sharedContainerURL];
  v0 = [objc_alloc(MEMORY[0x1E695E000]) _initWithSuiteName:@"243LU875E5.groups.com.apple.podcasts" container:v4];
  v1 = _applePodcastsFoundationSharedUserDefaults_defaults;
  _applePodcastsFoundationSharedUserDefaults_defaults = v0;

  v2 = _applePodcastsFoundationSharedUserDefaults_defaults;
  v3 = [MTPreferences defaultSettings:_applePodcastsFoundationSharedUserDefaults_defaults];
  [v2 registerDefaults:v3];
}

@end