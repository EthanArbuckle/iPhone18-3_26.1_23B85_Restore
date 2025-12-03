@interface WFAppEntityContextualAction
+ (id)spotlightDomainIdentifierForEntityType:(int64_t)type;
- (CSSearchableItem)spotlightItem;
- (_TtC14VoiceShortcuts27WFAppEntityContextualAction)initWithIdentifier:(id)identifier displayTitle:(id)title entityType:(int64_t)type;
- (_TtC14VoiceShortcuts27WFAppEntityContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier type:(unint64_t)type correspondingSystemActionType:(unint64_t)actionType associatedAppBundleIdentifier:(id)bundleIdentifier resultFileOperation:(int64_t)operation alternate:(BOOL)alternate filteringBehavior:(id)self0 parameters:(id)self1 displayString:(id)self2 title:(id)self3 subtitle:(id)self4 icon:(id)self5 accessoryIcon:(id)self6 actionShowsUserInterface:(BOOL)self7 isReversible:(BOOL)self8;
@end

@implementation WFAppEntityContextualAction

- (_TtC14VoiceShortcuts27WFAppEntityContextualAction)initWithIdentifier:(id)identifier displayTitle:(id)title entityType:(int64_t)type
{
  v6 = sub_231158E58();
  v8 = v7;
  v9 = sub_231158E58();
  return sub_2310556B8(v6, v8, v9, v10, type);
}

- (CSSearchableItem)spotlightItem
{
  selfCopy = self;
  v3 = sub_23105591C();

  return v3;
}

+ (id)spotlightDomainIdentifierForEntityType:(int64_t)type
{
  sub_231055B54(type);
  v3 = sub_231158E28();

  return v3;
}

- (_TtC14VoiceShortcuts27WFAppEntityContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier type:(unint64_t)type correspondingSystemActionType:(unint64_t)actionType associatedAppBundleIdentifier:(id)bundleIdentifier resultFileOperation:(int64_t)operation alternate:(BOOL)alternate filteringBehavior:(id)self0 parameters:(id)self1 displayString:(id)self2 title:(id)self3 subtitle:(id)self4 icon:(id)self5 accessoryIcon:(id)self6 actionShowsUserInterface:(BOOL)self7 isReversible:(BOOL)self8
{
  sub_231158E58();
  if (actionIdentifier)
  {
    sub_231158E58();
  }

  if (bundleIdentifier)
  {
    sub_231158E58();
  }

  if (parameters)
  {
    sub_231055D8C();
    sub_231158F48();
  }

  behaviorCopy = behavior;
  subtitleCopy = subtitle;
  iconCopy = icon;
  accessoryIconCopy = accessoryIcon;
  sub_231158E58();
  sub_231158E58();
  if (subtitleCopy)
  {
    sub_231158E58();
  }

  sub_231055BFC();
}

@end