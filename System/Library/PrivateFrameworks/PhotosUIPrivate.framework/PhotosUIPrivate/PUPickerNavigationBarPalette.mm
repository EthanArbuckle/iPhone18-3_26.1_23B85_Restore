@interface PUPickerNavigationBarPalette
- (PUPickerNavigationBarPalette)initWithTopView:(id)a3 topViewShouldIgnoreHorizontalMargins:(BOOL)a4 bottomView:(id)a5 bottomViewShouldIgnoreHorizontalMargins:(BOOL)a6;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sizeTraitsDidChange;
@end

@implementation PUPickerNavigationBarPalette

- (PUPickerNavigationBarPalette)initWithTopView:(id)a3 topViewShouldIgnoreHorizontalMargins:(BOOL)a4 bottomView:(id)a5 bottomViewShouldIgnoreHorizontalMargins:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  return sub_1B3796A44(a3, a4, a5, a6);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1B3796FDC();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_1B3C9C5E8();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1B3798710(&qword_1EB850FE0, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1B3C9C4C8();

LABEL_8:
  sub_1B379705C(v10, v12, v18, v15, a6);

  sub_1B36FA490(v18);
}

- (void)sizeTraitsDidChange
{
  v2 = self;
  sub_1B3797820();
}

@end