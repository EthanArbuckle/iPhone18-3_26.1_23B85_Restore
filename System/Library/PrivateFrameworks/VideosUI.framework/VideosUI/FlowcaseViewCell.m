@interface FlowcaseViewCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)onImageDidLoad:(id)a3;
- (void)vui_cellDidEndDisplaying;
- (void)vui_cellWillBeDisplayed;
- (void)vui_prepareForReuse;
@end

@implementation FlowcaseViewCell

- (void)vui_prepareForReuse
{
  v2 = self;
  sub_1E3DEB4A0();
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1E3DEB6E4(a4, width, height);

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)onImageDidLoad:(id)a3
{
  sub_1E41FDF34();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  v9 = self;
  sub_1E3DEBB40();

  (*(v5 + 8))(v8);
}

- (void)vui_cellWillBeDisplayed
{
  v2 = self;
  sub_1E3DEE79C();
}

- (void)vui_cellDidEndDisplaying
{
  v2 = self;
  sub_1E3DEEA90();
}

@end