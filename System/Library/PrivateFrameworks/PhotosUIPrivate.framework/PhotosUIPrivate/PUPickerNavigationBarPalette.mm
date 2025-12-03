@interface PUPickerNavigationBarPalette
- (PUPickerNavigationBarPalette)initWithTopView:(id)view topViewShouldIgnoreHorizontalMargins:(BOOL)margins bottomView:(id)bottomView bottomViewShouldIgnoreHorizontalMargins:(BOOL)horizontalMargins;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sizeTraitsDidChange;
@end

@implementation PUPickerNavigationBarPalette

- (PUPickerNavigationBarPalette)initWithTopView:(id)view topViewShouldIgnoreHorizontalMargins:(BOOL)margins bottomView:(id)bottomView bottomViewShouldIgnoreHorizontalMargins:(BOOL)horizontalMargins
{
  viewCopy = view;
  bottomViewCopy = bottomView;
  return sub_1B3796A44(view, margins, bottomView, horizontalMargins);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B3796FDC();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_1B3C9C5E8();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1B3798710(&qword_1EB850FE0, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1B3C9C4C8();

LABEL_8:
  sub_1B379705C(v10, v12, v18, v15, context);

  sub_1B36FA490(v18);
}

- (void)sizeTraitsDidChange
{
  selfCopy = self;
  sub_1B3797820();
}

@end