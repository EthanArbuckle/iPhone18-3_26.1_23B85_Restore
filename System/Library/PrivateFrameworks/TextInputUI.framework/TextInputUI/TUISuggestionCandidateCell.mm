@interface TUISuggestionCandidateCell
- (TUISuggestionCandidateCell)initWithCoder:(id)coder;
- (TUISuggestionCandidateCell)initWithFrame:(CGRect)frame;
- (id)bodyText;
- (id)headerText;
- (id)image;
- (id)textSuggestion;
- (void)commonInit;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCandidate:(id)candidate;
- (void)setStyle:(id)style;
- (void)updateLabel;
@end

@implementation TUISuggestionCandidateCell

- (void)updateLabel
{
  v84[2] = *MEMORY[0x1E69E9840];
  style = [(TUICandidateBaseCell *)self style];
  [style extraCellPadding];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  topPaddingConstraint = [(TUISuggestionCandidateCell *)self topPaddingConstraint];
  [topPaddingConstraint setConstant:v7];

  leftPaddingConstraint = [(TUISuggestionCandidateCell *)self leftPaddingConstraint];
  [leftPaddingConstraint setConstant:v9];

  bottomPaddingConstraint = [(TUISuggestionCandidateCell *)self bottomPaddingConstraint];
  [bottomPaddingConstraint setConstant:v11];

  rightPaddingConstraint = [(TUISuggestionCandidateCell *)self rightPaddingConstraint];
  [rightPaddingConstraint setConstant:v13];

  v18 = objc_alloc_init(MEMORY[0x1E696AD40]);
  headerText = [(TUISuggestionCandidateCell *)self headerText];
  bodyText = [(TUISuggestionCandidateCell *)self bodyText];
  if (!bodyText)
  {
    textLabel = [(TUISuggestionCandidateCell *)self textLabel];
    [textLabel setAttributedText:0];

    goto LABEL_32;
  }

  v21 = bodyText;
  style2 = [(TUICandidateBaseCell *)self style];
  textColor = [style2 textColor];
  v24 = textColor;
  if (textColor)
  {
    clearColor = textColor;
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  v27 = clearColor;

  [(TUISuggestionCandidateCell *)self bounds];
  v29 = v28 - v9 - v13;
  style3 = [(TUICandidateBaseCell *)self style];
  [style3 minimumCellPadding];
  v32 = v29 + v31 * -2.0;

  v33 = 0x1E69DC000uLL;
  v34 = 0x1E695D000;
  if (!headerText)
  {
    v37 = *MEMORY[0x1E69DB648];
    v38 = *MEMORY[0x1E69DB650];
    goto LABEL_20;
  }

  textSuggestion = [(TUISuggestionCandidateCell *)self textSuggestion];
  candidate = [(TUISuggestionCandidateCell *)self candidate];
  v79 = textSuggestion;
  if (([candidate customInfoType] & 0x18) != 0)
  {

LABEL_11:
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v42 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v43 = 14.0;
    v44 = 12.0;
    goto LABEL_12;
  }

  displayStylePlain = [textSuggestion displayStylePlain];

  if (displayStylePlain)
  {
    goto LABEL_11;
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v42 = (userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v43 = 12.0;
  v44 = 11.0;
LABEL_12:
  if (v42)
  {
    v45 = v44;
  }

  else
  {
    v45 = v43;
  }

  window = [(TUISuggestionCandidateCell *)self window];
  [window interfaceOrientation];

  v37 = *MEMORY[0x1E69DB648];
  v83[0] = *MEMORY[0x1E69DB648];
  v47 = [MEMORY[0x1E69DB878] systemFontOfSize:v45];
  v38 = *MEMORY[0x1E69DB650];
  v83[1] = *MEMORY[0x1E69DB650];
  v84[0] = v47;
  v80 = v27;
  v84[1] = v27;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];

  style4 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    v50 = v18;
    style5 = [(TUICandidateBaseCell *)self style];
    suggestionCandidateHeaderFontAttributes = [style5 suggestionCandidateHeaderFontAttributes];

    if (!suggestionCandidateHeaderFontAttributes)
    {
      v18 = v50;
      v33 = 0x1E69DC000;
      goto LABEL_19;
    }

    style4 = [(TUICandidateBaseCell *)self style];
    suggestionCandidateHeaderFontAttributes2 = [style4 suggestionCandidateHeaderFontAttributes];

    v48 = suggestionCandidateHeaderFontAttributes2;
    v18 = v50;
    v33 = 0x1E69DC000uLL;
  }

LABEL_19:
  v54 = [headerText tui_centerTruncatedStringWithAttributes:v48 fittingWidth:v32];

  v55 = objc_alloc(MEMORY[0x1E696AD40]);
  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v54, @"\n"];
  v57 = [v55 initWithString:v56 attributes:v48];

  [v18 appendAttributedString:v57];
  headerText = v54;
  v27 = v80;
  v34 = 0x1E695D000uLL;
LABEL_20:
  currentDevice3 = [*(v33 + 2360) currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  v60 = 14.0;
  if (!headerText)
  {
    v60 = 17.0;
  }

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v60 = 16.0;
  }

  v81[0] = v37;
  v61 = [MEMORY[0x1E69DB878] systemFontOfSize:v60];
  v81[1] = v38;
  v82[0] = v61;
  v82[1] = v27;
  iconImageView2 = [*(v34 + 3872) dictionaryWithObjects:v82 forKeys:v81 count:2];

  style6 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    v63 = v27;
    style7 = [(TUICandidateBaseCell *)self style];
    suggestionCandidateBodyFontAttributes = [style7 suggestionCandidateBodyFontAttributes];

    if (!suggestionCandidateBodyFontAttributes)
    {
      v27 = v63;
      goto LABEL_28;
    }

    style6 = [(TUICandidateBaseCell *)self style];
    suggestionCandidateBodyFontAttributes2 = [style6 suggestionCandidateBodyFontAttributes];

    iconImageView2 = suggestionCandidateBodyFontAttributes2;
    v27 = v63;
  }

