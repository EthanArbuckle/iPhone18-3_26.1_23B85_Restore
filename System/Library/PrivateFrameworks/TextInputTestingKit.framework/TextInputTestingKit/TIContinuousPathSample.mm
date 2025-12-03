@interface TIContinuousPathSample
- (CGPoint)point;
- (TIContinuousPathSample)initWithCoder:(id)coder;
- (TIContinuousPathSample)initWithJsonDictionary:(id)dictionary;
- (TIContinuousPathSample)initWithPoint:(CGPoint)point timeStamp:(double)stamp force:(double)force radius:(double)radius stage:(int)stage pathIndex:(int64_t)index;
- (id)description;
- (id)toJsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIContinuousPathSample

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [(TIContinuousPathSample *)self point];
  v5 = v4;
  [(TIContinuousPathSample *)self point];
  [v3 appendFormat:@"; point = (%.1f, %.1f)", v5, v6];
  [(TIContinuousPathSample *)self timeStamp];
  [v3 appendFormat:@"; timeStamp = %f", v7];
  [(TIContinuousPathSample *)self radius];
  [v3 appendFormat:@"; radius = %f", v8];
  [(TIContinuousPathSample *)self force];
  [v3 appendFormat:@"; force = %f", v9];
  [v3 appendFormat:@"; stage = %u", -[TIContinuousPathSample stage](self, "stage")];
  [v3 appendFormat:@"; pathIndex = %ld", -[TIContinuousPathSample pathIndex](self, "pathIndex")];
  [v3 appendString:@">"];

  return v3;
}

- (id)toJsonDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  x = self->_point.x;
  *&x = x;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:x];
  [dictionary setObject:v5 forKeyedSubscript:@"x"];

  y = self->_point.y;
  *&y = y;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:y];
  [dictionary setObject:v7 forKeyedSubscript:@"y"];

  timeStamp = self->_timeStamp;
  *&timeStamp = timeStamp;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:timeStamp];
  [dictionary setObject:v9 forKeyedSubscript:@"t"];

  force = self->_force;
  *&force = force;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:force];
  [dictionary setObject:v11 forKeyedSubscript:@"force"];

  radius = self->_radius;
  *&radius = radius;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:radius];
  [dictionary setObject:v13 forKeyedSubscript:@"radius"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_stage];
  [dictionary setObject:v14 forKeyedSubscript:@"stage"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_pathIndex)];
  [dictionary setObject:v15 forKeyedSubscript:@"path_index"];

  return dictionary;
}

- (TIContinuousPathSample)initWithJsonDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = TIContinuousPathSample;
  v5 = [(TIContinuousPathSample *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"x"];
    [v6 floatValue];
    v8 = v7;

    v9 = [dictionaryCopy objectForKey:@"y"];
    [v9 floatValue];
    v11 = v10;

    v5->_point.x = v8;
    v5->_point.y = v11;
    v12 = [dictionaryCopy objectForKey:@"t"];
    [v12 floatValue];
    v5->_timeStamp = v13;

    v14 = [dictionaryCopy objectForKey:@"force"];
    [v14 floatValue];
    v5->_force = v15;

    v16 = [dictionaryCopy objectForKey:@"stage"];
    v17 = v16;
    if (v16)
    {
      intValue = [v16 intValue];
    }

    else
    {
      intValue = 7;
    }

    v5->_stage = intValue;
    v19 = [dictionaryCopy objectForKey:@"path_index"];
    v20 = v19;
    if (v19)
    {
      intValue2 = [v19 intValue];
    }

    else
    {
      intValue2 = -1;
    }

    v5->_pathIndex = intValue2;
    v22 = [dictionaryCopy objectForKey:@"radius"];
    v23 = v22;
    if (v22)
    {
      [v22 floatValue];
      v5->_radius = v24;
    }
  }

  return v5;
}

- (TIContinuousPathSample)initWithPoint:(CGPoint)point timeStamp:(double)stamp force:(double)force radius:(double)radius stage:(int)stage pathIndex:(int64_t)index
{
  y = point.y;
  x = point.x;
  v16.receiver = self;
  v16.super_class = TIContinuousPathSample;
  result = [(TIContinuousPathSample *)&v16 init];
  if (result)
  {
    result->_point.x = x;
    result->_point.y = y;
    result->_timeStamp = stamp;
    result->_force = force;
    result->_radius = radius;
    result->_stage = stage;
    result->_pathIndex = index;
  }

  return result;
}

- (TIContinuousPathSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TIContinuousPathSample;
  v5 = [(TIContinuousPathSample *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"point"];
    [v6 getValue:&v5->_point size:16];
    [coderCopy decodeDoubleForKey:@"timeStamp"];
    v5->_timeStamp = v7;
    [coderCopy decodeDoubleForKey:@"force"];
    v5->_force = v8;
    [coderCopy decodeDoubleForKey:@"radius"];
    v5->_radius = v9;
    v5->_stage = [coderCopy decodeIntegerForKey:@"stage"];
    v5->_pathIndex = [coderCopy decodeIntegerForKey:@"path_index"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCAE60];
  coderCopy = coder;
  v6 = [v4 value:&self->_point withObjCType:"{CGPoint=dd}"];
  [coderCopy encodeObject:v6 forKey:@"point"];
  [coderCopy encodeDouble:@"timeStamp" forKey:self->_timeStamp];
  [coderCopy encodeDouble:@"force" forKey:self->_force];
  [coderCopy encodeDouble:@"radius" forKey:self->_radius];
  [coderCopy encodeInteger:self->_stage forKey:@"stage"];
  [coderCopy encodeInteger:self->_pathIndex forKey:@"path_index"];
}

@end