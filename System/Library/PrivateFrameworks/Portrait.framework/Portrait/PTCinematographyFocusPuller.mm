@interface PTCinematographyFocusPuller
+ (float)defaultEMASampleCount;
+ (float)defaultMaximumVelocity;
+ (float)defaultResistance;
+ (unint64_t)defaultStrategy;
- (PTCinematographyFocusPuller)init;
- (PTCinematographyFocusPuller)initWithExponentialMovingAverageAlpha:(float)a3;
- (PTCinematographyFocusPuller)initWithExponentialMovingAverageSampleCount:(unint64_t)a3;
- (PTCinematographyFocusPuller)initWithMaximumVelocity:(float)a3 resistance:(float)a4;
- (float)_weightedDialDelta:(float)a3 timeDelta:(float)a4;
- (float)pullTowardFocusDistance:(float)a3 time:(id *)a4;
- (float)pullTowardFocusDistance:(float)a3 time:(id *)a4 missing:(BOOL)a5;
- (id)_asCinematographyDictionary;
- (id)_initWithCinematographyDictionary:(id)a3;
- (void)setAlpha:(float)a3;
- (void)setFocusDistance:(float)a3 time:(id *)a4;
- (void)setSampleCount:(unint64_t)a3;
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
  v3 = [objc_opt_class() defaultStrategy];
  v4 = objc_opt_class();
  if (v3 == 1)
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

- (PTCinematographyFocusPuller)initWithExponentialMovingAverageAlpha:(float)a3
{
  v9.receiver = self;
  v9.super_class = PTCinematographyFocusPuller;
  v4 = [(PTCinematographyFocusPuller *)&v9 init];
  v6 = v4;
  if (v4)
  {
    v4->_strategy = 0;
    *&v5 = a3;
    [(PTCinematographyFocusPuller *)v4 setAlpha:v5];
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyFocusPuller *)v6 initWithExponentialMovingAverageAlpha:v7];
    }
  }

  return v6;
}

- (PTCinematographyFocusPuller)initWithExponentialMovingAverageSampleCount:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PTCinematographyFocusPuller;
  v4 = [(PTCinematographyFocusPuller *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_strategy = 0;
    [(PTCinematographyFocusPuller *)v4 setSampleCount:a3];
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyFocusPuller *)v5 initWithExponentialMovingAverageSampleCount:v6];
    }
  }

  return v5;
}

- (void)setAlpha:(float)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  v3 = fminf(a3, 1.0);
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

- (void)setSampleCount:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  self->_sampleCount = v3;
  self->_alpha = 2.0 / (v3 + 1.0);
}

- (PTCinematographyFocusPuller)initWithMaximumVelocity:(float)a3 resistance:(float)a4
{
  v13.receiver = self;
  v13.super_class = PTCinematographyFocusPuller;
  v6 = [(PTCinematographyFocusPuller *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = fabsf(a4);
    v6->_resistance = v8;
    v6->_strategy = 1;
    v9 = fabsf(a3);
    v6->_maximumVelocity = v9;
    v10 = v9 / v8;
    if (a4 == 0.0)
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

- (void)setFocusDistance:(float)a3 time:(id *)a4
{
  v4 = *&a4->var0;
  self->_time.epoch = a4->var3;
  *&self->_time.value = v4;
  self->_velocity = 0.0;
  self->_focusDistance = a3;
  self->_targetDistance = a3;
}

- (float)_weightedDialDelta:(float)a3 timeDelta:(float)a4
{
  v21 = *&a3;
  [(PTCinematographyFocusPuller *)self maximumVelocity];
  v7 = v6;
  [(PTCinematographyFocusPuller *)self maximumAcceleration];
  v8 = v21;
  *v9.i32 = (*v10.i32 * a4) * a4;
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

  *v9.i32 = v7 * a4;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = vbslq_s8(v11, v9, v8).u32[0];
  if (*v10.i32 <= (v7 * a4))
  {
    v13 = *v8.i32;
  }

  else
  {
    v13 = *&v12;
  }

  [(PTCinematographyFocusPuller *)self velocity];
  v15 = v14 * a4;
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

- (float)pullTowardFocusDistance:(float)a3 time:(id *)a4
{
  [(PTCinematographyFocusPuller *)self time];
  if (v22)
  {
    self->_targetDistance = a3;
    [(PTCinematographyFocusPuller *)self time];
    v19 = *a4;
    CMTimeSubtract(&time, &v19, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v9 = LODWORD(Seconds) & 0x7FFFFFFF;
    [(PTCinematographyFocusPuller *)self focusDistance];
    if ((LODWORD(Seconds) & 0x7FFFFFFFu) <= 0x7F800000 && v9 != 2139095040 && v9 != 0)
    {
      v12 = fabsf(Seconds);
      v13 = a3 - result;
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
      v18 = *&a4->var0;
      self->_time.epoch = a4->var3;
      *&self->_time.value = v18;
      result = v17 + self->_focusDistance;
      self->_focusDistance = result;
      self->_velocity = v17 / v12;
    }
  }

  else
  {
    [(PTCinematographyFocusPuller *)self setFocusDistance:&time time:COERCE_DOUBLE(__PAIR64__(HIDWORD(a4->var0), LODWORD(a3)))];
    return a3;
  }

  return result;
}

- (float)pullTowardFocusDistance:(float)a3 time:(id *)a4 missing:(BOOL)a5
{
  v7 = self;
  if (!a5)
  {
    v8 = *&a4->var0;
    v11 = *a4;
    *&v8 = a3;
    goto LABEL_5;
  }

  [(PTCinematographyFocusPuller *)self time];
  if (v12)
  {
    *&v8 = v7->_targetDistance;
    v11 = *a4;
    self = v7;
LABEL_5:
    [(PTCinematographyFocusPuller *)self pullTowardFocusDistance:&v11 time:*&v8, *&v11.var0, v11.var3];
    return v9;
  }

  return a3;
}

- (id)_initWithCinematographyDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"_alpha"];
  [v5 floatValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"_maxv"];
  [v8 floatValue];
  v10 = v9;

  v11 = [v4 objectForKeyedSubscript:@"_resistance"];

  [v11 floatValue];
  v13 = v12;

  if (v7 > 0.0)
  {
    v16 = self;
    *&v14 = v7;
LABEL_6:
    v17 = [(PTCinematographyFocusPuller *)v16 initWithExponentialMovingAverageAlpha:v14];
    goto LABEL_7;
  }

  if (v10 <= 0.0)
  {
    LODWORD(v14) = 1.0;
    v16 = self;
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