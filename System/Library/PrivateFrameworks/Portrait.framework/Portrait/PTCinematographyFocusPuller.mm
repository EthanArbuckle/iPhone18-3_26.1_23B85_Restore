@interface PTCinematographyFocusPuller
+ (float)defaultEMASampleCount;
+ (float)defaultMaximumVelocity;
+ (float)defaultResistance;
+ (unint64_t)defaultStrategy;
- (PTCinematographyFocusPuller)init;
- (PTCinematographyFocusPuller)initWithExponentialMovingAverageAlpha:(float)alpha;
- (PTCinematographyFocusPuller)initWithExponentialMovingAverageSampleCount:(unint64_t)count;
- (PTCinematographyFocusPuller)initWithMaximumVelocity:(float)velocity resistance:(float)resistance;
- (float)_weightedDialDelta:(float)delta timeDelta:(float)timeDelta;
- (float)pullTowardFocusDistance:(float)distance time:(id *)time;
- (float)pullTowardFocusDistance:(float)distance time:(id *)time missing:(BOOL)missing;
- (id)_asCinematographyDictionary;
- (id)_initWithCinematographyDictionary:(id)dictionary;
- (void)setAlpha:(float)alpha;
- (void)setFocusDistance:(float)distance time:(id *)time;
- (void)setSampleCount:(unint64_t)count;
@end

@implementation PTCinematographyFocusPuller

+ (unint64_t)defaultStrategy
{
  if (defaultStrategy_onceToken != -1)
  {
    +[PTCinematographyFocusPuller defaultStrategy];
  }

  return 0;
}

+ (float)defaultEMASampleCount
{
  if (defaultEMASampleCount_onceToken != -1)
  {
    +[PTCinematographyFocusPuller defaultEMASampleCount];
  }

  return *&defaultEMASampleCount_sDefaultEMASampleCount;
}

+ (float)defaultMaximumVelocity
{
  if (defaultMaximumVelocity_onceToken != -1)
  {
    +[PTCinematographyFocusPuller defaultMaximumVelocity];
  }

  return *&defaultMaximumVelocity_sDefaultMaximumVelocity;
}

+ (float)defaultResistance
{
  if (defaultResistance_onceToken != -1)
  {
    +[PTCinematographyFocusPuller defaultResistance];
  }

  return *&defaultResistance_sDefaultResistance;
}

- (PTCinematographyFocusPuller)init
{
  defaultStrategy = [objc_opt_class() defaultStrategy];
  v4 = objc_opt_class();
  if (defaultStrategy == 1)
  {
    [v4 defaultMaximumVelocity];
    v6 = v5;
    [objc_opt_class() defaultResistance];
    LODWORD(v8) = v7;
    LODWORD(v9) = v6;
    v10 = [(PTCinematographyFocusPuller *)self initWithMaximumVelocity:v9 resistance:v8];
  }

  else
  {
    [v4 defaultEMASampleCount];
    v10 = [(PTCinematographyFocusPuller *)self initWithExponentialMovingAverageSampleCount:v11];
  }

  v12 = v10;

  return v12;
}

- (PTCinematographyFocusPuller)initWithExponentialMovingAverageAlpha:(float)alpha
{
  v9.receiver = self;
  v9.super_class = PTCinematographyFocusPuller;
  v4 = [(PTCinematographyFocusPuller *)&v9 init];
  v6 = v4;
  if (v4)
  {
    v4->_strategy = 0;
    *&v5 = alpha;
    [(PTCinematographyFocusPuller *)v4 setAlpha:v5];
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyFocusPuller *)v6 initWithExponentialMovingAverageAlpha:v7];
    }
  }

  return v6;
}

- (PTCinematographyFocusPuller)initWithExponentialMovingAverageSampleCount:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = PTCinematographyFocusPuller;
  v4 = [(PTCinematographyFocusPuller *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_strategy = 0;
    [(PTCinematographyFocusPuller *)v4 setSampleCount:count];
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyFocusPuller *)v5 initWithExponentialMovingAverageSampleCount:v6];
    }
  }

  return v5;
}

