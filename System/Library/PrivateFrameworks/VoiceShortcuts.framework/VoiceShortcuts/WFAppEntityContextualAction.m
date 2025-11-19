@interface WFAppEntityContextualAction
+ (id)spotlightDomainIdentifierForEntityType:(int64_t)a3;
- (CSSearchableItem)spotlightItem;
- (_TtC14VoiceShortcuts27WFAppEntityContextualAction)initWithIdentifier:(id)a3 displayTitle:(id)a4 entityType:(int64_t)a5;
- (_TtC14VoiceShortcuts27WFAppEntityContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 type:(unint64_t)a5 correspondingSystemActionType:(unint64_t)a6 associatedAppBundleIdentifier:(id)a7 resultFileOperation:(int64_t)a8 alternate:(BOOL)a9 filteringBehavior:(id)a10 parameters:(id)a11 displayString:(id)a12 title:(id)a13 subtitle:(id)a14 icon:(id)a15 accessoryIcon:(id)a16 actionShowsUserInterface:(BOOL)a17 isReversible:(BOOL)a18;
@end

@implementation WFAppEntityContextualAction

- (_TtC14VoiceShortcuts27WFAppEntityContextualAction)initWithIdentifier:(id)a3 displayTitle:(id)a4 entityType:(int64_t)a5
{
  v6 = sub_231158E58();
  v8 = v7;
  v9 = sub_231158E58();
  return sub_2310556B8(v6, v8, v9, v10, a5);
}

- (CSSearchableItem)spotlightItem
{
  v2 = self;
  v3 = sub_23105591C();

  return v3;
}

+ (id)spotlightDomainIdentifierForEntityType:(int64_t)a3
{
  sub_231055B54(a3);
  v3 = sub_231158E28();

  return v3;
}

- (_TtC14VoiceShortcuts27WFAppEntityContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 type:(unint64_t)a5 correspondingSystemActionType:(unint64_t)a6 associatedAppBundleIdentifier:(id)a7 resultFileOperation:(int64_t)a8 alternate:(BOOL)a9 filteringBehavior:(id)a10 parameters:(id)a11 displayString:(id)a12 title:(id)a13 subtitle:(id)a14 icon:(id)a15 accessoryIcon:(id)a16 actionShowsUserInterface:(BOOL)a17 isReversible:(BOOL)a18
{
  sub_231158E58();
  if (a4)
  {
    sub_231158E58();
  }

  if (a7)
  {
    sub_231158E58();
  }

  if (a11)
  {
    sub_231055D8C();
    sub_231158F48();
  }

  v20 = a10;
  v21 = a14;
  v22 = a15;
  v23 = a16;
  sub_231158E58();
  sub_231158E58();
  if (v21)
  {
    sub_231158E58();
  }

  sub_231055BFC();
}

@end