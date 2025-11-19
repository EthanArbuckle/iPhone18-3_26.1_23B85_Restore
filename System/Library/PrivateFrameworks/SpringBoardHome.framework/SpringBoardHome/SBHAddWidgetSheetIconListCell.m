@interface SBHAddWidgetSheetIconListCell
- (BOOL)_descendantsShouldHighlight;
- (MTVisualStylingProvider)visualStylingProvider;
- (NSString)identifier;
- (NSString)title;
- (SBHAddWidgetSheetIconListCell)initWithCoder:(id)a3;
- (SBHAddWidgetSheetIconListCell)initWithFrame:(CGRect)a3;
- (SBIconImageInfo)iconImageInfo;
- (UIColor)iconBackgroundColor;
- (UIImage)iconImage;
- (int64_t)labelNumberOfLines;
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
- (void)prepareForReuse;
- (void)setIconBackgroundColor:(id)a3;
- (void)setIconImage:(id)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setIconListView:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setSeparatorVisible:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setVisualStylingProvider:(id)a3;
- (void)setWantsHeaderView:(BOOL)a3;
@end

@implementation SBHAddWidgetSheetIconListCell

- (SBHAddWidgetSheetIconListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1BEDC6744(x, y, width, height);

  return v7;
}

- (SBHAddWidgetSheetIconListCell)initWithCoder:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  _sSo29SBHAddWidgetSheetIconListCellC15SpringBoardHomeE5coderABSgSo7NSCoderC_tcfc_0();
}

- (SBIconImageInfo)iconImageInfo
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = (self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo);
  v13 = *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo);
  v14 = *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo + 8);
  v15 = *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo + 16);
  v16 = *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo + 24);
  *v12 = v10;
  v12[1] = v9;
  v12[2] = v8;
  v12[3] = v7;
  v17 = self;
  sub_1BEDC7C04(v13, v14, v15, v16);
}

- (NSString)identifier
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_identifier + 8))
  {

    v3 = sub_1BEE4705C();
  }

  else
  {

    v3 = 0;
  }

  return v3;
}

- (void)setIdentifier:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v5 = sub_1BEE4708C();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_identifier);
  *v7 = v5;
  v7[1] = v6;
}

- (NSString)title
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = [(SBHAddWidgetSheetIconListCell *)v3 textLabel];
  v5 = [(UILabel *)v4 text];

  if (v5)
  {
    sub_1BEE4708C();

    v6 = sub_1BEE4705C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setTitle:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_1BEE4708C();
    a3 = v5;
  }

  v8 = self;
  v6 = [(SBHAddWidgetSheetIconListCell *)v8 textLabel];
  if (a3)
  {
    v7 = sub_1BEE4705C();
  }

  else
  {
    v7 = 0;
  }

  [(UILabel *)v6 setText:v7];
}

- (UIImage)iconImage
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = [(SBHAddWidgetSheetIconListCell *)v3 imageView];
  v5 = [(UIImageView *)v4 image];

  if (v5)
  {
  }

  else
  {
    v6 = [(SBHAddWidgetSheetIconListCell *)v3 symbolImageView];
    v5 = [(UIImageView *)v6 image];
  }

  return v5;
}

- (void)setIconImage:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a3;
  v5 = self;
  sub_1BEDCA914(a3);
}

- (UIColor)iconBackgroundColor
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = [(SBHAddWidgetSheetIconListCell *)v3 imageView];
  v5 = [(UIImageView *)v4 backgroundColor];

  return v5;
}

- (void)setIconBackgroundColor:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v7 = self;
  v6 = [(SBHAddWidgetSheetIconListCell *)v7 imageView];
  [(UIImageView *)v6 setBackgroundColor:v5];
}

- (void)setIconListView:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconListView);
  *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconListView) = a3;
  v5 = a3;
  v6 = self;
  sub_1BEDC85E8(v7);
}

- (void)setSeparatorVisible:(BOOL)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorVisible;
  *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorVisible) = a3;
  v7 = self;
  v6 = [(SBHAddWidgetSheetIconListCell *)v7 separatorView];
  [(UIView *)v6 setHidden:(*(self + v5) & 1) == 0];
}

- (void)setWantsHeaderView:(BOOL)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_wantsHeaderView) = a3;
  v5 = self;
  sub_1BEDC90BC();
}

- (MTVisualStylingProvider)visualStylingProvider
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setVisualStylingProvider:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = a3;
  v7 = self;
  sub_1BEDC9358(Strong);
}

- (void)prepareForReuse
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  SBHAddWidgetSheetIconListCell.prepareForReuse()();
}

- (BOOL)_descendantsShouldHighlight
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (int64_t)labelNumberOfLines
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_labelNumberOfLines);

  return v3;
}

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1BEDC8B58(v8, v7);
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1BEDCAA10(v8);
}

@end