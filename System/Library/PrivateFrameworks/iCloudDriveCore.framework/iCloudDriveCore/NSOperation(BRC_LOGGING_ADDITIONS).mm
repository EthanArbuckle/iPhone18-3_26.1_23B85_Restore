@interface NSOperation(BRC_LOGGING_ADDITIONS)
- (id)lightweightDescription;
@end

@implementation NSOperation(BRC_LOGGING_ADDITIONS)

- (id)lightweightDescription
{
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p", objc_opt_class(), a1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1;
    v4 = [v3 operationID];
    [v2 appendFormat:@" %@", v4];

    v5 = [v3 lastErrorDescription];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1;
    v7 = [v6 operationID];
    [v2 appendFormat:@" %@", v7];

    v8 = MEMORY[0x277CCACA8];
    v3 = [v6 error];
    v9 = [v3 domain];
    v10 = [v6 error];

    v5 = [v8 stringWithFormat:@"%@:%ld", v9, objc_msgSend(v10, "code")];

    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  if ([a1 isFinished])
  {
    v11 = "finished";
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ([a1 isCancelled])
  {
    v11 = "cancelled";
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (([a1 isExecuting] & 1) == 0)
    {
      if ([a1 isReady])
      {
        v11 = "ready";
      }

      else
      {
        v11 = "waiting";
      }

      if (!v5)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v11 = "executing";
    if (v5)
    {
LABEL_20:
      [v2 appendFormat:@" last-error: %@", v5];
    }
  }

LABEL_21:
  [v2 appendFormat:@" %s>", v11];

  return v2;
}

@end