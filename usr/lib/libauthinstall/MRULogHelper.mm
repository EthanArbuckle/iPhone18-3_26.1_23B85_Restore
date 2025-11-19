@interface MRULogHelper
- (MRULogHelper)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (void)logInternal:(id)a3 arguments:(char *)a4;
- (void)verboseLog:(id)a3;
@end

@implementation MRULogHelper

- (MRULogHelper)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8.receiver = self;
  v8.super_class = MRULogHelper;
  result = [(MRULogHelper *)&v8 init];
  if (result)
  {
    result->_logFunction = a4;
    result->_logContext = a5;
    result->_verbose = 1;
  }

  return result;
}

- (void)logInternal:(id)a3 arguments:(char *)a4
{
  v6 = MEMORY[0x29EDBA050];
  v7 = a3;
  v11 = [[v6 alloc] initWithFormat:v7 arguments:a4];

  [v11 appendString:@"\n"];
  logFunction = self->_logFunction;
  logContext = self->_logContext;
  v10 = v11;
  logFunction(logContext, [v11 UTF8String]);
}

- (void)verboseLog:(id)a3
{
  if (self->_verbose)
  {
    [(MRULogHelper *)self logInternal:a3 arguments:&v3];
  }
}

@end