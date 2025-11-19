@interface _SBUABestAppSuggestion
- (BOOL)isCallContinuitySuggestion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNotificationSuggestion;
- (id)initWithAppSuggestion:(id *)a1;
- (uint64_t)appSuggestion;
- (unint64_t)hash;
@end

@implementation _SBUABestAppSuggestion

- (BOOL)isNotificationSuggestion
{
  v2 = [(UABestAppSuggestion *)self->_appSuggestion options];
  v3 = [v2 objectForKey:*MEMORY[0x277D77BB8]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isCallContinuitySuggestion
{
  if ([(UABestAppSuggestion *)self->_appSuggestion type]== 12)
  {
    return 1;
  }

  v4 = [(UABestAppSuggestion *)self->_appSuggestion activityType];
  v5 = TUIsCallHandoffActivityType();

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_SBUABestAppSuggestion *)v4 uniqueIdentifier];
      v6 = [(_SBUABestAppSuggestion *)self uniqueIdentifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(_SBUABestAppSuggestion *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (uint64_t)appSuggestion
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (id)initWithAppSuggestion:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _SBUABestAppSuggestion;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

@end