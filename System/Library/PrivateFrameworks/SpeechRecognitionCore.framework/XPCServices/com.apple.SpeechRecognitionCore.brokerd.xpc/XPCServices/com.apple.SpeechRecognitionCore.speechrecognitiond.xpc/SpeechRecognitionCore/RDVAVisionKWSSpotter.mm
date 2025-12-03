@interface RDVAVisionKWSSpotter
- (RDVAVisionKWSSpotter)initWithDelegate:(id)delegate;
- (void)addAudioSamples:(void *)samples count:(int)count;
@end

@implementation RDVAVisionKWSSpotter

- (RDVAVisionKWSSpotter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = RDVAVisionKWSSpotter;
  v5 = [(RDVAVisionKWSSpotter *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter alloc] initWithDelegate:delegateCopy];
    swiftVisionKWSSpotter = v5->_swiftVisionKWSSpotter;
    v5->_swiftVisionKWSSpotter = v6;
  }

  return v5;
}

- (void)addAudioSamples:(void *)samples count:(int)count
{
  countCopy = count;
  v11 = [[NSMutableArray alloc] initWithCapacity:count];
  if (count >= 1)
  {
    countCopy2 = count;
    do
    {
      v9 = *samples;
      samples = samples + 2;
      v10 = [NSNumber numberWithInt:v9];
      [v11 addObject:v10];

      --countCopy2;
    }

    while (countCopy2);
  }

  [(RDVASwiftVisionKWSSpotter *)self->_swiftVisionKWSSpotter addAudioSamplesWithAudio:v11 count:countCopy];
}

@end