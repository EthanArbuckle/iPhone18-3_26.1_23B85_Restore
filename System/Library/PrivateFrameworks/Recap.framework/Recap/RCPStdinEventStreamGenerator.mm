@interface RCPStdinEventStreamGenerator
- (BOOL)_processBuffer;
- (RCPStdinEventStreamGenerator)init;
- (id)nextEventStream;
- (void)dealloc;
@end

@implementation RCPStdinEventStreamGenerator

- (RCPStdinEventStreamGenerator)init
{
  v10.receiver = self;
  v10.super_class = RCPStdinEventStreamGenerator;
  v2 = [(RCPStdinEventStreamGenerator *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithFileAtPath:@"/dev/stdin"];
    stdin = v2->_stdin;
    v2->_stdin = v3;

    v5 = objc_opt_new();
    commandBuffer = v2->_commandBuffer;
    v2->_commandBuffer = v5;

    v7 = objc_opt_new();
    stringBuffer = v2->_stringBuffer;
    v2->_stringBuffer = v7;

    [(NSInputStream *)v2->_stdin open];
  }

  return v2;
}

- (void)dealloc
{
  [(NSInputStream *)self->_stdin close];
  v3.receiver = self;
  v3.super_class = RCPStdinEventStreamGenerator;
  [(RCPStdinEventStreamGenerator *)&v3 dealloc];
}

- (BOOL)_processBuffer
{
  if ([(NSMutableArray *)self->_commandBuffer count])
  {
    return 1;
  }

  do
  {
      ;
    }

    v4 = [(NSInputStream *)self->_stdin streamStatus];
    v3 = v4 == 2;
    if (v4 != 2)
    {
      break;
    }

    v5 = malloc_type_calloc(0xFFuLL, 1uLL, 0x100004077774924uLL);
    if ([(NSInputStream *)self->_stdin hasBytesAvailable])
    {
      do
      {
        v6 = [(NSInputStream *)self->_stdin read:v5 maxLength:255];
        if (!v6)
        {
          return 0;
        }

        v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:v6 encoding:4];
        [(NSMutableString *)self->_stringBuffer appendString:v7];
        stringBuffer = self->_stringBuffer;
        v9 = [(NSMutableString *)stringBuffer length];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __46__RCPStdinEventStreamGenerator__processBuffer__block_invoke;
        v11[3] = &unk_279AF10D0;
        v11[4] = self;
        [(NSMutableString *)stringBuffer enumerateSubstringsInRange:0 options:v9 usingBlock:0, v11];
      }

      while ([(NSInputStream *)self->_stdin hasBytesAvailable]);
    }
  }

  while (![(NSMutableArray *)self->_commandBuffer count]);
  return v3;
}

void __46__RCPStdinEventStreamGenerator__processBuffer__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if (v13 && a3 + a4 != a5 + a6)
  {
    v15 = RCPLogPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2619DE000, v15, OS_LOG_TYPE_DEFAULT, "Found full command: %{public}@", &v16, 0xCu);
    }

    [*(*(a1 + 32) + 16) addObject:v13];
    [*(*(a1 + 32) + 24) deleteCharactersInRange:{a5, a6}];
  }

  else
  {
    v14 = RCPLogPlayback();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2619DE000, v14, OS_LOG_TYPE_DEFAULT, "Found partial command: %{public}@", &v16, 0xCu);
    }

    *a7 = 1;
  }
}

- (id)nextEventStream
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(RCPStdinEventStreamGenerator *)self _processBuffer])
  {
    v3 = [(NSMutableArray *)self->_commandBuffer firstObject];
    [(NSMutableArray *)self->_commandBuffer removeObjectAtIndex:0];
    v4 = RCPLogPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_2619DE000, v4, OS_LOG_TYPE_DEFAULT, "Generating event stream for command: %{public}@", &v9, 0xCu);
    }

    v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v3 componentsSeparatedByCharactersInSet:v5];

    v7 = [RCPSyntheticEventStream eventStreamWithCLIArguments:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end