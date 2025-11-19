@interface SBUIButtonActionResponse
- (SBUIButtonActionResponse)initWithUnHandledButtonEvents:(unint64_t)a3;
- (id)settings:(id)a3 keyDescriptionForSetting:(unint64_t)a4;
- (id)settings:(id)a3 valueDescriptionForFlag:(int64_t)a4 object:(id)a5 ofSetting:(unint64_t)a6;
- (unint64_t)unHandledButtonEvents;
@end

@implementation SBUIButtonActionResponse

- (SBUIButtonActionResponse)initWithUnHandledButtonEvents:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v6 forSetting:1];

  v11.receiver = self;
  v11.super_class = SBUIButtonActionResponse;
  v7 = [(SBUIButtonActionResponse *)&v11 error];
  v10.receiver = self;
  v10.super_class = SBUIButtonActionResponse;
  v8 = [(SBUIButtonActionResponse *)&v10 initWithInfo:v5 error:v7];

  return v8;
}

- (unint64_t)unHandledButtonEvents
{
  v3 = [(SBUIButtonActionResponse *)self error];
  if (v3)
  {
    v4 = v3;
    v5 = [(SBUIButtonActionResponse *)self error];
    v6 = [v5 code];

    if (v6 == 2)
    {
      return 0;
    }
  }

  v8 = [(SBUIButtonActionResponse *)self info];
  v9 = [v8 objectForSetting:1];

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
    v7 = [v13 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)settings:(id)a3 keyDescriptionForSetting:(unint64_t)a4
{
  if (a4 == 1)
  {
    return @"events";
  }

  else
  {
    return 0;
  }
}

- (id)settings:(id)a3 valueDescriptionForFlag:(int64_t)a4 object:(id)a5 ofSetting:(unint64_t)a6
{
  v7 = a5;
  v8 = v7;
  if (a6 == 1)
  {
    v9 = v7;
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
      v15 = [v14 integerValue];
    }

    else
    {
      v15 = 0;
    }

    v13 = SBUIServiceButtonEventDescription(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end