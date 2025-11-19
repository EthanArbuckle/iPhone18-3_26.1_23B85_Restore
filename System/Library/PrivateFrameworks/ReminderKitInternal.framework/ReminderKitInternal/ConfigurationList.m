@interface ConfigurationList
- (ConfigurationList)initWithCoder:(id)a3;
- (ConfigurationList)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation ConfigurationList

- (ConfigurationList)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
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
  if (a5)
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

- (ConfigurationList)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ConfigurationList();
  v4 = a3;
  v5 = [(ConfigurationList *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end