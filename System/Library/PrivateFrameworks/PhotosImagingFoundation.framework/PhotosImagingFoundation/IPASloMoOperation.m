@interface IPASloMoOperation
+ (id)operationFromFileURL:(id)a3;
- ($222789CE95D16A76D31543149FD45E96)timeRange;
- (BOOL)isEqualToOperation:(id)a3;
- (IPASloMoOperation)initWithOperation:(id)a3;
- (IPASloMoOperation)initWithSettingsDictionary:(id)a3;
- (IPASloMoOperation)initWithTimeRange:(id *)a3 rate:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)internalRepresentation;
- (id)settingsDictionary;
@end

@implementation IPASloMoOperation

- (id)debugDescription
{
  [(IPASloMoOperation *)self timeRange];
  [(IPASloMoOperation *)self rate];
  v4 = v3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  memset(&range, 0, sizeof(range));
  v7 = CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &range);
  v8 = [v5 stringWithFormat:@"<%@:%p timeRange=%@ rate=%f>", v6, self, v7, v4];

  return v8;
}

- ($222789CE95D16A76D31543149FD45E96)timeRange
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [(IPAEditOperation *)[IPASloMoOperation allocWithZone:?]];
  v6 = *&self->_timeRange.start.epoch;
  v5 = *&self->_timeRange.duration.timescale;
  *(result + 8) = *&self->_timeRange.start.value;
  *(result + 24) = v6;
  *(result + 40) = v5;
  *(result + 14) = LODWORD(self->_rate);
  return result;
}

- (BOOL)isEqualToOperation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(IPASloMoOperation *)self timeRange];
    [(IPASloMoOperation *)self rate];
    v7 = v6;
    memset(v18, 0, sizeof(v18));
    if (v5)
    {
      [v5 timeRange];
    }

    [v5 rate];
    v9 = v8;
    range = v18[1];
    otherRange = v18[0];
    if (CMTimeRangeContainsTimeRange(&range, &otherRange))
    {
      range = v18[0];
      otherRange = v18[1];
      v10 = CMTimeRangeContainsTimeRange(&range, &otherRange) != 0;
    }

    else
    {
      v10 = 0;
    }

    range.start = v18[1].duration;
    v15 = *MEMORY[0x277CC08F0];
    *&otherRange.start.value = *MEMORY[0x277CC08F0];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    otherRange.start.epoch = v12;
    if (CMTimeCompare(&range.start, &otherRange.start))
    {
      v13 = 0;
    }

    else
    {
      range.start = v18[0].duration;
      *&otherRange.start.value = v15;
      otherRange.start.epoch = v12;
      v13 = CMTimeCompare(&range.start, &otherRange.start) == 0;
    }

    v11 = (v10 || v13) && v7 == v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)settingsDictionary
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(IPASloMoOperation *)self internalRepresentation];
  v3 = [v2 propertyListDictionary];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"adjustmentData"];
    if (v5)
    {
      v10 = 0;
      v6 = [IPAAdjustmentStackSerializer propertyListFromData:v5 error:&v10];
      v7 = v10;
      if (!v6)
      {
        v8 = IPAAdjustmentGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = v7;
          _os_log_impl(&dword_25E5BB000, v8, OS_LOG_TYPE_DEFAULT, "got back nil settings plist from PFVideoAdustments, error:%@", buf, 0xCu);
        }
      }
    }

    else
    {
      _PFAssertContinueHandler();
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IPASloMoOperation)initWithSettingsDictionary:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IPASloMoOperation;
  v5 = [(IPAEditOperation *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"slowMotion"];
    if (v6)
    {
      v15 = 0;
      v7 = [IPAAdjustmentStackSerializer dataFromPropertyList:v4 error:&v15];
      v8 = v15;
      if (v7)
      {
        v9 = [objc_alloc(MEMORY[0x277D3B518]) initWithFormatIdentifier:@"com.apple.video.slomo" formatVersion:@"1.1" data:v7 baseVersion:0 editorBundleID:0 renderTypes:0];

        if (v9)
        {
          [v9 slowMotionTimeRange];
          v10 = *buf;
          v11 = v19;
          *(v5 + 24) = v18;
          *(v5 + 40) = v11;
          *(v5 + 8) = v10;
          [v9 slowMotionRate];
          *(v5 + 14) = v12;
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        v13 = IPAAdjustmentGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&dword_25E5BB000, v13, OS_LOG_TYPE_DEFAULT, "unable to serialize %@ to data", buf, 0xCu);
        }
      }
    }

    v9 = v5;
    v5 = 0;
    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (IPASloMoOperation)initWithOperation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IPASloMoOperation;
  v5 = [(IPAEditOperation *)&v10 initWithOperation:v4];
  v6 = v5;
  if (v5)
  {
    v8 = *(v4 + 24);
    v7 = *(v4 + 40);
    *(v5 + 8) = *(v4 + 8);
    *(v5 + 24) = v8;
    *(v5 + 40) = v7;
    *(v5 + 14) = *(v4 + 14);
  }

  return v6;
}

- (IPASloMoOperation)initWithTimeRange:(id *)a3 rate:(float)a4
{
  if (a4 <= 0.0 || a4 > 1.0)
  {
    _PFAssertContinueHandler();
LABEL_11:

    return 0;
  }

  if ((a3->var0.var2 & 1) == 0 || (a3->var1.var2 & 1) == 0 || a3->var1.var3 || a3->var1.var0 < 0)
  {
    v8 = *&a3->var0.var3;
    *&range.start.value = *&a3->var0.var0;
    *&range.start.epoch = v8;
    *&range.duration.timescale = *&a3->var1.var1;
    v12 = CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &range);
    _PFAssertContinueHandler();

    goto LABEL_11;
  }

  v13.receiver = self;
  v13.super_class = IPASloMoOperation;
  result = [(IPAEditOperation *)&v13 init];
  if (result)
  {
    v11 = *&a3->var0.var3;
    v10 = *&a3->var1.var1;
    *&result->_timeRange.start.value = *&a3->var0.var0;
    *&result->_timeRange.start.epoch = v11;
    *&result->_timeRange.duration.timescale = v10;
    result->_rate = a4;
  }

  return result;
}

+ (id)operationFromFileURL:(id)a3
{
  v3 = MEMORY[0x277D3B518];
  v4 = a3;
  v5 = [[v3 alloc] initWithURL:v4];

  if (v5)
  {
    v6 = [IPASloMoOperation alloc];
    [v5 slowMotionTimeRange];
    [v5 slowMotionRate];
    v7 = [(IPASloMoOperation *)v6 initWithTimeRange:&v9 rate:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)internalRepresentation
{
  v3 = objc_alloc(MEMORY[0x277D3B518]);
  *&v4 = self->_rate;
  v5 = *&self->_timeRange.start.epoch;
  v8[0] = *&self->_timeRange.start.value;
  v8[1] = v5;
  v8[2] = *&self->_timeRange.duration.timescale;
  v6 = [v3 initWithSlowMotionTimeRange:v8 rate:v4];

  return v6;
}

@end