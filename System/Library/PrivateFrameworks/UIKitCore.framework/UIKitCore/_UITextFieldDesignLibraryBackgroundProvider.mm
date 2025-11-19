@interface _UITextFieldDesignLibraryBackgroundProvider
- (CGRect)contentFrameForBounds:(CGRect)a3;
- (CGSize)intrinsicSizeForContentSize:(CGSize)a3;
- (_UITextFieldDesignLibraryBackgroundProvider)init;
- (double)naturalHeight;
- (void)controlSizeDidChange:(void *)a1;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _UITextFieldDesignLibraryBackgroundProvider

- (void)controlSizeDidChange:(void *)a1
{
  v1 = a1;
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(_UITextFieldBackgroundProvider *)v5 textField];
  if (v6 && (v7 = v6, v9 = [(UIView *)v6 traitCollection], v7, v9))
  {
    v8 = [(UITraitCollection *)v9 _semanticContext];
    if (v8 != [(UITraitCollection *)v4 _semanticContext])
    {
      sub_1890F9A5C();
    }

    v4 = v5;
  }

  else
  {
    v9 = v5;
  }
}

- (CGRect)contentFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (CGSize)intrinsicSizeForContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  v3 = sub_1890F9D74();

  return v3;
}

@end