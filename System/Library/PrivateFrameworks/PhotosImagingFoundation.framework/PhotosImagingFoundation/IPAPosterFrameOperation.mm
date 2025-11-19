@interface IPAPosterFrameOperation
- (BOOL)isEqualToOperation:(id)a3;
- (IPAPosterFrameOperation)initWithFrameTime:(id *)a3;
- (IPAPosterFrameOperation)initWithOperation:(id)a3;
- (IPAPosterFrameOperation)initWithSettingsDictionary:(id)a3;
- (id)debugDescription;
- (id)settingsDictionary;
@end

@implementation IPAPosterFrameOperation

- (BOOL)isEqualToOperation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    time1 = self->_frameTime;
    v5 = *(v4 + 8);
    v8.epoch = *(v4 + 3);
    *&v8.value = v5;
    v6 = CMTimeCompare(&time1, &v8) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  time = self->_frameTime;
  v5 = CMTimeCopyDescription(*MEMORY[0x277CBECE8], &time);
  v6 = [v3 stringWithFormat:@"<%@:%p frameTime=%@>", v4, self, v5];

  return v6;
}

- (id)settingsDictionary
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  frameTime = self->_frameTime;
  v3 = CMTimeCopyAsDictionary(&frameTime, v2);
  v4 = v3;
  if (v3)
  {
    v8 = @"frameTime";
    v9[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IPAPosterFrameOperation)initWithSettingsDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IPAPosterFrameOperation;
  v5 = [(IPAEditOperation *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"frameTime"];

    CMTimeMakeFromDictionary(&v9, v6);
    v7 = *&v9.value;
    *(v5 + 3) = v9.epoch;
    *(v5 + 8) = v7;
  }

  return v5;
}

- (IPAPosterFrameOperation)initWithOperation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IPAPosterFrameOperation;
  v5 = [(IPAEditOperation *)&v9 initWithOperation:v4];
  v6 = v5;
  if (v5)
  {
    v7 = *(v4 + 3);
    *(v5 + 8) = *(v4 + 8);
    *(v5 + 3) = v7;
  }

  return v6;
}

- (IPAPosterFrameOperation)initWithFrameTime:(id *)a3
{
  v3 = self;
  if (a3->var2)
  {
    v9.receiver = self;
    v9.super_class = IPAPosterFrameOperation;
    v6 = [(IPAEditOperation *)&v9 init];
    if (v6)
    {
      var3 = a3->var3;
      *(v6 + 8) = *&a3->var0;
      *(v6 + 3) = var3;
    }

    v3 = v6;
    v4 = v3;
  }

  else
  {
    _PFAssertContinueHandler();
    v4 = 0;
  }

  return v4;
}

@end