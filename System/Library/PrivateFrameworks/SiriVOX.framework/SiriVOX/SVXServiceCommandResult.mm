@interface SVXServiceCommandResult
+ (SVXServiceCommandResult)resultWithCommand:(id)a3;
+ (SVXServiceCommandResult)resultWithResults:(id)a3;
+ (id)resultFailureWithErrorCode:(int64_t)a3 reason:(id)a4;
+ (id)resultIgnored;
+ (id)resultSuccess;
- (BOOL)handleResultUsingIgnoredBlock:(id)a3 successBlock:(id)a4 failureBlock:(id)a5 commandBlock:(id)a6;
- (id)_initWithType:(int64_t)a3 failureErrorCode:(int64_t)a4 failureReason:(id)a5 command:(id)a6 results:(id)a7;
- (id)_optimalResult;
@end

@implementation SVXServiceCommandResult

- (id)_optimalResult
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_type != 4)
  {
    v12 = self;
LABEL_16:
    v6 = v12;
    goto LABEL_19;
  }

  if (![(NSArray *)self->_results count])
  {
    v12 = +[SVXServiceCommandResult resultIgnored];
    goto LABEL_16;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_results;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) _optimalResult];
        v10 = v9;
        if (!v6 || v9[1] > v6->_type)
        {
          v11 = v9;

          v6 = v11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_initWithType:(int64_t)a3 failureErrorCode:(int64_t)a4 failureReason:(id)a5 command:(id)a6 results:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = SVXServiceCommandResult;
  v15 = [(SVXServiceCommandResult *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = a3;
    v15->_failureErrorCode = a4;
    v17 = [v12 copy];
    failureReason = v16->_failureReason;
    v16->_failureReason = v17;

    v19 = [v13 copy];
    command = v16->_command;
    v16->_command = v19;

    v21 = [v14 copy];
    results = v16->_results;
    v16->_results = v21;
  }

  return v16;
}

- (BOOL)handleResultUsingIgnoredBlock:(id)a3 successBlock:(id)a4 failureBlock:(id)a5 commandBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (!type)
    {
      if (v10)
      {
        v10[2](v10);
      }

      goto LABEL_16;
    }

    if (type == 1)
    {
      if (v12)
      {
        v12[2](v12, self->_failureErrorCode, self->_failureReason);
      }

      goto LABEL_16;
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        if (v11)
        {
          v11[2](v11);
        }

        goto LABEL_16;
      case 3:
        if (v13)
        {
          (*(v13 + 2))(v13, self->_command);
        }

        goto LABEL_16;
      case 4:
        v17 = [(SVXServiceCommandResult *)self _optimalResult];
        [v17 handleResultUsingIgnoredBlock:v10 successBlock:v11 failureBlock:v12 commandBlock:v14];

LABEL_16:
        v15 = 1;
        break;
    }
  }

  return v15;
}

+ (SVXServiceCommandResult)resultWithResults:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithType:4 failureErrorCode:0 failureReason:0 command:0 results:v3];

  return v4;
}

+ (SVXServiceCommandResult)resultWithCommand:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithType:3 failureErrorCode:0 failureReason:0 command:v3 results:0];

  return v4;
}

+ (id)resultFailureWithErrorCode:(int64_t)a3 reason:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) _initWithType:1 failureErrorCode:a3 failureReason:v5 command:0 results:0];

  return v6;
}

+ (id)resultSuccess
{
  v2 = [objc_alloc(objc_opt_class()) _initWithType:2 failureErrorCode:0 failureReason:0 command:0 results:0];

  return v2;
}

+ (id)resultIgnored
{
  v2 = [objc_alloc(objc_opt_class()) _initWithType:0 failureErrorCode:0 failureReason:0 command:0 results:0];

  return v2;
}

@end