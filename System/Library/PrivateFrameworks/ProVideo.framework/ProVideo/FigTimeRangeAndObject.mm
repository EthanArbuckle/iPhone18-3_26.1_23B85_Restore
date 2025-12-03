@interface FigTimeRangeAndObject
+ (id)rangeAndObjectWithRange:(id *)range andObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (FigTimeRangeAndObject)initWithCMTimeRange:(id *)range andObject:(id)object;
- (FigTimeRangeAndObject)initWithCoder:(id)coder;
- (FigTimeRangeAndObject)initWithFigTimeRange:(id *)range andObject:(id)object;
- (id)description;
- (id)durationObject;
- (id)startTimeObject;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigTimeRangeAndObject

+ (id)rangeAndObjectWithRange:(id *)range andObject:(id)object
{
  v6 = objc_alloc(objc_opt_class());
  v7 = *&range->var0.var3;
  v9[0] = *&range->var0.var0;
  v9[1] = v7;
  v9[2] = *&range->var1.var1;
  return [v6 initWithCMTimeRange:v9 andObject:object];
}

- (FigTimeRangeAndObject)initWithFigTimeRange:(id *)range andObject:(id)object
{
  v4 = *&range->var0.var3;
  v6[0] = *&range->var0.var0;
  v6[1] = v4;
  v6[2] = *&range->var1.var1;
  return [(FigTimeRangeAndObject *)self initWithCMTimeRange:v6 andObject:object];
}

- (FigTimeRangeAndObject)initWithCMTimeRange:(id *)range andObject:(id)object
{
  v5 = *&range->var0.var3;
  v9[0] = *&range->var0.var0;
  v9[1] = v5;
  v9[2] = *&range->var1.var1;
  v8.receiver = self;
  v8.super_class = FigTimeRangeAndObject;
  v6 = [(FigTimeRangeObj *)&v8 initWithCMTimeRange:v9];
  if (v6)
  {
    v6->_object = object;
  }

  return v6;
}

- (FigTimeRangeAndObject)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FigTimeRangeAndObject;
  v4 = [(FigTimeRangeObj *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_object = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"object"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FigTimeRangeAndObject;
  [(FigTimeRangeObj *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_object forKey:@"object"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigTimeRangeAndObject;
  [(FigTimeRangeAndObject *)&v3 dealloc];
}

- (id)startTimeObject
{
  if (self)
  {
    [(FigTimeRangeObj *)self range];
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
  }

  v6 = v3;
  v7 = v4;
  return [FigTimeObj timeWithTime:&v6, v3, v4, v5];
}

- (id)durationObject
{
  if (self)
  {
    [(FigTimeRangeObj *)self range];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
    v3 = 0u;
  }

  v5 = *(v4 + 8);
  v6 = *(&v4[1] + 1);
  return [FigTimeObj timeWithTime:&v5, v3, *&v4[0]];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v15 = v3;
    v16 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *&self->super._range.start.epoch;
      *&v14.start.value = *&self->super._range.start.value;
      *&v14.start.epoch = v7;
      *&v14.duration.timescale = *&self->super._range.duration.timescale;
      v8 = *(equal + 24);
      *&range2.start.value = *(equal + 8);
      *&range2.start.epoch = v8;
      *&range2.duration.timescale = *(equal + 40);
      v9 = CMTimeRangeEqual(&v14, &range2);
      if (v9)
      {
        LOBYTE(v9) = [self->_object isEqual:*(equal + 7)];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([equal objCType], "{?={?=qiIq}{?=qiIq}}"))
      {
        [equal getValue:&v14];
        v10 = *&self->super._range.start.epoch;
        *&range2.start.value = *&self->super._range.start.value;
        *&range2.start.epoch = v10;
        *&range2.duration.timescale = *&self->super._range.duration.timescale;
        v12 = v14;
        LOBYTE(v9) = CMTimeRangeEqual(&range2, &v12) != 0;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)description
{
  v2 = *&self->super._range.start.epoch;
  *&v4.start.value = *&self->super._range.start.value;
  *&v4.start.epoch = v2;
  *&v4.duration.timescale = *&self->super._range.duration.timescale;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", PC_CMTimeRangeToString(&v4), self->_object];
}

@end