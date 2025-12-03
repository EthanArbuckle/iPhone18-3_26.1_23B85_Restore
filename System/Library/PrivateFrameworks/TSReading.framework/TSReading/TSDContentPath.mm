@interface TSDContentPath
+ (TSDContentPath)contentPathWithLocations:(id)locations;
- (id)contentLocationAtTime:(double)time withTimingFunction:(id)function;
- (void)dealloc;
@end

@implementation TSDContentPath

+ (TSDContentPath)contentPathWithLocations:(id)locations
{
  v4 = objc_alloc_init(TSDContentPath);
  [(TSDContentPath *)v4 setContentLocations:locations];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDContentPath;
  [(TSDContentPath *)&v3 dealloc];
}

- (id)contentLocationAtTime:(double)time withTimingFunction:(id)function
{
  lastObject = [(NSArray *)self->_contentLocations lastObject];
  if ([(NSArray *)self->_contentLocations count]< 2)
  {
    return lastObject;
  }

  if (!function)
  {
    function = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  }

  [function solveForTime:time];
  v9 = v8;
  v10 = v8 * [(NSArray *)self->_contentLocations count];
  v11 = floorf(v10);
  v12 = ([(NSArray *)self->_contentLocations count]- 1);
  v13 = [(NSArray *)self->_contentLocations count];
  if (v11 >= v12)
  {
    v15 = (v13 - 1);
  }

  else
  {
    v14 = v9 * v13;
    v15 = floorf(v14);
  }

  v17 = v15;
  v18 = [(NSArray *)self->_contentLocations objectAtIndex:v15];
  v19 = [(NSArray *)self->_contentLocations objectAtIndex:v17 + 1];
  v20 = v9 / [(NSArray *)self->_contentLocations count];
  [v19 unscaledPoint];
  v22 = v21;
  v24 = v23;
  [v18 unscaledPoint];
  v26 = TSDSubtractPoints(v22, v24, v25);
  v28 = TSDMultiplyPointScalar(v26, v27, v20);
  [v19 viewScale];
  v30 = v29;
  [v18 viewScale];
  v32 = v20 * (v30 - v31);
  [v18 unscaledPoint];
  v35 = TSDAddPoints(v33, v34, v28);
  v37 = v36;
  [v18 viewScale];

  return [TSDContentLocation contentLocationWithUnscaledPoint:v35 viewScale:v37, v32 + v38];
}

@end