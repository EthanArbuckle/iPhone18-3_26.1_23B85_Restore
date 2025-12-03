@interface FigTimeRangeObj
+ (id)rangeWithRange:(id *)range;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)end;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)range;
- (BOOL)isEqual:(id)equal;
- (FigTimeRangeObj)initWithCMTimeRange:(id *)range;
- (FigTimeRangeObj)initWithCoder:(id)coder;
- (FigTimeRangeObj)initWithFigTimeRange:(id *)range;
- (id)copyWithRange:(id *)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)sortByStartTimeAscending:(id)ascending;
- (int64_t)sortByStartTimeDescending:(id)descending;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)getValue:(id *)value;
- (void)setDuration:(id *)duration;
- (void)setRange:(id *)range;
- (void)setStart:(id *)start;
@end

@implementation FigTimeRangeObj

- (id)copyWithRange:(id *)range
{
  v4 = [FigTimeRangeObj alloc];
  v5 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v5;
  v7[2] = *&range->var1.var1;
  return [(FigTimeRangeObj *)v4 initWithFigTimeRange:v7];
}

- (FigTimeRangeObj)initWithFigTimeRange:(id *)range
{
  v3 = *&range->var0.var3;
  v5[0] = *&range->var0.var0;
  v5[1] = v3;
  v5[2] = *&range->var1.var1;
  return [(FigTimeRangeObj *)self initWithCMTimeRange:v5];
}

- (FigTimeRangeObj)initWithCMTimeRange:(id *)range
{
  v7.receiver = self;
  v7.super_class = FigTimeRangeObj;
  result = [(FigTimeRangeObj *)&v7 init];
  if (result)
  {
    v5 = *&range->var0.var0;
    v6 = *&range->var0.var3;
    *&result->_range.duration.timescale = *&range->var1.var1;
    *&result->_range.start.epoch = v6;
    *&result->_range.start.value = v5;
  }

  return result;
}

- (FigTimeRangeObj)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = FigTimeRangeObj;
  v4 = [(FigTimeRangeObj *)&v10 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"start"];
    if (v5)
    {
      [v5 time];
    }

    else
    {
      v8 = 0uLL;
      v9 = 0;
    }

    *(v4 + 3) = v9;
    *(v4 + 8) = v8;
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    if (v6)
    {
      [v6 time];
    }

    else
    {
      v8 = 0uLL;
      v9 = 0;
    }

    *(v4 + 2) = v8;
    *(v4 + 6) = v9;
  }

  return v4;
}

+ (id)rangeWithRange:(id *)range
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v5;
  v7[2] = *&range->var1.var1;
  return [v4 initWithCMTimeRange:v7];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = [FigTimeObj alloc];
  start = self->_range.start;
  [coder encodeObject:-[FigTimeObj initWithCMTime:](v5 forKey:{"initWithCMTime:", &start), @"start"}];
  v6 = [FigTimeObj alloc];
  start = self->_range.duration;
  [coder encodeObject:-[FigTimeObj initWithCMTime:](v6 forKey:{"initWithCMTime:", &start), @"duration"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FigTimeRangeObj allocWithZone:zone];
  v5 = *&self->_range.start.epoch;
  v7[0] = *&self->_range.start.value;
  v7[1] = v5;
  v7[2] = *&self->_range.duration.timescale;
  return [(FigTimeRangeObj *)v4 initWithCMTimeRange:v7];
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)range
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (void)setRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_range.duration.timescale = *&range->var1.var1;
  *&self->_range.start.epoch = v4;
  *&self->_range.start.value = v3;
}

- (void)setStart:(id *)start
{
  v3 = *&start->var0;
  self->_range.start.epoch = start->var3;
  *&self->_range.start.value = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)end
{
  v3 = *&self->_range.start.epoch;
  v5[0] = *&self->_range.start.value;
  v5[1] = v3;
  v5[2] = *&self->_range.duration.timescale;
  PC_CMTimeRangeEnd(v5, retstr);
  return result;
}

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_range.duration.epoch = duration->var3;
  *&self->_range.duration.value = v3;
}

- (void)getValue:(id *)value
{
  v3 = *&self->_range.start.value;
  v4 = *&self->_range.duration.timescale;
  *&value->var0.var3 = *&self->_range.start.epoch;
  *&value->var1.var1 = v4;
  *&value->var0.var0 = v3;
}

- (id)description
{
  v2 = *&self->_range.start.epoch;
  *&v4.start.value = *&self->_range.start.value;
  *&v4.start.epoch = v2;
  *&v4.duration.timescale = *&self->_range.duration.timescale;
  return PC_CMTimeRangeToString(&v4);
}

- (int64_t)sortByStartTimeAscending:(id)ascending
{
  if (self)
  {
    [(FigTimeRangeObj *)self start];
    if (ascending)
    {
LABEL_3:
      [ascending start];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (ascending)
    {
      goto LABEL_3;
    }
  }

  memset(&v6, 0, sizeof(v6));
LABEL_6:
  v4 = CMTimeCompare(&time1, &v6);
  if (v4 < 0)
  {
    return -1;
  }

  else
  {
    return v4 != 0;
  }
}

- (int64_t)sortByStartTimeDescending:(id)descending
{
  if (self)
  {
    [(FigTimeRangeObj *)self start];
    if (descending)
    {
LABEL_3:
      [descending start];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (descending)
    {
      goto LABEL_3;
    }
  }

  memset(&v6, 0, sizeof(v6));
LABEL_6:
  v4 = CMTimeCompare(&time1, &v6);
  if (v4 > 0)
  {
    return -1;
  }

  else
  {
    return v4 >> 31;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v18 = v3;
  v19 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *&self->_range.start.epoch;
    v15 = *&self->_range.start.value;
    v16 = v7;
    v17 = *&self->_range.duration.timescale;
    v8 = *(equal + 24);
    *&range2.start.value = *(equal + 8);
    *&range2.start.epoch = v8;
    *&range2.duration.timescale = *(equal + 40);
    v9 = &v15;
    p_range2 = &range2;
    return CMTimeRangeEqual(v9, p_range2) != 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([equal objCType], "{?={?=qiIq}{?=qiIq}}"))
  {
    [equal getValue:&v15];
    v12 = *&self->_range.start.epoch;
    *&range2.start.value = *&self->_range.start.value;
    *&range2.start.epoch = v12;
    *&range2.duration.timescale = *&self->_range.duration.timescale;
    v13[0] = v15;
    v13[1] = v16;
    v13[2] = v17;
    v9 = &range2;
    p_range2 = v13;
    return CMTimeRangeEqual(v9, p_range2) != 0;
  }

  return 0;
}

- (unint64_t)hash
{
  timescale = self->_range.start.timescale;
  if (timescale)
  {
    return ((self->_range.start.value << 10) / timescale);
  }

  else
  {
    return 0;
  }
}

@end