LABEL_28:
  image2 = [v21 tui_centerTruncatedStringWithAttributes:iconImageView2 fittingWidth:v32];

  v67 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (image2)
  {
    v68 = image2;
  }

  else
  {
    v68 = &stru_1F03BA8F8;
  }

  v69 = [v67 initWithString:v68 attributes:iconImageView2];
  [v18 appendAttributedString:v69];
  textLabel2 = [(TUISuggestionCandidateCell *)self textLabel];
  [textLabel2 setAttributedText:v18];

LABEL_32:
  image = [(TUISuggestionCandidateCell *)self image];
  iconImageView = [(TUISuggestionCandidateCell *)self iconImageView];
  [iconImageView setImage:image];

  textLabel3 = [(TUISuggestionCandidateCell *)self textLabel];
  text = [textLabel3 text];
  if (text)
  {
    iconImageView2 = [(TUISuggestionCandidateCell *)self iconImageView];
    image2 = [iconImageView2 image];
    if (image2)
    {
      v75 = 6.0;
    }

    else
    {
      v75 = 0.0;
    }
  }

  else
  {
    v75 = 0.0;
  }

  paddingBetweenConstraint = [(TUISuggestionCandidateCell *)self paddingBetweenConstraint];
  [paddingBetweenConstraint setConstant:v75];

  if (text)
  {
  }
}

- (id)image
{
  textSuggestion = [(TUISuggestionCandidateCell *)self textSuggestion];
  image = [textSuggestion image];

  return image;
}

- (id)bodyText
{
  textSuggestion = [(TUISuggestionCandidateCell *)self textSuggestion];
  displayText = [textSuggestion displayText];

  return displayText;
}

- (id)headerText
{
  textSuggestion = [(TUISuggestionCandidateCell *)self textSuggestion];
  headerText = [textSuggestion headerText];

  return headerText;
}

- (id)textSuggestion
{
  candidate = [(TUISuggestionCandidateCell *)self candidate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    candidate2 = [(TUISuggestionCandidateCell *)self candidate];
    textSuggestion = [candidate2 textSuggestion];
  }

  else
  {
    textSuggestion = 0;
  }

  return textSuggestion;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TUISuggestionCandidateCell;
  [(TUISuggestionCandidateCell *)&v3 didMoveToWindow];
  [(TUISuggestionCandidateCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUISuggestionCandidateCell;
  [(TUICandidateBaseCell *)&v3 layoutSubviews];
  [(TUISuggestionCandidateCell *)self updateLabel];
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  style = [(TUICandidateBaseCell *)self style];
  v6 = [style isEqual:styleCopy];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = TUISuggestionCandidateCell;
    [(TUICandidateBaseCell *)&v7 setStyle:styleCopy];
    [(TUISuggestionCandidateCell *)self updateLabel];
  }
}

- (void)setCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidate = self->_candidate;
  if (candidate != candidateCopy)
  {
    v7 = candidateCopy;
    candidate = [candidate isEqual:candidateCopy];
    candidateCopy = v7;
    if ((candidate & 1) == 0)
    {
      objc_storeStrong(&self->_candidate, candidate);
      candidate = [(TUISuggestionCandidateCell *)self updateLabel];
      candidateCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](candidate, candidateCopy);
}

- (TUISuggestionCandidateCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUISuggestionCandidateCell;
  v3 = [(TUISuggestionCandidateCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUISuggestionCandidateCell *)v3 commonInit];
  }

  return v4;
}

