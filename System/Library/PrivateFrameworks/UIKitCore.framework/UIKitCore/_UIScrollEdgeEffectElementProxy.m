@interface _UIScrollEdgeEffectElementProxy
- (CGRect)_frameInView:(id)a3 cache:(id)a4;
- (UIEdgeInsets)_visualInsets;
- (_TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy)init;
@end

@implementation _UIScrollEdgeEffectElementProxy

- (UIEdgeInsets)_visualInsets
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__visualInsets);
  v3 = *(&self->_style + OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__visualInsets);
  v4 = *&self->_frame[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__visualInsets];
  v5 = *&self->_frame[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__visualInsets + 8];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)_frameInView:(id)a3 cache:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [a3 convertRect:Strong fromCoordinateSpace:{*(&self->super.isa + OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__frame), *(&self->_style + OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__frame), *&self->_frame[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__frame], *&self->_frame[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__frame + 8]}];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (_TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end