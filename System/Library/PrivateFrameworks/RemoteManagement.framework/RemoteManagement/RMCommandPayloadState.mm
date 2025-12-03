@interface RMCommandPayloadState
- (void)markExecutedWithResult:(id)result reasons:(id)reasons unknownPayloadKeys:(id)keys;
- (void)markFailedWithError:(id)error reasons:(id)reasons;
- (void)markPending;
- (void)markQueued;
@end

@implementation RMCommandPayloadState

- (void)markQueued
{
  [(RMCommandPayloadState *)self setStatus:0];
  v3 = objc_opt_new();
  [(RMCommandPayloadState *)self setModifiedDate:v3];

  [(RMCommandPayloadState *)self setResult:0];
}

- (void)markExecutedWithResult:(id)result reasons:(id)reasons unknownPayloadKeys:(id)keys
{
  resultCopy = result;
  reasonsCopy = reasons;
  keysCopy = keys;
  [(RMCommandPayloadState *)self setStatus:1];
  v11 = objc_opt_new();
  [(RMCommandPayloadState *)self setModifiedDate:v11];

  [(RMCommandPayloadState *)self setResult:resultCopy];
  v12 = reasonsCopy;
  v13 = v12;
  if ([keysCopy count])
  {
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &__NSArray0__struct;
    }

    v15 = [RMProtocolCommandRequest_StatusReason failedWithUnknownPayloadKeys:keysCopy];
    v13 = [v14 arrayByAddingObject:v15];
  }

  if (v13)
  {
    v25 = resultCopy;
    v16 = v13;
    v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        v22 = 0;
        do
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v26 + 1) + 8 * v22) serializeWithType:1];
          [v17 addObject:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    v24 = [v17 copy];
    [(RMCommandPayloadState *)self setReasons:v24];

    resultCopy = v25;
  }
}

- (void)markFailedWithError:(id)error reasons:(id)reasons
{
  errorCopy = error;
  reasonsCopy = reasons;
  [(RMCommandPayloadState *)self setStatus:2];
  v8 = objc_opt_new();
  [(RMCommandPayloadState *)self setModifiedDate:v8];

  [(RMCommandPayloadState *)self setResult:0];
  v9 = reasonsCopy;
  v10 = v9;
  v11 = v9;
  if (errorCopy)
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    v13 = [RMProtocolCommandRequest_StatusReason reasonWithError:errorCopy];
    v11 = [v12 arrayByAddingObject:v13];
  }

  if (v11)
  {
    v14 = v11;
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v23 + 1) + 8 * i) serializeWithType:{1, v23}];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v18);
    }

    v22 = [v15 copy];
    [(RMCommandPayloadState *)self setReasons:v22];
  }
}

- (void)markPending
{
  [(RMCommandPayloadState *)self setStatus:3];
  v3 = objc_opt_new();
  [(RMCommandPayloadState *)self setModifiedDate:v3];

  [(RMCommandPayloadState *)self setResult:0];
}

@end