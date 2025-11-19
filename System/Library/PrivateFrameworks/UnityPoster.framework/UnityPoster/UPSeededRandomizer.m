@interface UPSeededRandomizer
+ (id)randomizerWithSeedValue:(unint64_t)a3;
- (BOOL)BOOLValueWithChance:(double)a3;
- (CGPoint)pointBetweenFirstPoint:(CGPoint)a3 secondPoint:(CGPoint)a4;
- (double)floatValueBetweenFirstValue:(double)a3 secondValue:(double)a4;
- (unint64_t)unsignedLongValue;
@end

@implementation UPSeededRandomizer

- (unint64_t)unsignedLongValue
{
  v2 = 1103515245 * self->_nextValue + 12345;
  self->_nextValue = v2;
  return v2;
}

- (BOOL)BOOLValueWithChance:(double)a3
{
  v3 = a3 * 100.0;
  v4 = [(UPSeededRandomizer *)self unsignedLongValue];
  return v3 > (v4 / 0x64 - 100 * (((v4 / 0x64 * 0x51EB851EB851EB9uLL) >> 64) >> 1));
}

- (double)floatValueBetweenFirstValue:(double)a3 secondValue:(double)a4
{
  v5 = a4 - a3;
  [(UPSeededRandomizer *)self fractionValue];
  return a3 + v6 * v5;
}

- (CGPoint)pointBetweenFirstPoint:(CGPoint)a3 secondPoint:(CGPoint)a4
{
  y = a4.y;
  v5 = a3.y;
  [(UPSeededRandomizer *)self floatValueBetweenFirstValue:a3.x secondValue:a4.x];
  v8 = v7;
  [(UPSeededRandomizer *)self floatValueBetweenFirstValue:v5 secondValue:y];
  v10 = v9;
  v11 = v8;
  result.y = v10;
  result.x = v11;
  return result;
}

+ (id)randomizerWithSeedValue:(unint64_t)a3
{
  v4 = [a1 new];
  if (a3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  v4[1] = v5;
  v4[2] = v5;

  return v4;
}

@end