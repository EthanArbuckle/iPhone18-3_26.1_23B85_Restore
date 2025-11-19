@interface SAAssetManagerFactory
+ (id)safariAssistantAssetManagerWithLocale:(id)a3;
+ (id)safariAssistantAssetManagerWithLocale:(id)a3 error:(id *)a4;
@end

@implementation SAAssetManagerFactory

+ (id)safariAssistantAssetManagerWithLocale:(id)a3
{
  v3 = sub_21580B890();
  v5 = sub_2157F9E68(v3, v4);

  return v5;
}

+ (id)safariAssistantAssetManagerWithLocale:(id)a3 error:(id *)a4
{
  v4 = sub_21580B890();
  v6 = sub_2157F9F90(v4, v5);

  return v6;
}

@end