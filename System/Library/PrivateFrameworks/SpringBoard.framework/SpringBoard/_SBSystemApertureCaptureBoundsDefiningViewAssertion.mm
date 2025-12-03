@interface _SBSystemApertureCaptureBoundsDefiningViewAssertion
- (_SBSystemApertureCaptureBoundsDefiningViewAssertion)initWithReason:(id)reason identifier:(id)identifier boundsDefiningView:(id)view requiredInvalidationQueue:(id)queue deallocPolicy:(int64_t)policy invalidatedWithContextBlock:(id)block;
@end

@implementation _SBSystemApertureCaptureBoundsDefiningViewAssertion

- (_SBSystemApertureCaptureBoundsDefiningViewAssertion)initWithReason:(id)reason identifier:(id)identifier boundsDefiningView:(id)view requiredInvalidationQueue:(id)queue deallocPolicy:(int64_t)policy invalidatedWithContextBlock:(id)block
{
  objc_storeStrong(&self->_boundsDefiningView, view);
  viewCopy = view;
  blockCopy = block;
  queueCopy = queue;
  identifierCopy = identifier;
  reasonCopy = reason;
  v22.receiver = self;
  v22.super_class = _SBSystemApertureCaptureBoundsDefiningViewAssertion;
  v20 = [(BSSimpleAssertion *)&v22 initWithReason:reasonCopy identifier:identifierCopy requiredInvalidationQueue:queueCopy deallocPolicy:policy invalidatedWithContextBlock:blockCopy];

  return v20;
}

@end