@interface PXErrorRecoveryOption
+ (id)recoveryOptionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
- (PXErrorRecoveryOption)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
- (void)_attemptRecoveryFromError:(id)a3 completionHandler:(id)a4;
@end

@implementation PXErrorRecoveryOption

- (void)_attemptRecoveryFromError:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXErrorRecovery.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v8 = [(PXErrorRecoveryOption *)self handler];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v11, v7);
  }

  else
  {
    v7[2](v7, 1);
  }
}

- (PXErrorRecoveryOption)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PXErrorRecoveryOption;
  v10 = [(PXErrorRecoveryOption *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v10->_style = a4;
    v13 = [v9 copy];
    handler = v10->_handler;
    v10->_handler = v13;
  }

  return v10;
}

+ (id)recoveryOptionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithTitle:v9 style:a4 handler:v8];

  return v10;
}

@end