@interface RPPairableHostBrowser
- (void)cancel;
- (void)startBrowsing;
@end

@implementation RPPairableHostBrowser

- (void)startBrowsing
{
  v2 = self;
  RPPairableHostBrowser.startBrowsing()();
}

- (void)cancel
{
  v2 = self;
  RPPairableHostBrowser.cancel()();
}

@end