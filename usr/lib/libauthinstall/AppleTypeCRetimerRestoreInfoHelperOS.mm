@interface AppleTypeCRetimerRestoreInfoHelperOS
- (AppleTypeCRetimerRestoreInfoHelperOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (void)logInternal:(id)a3 arguments:(char *)a4;
- (void)verboseLog:(id)a3;
@end

@implementation AppleTypeCRetimerRestoreInfoHelperOS

- (AppleTypeCRetimerRestoreInfoHelperOS)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = AppleTypeCRetimerRestoreInfoHelperOS;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperOS *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_logFunction = a4;
    v9->_logContext = a5;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(AppleTypeCRetimerRestoreInfoHelperOS *)v10 verboseLog:@"%@: options = %@", v12, v8];
  }

  return v10;
}

- (void)logInternal:(id)a3 arguments:(char *)a4
{
  v6 = MEMORY[0x29EDBA050];
  v7 = a3;
  v8 = [[v6 alloc] initWithFormat:v7 arguments:a4];

  [v8 appendString:@"\n"];
  (self->_logFunction)(self->_logContext, [v8 UTF8String]);
}

- (void)verboseLog:(id)a3
{
  if (self->_verbose)
  {
    [(AppleTypeCRetimerRestoreInfoHelperOS *)self logInternal:a3 arguments:&v3];
  }
}

@end