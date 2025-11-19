@interface TSKAVQueuePlayerController
- (TSKAVQueuePlayerController)initWithQueuePlayer:(id)a3 delegate:(id)a4 assets:(id)a5 initialAssetIndex:(unint64_t)a6;
- (void)dealloc;
- (void)p_enqueueAssetsFromIndex:(unint64_t)a3;
- (void)playerItemDidPlayToEndTimeAtRate:(float)a3;
- (void)skipToAssetAtIndex:(unint64_t)a3;
@end

@implementation TSKAVQueuePlayerController

- (TSKAVQueuePlayerController)initWithQueuePlayer:(id)a3 delegate:(id)a4 assets:(id)a5 initialAssetIndex:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = TSKAVQueuePlayerController;
  v9 = [(TSKAVPlayerController *)&v11 initWithPlayer:a3 delegate:a4];
  if (v9)
  {
    v9->mAssets = [a5 copy];
    [a3 setActionAtItemEnd:0];
    [(TSKAVQueuePlayerController *)v9 p_enqueueAssetsFromIndex:a6];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKAVQueuePlayerController;
  [(TSKAVPlayerController *)&v3 dealloc];
}

- (void)playerItemDidPlayToEndTimeAtRate:(float)a3
{
  v4 = [(TSKAVPlayerController *)self player];
  if ([-[AVPlayer items](v4 "items")] == 1)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    if ([(TSKAVPlayerController *)self repeatMode]== 1)
    {
      [(TSKAVQueuePlayerController *)self p_enqueueAssetsFromIndex:0];
      *&v5 = a3;

      [(AVPlayer *)v4 setRate:v5];
    }

    else
    {
      v6 = self;
      [(AVPlayer *)v4 setRate:0.0];
      [(TSKAVPlayerControllerDelegate *)[(TSKAVPlayerController *)self delegate] playbackDidStopForPlayerController:self];
    }
  }
}

- (void)skipToAssetAtIndex:(unint64_t)a3
{
  [(TSKAVPlayerController *)self setPlaying:0];
  [[(TSKAVPlayerController *)self player] removeAllItems];

  [(TSKAVQueuePlayerController *)self p_enqueueAssetsFromIndex:a3];
}

- (void)p_enqueueAssetsFromIndex:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(TSKAVPlayerController *)self player];
  v6 = [(NSArray *)self->mAssets count];
  if (v6 > a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSArray *)self->mAssets subarrayWithRange:a3, v6 - a3, 0];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          -[AVPlayer insertItem:afterItem:](v5, "insertItem:afterItem:", [MEMORY[0x277CE65B0] playerItemWithAsset:*(*(&v12 + 1) + 8 * i)], 0);
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

@end