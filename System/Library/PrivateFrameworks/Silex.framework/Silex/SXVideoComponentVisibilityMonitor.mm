@interface SXVideoComponentVisibilityMonitor
- (void)scrollingDidStop;
@end

@implementation SXVideoComponentVisibilityMonitor

- (void)scrollingDidStop
{
  [(SXVisibilityMonitor *)self unlock];

  [(SXVisibilityMonitor *)self updateVisibility];
}

@end