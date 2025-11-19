@interface CHChannelDecibel
- (CHChannelDecibel)initWithOZChannel:(OZChannelBase *)a3 freeWhenDone:(BOOL)a4;
- (OZChannelDecibel)ozChannel;
@end

@implementation CHChannelDecibel

- (CHChannelDecibel)initWithOZChannel:(OZChannelBase *)a3 freeWhenDone:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = CHChannelDecibel;
  v4 = [(CHChannelBase *)&v7 initWithOZChannel:a3 freeWhenDone:a4];
  v5 = v4;
  if (v4)
  {
    [(CHChannel *)v4 setSliderTransformerName:@"PISliderTransformerDecibel"];
  }

  return v5;
}

- (OZChannelDecibel)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

@end