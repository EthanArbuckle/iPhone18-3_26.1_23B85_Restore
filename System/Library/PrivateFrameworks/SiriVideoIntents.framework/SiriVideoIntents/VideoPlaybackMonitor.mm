@interface VideoPlaybackMonitor
- (void)controller:(id)controller didFailWithError:(id)error;
- (void)controller:(id)controller didLoadResponse:(id)response;
- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to;
- (void)controller:(id)controller playerPathDidChange:(id)change;
- (void)controllerWillReloadForInvalidation:(id)invalidation;
@end

@implementation VideoPlaybackMonitor

- (void)controller:(id)controller didLoadResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;

  sub_26983E8A4();
}

- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to
{
  controllerCopy = controller;

  sub_26983ED08();
}

- (void)controller:(id)controller playerPathDidChange:(id)change
{
  controllerCopy = controller;
  changeCopy = change;

  sub_26983F018();
}

- (void)controllerWillReloadForInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;

  sub_26983F45C();
}

- (void)controller:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;

  sub_26983F720();
}

@end