@interface FlowcaseViewCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)onImageDidLoad:(id)load;
- (void)vui_cellDidEndDisplaying;
- (void)vui_cellWillBeDisplayed;
- (void)vui_prepareForReuse;
@end

@implementation FlowcaseViewCell

- (void)vui_prepareForReuse
{
  selfCopy = self;
  sub_1E3DEB4A0();
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  sub_1E3DEB6E4(only, width, height);

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)onImageDidLoad:(id)load
{
  sub_1E41FDF34();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E3DEBB40();

  (*(v5 + 8))(v8);
}

- (void)vui_cellWillBeDisplayed
{
  selfCopy = self;
  sub_1E3DEE79C();
}

- (void)vui_cellDidEndDisplaying
{
  selfCopy = self;
  sub_1E3DEEA90();
}

@end