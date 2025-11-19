@interface UIViewInstallTintColorVisitor
@end

@implementation UIViewInstallTintColorVisitor

void ___UIViewInstallTintColorVisitor_block_invoke()
{
  v0 = [[_UITintColorVisitor alloc] initWithNotificationReasons:0];
  [UIView _addHierarchyTrackingVisitor:v0];
}

@end