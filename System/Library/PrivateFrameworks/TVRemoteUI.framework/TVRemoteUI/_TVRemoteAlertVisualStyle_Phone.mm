@interface _TVRemoteAlertVisualStyle_Phone
- (CGRect)frameForParentView:(id)view;
@end

@implementation _TVRemoteAlertVisualStyle_Phone

- (CGRect)frameForParentView:(id)view
{
  [view bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end