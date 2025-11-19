@interface _PUVideoView
- (void)setPlayer:(id)a3;
@end

@implementation _PUVideoView

- (void)setPlayer:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_player, a3);
  v5 = [(_PUVideoView *)self layer];
  [v8 attachToPlayerLayerIfNeeded:v5];

  v6 = v8;
  if (!v8)
  {
    v7 = [(_PUVideoView *)self layer];
    [v7 setWrappedPlayer:0];

    v6 = 0;
  }
}

@end