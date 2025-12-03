@interface AVPlayerViewController(VideosUIAdditions)
- (uint64_t)vui_allowInfoMetadataSubpanel;
- (uint64_t)vui_setAllowInfoMetadataSubpanel:()VideosUIAdditions;
@end

@implementation AVPlayerViewController(VideosUIAdditions)

- (uint64_t)vui_setAllowInfoMetadataSubpanel:()VideosUIAdditions
{
  result = [MEMORY[0x1E69DF6D0] isTVApp];
  if (result)
  {

    return [self setAllowInfoMetadataSubpanel:a3];
  }

  return result;
}

- (uint64_t)vui_allowInfoMetadataSubpanel
{
  if (![MEMORY[0x1E69DF6D0] isTVApp])
  {
    return 1;
  }

  return [self allowInfoMetadataSubpanel];
}

@end