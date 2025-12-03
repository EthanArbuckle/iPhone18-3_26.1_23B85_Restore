@interface PhotosDynamicHeaderContentView
- (BOOL)handlePrimaryAction:(id)action;
- (UIEdgeInsets)safeAreaInsets;
- (_TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation PhotosDynamicHeaderContentView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDynamicHeaderContentView(0);
  v2 = v3.receiver;
  [(PhotosDynamicHeaderContentView *)&v3 layoutSubviews];
  sub_1A52415B4();
}

- (BOOL)handlePrimaryAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  LOBYTE(self) = sub_1A41A1008(actionCopy);

  return self & 1;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  self;
  sub_1A41A176C(window);
}

- (UIEdgeInsets)safeAreaInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end