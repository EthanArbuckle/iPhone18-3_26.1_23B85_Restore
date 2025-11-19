@interface TLKDetailsView
- (BOOL)configureMenuForFootnoteButton:(id)a3;
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
- (void)performBatchUpdates:(id)a3;
- (void)setAccessoryView:(id)a3;
- (void)setBannerBadge:(id)a3;
- (void)setDetails:(id)a3;
- (void)setFootnote:(id)a3;
- (void)setFootnoteButtonText:(id)a3;
- (void)setIsAccessoryViewBottomAligned:(BOOL)a3;
- (void)setSecondaryTitle:(id)a3;
- (void)setSecondaryTitleImage:(id)a3;
- (void)setSecondaryTitleIsDetached:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTopText:(id)a3;
- (void)setTruncateTitleMiddle:(BOOL)a3;
- (void)setUseCompactMode:(BOOL)a3;
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
  v11 = [(TLKView *)self contentView];
  [v11 setLayoutMargins:{v4, v6, v8, v10}];
}

- (TLKRichText)title
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 title];

  return v3;
}

- (TLKImage)secondaryTitleImage
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 secondaryTitleImage];

  return v3;
}

- (id)viewForFirstBaselineLayout
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 viewForFirstBaselineLayout];

  return v3;
}

- (UIView)accessoryView
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 accessoryView];

  return v3;
}

- (TLKRichText)secondaryTitle
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 secondaryTitle];

  return v3;
}

- (BOOL)secondaryTitleIsDetached
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 secondaryTitleIsDetached];

  return v3;
}

- (NSArray)details
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 detailTexts];

  return v3;
}

- (TLKRichText)footnote
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 footnote];

  return v3;
}

- (void)footnoteButtonPressed
{
  v2 = [(TLKDetailsView *)self delegate];
  [v2 footnoteButtonPressed];
}

- (BOOL)configureMenuForFootnoteButton:(id)a3
{
  v4 = a3;
  v5 = [(TLKDetailsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TLKDetailsView *)self delegate];
    v8 = [v7 configureMenuForFootnoteButton:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)useCompactMode
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 useCompactMode];

  return v3;
}

- (void)setUseCompactMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(TLKView *)self contentView];
  [v4 setUseCompactMode:v3];
}

- (TLKRichText)bannerBadge
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 bannerText];

  return v3;
}

- (void)setBannerBadge:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setBannerText:v4];
}

- (TLKRichText)topText
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 topText];

  return v3;
}

- (void)setTopText:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setTopText:v4];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setTitle:v4];
}

- (BOOL)truncateTitleMiddle
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 truncateTitleMiddle];

  return v3;
}

- (void)setTruncateTitleMiddle:(BOOL)a3
{
  v3 = a3;
  v4 = [(TLKView *)self contentView];
  [v4 setTruncateTitleMiddle:v3];
}

- (void)setSecondaryTitle:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setSecondaryTitle:v4];
}

- (void)setSecondaryTitleImage:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setSecondaryTitleImage:v4];
}

- (void)setSecondaryTitleIsDetached:(BOOL)a3
{
  v3 = a3;
  v4 = [(TLKView *)self contentView];
  [v4 setSecondaryTitleIsDetached:v3];
}

- (void)setDetails:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setDetailTexts:v4];
}

- (void)setFootnote:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setFootnote:v4];
}

- (NSString)footnoteButtonText
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 footnoteButtonText];

  return v3;
}

- (void)setFootnoteButtonText:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setFootnoteButtonText:v4];
}

- (void)setAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  [v5 setAccessoryView:v4];
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__TLKDetailsView_performBatchUpdates___block_invoke;
  v7[3] = &unk_1E7FD8DD0;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TLKDetailsView;
  v5 = v4;
  [(TLKView *)&v6 performBatchUpdates:v7];
}

void __38__TLKDetailsView_performBatchUpdates___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 performBatchUpdates:*(a1 + 40)];
}

- (id)titleContainer
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 titleContainer];

  return v3;
}

- (id)detailsFields
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 detailsFields];

  return v3;
}

- (id)detailsStrings
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 detailsStrings];

  return v3;
}

- (id)footnoteLabel
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 footnoteLabel];

  return v3;
}

- (id)footnoteLabelString
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 footnoteLabelString];

  return v3;
}

- (id)footnoteButton
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 footnoteButton];

  return v3;
}

- (id)footnoteContainer
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 footnoteContainer];

  return v3;
}

- (id)viewForLastBaselineLayout
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 viewForLastBaselineLayout];

  return v3;
}

- (BOOL)isAccessoryViewBottomAligned
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 isAccessoryViewBottomAligned];

  return v3;
}

- (void)setIsAccessoryViewBottomAligned:(BOOL)a3
{
  v3 = a3;
  v4 = [(TLKView *)self contentView];
  [v4 setIsAccessoryViewBottomAligned:v3];
}

- (TLKDetailsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end