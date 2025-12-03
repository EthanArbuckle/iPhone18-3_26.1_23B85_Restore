@interface RCPPlayerPlaybackOptions
- (CGAffineTransform)transform;
- (RCPPlayerPlaybackOptions)init;
- (unint64_t)timestampForEventReplay:(id)replay;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation RCPPlayerPlaybackOptions

- (CGAffineTransform)transform
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (RCPPlayerPlaybackOptions)init
{
  v7.receiver = self;
  v7.super_class = RCPPlayerPlaybackOptions;
  v2 = [(RCPPlayerPlaybackOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(RCPPlayerPlaybackOptions *)v2 setPlaybackSpeedFactor:1.0];
    [(RCPPlayerPlaybackOptions *)v3 setMinDelayBetweenSends:0.0];
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v6[0] = *MEMORY[0x277CBF2C0];
    v6[1] = v4;
    v6[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(RCPPlayerPlaybackOptions *)v3 setTransform:v6];
    [(RCPPlayerPlaybackOptions *)v3 setLinkEventDeliveryToDisplayRefreshRate:0];
  }

  return v3;
}

- (unint64_t)timestampForEventReplay:(id)replay
{
  if (self->_useHIDEventTimestampsForDelivery)
  {
    return [replay timestamp];
  }

  else
  {
    return [replay deliveryTimestamp];
  }
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_transform.c = *&transform->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

@end