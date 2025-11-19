@interface WFWidgetDataSource
+ (id)systemActionForWorkflowIdentifier:(id)a3;
- (BOOL)cacheUpdateIdentifierIsValid:(id)a3;
- (WFWidgetDataSource)initWithActions:(id)a3;
- (id)configuredActions;
- (id)folderIdentifierForDeepLinking;
- (id)widgetWorkflowWithIdentifier:(id)a3;
@end

@implementation WFWidgetDataSource

- (WFWidgetDataSource)initWithActions:(id)a3
{
  sub_1C8312180(0, &qword_1EC29C890);
  v3 = sub_1C840CFDC();
  return sub_1C836427C(v3, 1);
}

- (BOOL)cacheUpdateIdentifierIsValid:(id)a3
{
  v4 = sub_1C840CDDC();
  v6 = v5;
  v7 = self;
  sub_1C83643F4(v4, v6);
  LOBYTE(v4) = v8;

  return v4 & 1;
}

- (id)configuredActions
{
  v2 = self;
  sub_1C836485C();

  sub_1C8312180(0, &qword_1EC29C890);
  v3 = sub_1C840CFCC();

  return v3;
}

- (id)widgetWorkflowWithIdentifier:(id)a3
{
  v4 = sub_1C840CDDC();
  v6 = v5;
  v7 = self;
  sub_1C8364F14(v4, v6);
  v9 = v8;

  return v9;
}

+ (id)systemActionForWorkflowIdentifier:(id)a3
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