@interface _UITextFieldDesignLibraryBackgroundProvider
- (CGRect)contentFrameForBounds:(CGRect)bounds;
- (CGSize)intrinsicSizeForContentSize:(CGSize)size;
- (_UITextFieldDesignLibraryBackgroundProvider)init;
- (double)naturalHeight;
- (void)controlSizeDidChange:(void *)change;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UITextFieldDesignLibraryBackgroundProvider

- (void)controlSizeDidChange:(void *)change
{
  changeCopy = change;
  sub_1890FA2C8();
}

- (_UITextFieldDesignLibraryBackgroundProvider)init
{
  v3 = type metadata accessor for DesignLibraryTextFieldBackgroundView();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v8 = *MEMORY[0x1E697DC28];
  v9 = sub_18A4A4438();
  (*(*(v9 - 8) + 104))(&v5[v7], v8, v9);
  *v5 = 0;
  *(v5 + 1) = 0;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CED8));
  *(&self->super.super.super.isa + OBJC_IVAR____UITextFieldDesignLibraryBackgroundProvider_hostingView) = sub_1890F92E4(v5);
  v11 = type metadata accessor for _UITextFieldDesignLibraryBackgroundProvider();
  v13.receiver = self;
  v13.super_class = v11;
  return [(_UITextFieldDesignLibraryBackgroundProvider *)&v13 init];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  textField = [(_UITextFieldBackgroundProvider *)selfCopy textField];
  if (textField && (v7 = textField, v9 = [(UIView *)textField traitCollection], v7, v9))
  {
    _semanticContext = [(UITraitCollection *)v9 _semanticContext];
    if (_semanticContext != [(UITraitCollection *)changeCopy _semanticContext])
    {
      sub_1890F9A5C();
    }

    changeCopy = selfCopy;
  }

  else
  {
    v9 = selfCopy;
  }
}

- (CGRect)contentFrameForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_1890F9B40(x, y, width, height);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGSize)intrinsicSizeForContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v6 = sub_1890F9D74();

  if (v6 == -1.0)
  {
    v7 = height;
  }

  else
  {
    v7 = v6;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (double)naturalHeight
{
  selfCopy = self;
  v3 = sub_1890F9D74();

  return v3;
}

@end