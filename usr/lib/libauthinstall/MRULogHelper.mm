@interface MRULogHelper
- (MRULogHelper)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (void)logInternal:(id)internal arguments:(char *)arguments;
- (void)verboseLog:(id)log;
@end

@implementation MRULogHelper

- (MRULogHelper)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  v8.receiver = self;
  v8.super_class = MRULogHelper;
  result = [(MRULogHelper *)&v8 init];
  if (result)
  {
    result->_logFunction = function;
    result->_logContext = context;
    result->_verbose = 1;
  }

  return result;
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
    [(MRULogHelper *)self logInternal:log arguments:&v3];
  }
}

@end