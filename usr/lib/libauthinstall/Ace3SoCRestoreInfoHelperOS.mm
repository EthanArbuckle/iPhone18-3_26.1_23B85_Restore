@interface Ace3SoCRestoreInfoHelperOS
- (Ace3SoCRestoreInfoHelperOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (void)logInternal:(id)internal arguments:(char *)arguments;
- (void)verboseLog:(id)log;
@end

@implementation Ace3SoCRestoreInfoHelperOS

- (Ace3SoCRestoreInfoHelperOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = Ace3SoCRestoreInfoHelperOS;
  v9 = [(Ace3SoCRestoreInfoHelperOS *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_logFunction = function;
    v9->_logContext = context;
    v11 = [optionsCopy objectForKeyedSubscript:@"Options"];
    v12 = [v11 objectForKeyedSubscript:@"Verbose"];

    if (v12)
    {
      v10->_verbose = 1;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(Ace3SoCRestoreInfoHelperOS *)v10 verboseLog:@"%@: options = %@", v14, optionsCopy];
  }

  return v10;
}

- (void)logInternal:(id)internal arguments:(char *)arguments
{
  v6 = MEMORY[0x29EDBA050];
  internalCopy = internal;
  v11 = [[v6 alloc] initWithFormat:internalCopy arguments:arguments];

  [v11 appendString:@"\n"];
  logFunction = self->_logFunction;
  logContext = self->_logContext;
  v10 = v11;
  logFunction(logContext, [v11 UTF8String]);
}

- (void)verboseLog:(id)log
{
  if (self->_verbose)
  {
    [(Ace3SoCRestoreInfoHelperOS *)self logInternal:log arguments:&v3];
  }
}

@end