@interface UIAccessibilityContainerReferenceHolder
- (id)referencedContainer;
@end

@implementation UIAccessibilityContainerReferenceHolder

- (id)referencedContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_referencedContainer);

  return WeakRetained;
}

@end