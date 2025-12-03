@interface ButtonBarButtonVisualProvider.ButtonVisualProvider
- (id)_newImageViewWithFrame:(CGRect)frame;
- (id)_newLabelWithFrame:(CGRect)frame;
- (void)_updateImageView;
- (void)_updateTitleView;
- (void)layoutSubviews;
@end

@implementation ButtonBarButtonVisualProvider.ButtonVisualProvider

- (void)_updateImageView
{
  selfCopy = self;
  sub_1890A0B8C();
}

- (id)_newImageViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  v8 = sub_188C5F1C8(x, y, width, height);

  return v8;
}

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188C57880;
  *(v5 + 24) = v4;
  v8[4] = sub_188A4B574;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_100;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)_updateTitleView
{
  selfCopy = self;
  sub_1890A0D18();
}

- (id)_newLabelWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v7 = v10.receiver;
  height = [(UIButtonLegacyVisualProvider *)&v10 _newLabelWithFrame:x, y, width, height];
  [height setAdjustsFontForContentSizeCategory_];

  return height;
}

@end