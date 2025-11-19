@interface UIKitDebugHierarchyMetaDataProvider
+ (id)fallback_debugHierarchyEnumDescriptions;
+ (id)fallback_debugHierarchyOptionDescriptions;
@end

@implementation UIKitDebugHierarchyMetaDataProvider

+ (id)fallback_debugHierarchyEnumDescriptions
{
  v7[0] = &off_57B38;
  v7[1] = &off_57B50;
  v8[0] = @"UIViewContentModeScaleToFill";
  v8[1] = @"UIViewContentModeScaleAspectFit";
  v7[2] = &off_57B68;
  v7[3] = &off_57B80;
  v8[2] = @"UIViewContentModeScaleAspectFill";
  v8[3] = @"UIViewContentModeRedraw";
  v7[4] = &off_57B98;
  v7[5] = &off_57BB0;
  v8[4] = @"UIViewContentModeCenter";
  v8[5] = @"UIViewContentModeTop";
  v7[6] = &off_57BC8;
  v7[7] = &off_57BE0;
  v8[6] = @"UIViewContentModeBottom";
  v8[7] = @"UIViewContentModeLeft";
  v7[8] = &off_57BF8;
  v7[9] = &off_57C10;
  v8[8] = @"UIViewContentModeRight";
  v8[9] = @"UIViewContentModeTopLeft";
  v7[10] = &off_57C28;
  v7[11] = &off_57C40;
  v8[10] = @"UIViewContentModeTopRight";
  v8[11] = @"UIViewContentModeBottomLeft";
  v7[12] = &off_57C58;
  v8[12] = @"UIViewContentModeBottomRight";
  v2 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:13];
  v5 = @"UIViewContentMode";
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)fallback_debugHierarchyOptionDescriptions
{
  v7[0] = &off_57C70;
  v7[1] = &off_57C88;
  v8[0] = @"UIViewAutoresizingNone";
  v8[1] = @"UIViewAutoresizingFlexibleLeftMargin";
  v7[2] = &off_57CA0;
  v7[3] = &off_57CB8;
  v8[2] = @"UIViewAutoresizingFlexibleWidth";
  v8[3] = @"UIViewAutoresizingFlexibleRightMargin";
  v7[4] = &off_57CD0;
  v7[5] = &off_57CE8;
  v8[4] = @"UIViewAutoresizingFlexibleTopMargin";
  v8[5] = @"UIViewAutoresizingFlexibleHeight";
  v7[6] = &off_57D00;
  v8[6] = @"UIViewAutoresizingFlexibleBottomMargin";
  v2 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:7];
  v5 = @"UIViewAutoresizing";
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

@end