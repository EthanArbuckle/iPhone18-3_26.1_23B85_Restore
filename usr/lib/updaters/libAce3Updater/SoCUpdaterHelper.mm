@interface SoCUpdaterHelper
- (SoCUpdaterHelper)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (void)logInternal:(id)a3 arguments:(char *)a4;
- (void)verboseLog:(id)a3;
@end

@implementation SoCUpdaterHelper

- (SoCUpdaterHelper)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SoCUpdaterHelper;
  v9 = [(SoCUpdaterHelper *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_logFunction = a4;
    v9->_logContext = a5;
    v11 = [v8 objectForKeyedSubscript:@"Options"];
    v12 = [v11 objectForKeyedSubscript:@"Verbose"];

    if (v12)
    {
      v10->_verbose = 1;
    }
  }

  return v10;
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
    [(SoCUpdaterHelper *)self logInternal:a3 arguments:&v3];
  }
}

@end