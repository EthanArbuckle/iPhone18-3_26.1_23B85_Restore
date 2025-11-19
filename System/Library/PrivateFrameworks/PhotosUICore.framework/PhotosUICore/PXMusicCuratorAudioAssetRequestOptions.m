@interface PXMusicCuratorAudioAssetRequestOptions
- (NSDictionary)requestOptions;
@end

@implementation PXMusicCuratorAudioAssetRequestOptions

- (NSDictionary)requestOptions
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69BEB58];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXMusicCuratorAudioAssetRequestOptions forceMetadataRefetch](self, "forceMetadataRefetch")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end