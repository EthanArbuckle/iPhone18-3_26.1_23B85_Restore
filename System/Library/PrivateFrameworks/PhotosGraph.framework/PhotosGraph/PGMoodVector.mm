@interface PGMoodVector
- (PGMoodVector)init;
- (PGMoodVector)initWithArray:(id)array;
- (double)sum;
- (double)valueForMood:(unint64_t)mood;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)moodArray;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)moodsWithThreshold:(double)threshold;
- (unint64_t)weightedRandomMoodWithSeed:(unint64_t)seed;
- (void)addMoodVector:(id)vector;
- (void)addValue:(double)value forMood:(unint64_t)mood;
- (void)addValue:(double)value forMoods:(unint64_t)moods;
- (void)enumerateWithBlock:(id)block;
- (void)filterWithMoods:(unint64_t)moods;
- (void)multiplyByWeight:(double)weight;
- (void)multiplyByWeight:(double)weight forMood:(unint64_t)mood;
- (void)multiplyMoodVector:(id)vector;
- (void)normalize;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
- (void)setValue:(double)value forMood:(unint64_t)mood;
- (void)substractMoodVector:(id)vector;
@end

@implementation PGMoodVector

- (id)description
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  for (i = 8; i != 88; i += 8)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(&self->super.isa + i)];
    v6 = [v5 description];

    v7 = [v6 length];
    if (v7 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 substringToIndex:v8];
    [v3 addObject:v9];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [v10 stringWithFormat:@"[%@]", v11];

  return v12;
}

- (id)moodArray
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  for (i = 8; i != 88; i += 8)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(&self->super.isa + i)];
    [v3 addObject:v5];
  }

  return v3;
}

- (double)sum
{
  result = 0.0;
  for (i = 1; i != 11; i += 2)
  {
    result = result + *(&self->super.isa + i * 8) + self->_vector[i];
  }

  return result;
}

- (unint64_t)weightedRandomMoodWithSeed:(unint64_t)seed
{
  seedCopy = seed;
  [(PGMoodVector *)self sum];
  if (v5 == 0.0)
  {
    return 0;
  }

  v6 = v5;
  v12[0] = 13070;
  *&v12[1] = seedCopy;
  v7 = erand48(v12);
  v8 = 0;
  v9 = v6 * v7;
  v10 = 0.0;
  while (1)
  {
    v10 = v10 + self->_vector[v8];
    if (v10 >= v9)
    {
      break;
    }

    if (++v8 == 10)
    {
      return 0;
    }
  }

  return (1 << v8);
}

- (void)enumerateWithBlock:(id)block
{
  if (block)
  {
    v4 = 0;
    vector = self->_vector;
    do
    {
      (*(block + 2))(block, (1 << v4), vector[v4]);
      ++v4;
    }

    while (v4 != 10);
  }
}

- (unint64_t)moodsWithThreshold:(double)threshold
{
  v3 = vdupq_lane_s64(*&threshold, 0);
  v4 = 0x100000000;
  v5 = 0uLL;
  for (i = 8; i != 88; i += 16)
  {
    v7 = vshl_u32(0x100000001, v4);
    v8.i64[0] = v7.u32[0];
    v8.i64[1] = v7.u32[1];
    v5 = vorrq_s8(vandq_s8(v8, vcgeq_f64(*(&self->super.isa + i), v3)), v5);
    v4 = vadd_s32(v4, 0x200000002);
  }

  return vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
}

