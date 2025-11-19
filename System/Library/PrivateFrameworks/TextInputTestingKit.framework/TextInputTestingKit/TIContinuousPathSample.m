@interface TIContinuousPathSample
- (CGPoint)point;
- (TIContinuousPathSample)initWithCoder:(id)a3;
- (TIContinuousPathSample)initWithJsonDictionary:(id)a3;
- (TIContinuousPathSample)initWithPoint:(CGPoint)a3 timeStamp:(double)a4 force:(double)a5 radius:(double)a6 stage:(int)a7 pathIndex:(int64_t)a8;
- (id)description;
- (id)toJsonDictionary;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  x = self->_point.x;
  *&x = x;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:x];
  [v3 setObject:v5 forKeyedSubscript:@"x"];

  y = self->_point.y;
  *&y = y;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:y];
  [v3 setObject:v7 forKeyedSubscript:@"y"];

  timeStamp = self->_timeStamp;
  *&timeStamp = timeStamp;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:timeStamp];
  [v3 setObject:v9 forKeyedSubscript:@"t"];

  force = self->_force;
  *&force = force;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:force];
  [v3 setObject:v11 forKeyedSubscript:@"force"];

  radius = self->_radius;
  *&radius = radius;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:radius];
  [v3 setObject:v13 forKeyedSubscript:@"radius"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_stage];
  [v3 setObject:v14 forKeyedSubscript:@"stage"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_pathIndex)];
  [v3 setObject:v15 forKeyedSubscript:@"path_index"];

  return v3;
}

- (TIContinuousPathSample)initWithJsonDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = TIContinuousPathSample;
  v5 = [(TIContinuousPathSample *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"x"];
    [v6 floatValue];
    v8 = v7;

    v9 = [v4 objectForKey:@"y"];
    [v9 floatValue];
    v11 = v10;

    v5->_point.x = v8;
    v5->_point.y = v11;
    v12 = [v4 objectForKey:@"t"];
    [v12 floatValue];
    v5->_timeStamp = v13;

    v14 = [v4 objectForKey:@"force"];
    [v14 floatValue];
    v5->_force = v15;

    v16 = [v4 objectForKey:@"stage"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 intValue];
    }

    else
    {
      v18 = 7;
    }

    v5->_stage = v18;
    v19 = [v4 objectForKey:@"path_index"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 intValue];
    }

    else
    {
      v21 = -1;
    }

    v5->_pathIndex = v21;
    v22 = [v4 objectForKey:@"radius"];
    v23 = v22;
    if (v22)
    {
      [v22 floatValue];
      v5->_radius = v24;
    }
  }

  return v5;
}

- (TIContinuousPathSample)initWithPoint:(CGPoint)a3 timeStamp:(double)a4 force:(double)a5 radius:(double)a6 stage:(int)a7 pathIndex:(int64_t)a8
{
  y = a3.y;
  x = a3.x;
  v16.receiver = self;
  v16.super_class = TIContinuousPathSample;
  result = [(TIContinuousPathSample *)&v16 init];
  if (result)
  {
    result->_point.x = x;
    result->_point.y = y;
    result->_timeStamp = a4;
    result->_force = a5;
    result->_radius = a6;
    result->_stage = a7;
    result->_pathIndex = a8;
  }

  return result;
}

- (TIContinuousPathSample)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TIContinuousPathSample;
  v5 = [(TIContinuousPathSample *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"point"];
    [v6 getValue:&v5->_point size:16];
    [v4 decodeDoubleForKey:@"timeStamp"];
    v5->_timeStamp = v7;
    [v4 decodeDoubleForKey:@"force"];
    v5->_force = v8;
    [v4 decodeDoubleForKey:@"radius"];
    v5->_radius = v9;
    v5->_stage = [v4 decodeIntegerForKey:@"stage"];
    v5->_pathIndex = [v4 decodeIntegerForKey:@"path_index"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCAE60];
  v5 = a3;
  v6 = [v4 value:&self->_point withObjCType:"{CGPoint=dd}"];
  [v5 encodeObject:v6 forKey:@"point"];
  [v5 encodeDouble:@"timeStamp" forKey:self->_timeStamp];
  [v5 encodeDouble:@"force" forKey:self->_force];
  [v5 encodeDouble:@"radius" forKey:self->_radius];
  [v5 encodeInteger:self->_stage forKey:@"stage"];
  [v5 encodeInteger:self->_pathIndex forKey:@"path_index"];
}

@end