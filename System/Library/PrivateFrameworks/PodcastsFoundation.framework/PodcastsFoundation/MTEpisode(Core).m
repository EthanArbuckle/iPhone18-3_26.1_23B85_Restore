@interface MTEpisode(Core)
- (void)setAssetURL:()Core;
@end

@implementation MTEpisode(Core)

- (void)setAssetURL:()Core
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [(MTEpisode *)self setSecurityScopedAssetData:0];
    v4 = 0;
  }

  [(MTEpisode *)self _setAssetUrl:v4];
}

- (void)setPodcastUuid:()Core .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 podcastUuid];
  v5 = [a1 uuid];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_fault_impl(&dword_1D8CEC000, a2, OS_LOG_TYPE_FAULT, "Setting podcastUuid from %@ to nil will cause an exception on context save. Episode: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end