- (void)normalize
{
  v2 = -1.79769313e308;
  v3 = 1.79769313e308;
  for (i = 8; i != 88; i += 8)
  {
    v5 = *(&self->super.isa + i);
    if (v5 < v3)
    {
      v3 = *(&self->super.isa + i);
    }

    if (v5 > v2)
    {
      v2 = *(&self->super.isa + i);
    }
  }

  v6 = v2 - v3;
  if (v6 != 0.0)
  {
    v7 = vdupq_lane_s64(*&v3, 0);
    v8 = vdupq_lane_s64(*&v6, 0);
    v9 = 8;
    __asm { FMOV            V2.2D, #1.0 }

    do
    {
      v15 = vdivq_f64(vsubq_f64(*(&self->super.isa + v9), v7), v8);
      *(&self->super.isa + v9) = vbslq_s8(vcgtq_f64(v15, _Q2), _Q2, vbicq_s8(v15, vcltzq_f64(v15)));
      v9 += 16;
    }

    while (v9 != 88);
  }
}

- (void)filterWithMoods:(unint64_t)moods
{
  for (i = 0; i != 10; ++i)
  {
    if (((1 << i) & moods) == 0)
    {
      self->_vector[i] = 0.0;
    }
  }
}

- (void)multiplyByWeight:(double)weight
{
  for (i = 8; i != 88; i += 16)
  {
    *(&self->super.isa + i) = vmulq_n_f64(*(&self->super.isa + i), weight);
  }
}

- (void)multiplyMoodVector:(id)vector
{
  if (vector)
  {
    for (i = 8; i != 88; i += 8)
    {
      *(&self->super.isa + i) = *(vector + i) * *(&self->super.isa + i);
    }
  }
}

- (void)substractMoodVector:(id)vector
{
  if (vector)
  {
    for (i = 8; i != 88; i += 8)
    {
      *(&self->super.isa + i) = *(&self->super.isa + i) - *(vector + i);
    }
  }
}

- (void)addMoodVector:(id)vector
{
  if (vector)
  {
    for (i = 8; i != 88; i += 8)
    {
      *(&self->super.isa + i) = *(vector + i) + *(&self->super.isa + i);
    }
  }
}

- (void)multiplyByWeight:(double)weight forMood:(unint64_t)mood
{
  if (mood <= 0x3FF)
  {
    v4 = vcnt_s8(mood);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.i32[0] == 1)
    {
      v5 = (&self->super.isa + __clz(__rbit32(mood)));
      v5[1] = v5[1] * weight;
    }
  }
}

- (void)addValue:(double)value forMoods:(unint64_t)moods
{
  for (i = 0; i != 10; ++i)
  {
    if (((1 << i) & moods) != 0)
    {
      self->_vector[i] = self->_vector[i] + value;
    }
  }
}

- (void)addValue:(double)value forMood:(unint64_t)mood
{
  if (mood <= 0x3FF)
  {
    v4 = vcnt_s8(mood);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.i32[0] == 1)
    {
      v5 = (&self->super.isa + __clz(__rbit32(mood)));
      v5[1] = v5[1] + value;
    }
  }
}

- (void)setValue:(double)value forMood:(unint64_t)mood
{
  if (mood <= 0x3FF)
  {
    v4 = vcnt_s8(mood);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.i32[0] == 1)
    {
      self->_vector[__clz(__rbit32(mood))] = value;
    }
  }
}

- (double)valueForMood:(unint64_t)mood
{
  result = 9.22337204e18;
  if (mood <= 0x3FF)
  {
    v4 = vcnt_s8(mood);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.i32[0] == 1)
    {
      return self->_vector[__clz(__rbit32(mood))];
    }
  }

  return result;
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  if (subscript <= 0x3FF)
  {
    subscriptCopy = subscript;
    v5 = vcnt_s8(subscript);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.i32[0] == 1)
    {
      [object doubleValue];
      self->_vector[__clz(__rbit32(subscriptCopy))] = v7;
    }
  }
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript > 0x3FF || (v9 = vcnt_s8(subscript), v9.i16[0] = vaddlv_u8(v9), v9.i32[0] != 1))
  {
    v18 = v4;
    v19 = v3;
    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE730];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Index %lu is out of bounds [0..%lu]", subscript, 1023, v6, v5, v18, v19, v7, v8];
    v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
    v17 = v16;

    objc_exception_throw(v16);
  }

  v10 = self->_vector[__clz(__rbit32(subscript))];
  v11 = MEMORY[0x277CCABB0];

  return [v11 numberWithDouble:v10];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = *self->_vector;
  v5 = *&self->_vector[4];
  v6 = *&self->_vector[6];
  v7 = *&self->_vector[8];
  *(result + 24) = *&self->_vector[2];
  *(result + 72) = v7;
  *(result + 56) = v6;
  *(result + 40) = v5;
  return result;
}

- (PGMoodVector)initWithArray:(id)array
{
  arrayCopy = array;
  v5 = [(PGMoodVector *)self init];
  if (v5 && [arrayCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [arrayCopy objectAtIndexedSubscript:v6];
      [v7 doubleValue];
      v5->_vector[v6] = v8;

      ++v6;
    }

    while (v6 < [arrayCopy count]);
  }

  return v5;
}

- (PGMoodVector)init
{
  v3.receiver = self;
  v3.super_class = PGMoodVector;
  result = [(PGMoodVector *)&v3 init];
  if (result)
  {
    *&result->_vector[8] = 0u;
    *&result->_vector[6] = 0u;
    *&result->_vector[4] = 0u;
    *&result->_vector[2] = 0u;
    *result->_vector = 0u;
  }

  return result;
}

@end