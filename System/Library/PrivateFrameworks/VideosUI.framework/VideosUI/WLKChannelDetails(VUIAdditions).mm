@interface WLKChannelDetails(VUIAdditions)
- (id)appIconURLForSize:()VUIAdditions;
@end

@implementation WLKChannelDetails(VUIAdditions)

- (id)appIconURLForSize:()VUIAdditions
{
  images = [self images];
  v6 = [images bestArtworkVariantOfType:10 forSize:{a2, a3}];
  v7 = [v6 artworkURLForSize:@"png" format:{a2, a3}];

  return v7;
}

@end