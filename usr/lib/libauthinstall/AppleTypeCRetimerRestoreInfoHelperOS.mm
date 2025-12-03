@interface AppleTypeCRetimerRestoreInfoHelperOS
- (AppleTypeCRetimerRestoreInfoHelperOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (void)logInternal:(id)internal arguments:(char *)arguments;
- (void)verboseLog:(id)log;
@end

@implementation AppleTypeCRetimerRestoreInfoHelperOS

- (AppleTypeCRetimerRestoreInfoHelperOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = AppleTypeCRetimerRestoreInfoHelperOS;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperOS *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_logFunction = function;
    v9->_logContext = context;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(AppleTypeCRetimerRestoreInfoHelperOS *)v10 verboseLog:@"%@: options = %@", v12, optionsCopy];
  }

  return v10;
}

- (void)logInternal:(id)internal arguments:(char *)arguments
{
  v6 = MEMORY[0x29EDBA050];
  internalCopy = internal;
  v8 = [[v6 alloc] initWithFormat:internalCopy arguments:arguments];

  [v8 appendString:@"\n"];
  (self->_logFunction)(self->_logContext, [v8 UTF8String]);
}

- (void)verboseLog:(id)log
{
  if (self->_verbose)
  {
    [(AppleTypeCRetimerRestoreInfoHelperOS *)self logInternal:log arguments:&v3];
  }
}

@end