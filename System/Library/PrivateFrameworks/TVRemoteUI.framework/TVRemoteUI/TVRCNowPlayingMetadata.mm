@interface TVRCNowPlayingMetadata
@end

@implementation TVRCNowPlayingMetadata

uint64_t __74__TVRCNowPlayingMetadata_NowPlayingInfoViewAdditions__tvrui_formattedInfo__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t __84__TVRCNowPlayingMetadata_NowPlayingInfoViewAdditions__infoview_formattedReleaseDate__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = infoview_formattedReleaseDate_formatter;
  infoview_formattedReleaseDate_formatter = v0;

  [infoview_formattedReleaseDate_formatter setDateStyle:2];
  v2 = infoview_formattedReleaseDate_formatter;

  return [v2 setTimeStyle:0];
}

@end