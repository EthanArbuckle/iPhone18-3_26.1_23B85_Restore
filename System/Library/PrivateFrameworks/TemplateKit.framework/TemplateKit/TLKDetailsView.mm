@interface TLKDetailsView
- (BOOL)configureMenuForFootnoteButton:(id)button;
- (BOOL)isAccessoryViewBottomAligned;
- (BOOL)secondaryTitleIsDetached;
- (BOOL)truncateTitleMiddle;
- (BOOL)useCompactMode;
- (NSArray)details;
- (NSString)footnoteButtonText;
- (TLKDetailsViewDelegate)delegate;
- (TLKImage)secondaryTitleImage;
- (TLKRichText)bannerBadge;
- (TLKRichText)footnote;
- (TLKRichText)secondaryTitle;
- (TLKRichText)title;
- (TLKRichText)topText;
- (UIView)accessoryView;
- (id)detailsFields;
- (id)detailsStrings;
- (id)footnoteButton;
- (id)footnoteContainer;
- (id)footnoteLabel;
- (id)footnoteLabelString;
- (id)setupContentView;
- (id)titleContainer;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)footnoteButtonPressed;
- (void)layoutMarginsDidChange;
- (void)performBatchUpdates:(id)updates;
- (void)setAccessoryView:(id)view;
- (void)setBannerBadge:(id)badge;
- (void)setDetails:(id)details;
- (void)setFootnote:(id)footnote;
- (void)setFootnoteButtonText:(id)text;
- (void)setIsAccessoryViewBottomAligned:(BOOL)aligned;
- (void)setSecondaryTitle:(id)title;
- (void)setSecondaryTitleImage:(id)image;
- (void)setSecondaryTitleIsDetached:(BOOL)detached;
- (void)setTitle:(id)title;
- (void)setTopText:(id)text;
- (void)setTruncateTitleMiddle:(BOOL)middle;
- (void)setUseCompactMode:(BOOL)mode;
@end

@implementation TLKDetailsView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setButtonDelegate:self];
  [TLKView makeContainerShadowCompatible:v3];

  return v3;
}

