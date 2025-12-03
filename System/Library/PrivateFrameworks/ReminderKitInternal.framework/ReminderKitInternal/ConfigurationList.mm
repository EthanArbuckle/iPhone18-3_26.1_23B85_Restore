@interface ConfigurationList
- (ConfigurationList)initWithCoder:(id)coder;
- (ConfigurationList)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation ConfigurationList

- (ConfigurationList)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v11 = v10;
  if (hint)
  {
    v12 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return ConfigurationList.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (ConfigurationList)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ConfigurationList();
  coderCopy = coder;
  v5 = [(ConfigurationList *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end