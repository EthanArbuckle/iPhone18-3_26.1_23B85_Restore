@interface OSDFeatures
- (OSDFeatures)initWithCoder:(id)coder;
- (OSDFeatures)initWithSilenceFramesCountMs:(double)ms silenceProbability:(double)probability silenceDurationMs:(double)durationMs processedAudioMs:(double)audioMs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OSDFeatures

- (OSDFeatures)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"OSDFeatures:::silenceFramesCountMs"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"OSDFeatures:::silenceProbability"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"OSDFeatures:::silenceDurationMs"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"OSDFeatures:::processedAudioMs"];
  v12 = v11;
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OSDFeatures:::inferenceTime"];

  unsignedLongLongValue = [v13 unsignedLongLongValue];

  return [(OSDFeatures *)self initWithSilenceFramesCountMs:unsignedLongLongValue silenceProbability:v6 silenceDurationMs:v8 processedAudioMs:v10 inferenceTime:v12];
}

- (void)encodeWithCoder:(id)coder
{
  silenceFramesCountMs = self->_silenceFramesCountMs;
  coderCopy = coder;
  [coderCopy encodeDouble:@"OSDFeatures:::silenceFramesCountMs" forKey:silenceFramesCountMs];
  [coderCopy encodeDouble:@"OSDFeatures:::silenceProbability" forKey:self->_silenceProbability];
  [coderCopy encodeDouble:@"OSDFeatures:::silenceDurationMs" forKey:self->_silenceDurationMs];
  [coderCopy encodeDouble:@"OSDFeatures:::processedAudioMs" forKey:self->_processedAudioMs];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_inferenceTime];
  [coderCopy encodeObject:v6 forKey:@"OSDFeatures:::inferenceTime"];
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"[silenceFramesCountMs = %f]", *&self->_silenceFramesCountMs];
  [string appendFormat:@"[silenceProbability = %f]", *&self->_silenceProbability];
  [string appendFormat:@"[silenceDurationMs = %f]", *&self->_silenceDurationMs];
  [string appendFormat:@"[processedAudioMs = %f]", *&self->_processedAudioMs];
  [string appendFormat:@"[inferenceTime = %llu]", self->_inferenceTime];

  return string;
}

- (OSDFeatures)initWithSilenceFramesCountMs:(double)ms silenceProbability:(double)probability silenceDurationMs:(double)durationMs processedAudioMs:(double)audioMs
{
  v11.receiver = self;
  v11.super_class = OSDFeatures;
  result = [(OSDFeatures *)&v11 init];
  if (result)
  {
    result->_silenceFramesCountMs = ms;
    result->_silenceProbability = probability;
    result->_silenceDurationMs = durationMs;
    result->_processedAudioMs = audioMs;
  }

  return result;
}

@end