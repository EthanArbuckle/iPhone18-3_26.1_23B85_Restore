@interface SearchUIMediaPlayerViewController
- (SearchUIMediaPlayerViewController)initWithDestination:(id)destination;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SearchUIMediaPlayerViewController

- (SearchUIMediaPlayerViewController)initWithDestination:(id)destination
{
  destinationCopy = destination;
  v13.receiver = self;
  v13.super_class = SearchUIMediaPlayerViewController;
  v5 = [(SearchUIMediaPlayerViewController *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E6988098];
    urls = [destinationCopy urls];
    firstObject = [urls firstObject];
    v9 = [v6 playerWithURL:firstObject];

    auxiliarySession = [MEMORY[0x1E6958460] auxiliarySession];
    [v9 setAudioSession:auxiliarySession];

    audioSession = [v9 audioSession];
    [audioSession setCategory:*MEMORY[0x1E6958068] error:0];

    [(SearchUIMediaPlayerViewController *)v5 setAllowsPictureInPicturePlayback:0];
    [(SearchUIMediaPlayerViewController *)v5 setPlayer:v9];
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SearchUIMediaPlayerViewController;
  [(SearchUIMediaPlayerViewController *)&v5 viewDidAppear:appear];
  player = [(SearchUIMediaPlayerViewController *)self player];
  [player play];
}

@end