- (void)setAlpha:(float)alpha
{
  if (alpha < 0.0)
  {
    alpha = 0.0;
  }

  v3 = fminf(alpha, 1.0);
  self->_alpha = v3;
  if (v3 <= 0.0)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = llroundf((2.0 / v3) + -1.0);
  }

  self->_sampleCount = v4;
}

- (void)setSampleCount:(unint64_t)count
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  self->_sampleCount = countCopy;
  self->_alpha = 2.0 / (countCopy + 1.0);
}

- (PTCinematographyFocusPuller)initWithMaximumVelocity:(float)velocity resistance:(float)resistance
{
  v13.receiver = self;
  v13.super_class = PTCinematographyFocusPuller;
  v6 = [(PTCinematographyFocusPuller *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = fabsf(resistance);
    v6->_resistance = v8;
    v6->_strategy = 1;
    v9 = fabsf(velocity);
    v6->_maximumVelocity = v9;
    v10 = v9 / v8;
    if (resistance == 0.0)
    {
      v10 = INFINITY;
    }

    v6->_maximumAcceleration = v10;
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyFocusPuller *)&v7->_maximumVelocity initWithMaximumVelocity:v11 resistance:?];
    }
  }

  return v7;
}

- (void)setFocusDistance:(float)distance time:(id *)time
{
  v4 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v4;
  self->_velocity = 0.0;
  self->_focusDistance = distance;
  self->_targetDistance = distance;
}

- (float)_weightedDialDelta:(float)delta timeDelta:(float)timeDelta
{
  v21 = *&delta;
  [(PTCinematographyFocusPuller *)self maximumVelocity];
  v7 = v6;
  [(PTCinematographyFocusPuller *)self maximumAcceleration];
  v8 = v21;
  *v9.i32 = (*v10.i32 * timeDelta) * timeDelta;
  *v10.i32 = fabsf(*v21.i32);
  v20 = v9;
  if (*v10.i32 > *v9.i32)
  {
    v10.i32[0] = v21.i32[0];
    [(PTCinematographyFocusPuller *)self _minimumTimestepsToMoveBy:*v10.i64 maxddx:?];
    *v10.i32 = *v20.i32 * *v10.i32;
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v8 = vbslq_s8(v9, v10, v21);
    *v10.i32 = fabsf(*v10.i32);
  }

  *v9.i32 = v7 * timeDelta;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = vbslq_s8(v11, v9, v8).u32[0];
  if (*v10.i32 <= (v7 * timeDelta))
  {
    v13 = *v8.i32;
  }

  else
  {
    v13 = *&v12;
  }

  [(PTCinematographyFocusPuller *)self velocity];
  v15 = v14 * timeDelta;
  *v16.i32 = v13 - v15;
  v17 = vabds_f32(v13, v15);
  v18.i64[0] = 0x8000000080000000;
  v18.i64[1] = 0x8000000080000000;
  result = v15 + *vbslq_s8(v18, v20, v16).i32;
  if (v17 <= *v20.i32)
  {
    return v13;
  }

  return result;
}

