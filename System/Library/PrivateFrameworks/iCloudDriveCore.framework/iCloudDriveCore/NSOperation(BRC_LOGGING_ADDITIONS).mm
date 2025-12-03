@interface NSOperation(BRC_LOGGING_ADDITIONS)
- (id)lightweightDescription;
@end

@implementation NSOperation(BRC_LOGGING_ADDITIONS)

- (id)lightweightDescription
{
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    operationID = [selfCopy operationID];
    [v2 appendFormat:@" %@", operationID];

    lastErrorDescription = [selfCopy lastErrorDescription];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    operationID2 = [selfCopy2 operationID];
    [v2 appendFormat:@" %@", operationID2];

    v8 = MEMORY[0x277CCACA8];
    selfCopy = [selfCopy2 error];
    domain = [selfCopy domain];
    error = [selfCopy2 error];

    lastErrorDescription = [v8 stringWithFormat:@"%@:%ld", domain, objc_msgSend(error, "code")];

    goto LABEL_5;
  }

  lastErrorDescription = 0;
LABEL_7:
  if ([self isFinished])
  {
    v11 = "finished";
    if (!lastErrorDescription)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ([self isCancelled])
  {
    v11 = "cancelled";
    if (lastErrorDescription)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (([self isExecuting] & 1) == 0)
    {
      if ([self isReady])
      {
        v11 = "ready";
      }

      else
      {
        v11 = "waiting";
      }

      if (!lastErrorDescription)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v11 = "executing";
    if (lastErrorDescription)
    {
LABEL_20:
      [v2 appendFormat:@" last-error: %@", lastErrorDescription];
    }
  }

LABEL_21:
  [v2 appendFormat:@" %s>", v11];

  return v2;
}

@end