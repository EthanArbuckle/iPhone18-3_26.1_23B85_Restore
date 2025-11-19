@interface _SBSystemApertureCaptureBoundsDefiningViewAssertion
- (_SBSystemApertureCaptureBoundsDefiningViewAssertion)initWithReason:(id)a3 identifier:(id)a4 boundsDefiningView:(id)a5 requiredInvalidationQueue:(id)a6 deallocPolicy:(int64_t)a7 invalidatedWithContextBlock:(id)a8;
@end

@implementation _SBSystemApertureCaptureBoundsDefiningViewAssertion

- (_SBSystemApertureCaptureBoundsDefiningViewAssertion)initWithReason:(id)a3 identifier:(id)a4 boundsDefiningView:(id)a5 requiredInvalidationQueue:(id)a6 deallocPolicy:(int64_t)a7 invalidatedWithContextBlock:(id)a8
{
  objc_storeStrong(&self->_boundsDefiningView, a5);
  v15 = a5;
  v16 = a8;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  v22.receiver = self;
  v22.super_class = _SBSystemApertureCaptureBoundsDefiningViewAssertion;
  v20 = [(BSSimpleAssertion *)&v22 initWithReason:v19 identifier:v18 requiredInvalidationQueue:v17 deallocPolicy:a7 invalidatedWithContextBlock:v16];

  return v20;
}

@end