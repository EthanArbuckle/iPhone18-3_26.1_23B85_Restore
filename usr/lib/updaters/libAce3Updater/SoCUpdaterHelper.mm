@interface SoCUpdaterHelper
- (SoCUpdaterHelper)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (void)logInternal:(id)internal arguments:(char *)arguments;
- (void)verboseLog:(id)log;
@end

@implementation SoCUpdaterHelper

- (SoCUpdaterHelper)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = SoCUpdaterHelper;
  v9 = [(SoCUpdaterHelper *)&v14 init];
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
    [(SoCUpdaterHelper *)self logInternal:log arguments:&v3];
  }
}

@end