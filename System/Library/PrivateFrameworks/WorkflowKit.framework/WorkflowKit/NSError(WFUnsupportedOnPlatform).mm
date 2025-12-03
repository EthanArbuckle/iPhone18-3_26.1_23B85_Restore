@interface NSError(WFUnsupportedOnPlatform)
+ (id)wf_unsupportedActionErrorWithType:()WFUnsupportedOnPlatform platformIdiom:;
+ (id)wf_unsupportedParameterErrorWithParameterName:()WFUnsupportedOnPlatform errorType:platformIdiom:;
- (id)wf_localizedErrorStringWithActionName:()WFUnsupportedOnPlatform;
- (uint64_t)wf_isUnsupportedOnPlatformError;
@end

@implementation NSError(WFUnsupportedOnPlatform)

- (id)wf_localizedErrorStringWithActionName:()WFUnsupportedOnPlatform
{
  v4 = a3;
  if (![self wf_isUnsupportedOnPlatformError])
  {
    v16 = 0;
    goto LABEL_36;
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKey:@"WFUnsupportedOnPlatformIdiom"];
  integerValue = [v6 integerValue];

  userInfo2 = [self userInfo];
  v9 = [userInfo2 objectForKey:@"WFUnsupportedOnPlatformErrorType"];

  v10 = WFDisplayNameForDeviceIdiom(integerValue, v9);
  if (![self code])
  {
    if ([v4 length])
    {
      if (!v10)
      {
        v26 = MEMORY[0x1E696AEC0];
        v27 = WFLocalizedString(@"The action “%@” is not supported on this device.");
        v28 = [v26 stringWithFormat:v27, v4];
LABEL_34:
        v16 = v28;

        goto LABEL_35;
      }

      v17 = [v9 isEqualToString:@"NotAvailableOnSpecifiedPlatform"];
      v18 = MEMORY[0x1E696AEC0];
      if (v17)
      {
        v19 = @"The action “%@” is not supported on %@.";
      }

      else
      {
        v19 = @"The action “%@” can only run on %@.";
      }

      v27 = WFLocalizedString(v19);
      [v18 localizedStringWithFormat:v27, v4, v10];
    }

    else
    {
      if (!v10)
      {
        v16 = WFLocalizedString(@"This action is not supported on this device.");
        goto LABEL_35;
      }

      v23 = [v9 isEqualToString:@"NotAvailableOnSpecifiedPlatform"];
      v24 = MEMORY[0x1E696AEC0];
      if (v23)
      {
        v25 = @"This action is not supported on %@.";
      }

      else
      {
        v25 = @"This action can only run on %@.";
      }

      v27 = WFLocalizedString(v25);
      [v24 localizedStringWithFormat:v27, v10, v31];
    }
    v28 = ;
    goto LABEL_34;
  }

  userInfo3 = [self userInfo];
  v12 = [userInfo3 objectForKey:@"WFUnsupportedOnPlatformParameterName"];

  if (v10)
  {
    v13 = [v9 isEqualToString:@"NotAvailableOnSpecifiedPlatform"];
    v14 = MEMORY[0x1E696AEC0];
    if (v13)
    {
      if (v12)
      {
        v15 = @"The parameter “%@” cannot be edited on %@.";
LABEL_16:
        v21 = WFLocalizedString(v15);
        [v14 localizedStringWithFormat:v21, v12, v10];
        v22 = LABEL_27:;
        goto LABEL_28;
      }

      v29 = @"This parameter cannot be edited on %@.";
    }

    else
    {
      if (v12)
      {
        v15 = @"The parameter “%@” can only be edited on %@.";
        goto LABEL_16;
      }

      v29 = @"This parameter can only be edited on %@.";
    }

    v21 = WFLocalizedString(v29);
    [v14 localizedStringWithFormat:v21, v10, v31];
    goto LABEL_27;
  }

  if (v12)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = WFLocalizedString(@"The parameter “%@” cannot be edited on this device.");
    v22 = [v20 stringWithFormat:v21, v12];
LABEL_28:
    v16 = v22;

    goto LABEL_29;
  }

  v16 = WFLocalizedString(@"This parameter cannot be edited on this device.");
LABEL_29:

LABEL_35:
LABEL_36:

  return v16;
}

- (uint64_t)wf_isUnsupportedOnPlatformError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"WFUnsupportedOnPlatformErrorDomain"];

  return v2;
}

+ (id)wf_unsupportedParameterErrorWithParameterName:()WFUnsupportedOnPlatform errorType:platformIdiom:
{
  v19[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSError+WFUnsupportedOnPlatform.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"errorType"}];
  }

  v11 = MEMORY[0x1E696ABC0];
  v19[0] = v9;
  v18[0] = @"WFUnsupportedOnPlatformParameterName";
  v18[1] = @"WFUnsupportedOnPlatformIdiom";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v18[2] = @"WFUnsupportedOnPlatformErrorType";
  v19[1] = v12;
  v19[2] = v10;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v14 = [v11 errorWithDomain:@"WFUnsupportedOnPlatformErrorDomain" code:1 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)wf_unsupportedActionErrorWithType:()WFUnsupportedOnPlatform platformIdiom:
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSError+WFUnsupportedOnPlatform.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"errorType"}];
  }

  v8 = MEMORY[0x1E696ABC0];
  v15[0] = @"WFUnsupportedOnPlatformIdiom";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v15[1] = @"WFUnsupportedOnPlatformErrorType";
  v16[0] = v9;
  v16[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v11 = [v8 errorWithDomain:@"WFUnsupportedOnPlatformErrorDomain" code:0 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end