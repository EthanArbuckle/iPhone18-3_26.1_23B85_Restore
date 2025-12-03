@interface TSKAVQueuePlayerController
- (TSKAVQueuePlayerController)initWithQueuePlayer:(id)player delegate:(id)delegate assets:(id)assets initialAssetIndex:(unint64_t)index;
- (void)dealloc;
- (void)p_enqueueAssetsFromIndex:(unint64_t)index;
- (void)playerItemDidPlayToEndTimeAtRate:(float)rate;
- (void)skipToAssetAtIndex:(unint64_t)index;
@end

@implementation TSKAVQueuePlayerController

- (TSKAVQueuePlayerController)initWithQueuePlayer:(id)player delegate:(id)delegate assets:(id)assets initialAssetIndex:(unint64_t)index
{
  v11.receiver = self;
  v11.super_class = TSKAVQueuePlayerController;
  v9 = [(TSKAVPlayerController *)&v11 initWithPlayer:player delegate:delegate];
  if (v9)
  {
    v9->mAssets = [assets copy];
    [player setActionAtItemEnd:0];
    [(TSKAVQueuePlayerController *)v9 p_enqueueAssetsFromIndex:index];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKAVQueuePlayerController;
  [(TSKAVPlayerController *)&v3 dealloc];
}

- (void)playerItemDidPlayToEndTimeAtRate:(float)rate
{
  player = [(TSKAVPlayerController *)self player];
  if ([-[AVPlayer items](player "items")] == 1)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    if ([(TSKAVPlayerController *)self repeatMode]== 1)
    {
      [(TSKAVQueuePlayerController *)self p_enqueueAssetsFromIndex:0];
      *&v5 = rate;

      [(AVPlayer *)player setRate:v5];
    }

    else
    {
      selfCopy = self;
      [(AVPlayer *)player setRate:0.0];
      [(TSKAVPlayerControllerDelegate *)[(TSKAVPlayerController *)self delegate] playbackDidStopForPlayerController:self];
    }
  }
}

- (void)skipToAssetAtIndex:(unint64_t)index
{
  [(TSKAVPlayerController *)self setPlaying:0];
  [[(TSKAVPlayerController *)self player] removeAllItems];

  [(TSKAVQueuePlayerController *)self p_enqueueAssetsFromIndex:index];
}

- (void)p_enqueueAssetsFromIndex:(unint64_t)index
{
  v17 = *MEMORY[0x277D85DE8];
  player = [(TSKAVPlayerController *)self player];
  v6 = [(NSArray *)self->mAssets count];
  if (v6 > index)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSArray *)self->mAssets subarrayWithRange:index, v6 - index, 0];
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

          -[AVPlayer insertItem:afterItem:](player, "insertItem:afterItem:", [MEMORY[0x277CE65B0] playerItemWithAsset:*(*(&v12 + 1) + 8 * i)], 0);
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

@end