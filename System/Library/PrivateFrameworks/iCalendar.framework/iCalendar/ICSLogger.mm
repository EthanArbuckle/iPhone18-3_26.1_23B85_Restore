@interface ICSLogger
+ (id)sharedInstance;
+ (void)logAtLevel:(int64_t)level forTokenizer:(id)tokenizer message:(id)message;
+ (void)setDelegate:(id)delegate;
- (void)logAtLevel:(int64_t)level forTokenizer:(id)tokenizer format:(id)format args:(char *)args;
@end

@implementation ICSLogger

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ICSLogger sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __27__ICSLogger_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ICSLogger);

  return MEMORY[0x2821F96F8]();
}

- (void)logAtLevel:(int64_t)level forTokenizer:(id)tokenizer format:(id)format args:(char *)args
{
  tokenizerCopy = tokenizer;
  formatCopy = format;
  if (!self->_loggingDelegate || self->_logCount > 199)
  {
    goto LABEL_13;
  }

  if (!tokenizerCopy)
  {
    goto LABEL_10;
  }

  printedICS = [tokenizerCopy printedICS];
  if (level == 3 && (printedICS & 1) == 0)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [tokenizerCopy debugDescription];
    v14 = [v12 initWithFormat:@"ICS Error for file: %@", v13];

    v15 = [v14 stringByReplacingOccurrencesOfString:@"%" withString:@"%%"];
    [(ICSLoggingDelegate *)self->_loggingDelegate logICSMessage:v15 atLevel:3];
    [tokenizerCopy setPrintedICS:1];
    ++self->_logCount;
  }

  if ([tokenizerCopy logCount] <= 4)
  {
    [tokenizerCopy setLogCount:{objc_msgSend(tokenizerCopy, "logCount") + 1}];
    if ([tokenizerCopy logCount] >= 5)
    {
      loggingDelegate = self->_loggingDelegate;
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hit Max ICS log messages for file! (%i)", 200];
      [(ICSLoggingDelegate *)loggingDelegate logICSMessage:v17 atLevel:3];
    }

LABEL_10:
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:args];
    v19 = [v18 stringByReplacingOccurrencesOfString:@"%" withString:@"%%"];
    [(ICSLoggingDelegate *)self->_loggingDelegate logICSMessage:v19 atLevel:level];
    logCount = self->_logCount;
    self->_logCount = logCount + 1;
    if (logCount >= 199)
    {
      v21 = self->_loggingDelegate;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hit Max ICS log messages (%i), disabling logging!", 200];
      [(ICSLoggingDelegate *)v21 logICSMessage:v22 atLevel:3];
    }
  }

LABEL_13:
}

+ (void)logAtLevel:(int64_t)level forTokenizer:(id)tokenizer message:(id)message
{
  messageCopy = message;
  tokenizerCopy = tokenizer;
  v9 = +[ICSLogger sharedInstance];
  [v9 logAtLevel:level forTokenizer:tokenizerCopy format:messageCopy args:&v10];
}

+ (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = +[ICSLogger sharedInstance];
  [v4 setDelegate:delegateCopy];
}

@end