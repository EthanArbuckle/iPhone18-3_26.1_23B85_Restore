@interface UIViewInstallAccessibilityInterfaceStyleIntentVisitor
@end

@implementation UIViewInstallAccessibilityInterfaceStyleIntentVisitor

void ___UIViewInstallAccessibilityInterfaceStyleIntentVisitor_block_invoke()
{
  v0 = [(_UIViewVisitor *)[_UIAccessibilityInterfaceStyleVisitor alloc] initWithTraversalDirection:2];
  [UIView _addHierarchyTrackingVisitor:v0];
}

@end