- (TUISuggestionCandidateCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUISuggestionCandidateCell;
  v3 = [(TUICandidateBaseCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUISuggestionCandidateCell *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v4;

  [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TUISuggestionCandidateCell *)self contentView];
  [contentView addSubview:self->_iconImageView];

  v7 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(TUISuggestionCandidateCell *)self bounds];
  v8 = [v7 initWithFrame:?];
  textLabel = self->_textLabel;
  self->_textLabel = v8;

  [(UILabel *)self->_textLabel setTextAlignment:1];
  [(UILabel *)self->_textLabel setNumberOfLines:0];
  [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(TUISuggestionCandidateCell *)self contentView];
  [contentView2 addSubview:self->_textLabel];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  paddedContainer = self->_paddedContainer;
  self->_paddedContainer = v11;

  contentView3 = [(TUISuggestionCandidateCell *)self contentView];
  [contentView3 addLayoutGuide:self->_paddedContainer];

  v14 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  centeredContainer = self->_centeredContainer;
  self->_centeredContainer = v14;

  contentView4 = [(TUISuggestionCandidateCell *)self contentView];
  [contentView4 addLayoutGuide:self->_centeredContainer];

  topAnchor = [(UILayoutGuide *)self->_paddedContainer topAnchor];
  contentView5 = [(TUISuggestionCandidateCell *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  topPaddingConstraint = self->_topPaddingConstraint;
  self->_topPaddingConstraint = v20;

  leftAnchor = [(UILayoutGuide *)self->_paddedContainer leftAnchor];
  contentView6 = [(TUISuggestionCandidateCell *)self contentView];
  leftAnchor2 = [contentView6 leftAnchor];
  v25 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  leftPaddingConstraint = self->_leftPaddingConstraint;
  self->_leftPaddingConstraint = v25;

  contentView7 = [(TUISuggestionCandidateCell *)self contentView];
  bottomAnchor = [contentView7 bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_paddedContainer bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  bottomPaddingConstraint = self->_bottomPaddingConstraint;
  self->_bottomPaddingConstraint = v30;

  contentView8 = [(TUISuggestionCandidateCell *)self contentView];
  rightAnchor = [contentView8 rightAnchor];
  rightAnchor2 = [(UILayoutGuide *)self->_paddedContainer rightAnchor];
  v35 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  rightPaddingConstraint = self->_rightPaddingConstraint;
  self->_rightPaddingConstraint = v35;

  [(NSLayoutConstraint *)self->_topPaddingConstraint setActive:1];
  [(NSLayoutConstraint *)self->_leftPaddingConstraint setActive:1];
  [(NSLayoutConstraint *)self->_bottomPaddingConstraint setActive:1];
  [(NSLayoutConstraint *)self->_rightPaddingConstraint setActive:1];
  centerXAnchor = [(UILayoutGuide *)self->_centeredContainer centerXAnchor];
  centerXAnchor2 = [(UILayoutGuide *)self->_paddedContainer centerXAnchor];
  v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v39 setActive:1];

  centerYAnchor = [(UILayoutGuide *)self->_centeredContainer centerYAnchor];
  centerYAnchor2 = [(UILayoutGuide *)self->_paddedContainer centerYAnchor];
  v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v42 setActive:1];

  leadingAnchor = [(UIImageView *)self->_iconImageView leadingAnchor];
  leadingAnchor2 = [(UILayoutGuide *)self->_centeredContainer leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v45 setActive:1];

  centerYAnchor3 = [(UIImageView *)self->_iconImageView centerYAnchor];
  centerYAnchor4 = [(UILayoutGuide *)self->_centeredContainer centerYAnchor];
  v48 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v48 setActive:1];

  leadingAnchor3 = [(UILabel *)self->_textLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_iconImageView trailingAnchor];
  v51 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
  paddingBetweenConstraint = self->_paddingBetweenConstraint;
  self->_paddingBetweenConstraint = v51;

  [(NSLayoutConstraint *)self->_paddingBetweenConstraint setActive:1];
  trailingAnchor2 = [(UILabel *)self->_textLabel trailingAnchor];
  trailingAnchor3 = [(UILayoutGuide *)self->_centeredContainer trailingAnchor];
  v55 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v55 setActive:1];

  centerYAnchor5 = [(UILabel *)self->_textLabel centerYAnchor];
  centerYAnchor6 = [(UILayoutGuide *)self->_centeredContainer centerYAnchor];
  v57 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [v57 setActive:1];
}

@end