@interface PKDiscoveryInlineVideoMediaShelfView
- (PKDiscoveryInlineVideoMediaShelfView)initWithShelf:(id)shelf;
@end

@implementation PKDiscoveryInlineVideoMediaShelfView

- (PKDiscoveryInlineVideoMediaShelfView)initWithShelf:(id)shelf
{
  shelfCopy = shelf;
  v5 = [PKPlayerView alloc];
  v6 = [(PKPlayerView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v14.receiver = self;
  v14.super_class = PKDiscoveryInlineVideoMediaShelfView;
  v7 = [(PKDiscoveryInlineCaptionedMediaShelfView *)&v14 initWithShelf:shelfCopy mediaView:v6];

  if (v7)
  {
    urls = [(PKDiscoveryMedia *)v7->super._media urls];
    allValues = [urls allValues];
    firstObject = [allValues firstObject];

    playerMediaView = [(PKDiscoveryInlineVideoMediaShelfView *)v7 playerMediaView];
    v12 = [firstObject url];
    [playerMediaView playItemAtURL:v12];
  }

  return v7;
}

@end