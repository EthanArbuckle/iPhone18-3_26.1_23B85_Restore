@interface SiriAnalyticsUnifiedMessageStreamHelper
+ (id)fileURL;
+ (id)identifier;
+ (void)ensureDirectoryExistsAt:(id)at;
@end

@implementation SiriAnalyticsUnifiedMessageStreamHelper

+ (id)identifier
{
  static UnifiedMessageStreamHelper.identifier()();
  v2 = sub_1D992B614();

  return v2;
}

+ (void)ensureDirectoryExistsAt:(id)at
{
  v3 = sub_1D992AD44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AD14();
  static UnifiedMessageStreamHelper.ensureDirectoryExists(at:)();
  (*(v4 + 8))(v7, v3);
}

+ (id)fileURL
{
  v2 = sub_1D992AD44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UnifiedMessageStreamHelper.fileURL()(v6);
  v7 = sub_1D992ACD4();
  (*(v3 + 8))(v6, v2);

  return v7;
}

@end