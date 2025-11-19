@interface SKIOIterator
- (SKIOIterator)initWithClassName:(id)a3;
- (unsigned)copyNextObject;
@end

@implementation SKIOIterator

- (SKIOIterator)initWithClassName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  existing = 0;
  v5 = *MEMORY[0x277CD2898];
  v6 = IOServiceMatching([v4 UTF8String]);
  if (IOServiceGetMatchingServices(v5, v6, &existing))
  {
    v7 = 1;
  }

  else
  {
    v7 = existing == 0;
  }

  if (v7)
  {
    v8 = SKGetOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_26BBB8000, v8, OS_LOG_TYPE_ERROR, "Cannot find IO object of class %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    self = [(SKIOObject *)self initWithIOObject:?];
    v9 = self;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unsigned)copyNextObject
{
  v7 = *MEMORY[0x277D85DE8];
  [(SKIOIterator *)self setAttempt:0];
  if ([(SKIOIterator *)self attempt]> 0x3E7)
  {
LABEL_5:
    v4 = SKGetOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = 1000;
      _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "IOKit iterator invalidated %d time(s)", v6, 8u);
    }

LABEL_8:
    result = 0;
  }

  else
  {
    while (1)
    {
      result = IOIteratorNext([(SKIOObject *)self ioObj]);
      if (result)
      {
        break;
      }

      if (IOIteratorIsValid([(SKIOObject *)self ioObj]))
      {
        goto LABEL_8;
      }

      [(SKIOIterator *)self setAttempt:[(SKIOIterator *)self attempt]+ 1];
      MEMORY[0x26D68F6E0]([(SKIOObject *)self ioObj]);
      if ([(SKIOIterator *)self attempt]>= 0x3E8)
      {
        goto LABEL_5;
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end