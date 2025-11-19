@interface RDVAVisionKWSSpotter
- (RDVAVisionKWSSpotter)initWithDelegate:(id)a3;
- (void)addAudioSamples:(void *)a3 count:(int)a4;
@end

@implementation RDVAVisionKWSSpotter

- (RDVAVisionKWSSpotter)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RDVAVisionKWSSpotter;
  v5 = [(RDVAVisionKWSSpotter *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter alloc] initWithDelegate:v4];
    swiftVisionKWSSpotter = v5->_swiftVisionKWSSpotter;
    v5->_swiftVisionKWSSpotter = v6;
  }

  return v5;
}

- (void)addAudioSamples:(void *)a3 count:(int)a4
{
  v7 = a4;
  v11 = [[NSMutableArray alloc] initWithCapacity:a4];
  if (a4 >= 1)
  {
    v8 = a4;
    do
    {
      v9 = *a3;
      a3 = a3 + 2;
      v10 = [NSNumber numberWithInt:v9];
      [v11 addObject:v10];

      --v8;
    }

    while (v8);
  }

  [(RDVASwiftVisionKWSSpotter *)self->_swiftVisionKWSSpotter addAudioSamplesWithAudio:v11 count:v7];
}

@end