- (void)layoutMarginsDidChange
{
  [(TLKDetailsView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(TLKView *)self contentView];
  [contentView setLayoutMargins:{v4, v6, v8, v10}];
}

- (TLKRichText)title
{
  contentView = [(TLKView *)self contentView];
  title = [contentView title];

  return title;
}

- (TLKImage)secondaryTitleImage
{
  contentView = [(TLKView *)self contentView];
  secondaryTitleImage = [contentView secondaryTitleImage];

  return secondaryTitleImage;
}

- (id)viewForFirstBaselineLayout
{
  contentView = [(TLKView *)self contentView];
  viewForFirstBaselineLayout = [contentView viewForFirstBaselineLayout];

  return viewForFirstBaselineLayout;
}

- (UIView)accessoryView
{
  contentView = [(TLKView *)self contentView];
  accessoryView = [contentView accessoryView];

  return accessoryView;
}

- (TLKRichText)secondaryTitle
{
  contentView = [(TLKView *)self contentView];
  secondaryTitle = [contentView secondaryTitle];

  return secondaryTitle;
}

- (BOOL)secondaryTitleIsDetached
{
  contentView = [(TLKView *)self contentView];
  secondaryTitleIsDetached = [contentView secondaryTitleIsDetached];

  return secondaryTitleIsDetached;
}

- (NSArray)details
{
  contentView = [(TLKView *)self contentView];
  detailTexts = [contentView detailTexts];

  return detailTexts;
}

- (TLKRichText)footnote
{
  contentView = [(TLKView *)self contentView];
  footnote = [contentView footnote];

  return footnote;
}

- (void)footnoteButtonPressed
{
  delegate = [(TLKDetailsView *)self delegate];
  [delegate footnoteButtonPressed];
}

- (BOOL)configureMenuForFootnoteButton:(id)button
{
  buttonCopy = button;
  delegate = [(TLKDetailsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(TLKDetailsView *)self delegate];
    v8 = [delegate2 configureMenuForFootnoteButton:buttonCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)useCompactMode
{
  contentView = [(TLKView *)self contentView];
  useCompactMode = [contentView useCompactMode];

  return useCompactMode;
}

- (void)setUseCompactMode:(BOOL)mode
{
  modeCopy = mode;
  contentView = [(TLKView *)self contentView];
  [contentView setUseCompactMode:modeCopy];
}

- (TLKRichText)bannerBadge
{
  contentView = [(TLKView *)self contentView];
  bannerText = [contentView bannerText];

  return bannerText;
}

- (void)setBannerBadge:(id)badge
{
  badgeCopy = badge;
  contentView = [(TLKView *)self contentView];
  [contentView setBannerText:badgeCopy];
}

- (TLKRichText)topText
{
  contentView = [(TLKView *)self contentView];
  topText = [contentView topText];

  return topText;
}

- (void)setTopText:(id)text
{
  textCopy = text;
  contentView = [(TLKView *)self contentView];
  [contentView setTopText:textCopy];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  contentView = [(TLKView *)self contentView];
  [contentView setTitle:titleCopy];
}

- (BOOL)truncateTitleMiddle
{
  contentView = [(TLKView *)self contentView];
  truncateTitleMiddle = [contentView truncateTitleMiddle];

  return truncateTitleMiddle;
}

- (void)setTruncateTitleMiddle:(BOOL)middle
{
  middleCopy = middle;
  contentView = [(TLKView *)self contentView];
  [contentView setTruncateTitleMiddle:middleCopy];
}

- (void)setSecondaryTitle:(id)title
{
  titleCopy = title;
  contentView = [(TLKView *)self contentView];
  [contentView setSecondaryTitle:titleCopy];
}

- (void)setSecondaryTitleImage:(id)image
{
  imageCopy = image;
  contentView = [(TLKView *)self contentView];
  [contentView setSecondaryTitleImage:imageCopy];
}

- (void)setSecondaryTitleIsDetached:(BOOL)detached
{
  detachedCopy = detached;
  contentView = [(TLKView *)self contentView];
  [contentView setSecondaryTitleIsDetached:detachedCopy];
}

- (void)setDetails:(id)details
{
  detailsCopy = details;
  contentView = [(TLKView *)self contentView];
  [contentView setDetailTexts:detailsCopy];
}

- (void)setFootnote:(id)footnote
{
  footnoteCopy = footnote;
  contentView = [(TLKView *)self contentView];
  [contentView setFootnote:footnoteCopy];
}

- (NSString)footnoteButtonText
{
  contentView = [(TLKView *)self contentView];
  footnoteButtonText = [contentView footnoteButtonText];

  return footnoteButtonText;
}

- (void)setFootnoteButtonText:(id)text
{
  textCopy = text;
  contentView = [(TLKView *)self contentView];
  [contentView setFootnoteButtonText:textCopy];
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  contentView = [(TLKView *)self contentView];
  [contentView setAccessoryView:viewCopy];
}

- (void)performBatchUpdates:(id)updates
{
  updatesCopy = updates;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__TLKDetailsView_performBatchUpdates___block_invoke;
  v7[3] = &unk_1E7FD8DD0;
  v7[4] = self;
  v8 = updatesCopy;
  v6.receiver = self;
  v6.super_class = TLKDetailsView;
  v5 = updatesCopy;
  [(TLKView *)&v6 performBatchUpdates:v7];
}

void __38__TLKDetailsView_performBatchUpdates___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 performBatchUpdates:*(a1 + 40)];
}

- (id)titleContainer
{
  contentView = [(TLKView *)self contentView];
  titleContainer = [contentView titleContainer];

  return titleContainer;
}

- (id)detailsFields
{
  contentView = [(TLKView *)self contentView];
  detailsFields = [contentView detailsFields];

  return detailsFields;
}

- (id)detailsStrings
{
  contentView = [(TLKView *)self contentView];
  detailsStrings = [contentView detailsStrings];

  return detailsStrings;
}

- (id)footnoteLabel
{
  contentView = [(TLKView *)self contentView];
  footnoteLabel = [contentView footnoteLabel];

  return footnoteLabel;
}

- (id)footnoteLabelString
{
  contentView = [(TLKView *)self contentView];
  footnoteLabelString = [contentView footnoteLabelString];

  return footnoteLabelString;
}

- (id)footnoteButton
{
  contentView = [(TLKView *)self contentView];
  footnoteButton = [contentView footnoteButton];

  return footnoteButton;
}

- (id)footnoteContainer
{
  contentView = [(TLKView *)self contentView];
  footnoteContainer = [contentView footnoteContainer];

  return footnoteContainer;
}

- (id)viewForLastBaselineLayout
{
  contentView = [(TLKView *)self contentView];
  viewForLastBaselineLayout = [contentView viewForLastBaselineLayout];

  return viewForLastBaselineLayout;
}

- (BOOL)isAccessoryViewBottomAligned
{
  contentView = [(TLKView *)self contentView];
  isAccessoryViewBottomAligned = [contentView isAccessoryViewBottomAligned];

  return isAccessoryViewBottomAligned;
}

- (void)setIsAccessoryViewBottomAligned:(BOOL)aligned
{
  alignedCopy = aligned;
  contentView = [(TLKView *)self contentView];
  [contentView setIsAccessoryViewBottomAligned:alignedCopy];
}

- (TLKDetailsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end