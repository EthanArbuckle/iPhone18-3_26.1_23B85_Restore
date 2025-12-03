@interface IPATrimOperation
- ($222789CE95D16A76D31543149FD45E96)trimRange;
- (BOOL)isEqualToOperation:(id)operation;
- (IPATrimOperation)initWithOperation:(id)operation;
- (IPATrimOperation)initWithSettingsDictionary:(id)dictionary;
- (IPATrimOperation)initWithStartTime:(id *)time endTime:(id *)endTime;
- (IPATrimOperation)initWithTrimRange:(id *)range;
- (id)debugDescription;
- (id)settingsDictionary;
- (id)trimRangeDictionary;
@end

@implementation IPATrimOperation

- (BOOL)isEqualToOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = operationCopy;
    time1 = self->_startTime;
    v6 = *(v5 + 8);
    v10.epoch = *(v5 + 3);
    *&v10.value = v6;
    if (CMTimeCompare(&time1, &v10))
    {
      v7 = 0;
    }

    else
    {
      time1 = self->_endTime;
      v8 = *(v5 + 2);
      v10.epoch = *(v5 + 6);
      *&v10.value = v8;
      v7 = CMTimeCompare(&time1, &v10) == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  time = self->_startTime;
  v5 = *MEMORY[0x277CBECE8];
  v6 = CMTimeCopyDescription(*MEMORY[0x277CBECE8], &time);
  time = self->_endTime;
  v7 = CMTimeCopyDescription(v5, &time);
  v8 = [v3 stringWithFormat:@"<%@:%p startTime=%@ endTime=%@>", v4, self, v6, v7];

  return v8;
}

- (id)settingsDictionary
{
  v10[2] = *MEMORY[0x277D85DE8];
  startTime = self->_startTime;
  v3 = CMTimeCopyAsDictionary(&startTime, 0);
  startTime = self->_endTime;
  v4 = CMTimeCopyAsDictionary(&startTime, 0);
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v9[0] = @"startTime";
    v9[1] = @"endTime";
    v10[0] = v3;
    v10[1] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  return v6;
}

- (id)trimRangeDictionary
{
  time1.start = self->_startTime;
  v6 = *MEMORY[0x277CC08F0];
  *&time2.start.value = *MEMORY[0x277CC08F0];
  v3 = *(MEMORY[0x277CC08F0] + 16);
  time2.start.epoch = v3;
  if (CMTimeCompare(&time1.start, &time2.start) || (*&time1.start.value = *&self->_endTime.value, time1.start.epoch = self->_endTime.epoch, *&time2.start.value = v6, time2.start.epoch = v3, CMTimeCompare(&time1.start, &time2.start)))
  {
    memset(&time1, 0, sizeof(time1));
    [(IPATrimOperation *)self trimRange];
    time2 = time1;
    v4 = CMTimeRangeCopyAsDictionary(&time2, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- ($222789CE95D16A76D31543149FD45E96)trimRange
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  start = self->_startTime;
  endTime = self->_endTime;
  return CMTimeRangeFromTimeToTime(retstr, &start, &endTime);
}

- (IPATrimOperation)initWithSettingsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = IPATrimOperation;
  v5 = [(IPAEditOperation *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startTime"];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"endTime"];

    memset(&v14, 0, sizeof(v14));
    CMTimeMakeFromDictionary(&v14, v6);
    memset(&v13, 0, sizeof(v13));
    CMTimeMakeFromDictionary(&v13, v7);
    if ((v14.flags & 1) != 0 && (v13.flags & 1) != 0 && (time1 = v14, v11 = v13, CMTimeCompare(&time1, &v11) <= 0))
    {
      epoch = v14.epoch;
      *(v5 + 8) = *&v14.value;
      *(v5 + 3) = epoch;
      v10 = v13.epoch;
      *(v5 + 2) = *&v13.value;
      *(v5 + 6) = v10;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (IPATrimOperation)initWithOperation:(id)operation
{
  operationCopy = operation;
  v10.receiver = self;
  v10.super_class = IPATrimOperation;
  v5 = [(IPAEditOperation *)&v10 initWithOperation:operationCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *(operationCopy + 3);
    *(v5 + 8) = *(operationCopy + 8);
    *(v5 + 3) = v7;
    v8 = *(operationCopy + 6);
    *(v5 + 2) = *(operationCopy + 2);
    *(v5 + 6) = v8;
  }

  return v6;
}

- (IPATrimOperation)initWithStartTime:(id *)time endTime:(id *)endTime
{
  if ((time->var2 & 1) == 0)
  {
    time = *time;
    v6 = CMTimeCopyDescription(*MEMORY[0x277CBECE8], &time);
LABEL_5:
    _PFAssertContinueHandler();

LABEL_6:
    return 0;
  }

  if ((endTime->var2 & 1) == 0)
  {
    time = *endTime;
    v6 = CMTimeCopyDescription(*MEMORY[0x277CBECE8], &time);
    goto LABEL_5;
  }

  time = *time;
  time2 = *endTime;
  if (CMTimeCompare(&time, &time2) >= 1)
  {
    _PFAssertContinueHandler();
    goto LABEL_6;
  }

  v11.receiver = self;
  v11.super_class = IPATrimOperation;
  result = [(IPAEditOperation *)&v11 init];
  if (result)
  {
    var3 = time->var3;
    *&result->_startTime.value = *&time->var0;
    result->_startTime.epoch = var3;
    v10 = endTime->var3;
    *&result->_endTime.value = *&endTime->var0;
    result->_endTime.epoch = v10;
  }

  return result;
}

- (IPATrimOperation)initWithTrimRange:(id *)range
{
  v5 = *&range->var0.var3;
  *&v7.start.value = *&range->var0.var0;
  *&v7.start.epoch = v5;
  *&v7.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v8, &v7);
  *&v7.start.value = *&range->var0.var0;
  v7.start.epoch = range->var0.var3;
  return [(IPATrimOperation *)self initWithStartTime:&v7 endTime:&v8];
}

@end