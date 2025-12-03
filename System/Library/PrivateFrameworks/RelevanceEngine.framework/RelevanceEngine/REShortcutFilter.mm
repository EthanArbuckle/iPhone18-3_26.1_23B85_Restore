@interface REShortcutFilter
- (REShortcutFilter)init;
- (id)identifierForIntent:(id)intent bundleIdentifier:(id)identifier;
- (id)identifierForUserActivity:(id)activity bundleIdentifier:(id)identifier;
- (id)intentByFilteringIntent:(id)intent withLevel:(unint64_t)level;
- (id)userActivityByFilteringUserActivity:(id)activity withLevel:(unint64_t)level;
- (unint64_t)_actionIdentifierForIntent:(id)intent;
- (unint64_t)_actionIdentifierForUserActivity:(id)activity;
@end

@implementation REShortcutFilter

- (REShortcutFilter)init
{
  v3.receiver = self;
  v3.super_class = REShortcutFilter;
  return [(REShortcutFilter *)&v3 init];
}

- (id)intentByFilteringIntent:(id)intent withLevel:(unint64_t)level
{
  intentCopy = intent;
  v6 = intentCopy;
  if (level)
  {
    v7 = intentCopy;
    if (level != 1)
    {
      goto LABEL_6;
    }

    _emptyCopy = [intentCopy _emptyCopy];
  }

  else
  {
    _emptyCopy = REIntentBySimplifyingParametersForIntent(intentCopy);
  }

  v7 = _emptyCopy;

LABEL_6:

  return v7;
}

- (id)userActivityByFilteringUserActivity:(id)activity withLevel:(unint64_t)level
{
  activityCopy = activity;
  v6 = activityCopy;
  if (level == 1)
  {
    v7 = objc_alloc(MEMORY[0x277CC1EF0]);
    activityType = [activityCopy activityType];
    v6 = [v7 initWithActivityType:activityType];
  }

  return v6;
}

- (unint64_t)_actionIdentifierForIntent:(id)intent
{
  v3 = REParametersForIntent(intent);
  re_actionIdentifierHashValue = [v3 re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

- (id)identifierForIntent:(id)intent bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(REShortcutFilter *)self _actionIdentifierForIntent:intent];
  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCABB0];
  v10 = identifierCopy;
  v11 = [v9 numberWithUnsignedLongLong:v7];
  v12 = [v8 stringWithFormat:@"%@-%@", v10, v11];

  return v12;
}

- (unint64_t)_actionIdentifierForUserActivity:(id)activity
{
  v3 = REExtractUserActivity(activity);
  re_actionIdentifierHashValue = [v3 re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

- (id)identifierForUserActivity:(id)activity bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(REShortcutFilter *)self _actionIdentifierForUserActivity:activity];
  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCABB0];
  v10 = identifierCopy;
  v11 = [v9 numberWithUnsignedLongLong:v7];
  v12 = [v8 stringWithFormat:@"%@-%@", v10, v11];

  return v12;
}

@end