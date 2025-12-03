@interface UIKBRenderFactory_Composite
- (BOOL)isTallPopup;
- (CGPoint)popupSymbolTextOffset;
- (CGPoint)variantAnnotationTextOffset;
- (CGPoint)variantSymbolTextOffset;
- (UIEdgeInsets)variantPaddedFrameInsets;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (UIEdgeInsets)wideShadowPopupMenuInsets;
- (UIKBRenderFactory_Composite)initWithRenderingContext:(id)context skipLayoutSegments:(BOOL)segments;
- (double)popupFontSize;
- (id)shortClassNameForCaching;
@end

@implementation UIKBRenderFactory_Composite

- (id)shortClassNameForCaching
{
  v5.receiver = self;
  v5.super_class = UIKBRenderFactory_Composite;
  shortClassNameForCaching = [(UIKBRenderFactory *)&v5 shortClassNameForCaching];
  v3 = [shortClassNameForCaching stringByReplacingOccurrencesOfString:@"eachable" withString:&stru_1EFB14550];

  return v3;
}

- (UIKBRenderFactory_Composite)initWithRenderingContext:(id)context skipLayoutSegments:(BOOL)segments
{
  segmentsCopy = segments;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = UIKBRenderFactory_Composite;
  v7 = [(UIKBRenderFactory *)&v12 initWithRenderingContext:contextCopy skipLayoutSegments:segmentsCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [objc_alloc(-[UIKBRenderFactory_Composite _overlayFactoryClass](v7 "_overlayFactoryClass"))];
    overlayFactory = v8->_overlayFactory;
    v8->_overlayFactory = v9;
  }

  return v8;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  (MethodImplementation)(overlayFactory, a2);
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)wideShadowPopupMenuInsets
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  (MethodImplementation)(overlayFactory, a2);
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)variantPaddedFrameInsets
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  (MethodImplementation)(overlayFactory, a2);
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)variantSymbolFrameInsets
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  (MethodImplementation)(overlayFactory, a2);
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (CGPoint)variantSymbolTextOffset
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  (MethodImplementation)(overlayFactory, a2);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)variantAnnotationTextOffset
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  (MethodImplementation)(overlayFactory, a2);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)popupSymbolTextOffset
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  (MethodImplementation)(overlayFactory, a2);
  result.y = v7;
  result.x = v6;
  return result;
}

- (double)popupFontSize
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  (MethodImplementation)(overlayFactory, a2);
  return result;
}

- (BOOL)isTallPopup
{
  MethodImplementation = class_getMethodImplementation([(UIKBRenderFactory_Composite *)self _overlayFactoryClass], a2);
  overlayFactory = self->_overlayFactory;

  return (MethodImplementation)(overlayFactory, a2);
}

@end