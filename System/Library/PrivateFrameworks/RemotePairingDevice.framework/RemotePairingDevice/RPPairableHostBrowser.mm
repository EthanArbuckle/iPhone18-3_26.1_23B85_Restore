@interface RPPairableHostBrowser
- (void)cancel;
- (void)startBrowsing;
@end

@implementation RPPairableHostBrowser

- (void)startBrowsing
{
  selfCopy = self;
  RPPairableHostBrowser.startBrowsing()();
}

- (void)cancel
{
  selfCopy = self;
  RPPairableHostBrowser.cancel()();
}

@end