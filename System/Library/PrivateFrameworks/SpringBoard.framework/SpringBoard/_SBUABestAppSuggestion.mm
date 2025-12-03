@interface _SBUABestAppSuggestion
- (BOOL)isCallContinuitySuggestion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNotificationSuggestion;
- (id)initWithAppSuggestion:(id *)suggestion;
- (uint64_t)appSuggestion;
- (unint64_t)hash;
@end

@implementation _SBUABestAppSuggestion

- (BOOL)isNotificationSuggestion
{
  options = [(UABestAppSuggestion *)self->_appSuggestion options];
  v3 = [options objectForKey:*MEMORY[0x277D77BB8]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCallContinuitySuggestion
{
  if ([(UABestAppSuggestion *)self->_appSuggestion type]== 12)
  {
    return 1;
  }

  activityType = [(UABestAppSuggestion *)self->_appSuggestion activityType];
  v5 = TUIsCallHandoffActivityType();

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uniqueIdentifier = [(_SBUABestAppSuggestion *)equalCopy uniqueIdentifier];
      uniqueIdentifier2 = [(_SBUABestAppSuggestion *)self uniqueIdentifier];
      v7 = [uniqueIdentifier isEqual:uniqueIdentifier2];
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
  uniqueIdentifier = [(_SBUABestAppSuggestion *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

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

- (id)initWithAppSuggestion:(id *)suggestion
{
  v4 = a2;
  if (suggestion)
  {
    v7.receiver = suggestion;
    v7.super_class = _SBUABestAppSuggestion;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    suggestion = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return suggestion;
}

@end