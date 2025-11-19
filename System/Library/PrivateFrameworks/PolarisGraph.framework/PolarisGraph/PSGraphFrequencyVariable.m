@interface PSGraphFrequencyVariable
+ (id)variableFrequency;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)interval;
- (PSGraphFrequencyVariable)init;
@end

@implementation PSGraphFrequencyVariable

- (PSGraphFrequencyVariable)init
{
  v7.receiver = self;
  v7.super_class = PSGraphFrequencyVariable;
  v2 = [(PSGraphFrequencyVariable *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->type = 3;
    v4 = [PSGraphFrequencyFixed fixedFrequency:1];
    oneHertzFrequency = v3->oneHertzFrequency;
    v3->oneHertzFrequency = v4;
  }

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)interval
{
  result = self->oneHertzFrequency;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result interval];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

+ (id)variableFrequency
{
  v2 = objc_alloc_init(PSGraphFrequencyVariable);

  return v2;
}

@end