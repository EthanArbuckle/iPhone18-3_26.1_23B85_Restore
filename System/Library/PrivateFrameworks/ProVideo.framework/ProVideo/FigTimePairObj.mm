@interface FigTimePairObj
+ (id)pairWithPair:(PC_CMTimePair *)pair;
- (BOOL)isEqual:(id)equal;
- (FigTimePairObj)initWithCoder:(id)coder;
- (FigTimePairObj)initWithFigTimePair:(PC_CMTimePair *)pair;
- (FigTimePairObj)initWithFirst:(id *)first Second:(id *)second;
- (PC_CMTimePair)pair;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)getValue:(PC_CMTimePair *)value;
- (void)setFirst:(id *)first;
- (void)setPair:(PC_CMTimePair *)pair;
- (void)setSecond:(id *)second;
@end

@implementation FigTimePairObj

- (FigTimePairObj)initWithFirst:(id *)first Second:(id *)second
{
  *v7 = first->var3;
  v4 = *&first->var0;
  *&v7[8] = *second;
  v6[0] = v4;
  v6[1] = *v7;
  v6[2] = *&v7[16];
  v6[3] = v4;
  return [(FigTimePairObj *)self initWithFigTimePair:v6];
}

- (FigTimePairObj)initWithFigTimePair:(PC_CMTimePair *)pair
{
  v7.receiver = self;
  v7.super_class = FigTimePairObj;
  result = [(FigTimePairObj *)&v7 init];
  if (result)
  {
    v5 = *&pair->first.value;
    v6 = *&pair->first.epoch;
    *&result->_pair.second.timescale = *&pair->second.timescale;
    *&result->_pair.first.epoch = v6;
    *&result->_pair.first.value = v5;
  }

  return result;
}

- (FigTimePairObj)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"first"];
  if (v5)
  {
    [v5 time];
  }

  else
  {
    v8 = 0uLL;
    *&v9 = 0;
  }

  v11 = v8;
  *v12 = v9;
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"second"];
  if (v6)
  {
    [v6 time];
  }

  else
  {
    v8 = 0uLL;
    *&v9 = 0;
  }

  *&v12[8] = v8;
  *&v12[24] = v9;
  v8 = v11;
  v9 = *v12;
  v10 = *&v12[16];
  return [(FigTimePairObj *)self initWithFigTimePair:&v8];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = [FigTimeObj alloc];
  first = self->_pair.first;
  [coder encodeObject:-[FigTimeObj initWithFigTime:](v5 forKey:{"initWithFigTime:", &first), @"first"}];
  v6 = [FigTimeObj alloc];
  first = self->_pair.second;
  [coder encodeObject:-[FigTimeObj initWithFigTime:](v6 forKey:{"initWithFigTime:", &first), @"second"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FigTimePairObj allocWithZone:zone];
  v5 = *&self->_pair.first.epoch;
  v7[0] = *&self->_pair.first.value;
  v7[1] = v5;
  v7[2] = *&self->_pair.second.timescale;
  return [(FigTimePairObj *)v4 initWithFigTimePair:v7];
}

- (PC_CMTimePair)pair
{
  v3 = *&self->second.value;
  *&retstr->first.value = *&self->first.timescale;
  *&retstr->first.epoch = v3;
  *&retstr->second.timescale = *&self->second.epoch;
  return self;
}

- (void)setFirst:(id *)first
{
  v3 = *&first->var0;
  self->_pair.first.epoch = first->var3;
  *&self->_pair.first.value = v3;
}

- (void)setSecond:(id *)second
{
  v3 = *&second->var0;
  self->_pair.second.epoch = second->var3;
  *&self->_pair.second.value = v3;
}

- (void)setPair:(PC_CMTimePair *)pair
{
  v3 = *&pair->first.value;
  v4 = *&pair->first.epoch;
  *&self->_pair.second.timescale = *&pair->second.timescale;
  *&self->_pair.first.epoch = v4;
  *&self->_pair.first.value = v3;
}

- (void)getValue:(PC_CMTimePair *)value
{
  v3 = *&self->_pair.first.value;
  v4 = *&self->_pair.second.timescale;
  *&value->first.epoch = *&self->_pair.first.epoch;
  *&value->second.timescale = v4;
  *&value->first.value = v3;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v21 = v3;
  v22 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *&self->_pair.first.epoch;
    v17 = *&self->_pair.first.value;
    *v18 = v7;
    *&v18[16] = *&self->_pair.second.timescale;
    v8 = *(equal + 24);
    v15 = *(equal + 8);
    *v16 = v8;
    *&v16[16] = *(equal + 40);
    v13 = *&self->_pair.first.value;
    *v14 = self->_pair.first.epoch;
    first = *(equal + 8);
    if (!CMTimeCompare(&v13, &first))
    {
      v13 = *&v18[8];
      *v14 = *&v18[24];
      first = *&v16[8];
      p_first = &v13;
      v10 = &first;
      return CMTimeCompare(p_first, v10) == 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([equal objCType], "{PC_CMTimePair={?=qiIq}{?=qiIq}}"))
    {
      [equal getValue:&v17];
      v12 = *&self->_pair.first.epoch;
      v15 = *&self->_pair.first.value;
      *v16 = v12;
      *&v16[16] = *&self->_pair.second.timescale;
      v13 = v17;
      *v14 = *v18;
      *&v14[16] = *&v18[16];
      first = self->_pair.first;
      *&v19.value = v17;
      v19.epoch = *v18;
      if (!CMTimeCompare(&first, &v19))
      {
        first = *&v16[8];
        v19 = *&v14[8];
        p_first = &first;
        v10 = &v19;
        return CMTimeCompare(p_first, v10) == 0;
      }
    }
  }

  return 0;
}

- (unint64_t)hash
{
  v3 = *&self->_pair.first.value;
  epoch = self->_pair.first.epoch;
  return GetCMTimeHash(&v3);
}

+ (id)pairWithPair:(PC_CMTimePair *)pair
{
  v4 = [FigTimePairObj alloc];
  v5 = *&pair->first.epoch;
  v7[0] = *&pair->first.value;
  v7[1] = v5;
  v7[2] = *&pair->second.timescale;
  return [(FigTimePairObj *)v4 initWithFigTimePair:v7];
}

@end