@interface VideoPlaybackMonitor
- (void)controller:(id)a3 didFailWithError:(id)a4;
- (void)controller:(id)a3 didLoadResponse:(id)a4;
- (void)controller:(id)a3 playbackStateDidChangeFrom:(unsigned int)a4 to:(unsigned int)a5;
- (void)controller:(id)a3 playerPathDidChange:(id)a4;
- (void)controllerWillReloadForInvalidation:(id)a3;
@end

@implementation VideoPlaybackMonitor

- (void)controller:(id)a3 didLoadResponse:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_26983E8A4();
}

- (void)controller:(id)a3 playbackStateDidChangeFrom:(unsigned int)a4 to:(unsigned int)a5
{
  v5 = a3;

  sub_26983ED08();
}

- (void)controller:(id)a3 playerPathDidChange:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_26983F018();
}

- (void)controllerWillReloadForInvalidation:(id)a3
{
  v3 = a3;

  sub_26983F45C();
}

- (void)controller:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_26983F720();
}

@end