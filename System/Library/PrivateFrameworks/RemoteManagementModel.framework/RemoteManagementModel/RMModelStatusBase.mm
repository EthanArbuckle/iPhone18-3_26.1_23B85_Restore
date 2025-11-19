@interface RMModelStatusBase
+ (BOOL)isSupportedStatusItem:(id)a3 platform:(int64_t)a4 scope:(int64_t)a5;
+ (id)stubObjectForStatusItemType:(id)a3;
@end

@implementation RMModelStatusBase

+ (id)stubObjectForStatusItemType:(id)a3
{
  v3 = a3;
  if ([RMModelClasses classForStatusItemType:v3])
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = [RMModelStatusDynamic buildWithStatusItemType:v3];
  }

  v5 = v4;

  return v5;
}

+ (BOOL)isSupportedStatusItem:(id)a3 platform:(int64_t)a4 scope:(int64_t)a5
{
  v7 = a3;
  v8 = [RMModelClasses classForStatusItemType:v7];
  if (v8)
  {
    if (([(objc_class *)v8 isSupportedForPlatform:a4 scope:a5]& 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = +[RMModelStatusSchema schemas];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (!v10 || ([v10 isSupportedForPlatform:a4 scope:a5] & 1) == 0)
    {

LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_10:

  return v11;
}

@end