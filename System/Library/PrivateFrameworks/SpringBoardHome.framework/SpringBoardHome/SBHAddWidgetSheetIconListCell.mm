@interface SBHAddWidgetSheetIconListCell
- (BOOL)_descendantsShouldHighlight;
- (MTVisualStylingProvider)visualStylingProvider;
- (NSString)identifier;
- (NSString)title;
- (SBHAddWidgetSheetIconListCell)initWithCoder:(id)coder;
- (SBHAddWidgetSheetIconListCell)initWithFrame:(CGRect)frame;
- (SBIconImageInfo)iconImageInfo;
- (UIColor)iconBackgroundColor;
- (UIImage)iconImage;
- (int64_t)labelNumberOfLines;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconListView:(id)view didRemoveIconView:(id)iconView;
- (void)prepareForReuse;
- (void)setIconBackgroundColor:(id)color;
- (void)setIconImage:(id)image;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setIconListView:(id)view;
- (void)setIdentifier:(id)identifier;
- (void)setSeparatorVisible:(BOOL)visible;
- (void)setTitle:(id)title;
- (void)setVisualStylingProvider:(id)provider;
- (void)setWantsHeaderView:(BOOL)view;
@end

@implementation SBHAddWidgetSheetIconListCell

- (SBHAddWidgetSheetIconListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (SBHAddWidgetSheetIconListCell)initWithCoder:(id)coder
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
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

- (void)setIconImageInfo:(SBIconImageInfo *)info
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
  selfCopy = self;
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

- (void)setIdentifier:(id)identifier
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
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

  selfCopy = self;
  textLabel = [(SBHAddWidgetSheetIconListCell *)selfCopy textLabel];
  text = [(UILabel *)textLabel text];

  if (text)
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

- (void)setTitle:(id)title
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (title)
  {
    sub_1BEE4708C();
    title = v5;
  }

  selfCopy = self;
  textLabel = [(SBHAddWidgetSheetIconListCell *)selfCopy textLabel];
  if (title)
  {
    v7 = sub_1BEE4705C();
  }

  else
  {
    v7 = 0;
  }

  [(UILabel *)textLabel setText:v7];
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

  selfCopy = self;
  imageView = [(SBHAddWidgetSheetIconListCell *)selfCopy imageView];
  image = [(UIImageView *)imageView image];

  if (image)
  {
  }

  else
  {
    symbolImageView = [(SBHAddWidgetSheetIconListCell *)selfCopy symbolImageView];
    image = [(UIImageView *)symbolImageView image];
  }

  return image;
}

- (void)setIconImage:(id)image
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  imageCopy = image;
  selfCopy = self;
  sub_1BEDCA914(image);
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

  selfCopy = self;
  imageView = [(SBHAddWidgetSheetIconListCell *)selfCopy imageView];
  backgroundColor = [(UIImageView *)imageView backgroundColor];

  return backgroundColor;
}

- (void)setIconBackgroundColor:(id)color
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  colorCopy = color;
  selfCopy = self;
  imageView = [(SBHAddWidgetSheetIconListCell *)selfCopy imageView];
  [(UIImageView *)imageView setBackgroundColor:colorCopy];
}

- (void)setIconListView:(id)view
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconListView);
  *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconListView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_1BEDC85E8(v7);
}

- (void)setSeparatorVisible:(BOOL)visible
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorVisible;
  *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorVisible) = visible;
  selfCopy = self;
  separatorView = [(SBHAddWidgetSheetIconListCell *)selfCopy separatorView];
  [(UIView *)separatorView setHidden:(*(self + v5) & 1) == 0];
}

- (void)setWantsHeaderView:(BOOL)view
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(self + OBJC_IVAR___SBHAddWidgetSheetIconListCell_wantsHeaderView) = view;
  selfCopy = self;
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

- (void)setVisualStylingProvider:(id)provider
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
  providerCopy = provider;
  selfCopy = self;
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

  selfCopy = self;
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

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  iconViewCopy = iconView;
  selfCopy = self;
  sub_1BEDC8B58(iconViewCopy, viewCopy);
}

- (void)iconListView:(id)view didRemoveIconView:(id)iconView
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  iconViewCopy = iconView;
  selfCopy = self;
  sub_1BEDCAA10(iconViewCopy);
}

@end