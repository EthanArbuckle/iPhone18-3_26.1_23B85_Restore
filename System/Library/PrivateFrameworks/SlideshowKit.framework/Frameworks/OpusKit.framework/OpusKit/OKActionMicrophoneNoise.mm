@interface OKActionMicrophoneNoise
+ (id)microphoneNoiseActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count meanAudioLevel:(float)level context:(id)context;
+ (id)microphoneNoiseActionWithState:(unint64_t)state meanAudioLevel:(float)level context:(id)context;
+ (void)setupJavascriptContext:(id)context;
- (OKActionMicrophoneNoise)init;
- (OKActionMicrophoneNoise)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionMicrophoneNoise

+ (id)microphoneNoiseActionWithState:(unint64_t)state meanAudioLevel:(float)level context:(id)context
{
  v7 = [OKActionMicrophoneNoise alloc];
  v8 = [(OKAction *)v7 initWithLocation:0 touchCount:context context:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v8[22] = level;

  return v8;
}

+ (id)microphoneNoiseActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count meanAudioLevel:(float)level context:(id)context
{
  v8 = [[OKActionMicrophoneNoise alloc] initWithState:state location:count touchCount:context context:location.x, location.y];
  v8->_meanAudioLevel = level;

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = OKActionMicrophoneNoise;
  [(OKAction *)&v5 encodeWithCoder:?];
  if (self->_meanAudioLevel != 0.0)
  {
    [coder encodeFloat:@"meanAudioLevel" forKey:?];
  }
}

- (OKActionMicrophoneNoise)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = OKActionMicrophoneNoise;
  v4 = [(OKAction *)&v7 initWithCoder:?];
  if (v4)
  {
    [coder decodeFloatForKey:@"meanAudioLevel"];
    v4->_meanAudioLevel = v5;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionMicrophoneNoise"];
}

@end