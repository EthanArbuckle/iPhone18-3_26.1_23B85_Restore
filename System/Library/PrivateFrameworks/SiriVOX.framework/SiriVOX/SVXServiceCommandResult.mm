@interface SVXServiceCommandResult
+ (SVXServiceCommandResult)resultWithCommand:(id)command;
+ (SVXServiceCommandResult)resultWithResults:(id)results;
+ (id)resultFailureWithErrorCode:(int64_t)code reason:(id)reason;
+ (id)resultIgnored;
+ (id)resultSuccess;
- (BOOL)handleResultUsingIgnoredBlock:(id)block successBlock:(id)successBlock failureBlock:(id)failureBlock commandBlock:(id)commandBlock;
- (id)_initWithType:(int64_t)type failureErrorCode:(int64_t)code failureReason:(id)reason command:(id)command results:(id)results;
- (id)_optimalResult;
@end

@implementation SVXServiceCommandResult

- (id)_optimalResult
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_type != 4)
  {
    selfCopy = self;
LABEL_16:
    v6 = selfCopy;
    goto LABEL_19;
  }

  if (![(NSArray *)self->_results count])
  {
    selfCopy = +[SVXServiceCommandResult resultIgnored];
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

        _optimalResult = [*(*(&v15 + 1) + 8 * i) _optimalResult];
        v10 = _optimalResult;
        if (!v6 || _optimalResult[1] > v6->_type)
        {
          v11 = _optimalResult;

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

- (id)_initWithType:(int64_t)type failureErrorCode:(int64_t)code failureReason:(id)reason command:(id)command results:(id)results
{
  reasonCopy = reason;
  commandCopy = command;
  resultsCopy = results;
  v24.receiver = self;
  v24.super_class = SVXServiceCommandResult;
  v15 = [(SVXServiceCommandResult *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    v15->_failureErrorCode = code;
    v17 = [reasonCopy copy];
    failureReason = v16->_failureReason;
    v16->_failureReason = v17;

    v19 = [commandCopy copy];
    command = v16->_command;
    v16->_command = v19;

    v21 = [resultsCopy copy];
    results = v16->_results;
    v16->_results = v21;
  }

  return v16;
}

- (BOOL)handleResultUsingIgnoredBlock:(id)block successBlock:(id)successBlock failureBlock:(id)failureBlock commandBlock:(id)commandBlock
{
  blockCopy = block;
  successBlockCopy = successBlock;
  failureBlockCopy = failureBlock;
  commandBlockCopy = commandBlock;
  v14 = commandBlockCopy;
  v15 = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (!type)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }

      goto LABEL_16;
    }

    if (type == 1)
    {
      if (failureBlockCopy)
      {
        failureBlockCopy[2](failureBlockCopy, self->_failureErrorCode, self->_failureReason);
      }

      goto LABEL_16;
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        if (successBlockCopy)
        {
          successBlockCopy[2](successBlockCopy);
        }

        goto LABEL_16;
      case 3:
        if (commandBlockCopy)
        {
          (*(commandBlockCopy + 2))(commandBlockCopy, self->_command);
        }

        goto LABEL_16;
      case 4:
        _optimalResult = [(SVXServiceCommandResult *)self _optimalResult];
        [_optimalResult handleResultUsingIgnoredBlock:blockCopy successBlock:successBlockCopy failureBlock:failureBlockCopy commandBlock:v14];

LABEL_16:
        v15 = 1;
        break;
    }
  }

  return v15;
}

+ (SVXServiceCommandResult)resultWithResults:(id)results
{
  resultsCopy = results;
  v4 = [objc_alloc(objc_opt_class()) _initWithType:4 failureErrorCode:0 failureReason:0 command:0 results:resultsCopy];

  return v4;
}

+ (SVXServiceCommandResult)resultWithCommand:(id)command
{
  commandCopy = command;
  v4 = [objc_alloc(objc_opt_class()) _initWithType:3 failureErrorCode:0 failureReason:0 command:commandCopy results:0];

  return v4;
}

+ (id)resultFailureWithErrorCode:(int64_t)code reason:(id)reason
{
  reasonCopy = reason;
  v6 = [objc_alloc(objc_opt_class()) _initWithType:1 failureErrorCode:code failureReason:reasonCopy command:0 results:0];

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