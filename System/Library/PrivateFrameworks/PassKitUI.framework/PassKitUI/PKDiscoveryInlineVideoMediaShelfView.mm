@interface PKDiscoveryInlineVideoMediaShelfView
- (PKDiscoveryInlineVideoMediaShelfView)initWithShelf:(id)a3;
@end

@implementation PKDiscoveryInlineVideoMediaShelfView

- (PKDiscoveryInlineVideoMediaShelfView)initWithShelf:(id)a3
{
  v4 = a3;
  v5 = [PKPlayerView alloc];
  v6 = [(PKPlayerView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v14.receiver = self;
  v14.super_class = PKDiscoveryInlineVideoMediaShelfView;
  v7 = [(PKDiscoveryInlineCaptionedMediaShelfView *)&v14 initWithShelf:v4 mediaView:v6];

  if (v7)
  {
    v8 = [(PKDiscoveryMedia *)v7->super._media urls];
    v9 = [v8 allValues];
    v10 = [v9 firstObject];

    v11 = [(PKDiscoveryInlineVideoMediaShelfView *)v7 playerMediaView];
    v12 = [v10 url];
    [v11 playItemAtURL:v12];
  }

  return v7;
}

@end