@interface AEAConcreteAirPlayPrimitives
- (AEAConcreteAirPlayPrimitives)init;
- (void)stopAirPlayingWithCompletion:(id)completion;
@end

@implementation AEAConcreteAirPlayPrimitives

- (AEAConcreteAirPlayPrimitives)init
{
  v6.receiver = self;
  v6.super_class = AEAConcreteAirPlayPrimitives;
  v2 = [(AEAConcreteAirPlayPrimitives *)&v6 init];
  if (v2)
  {
    v3 = +[AVOutputContext sharedSystemScreenContext];
    outputContext = v2->_outputContext;
    v2->_outputContext = v3;
  }

  return v2;
}

- (void)stopAirPlayingWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_outputContext;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003534;
  v6[3] = &unk_1000A6028;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AEAConcreteAirPlayPrimitives *)self setOutputDevice:0 options:0 completionHandler:v6];
}

@end