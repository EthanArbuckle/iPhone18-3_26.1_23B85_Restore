@interface WFWidgetDataSource
+ (id)systemActionForWorkflowIdentifier:(id)identifier;
- (BOOL)cacheUpdateIdentifierIsValid:(id)valid;
- (WFWidgetDataSource)initWithActions:(id)actions;
- (id)configuredActions;
- (id)folderIdentifierForDeepLinking;
- (id)widgetWorkflowWithIdentifier:(id)identifier;
@end

@implementation WFWidgetDataSource

- (WFWidgetDataSource)initWithActions:(id)actions
{
  sub_1C8312180(0, &qword_1EC29C890);
  v3 = sub_1C840CFDC();
  return sub_1C836427C(v3, 1);
}

- (BOOL)cacheUpdateIdentifierIsValid:(id)valid
{
  v4 = sub_1C840CDDC();
  v6 = v5;
  selfCopy = self;
  sub_1C83643F4(v4, v6);
  LOBYTE(v4) = v8;

  return v4 & 1;
}

- (id)configuredActions
{
  selfCopy = self;
  sub_1C836485C();

  sub_1C8312180(0, &qword_1EC29C890);
  v3 = sub_1C840CFCC();

  return v3;
}

- (id)widgetWorkflowWithIdentifier:(id)identifier
{
  v4 = sub_1C840CDDC();
  v6 = v5;
  selfCopy = self;
  sub_1C8364F14(v4, v6);
  v9 = v8;

  return v9;
}

+ (id)systemActionForWorkflowIdentifier:(id)identifier
{
  sub_1C840CDDC();
  swift_getObjCClassMetadata();
  v3 = sub_1C8365214();

  return v3;
}

- (id)folderIdentifierForDeepLinking
{
  sub_1C8365358();
  if (v2)
  {
    v3 = sub_1C840CD9C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end