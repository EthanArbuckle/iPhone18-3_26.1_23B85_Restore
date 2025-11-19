@interface OSDFeatures
- (OSDFeatures)initWithCoder:(id)a3;
- (OSDFeatures)initWithSilenceFramesCountMs:(double)a3 silenceProbability:(double)a4 silenceDurationMs:(double)a5 processedAudioMs:(double)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OSDFeatures

- (OSDFeatures)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"OSDFeatures:::silenceFramesCountMs"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"OSDFeatures:::silenceProbability"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"OSDFeatures:::silenceDurationMs"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"OSDFeatures:::processedAudioMs"];
  v12 = v11;
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OSDFeatures:::inferenceTime"];

  v14 = [v13 unsignedLongLongValue];

  return [(OSDFeatures *)self initWithSilenceFramesCountMs:v14 silenceProbability:v6 silenceDurationMs:v8 processedAudioMs:v10 inferenceTime:v12];
}

- (void)encodeWithCoder:(id)a3
{
  silenceFramesCountMs = self->_silenceFramesCountMs;
  v5 = a3;
  [v5 encodeDouble:@"OSDFeatures:::silenceFramesCountMs" forKey:silenceFramesCountMs];
  [v5 encodeDouble:@"OSDFeatures:::silenceProbability" forKey:self->_silenceProbability];
  [v5 encodeDouble:@"OSDFeatures:::silenceDurationMs" forKey:self->_silenceDurationMs];
  [v5 encodeDouble:@"OSDFeatures:::processedAudioMs" forKey:self->_processedAudioMs];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_inferenceTime];
  [v5 encodeObject:v6 forKey:@"OSDFeatures:::inferenceTime"];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"[silenceFramesCountMs = %f]", *&self->_silenceFramesCountMs];
  [v3 appendFormat:@"[silenceProbability = %f]", *&self->_silenceProbability];
  [v3 appendFormat:@"[silenceDurationMs = %f]", *&self->_silenceDurationMs];
  [v3 appendFormat:@"[processedAudioMs = %f]", *&self->_processedAudioMs];
  [v3 appendFormat:@"[inferenceTime = %llu]", self->_inferenceTime];

  return v3;
}

- (OSDFeatures)initWithSilenceFramesCountMs:(double)a3 silenceProbability:(double)a4 silenceDurationMs:(double)a5 processedAudioMs:(double)a6
{
  v11.receiver = self;
  v11.super_class = OSDFeatures;
  result = [(OSDFeatures *)&v11 init];
  if (result)
  {
    result->_silenceFramesCountMs = a3;
    result->_silenceProbability = a4;
    result->_silenceDurationMs = a5;
    result->_processedAudioMs = a6;
  }

  return result;
}

@end