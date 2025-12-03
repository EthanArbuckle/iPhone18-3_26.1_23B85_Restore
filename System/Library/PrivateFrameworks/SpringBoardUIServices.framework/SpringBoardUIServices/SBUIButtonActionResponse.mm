@interface SBUIButtonActionResponse
- (SBUIButtonActionResponse)initWithUnHandledButtonEvents:(unint64_t)events;
- (id)settings:(id)settings keyDescriptionForSetting:(unint64_t)setting;
- (id)settings:(id)settings valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)unHandledButtonEvents;
@end

@implementation SBUIButtonActionResponse

- (SBUIButtonActionResponse)initWithUnHandledButtonEvents:(unint64_t)events
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:events];
  [v5 setObject:v6 forSetting:1];

  v11.receiver = self;
  v11.super_class = SBUIButtonActionResponse;
  error = [(SBUIButtonActionResponse *)&v11 error];
  v10.receiver = self;
  v10.super_class = SBUIButtonActionResponse;
  v8 = [(SBUIButtonActionResponse *)&v10 initWithInfo:v5 error:error];

  return v8;
}

- (unint64_t)unHandledButtonEvents
{
  error = [(SBUIButtonActionResponse *)self error];
  if (error)
  {
    v4 = error;
    error2 = [(SBUIButtonActionResponse *)self error];
    code = [error2 code];

    if (code == 2)
    {
      return 0;
    }
  }

  info = [(SBUIButtonActionResponse *)self info];
  v9 = [info objectForSetting:1];

  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    integerValue = [v13 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)settings:(id)settings keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"events";
  }

  else
  {
    return 0;
  }
}

- (id)settings:(id)settings valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v8 = objectCopy;
  if (setting == 1)
  {
    v9 = objectCopy;
    v10 = objc_opt_class();
    v11 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = v12;

    if (v14)
    {
      integerValue = [v14 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v13 = SBUIServiceButtonEventDescription(integerValue);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end