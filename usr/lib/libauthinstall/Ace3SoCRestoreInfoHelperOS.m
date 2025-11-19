@interface Ace3SoCRestoreInfoHelperOS
- (Ace3SoCRestoreInfoHelperOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (void)logInternal:(id)a3 arguments:(char *)a4;
- (void)verboseLog:(id)a3;
@end

@implementation Ace3SoCRestoreInfoHelperOS

- (Ace3SoCRestoreInfoHelperOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = Ace3SoCRestoreInfoHelperOS;
  v9 = [(Ace3SoCRestoreInfoHelperOS *)&v16 init];
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

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(Ace3SoCRestoreInfoHelperOS *)v10 verboseLog:@"%@: options = %@", v14, v8];
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
    [(Ace3SoCRestoreInfoHelperOS *)self logInternal:a3 arguments:&v3];
  }
}

@end