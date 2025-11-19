@interface FigTimePairObj
+ (id)pairWithPair:(PC_CMTimePair *)a3;
- (BOOL)isEqual:(id)a3;
- (FigTimePairObj)initWithCoder:(id)a3;
- (FigTimePairObj)initWithFigTimePair:(PC_CMTimePair *)a3;
- (FigTimePairObj)initWithFirst:(id *)a3 Second:(id *)a4;
- (PC_CMTimePair)pair;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)getValue:(PC_CMTimePair *)a3;
- (void)setFirst:(id *)a3;
- (void)setPair:(PC_CMTimePair *)a3;
- (void)setSecond:(id *)a3;
@end

@implementation FigTimePairObj

- (FigTimePairObj)initWithFirst:(id *)a3 Second:(id *)a4
{
  *v7 = a3->var3;
  v4 = *&a3->var0;
  *&v7[8] = *a4;
  v6[0] = v4;
  v6[1] = *v7;
  v6[2] = *&v7[16];
  v6[3] = v4;
  return [(FigTimePairObj *)self initWithFigTimePair:v6];
}

- (FigTimePairObj)initWithFigTimePair:(PC_CMTimePair *)a3
{
  v7.receiver = self;
  v7.super_class = FigTimePairObj;
  result = [(FigTimePairObj *)&v7 init];
  if (result)
  {
    v5 = *&a3->first.value;
    v6 = *&a3->first.epoch;
    *&result->_pair.second.timescale = *&a3->second.timescale;
    *&result->_pair.first.epoch = v6;
    *&result->_pair.first.value = v5;
  }

  return result;
}

- (FigTimePairObj)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"first"];
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
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"second"];
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

- (void)encodeWithCoder:(id)a3
{
  v5 = [FigTimeObj alloc];
  first = self->_pair.first;
  [a3 encodeObject:-[FigTimeObj initWithFigTime:](v5 forKey:{"initWithFigTime:", &first), @"first"}];
  v6 = [FigTimeObj alloc];
  first = self->_pair.second;
  [a3 encodeObject:-[FigTimeObj initWithFigTime:](v6 forKey:{"initWithFigTime:", &first), @"second"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FigTimePairObj allocWithZone:a3];
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

- (void)setFirst:(id *)a3
{
  v3 = *&a3->var0;
  self->_pair.first.epoch = a3->var3;
  *&self->_pair.first.value = v3;
}

- (void)setSecond:(id *)a3
{
  v3 = *&a3->var0;
  self->_pair.second.epoch = a3->var3;
  *&self->_pair.second.value = v3;
}

- (void)setPair:(PC_CMTimePair *)a3
{
  v3 = *&a3->first.value;
  v4 = *&a3->first.epoch;
  *&self->_pair.second.timescale = *&a3->second.timescale;
  *&self->_pair.first.epoch = v4;
  *&self->_pair.first.value = v3;
}

- (void)getValue:(PC_CMTimePair *)a3
{
  v3 = *&self->_pair.first.value;
  v4 = *&self->_pair.second.timescale;
  *&a3->first.epoch = *&self->_pair.first.epoch;
  *&a3->second.timescale = v4;
  *&a3->first.value = v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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
    v8 = *(a3 + 24);
    v15 = *(a3 + 8);
    *v16 = v8;
    *&v16[16] = *(a3 + 40);
    v13 = *&self->_pair.first.value;
    *v14 = self->_pair.first.epoch;
    first = *(a3 + 8);
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([a3 objCType], "{PC_CMTimePair={?=qiIq}{?=qiIq}}"))
    {
      [a3 getValue:&v17];
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

+ (id)pairWithPair:(PC_CMTimePair *)a3
{
  v4 = [FigTimePairObj alloc];
  v5 = *&a3->first.epoch;
  v7[0] = *&a3->first.value;
  v7[1] = v5;
  v7[2] = *&a3->second.timescale;
  return [(FigTimePairObj *)v4 initWithFigTimePair:v7];
}

@end