- (float)pullTowardFocusDistance:(float)distance time:(id *)time
{
  [(PTCinematographyFocusPuller *)self time];
  if (v22)
  {
    self->_targetDistance = distance;
    [(PTCinematographyFocusPuller *)self time];
    v19 = *time;
    CMTimeSubtract(&time, &v19, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v9 = LODWORD(Seconds) & 0x7FFFFFFF;
    [(PTCinematographyFocusPuller *)self focusDistance];
    if ((LODWORD(Seconds) & 0x7FFFFFFFu) <= 0x7F800000 && v9 != 2139095040 && v9 != 0)
    {
      v12 = fabsf(Seconds);
      v13 = distance - result;
      if ([(PTCinematographyFocusPuller *)self strategy])
      {
        *&v14 = v13;
        *&v15 = v12;
        [(PTCinematographyFocusPuller *)self _weightedDialDelta:v14 timeDelta:v15];
      }

      else
      {
        *&v14 = v13;
        [(PTCinematographyFocusPuller *)self _emaDelta:v14];
      }

      v17 = v16;
      v18 = *&time->var0;
      self->_time.epoch = time->var3;
      *&self->_time.value = v18;
      result = v17 + self->_focusDistance;
      self->_focusDistance = result;
      self->_velocity = v17 / v12;
    }
  }

  else
  {
    [(PTCinematographyFocusPuller *)self setFocusDistance:&time time:COERCE_DOUBLE(__PAIR64__(HIDWORD(time->var0), LODWORD(distance)))];
    return distance;
  }

  return result;
}

- (float)pullTowardFocusDistance:(float)distance time:(id *)time missing:(BOOL)missing
{
  selfCopy = self;
  if (!missing)
  {
    v8 = *&time->var0;
    v11 = *time;
    *&v8 = distance;
    goto LABEL_5;
  }

  [(PTCinematographyFocusPuller *)self time];
  if (v12)
  {
    *&v8 = selfCopy->_targetDistance;
    v11 = *time;
    self = selfCopy;
LABEL_5:
    [(PTCinematographyFocusPuller *)self pullTowardFocusDistance:&v11 time:*&v8, *&v11.var0, v11.var3];
    return v9;
  }

  return distance;
}

- (id)_initWithCinematographyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"_alpha"];
  [v5 floatValue];
  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"_maxv"];
  [v8 floatValue];
  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"_resistance"];

  [v11 floatValue];
  v13 = v12;

  if (v7 > 0.0)
  {
    selfCopy2 = self;
    *&v14 = v7;
LABEL_6:
    v17 = [(PTCinematographyFocusPuller *)selfCopy2 initWithExponentialMovingAverageAlpha:v14];
    goto LABEL_7;
  }

  if (v10 <= 0.0)
  {
    LODWORD(v14) = 1.0;
    selfCopy2 = self;
    goto LABEL_6;
  }

  *&v14 = v10;
  LODWORD(v15) = v13;
  v17 = [(PTCinematographyFocusPuller *)self initWithMaximumVelocity:v14 resistance:v15];
LABEL_7:
  v18 = v17;

  return v18;
}

- (id)_asCinematographyDictionary
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  [(PTCinematographyFocusPuller *)self alpha];
  v5 = [v4 numberWithFloat:?];
  [v3 setObject:v5 forKeyedSubscript:@"_alpha"];

  v6 = MEMORY[0x277CCABB0];
  [(PTCinematographyFocusPuller *)self maximumVelocity];
  v7 = [v6 numberWithFloat:?];
  [v3 setObject:v7 forKeyedSubscript:@"_maxv"];

  v8 = MEMORY[0x277CCABB0];
  [(PTCinematographyFocusPuller *)self resistance];
  v9 = [v8 numberWithFloat:?];
  [v3 setObject:v9 forKeyedSubscript:@"_resistance"];

  v10 = [v3 copy];

  return v10;
}

- (double)initWithExponentialMovingAverageAlpha:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v5 = 134218240;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "focus puller: EMA (alpha: %g, sampleCount: %lu)", &v5, 0x16u);
  return result;
}

- (double)initWithExponentialMovingAverageSampleCount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  v5 = 134218240;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "focus puller: EMA (sampleCount: %lu, alpha: %g)", &v5, 0x16u);
  return result;
}

- (double)initWithMaximumVelocity:(os_log_t)log resistance:.cold.1(float *a1, float *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 134218240;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  _os_log_debug_impl(&dword_2243FB000, log, OS_LOG_TYPE_DEBUG, "focus puller: weighted dial (maxv: %g, resistance: %g)", &v6, 0x16u);
  return result;
}

@end