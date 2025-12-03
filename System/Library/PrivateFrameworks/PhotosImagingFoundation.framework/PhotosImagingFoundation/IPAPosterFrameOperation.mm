@interface IPAPosterFrameOperation
- (BOOL)isEqualToOperation:(id)operation;
- (IPAPosterFrameOperation)initWithFrameTime:(id *)time;
- (IPAPosterFrameOperation)initWithOperation:(id)operation;
- (IPAPosterFrameOperation)initWithSettingsDictionary:(id)dictionary;
- (id)debugDescription;
- (id)settingsDictionary;
@end

@implementation IPAPosterFrameOperation

- (BOOL)isEqualToOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    time1 = self->_frameTime;
    v5 = *(operationCopy + 8);
    v8.epoch = *(operationCopy + 3);
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

- (IPAPosterFrameOperation)initWithSettingsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IPAPosterFrameOperation;
  v5 = [(IPAEditOperation *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"frameTime"];

    CMTimeMakeFromDictionary(&v9, v6);
    v7 = *&v9.value;
    *(v5 + 3) = v9.epoch;
    *(v5 + 8) = v7;
  }

  return v5;
}

- (IPAPosterFrameOperation)initWithOperation:(id)operation
{
  operationCopy = operation;
  v9.receiver = self;
  v9.super_class = IPAPosterFrameOperation;
  v5 = [(IPAEditOperation *)&v9 initWithOperation:operationCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *(operationCopy + 3);
    *(v5 + 8) = *(operationCopy + 8);
    *(v5 + 3) = v7;
  }

  return v6;
}

- (IPAPosterFrameOperation)initWithFrameTime:(id *)time
{
  selfCopy = self;
  if (time->var2)
  {
    v9.receiver = self;
    v9.super_class = IPAPosterFrameOperation;
    v6 = [(IPAEditOperation *)&v9 init];
    if (v6)
    {
      var3 = time->var3;
      *(v6 + 8) = *&time->var0;
      *(v6 + 3) = var3;
    }

    selfCopy = v6;
    v4 = selfCopy;
  }

  else
  {
    _PFAssertContinueHandler();
    v4 = 0;
  }

  return v4;
}

@end