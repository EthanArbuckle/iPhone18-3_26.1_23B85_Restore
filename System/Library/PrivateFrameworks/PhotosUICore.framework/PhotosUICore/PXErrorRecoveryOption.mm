@interface PXErrorRecoveryOption
+ (id)recoveryOptionWithTitle:(id)title style:(int64_t)style handler:(id)handler;
- (PXErrorRecoveryOption)initWithTitle:(id)title style:(int64_t)style handler:(id)handler;
- (void)_attemptRecoveryFromError:(id)error completionHandler:(id)handler;
@end

@implementation PXErrorRecoveryOption

- (void)_attemptRecoveryFromError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXErrorRecovery.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  handler = [(PXErrorRecoveryOption *)self handler];
  v9 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, errorCopy, handlerCopy);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (PXErrorRecoveryOption)initWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = PXErrorRecoveryOption;
  v10 = [(PXErrorRecoveryOption *)&v16 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v10->_style = style;
    v13 = [handlerCopy copy];
    handler = v10->_handler;
    v10->_handler = v13;
  }

  return v10;
}

+ (id)recoveryOptionWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v10 = [[self alloc] initWithTitle:titleCopy style:style handler:handlerCopy];

  return v10;
}

@end