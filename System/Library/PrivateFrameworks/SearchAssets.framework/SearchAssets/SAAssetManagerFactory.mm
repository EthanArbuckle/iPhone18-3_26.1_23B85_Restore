@interface SAAssetManagerFactory
+ (id)safariAssistantAssetManagerWithLocale:(id)locale;
+ (id)safariAssistantAssetManagerWithLocale:(id)locale error:(id *)error;
@end

@implementation SAAssetManagerFactory

+ (id)safariAssistantAssetManagerWithLocale:(id)locale
{
  v3 = sub_21580B890();
  v5 = sub_2157F9E68(v3, v4);

  return v5;
}

+ (id)safariAssistantAssetManagerWithLocale:(id)locale error:(id *)error
{
  v4 = sub_21580B890();
  v6 = sub_2157F9F90(v4, v5);

  return v6;
}

@end