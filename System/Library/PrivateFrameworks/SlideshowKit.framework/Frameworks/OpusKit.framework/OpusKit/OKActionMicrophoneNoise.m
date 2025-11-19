@interface OKActionMicrophoneNoise
+ (id)microphoneNoiseActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 meanAudioLevel:(float)a6 context:(id)a7;
+ (id)microphoneNoiseActionWithState:(unint64_t)a3 meanAudioLevel:(float)a4 context:(id)a5;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionMicrophoneNoise)init;
- (OKActionMicrophoneNoise)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionMicrophoneNoise

+ (id)microphoneNoiseActionWithState:(unint64_t)a3 meanAudioLevel:(float)a4 context:(id)a5
{
  v7 = [OKActionMicrophoneNoise alloc];
  v8 = [(OKAction *)v7 initWithLocation:0 touchCount:a5 context:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v8[22] = a4;

  return v8;
}

+ (id)microphoneNoiseActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 meanAudioLevel:(float)a6 context:(id)a7
{
  v8 = [[OKActionMicrophoneNoise alloc] initWithState:a3 location:a5 touchCount:a7 context:a4.x, a4.y];
  v8->_meanAudioLevel = a6;

  return v8;
}

- (OKActionMicrophoneNoise)init
{
  v3.receiver = self;
  v3.super_class = OKActionMicrophoneNoise;
  result = [(OKAction *)&v3 init];
  if (result)
  {
    result->_meanAudioLevel = 0.0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = OKActionMicrophoneNoise;
  [(OKAction *)&v5 encodeWithCoder:?];
  if (self->_meanAudioLevel != 0.0)
  {
    [a3 encodeFloat:@"meanAudioLevel" forKey:?];
  }
}

- (OKActionMicrophoneNoise)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKActionMicrophoneNoise;
  v4 = [(OKAction *)&v7 initWithCoder:?];
  if (v4)
  {
    [a3 decodeFloatForKey:@"meanAudioLevel"];
    v4->_meanAudioLevel = v5;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionMicrophoneNoise"];
}

@end