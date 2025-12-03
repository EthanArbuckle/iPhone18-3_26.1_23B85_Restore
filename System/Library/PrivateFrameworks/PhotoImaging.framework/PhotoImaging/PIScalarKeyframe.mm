@interface PIScalarKeyframe
+ (id)keyframeInArray:(id)array closestToTime:(id *)time;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (PIScalarKeyframe)initWithDictionaryRepresentation:(id)representation;
- (PIScalarKeyframe)initWithTime:(id *)time value:(double)value;
- (void)nu_updateDigest:(id)digest;
@end

@implementation PIScalarKeyframe

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PIScalarKeyframe;
  v4 = [(PIScalarKeyframe *)&v8 description];
  v5 = NUStringFromTime();
  v6 = [v3 stringWithFormat:@"%@: t=%@, v=%f", v4, v5, *&self->_value];

  return v6;
}

- (void)nu_updateDigest:(id)digest
{
  digestCopy = digest;
  [digestCopy addBytes:&self->_time length:24];
  [digestCopy addBytes:&self->_value length:8];
}

- (NSDictionary)dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"timeValue";
  if (self)
  {
    value = self->_time.value;
  }

  else
  {
    value = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:value];
  v12[0] = v4;
  v11[1] = @"timeScale";
  if (self)
  {
    timescale = self->_time.timescale;
  }

  else
  {
    timescale = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:timescale];
  v12[1] = v6;
  v11[2] = @"value";
  if (self)
  {
    v7 = self->_value;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (PIScalarKeyframe)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"timeValue"];
  v6 = [representationCopy objectForKeyedSubscript:@"timeScale"];
  v7 = [representationCopy objectForKeyedSubscript:@"value"];

  if (v5 && v6 && v7)
  {
    memset(&v11, 0, sizeof(v11));
    CMTimeMake(&v11, [v5 longLongValue], objc_msgSend(v6, "intValue"));
    [v7 doubleValue];
    v10 = v11;
    v8 = [(PIScalarKeyframe *)self initWithTime:&v10 value:?];
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (PIScalarKeyframe)initWithTime:(id *)time value:(double)value
{
  v8.receiver = self;
  v8.super_class = PIScalarKeyframe;
  result = [(PIScalarKeyframe *)&v8 init];
  if (result)
  {
    v7 = *&time->var0;
    result->_time.epoch = time->var3;
    *&result->_time.value = v7;
    result->_value = value;
  }

  return result;
}

+ (id)keyframeInArray:(id)array closestToTime:(id *)time
{
  v23 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  firstObject = [arrayCopy firstObject];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      v12 = firstObject;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * v11);
        if (v13)
        {
          time1 = *(v13 + 16);
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v16 = *time;
        if (CMTimeCompare(&time1, &v16) > 0)
        {
          firstObject = v12;
          goto LABEL_15;
        }

        firstObject = v13;

        ++v11;
        v12 = firstObject;
      }

      while (v9 != v11);
      v14 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v9 = v14;
    }

    while (v14);
  }

LABEL_15:

  return firstObject;
}

@end