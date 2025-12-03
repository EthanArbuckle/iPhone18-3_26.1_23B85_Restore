@interface _UIKitDragAndDropStatistics
+ (void)incrementUIKitScalarValueBy:(int64_t)by forKey:(id)key;
+ (void)incrementUIKitScalarValueForKnownInternalAppsForKey:(id)key bundleID:(id)d;
+ (void)recordUIKitDragAndDropDistributionValue:(double)value forKey:(id)key;
+ (void)setUIKitScalarValue:(int64_t)value forKey:(id)key;
@end

@implementation _UIKitDragAndDropStatistics

+ (void)recordUIKitDragAndDropDistributionValue:(double)value forKey:(id)key
{
  keyCopy = key;
  v7 = +[_UIStatisticsIntegrator sharedInstance];
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.UIKit.DragAndDrop", keyCopy];

  [v7 recordDistributionValue:keyCopy forKey:value];
}

+ (void)setUIKitScalarValue:(int64_t)value forKey:(id)key
{
  keyCopy = key;
  v7 = +[_UIStatisticsIntegrator sharedInstance];
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.UIKit.DragAndDrop", keyCopy];

  [v7 setValue:value forKey:keyCopy];
}

+ (void)incrementUIKitScalarValueBy:(int64_t)by forKey:(id)key
{
  keyCopy = key;
  v7 = +[_UIStatisticsIntegrator sharedInstance];
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.UIKit.DragAndDrop", keyCopy];

  [v7 incrementValueBy:by forKey:keyCopy];
}

+ (void)incrementUIKitScalarValueForKnownInternalAppsForKey:(id)key bundleID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v7 = dCopy;
  if (qword_1ED4A2890 != -1)
  {
    dispatch_once(&qword_1ED4A2890, &__block_literal_global_320_2);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = _UIStatisticsBundleIdentifier(2);
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!dCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = v7;
LABEL_6:
  if ([qword_1ED4A2888 containsObject:v8])
  {
    v8 = v8;
    v9 = v8;
    goto LABEL_9;
  }

LABEL_8:
  v9 = @"other";
LABEL_9:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", keyCopy, v9];
  [self incrementUIKitScalarValueBy:1 forKey:v10];
}

@end