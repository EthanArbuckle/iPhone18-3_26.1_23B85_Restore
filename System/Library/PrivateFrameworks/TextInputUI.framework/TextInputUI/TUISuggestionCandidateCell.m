@interface TUISuggestionCandidateCell
- (TUISuggestionCandidateCell)initWithCoder:(id)a3;
- (TUISuggestionCandidateCell)initWithFrame:(CGRect)a3;
- (id)bodyText;
- (id)headerText;
- (id)image;
- (id)textSuggestion;
- (void)commonInit;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCandidate:(id)a3;
- (void)setStyle:(id)a3;
- (void)updateLabel;
@end

@implementation TUISuggestionCandidateCell

- (void)updateLabel
{
  v84[2] = *MEMORY[0x1E69E9840];
  v5 = [(TUICandidateBaseCell *)self style];
  [v5 extraCellPadding];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(TUISuggestionCandidateCell *)self topPaddingConstraint];
  [v14 setConstant:v7];

  v15 = [(TUISuggestionCandidateCell *)self leftPaddingConstraint];
  [v15 setConstant:v9];

  v16 = [(TUISuggestionCandidateCell *)self bottomPaddingConstraint];
  [v16 setConstant:v11];

  v17 = [(TUISuggestionCandidateCell *)self rightPaddingConstraint];
  [v17 setConstant:v13];

  v18 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v19 = [(TUISuggestionCandidateCell *)self headerText];
  v20 = [(TUISuggestionCandidateCell *)self bodyText];
  if (!v20)
  {
    v26 = [(TUISuggestionCandidateCell *)self textLabel];
    [v26 setAttributedText:0];

    goto LABEL_32;
  }

  v21 = v20;
  v22 = [(TUICandidateBaseCell *)self style];
  v23 = [v22 textColor];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [MEMORY[0x1E69DC888] clearColor];
  }

  v27 = v25;

  [(TUISuggestionCandidateCell *)self bounds];
  v29 = v28 - v9 - v13;
  v30 = [(TUICandidateBaseCell *)self style];
  [v30 minimumCellPadding];
  v32 = v29 + v31 * -2.0;

  v33 = 0x1E69DC000uLL;
  v34 = 0x1E695D000;
  if (!v19)
  {
    v37 = *MEMORY[0x1E69DB648];
    v38 = *MEMORY[0x1E69DB650];
    goto LABEL_20;
  }

  v35 = [(TUISuggestionCandidateCell *)self textSuggestion];
  v36 = [(TUISuggestionCandidateCell *)self candidate];
  v79 = v35;
  if (([v36 customInfoType] & 0x18) != 0)
  {

LABEL_11:
    v40 = [MEMORY[0x1E69DC938] currentDevice];
    v41 = [v40 userInterfaceIdiom];

    v42 = (v41 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v43 = 14.0;
    v44 = 12.0;
    goto LABEL_12;
  }

  v39 = [v35 displayStylePlain];

  if (v39)
  {
    goto LABEL_11;
  }

  v77 = [MEMORY[0x1E69DC938] currentDevice];
  v78 = [v77 userInterfaceIdiom];

  v42 = (v78 & 0xFFFFFFFFFFFFFFFBLL) == 1;
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

  v46 = [(TUISuggestionCandidateCell *)self window];
  [v46 interfaceOrientation];

  v37 = *MEMORY[0x1E69DB648];
  v83[0] = *MEMORY[0x1E69DB648];
  v47 = [MEMORY[0x1E69DB878] systemFontOfSize:v45];
  v38 = *MEMORY[0x1E69DB650];
  v83[1] = *MEMORY[0x1E69DB650];
  v84[0] = v47;
  v80 = v27;
  v84[1] = v27;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];

  v49 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    v50 = v18;
    v51 = [(TUICandidateBaseCell *)self style];
    v52 = [v51 suggestionCandidateHeaderFontAttributes];

    if (!v52)
    {
      v18 = v50;
      v33 = 0x1E69DC000;
      goto LABEL_19;
    }

    v49 = [(TUICandidateBaseCell *)self style];
    v53 = [v49 suggestionCandidateHeaderFontAttributes];

    v48 = v53;
    v18 = v50;
    v33 = 0x1E69DC000uLL;
  }

LABEL_19:
  v54 = [v19 tui_centerTruncatedStringWithAttributes:v48 fittingWidth:v32];

  v55 = objc_alloc(MEMORY[0x1E696AD40]);
  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v54, @"\n"];
  v57 = [v55 initWithString:v56 attributes:v48];

  [v18 appendAttributedString:v57];
  v19 = v54;
  v27 = v80;
  v34 = 0x1E695D000uLL;
LABEL_20:
  v58 = [*(v33 + 2360) currentDevice];
  v59 = [v58 userInterfaceIdiom];

  v60 = 14.0;
  if (!v19)
  {
    v60 = 17.0;
  }

  if ((v59 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v60 = 16.0;
  }

  v81[0] = v37;
  v61 = [MEMORY[0x1E69DB878] systemFontOfSize:v60];
  v81[1] = v38;
  v82[0] = v61;
  v82[1] = v27;
  v2 = [*(v34 + 3872) dictionaryWithObjects:v82 forKeys:v81 count:2];

  v62 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    v63 = v27;
    v64 = [(TUICandidateBaseCell *)self style];
    v65 = [v64 suggestionCandidateBodyFontAttributes];

    if (!v65)
    {
      v27 = v63;
      goto LABEL_28;
    }

    v62 = [(TUICandidateBaseCell *)self style];
    v66 = [v62 suggestionCandidateBodyFontAttributes];

    v2 = v66;
    v27 = v63;
  }

LABEL_28:
  v3 = [v21 tui_centerTruncatedStringWithAttributes:v2 fittingWidth:v32];

  v67 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v3)
  {
    v68 = v3;
  }

  else
  {
    v68 = &stru_1F03BA8F8;
  }

  v69 = [v67 initWithString:v68 attributes:v2];
  [v18 appendAttributedString:v69];
  v70 = [(TUISuggestionCandidateCell *)self textLabel];
  [v70 setAttributedText:v18];

LABEL_32:
  v71 = [(TUISuggestionCandidateCell *)self image];
  v72 = [(TUISuggestionCandidateCell *)self iconImageView];
  [v72 setImage:v71];

  v73 = [(TUISuggestionCandidateCell *)self textLabel];
  v74 = [v73 text];
  if (v74)
  {
    v2 = [(TUISuggestionCandidateCell *)self iconImageView];
    v3 = [v2 image];
    if (v3)
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

  v76 = [(TUISuggestionCandidateCell *)self paddingBetweenConstraint];
  [v76 setConstant:v75];

  if (v74)
  {
  }
}

- (id)image
{
  v2 = [(TUISuggestionCandidateCell *)self textSuggestion];
  v3 = [v2 image];

  return v3;
}

- (id)bodyText
{
  v2 = [(TUISuggestionCandidateCell *)self textSuggestion];
  v3 = [v2 displayText];

  return v3;
}

- (id)headerText
{
  v2 = [(TUISuggestionCandidateCell *)self textSuggestion];
  v3 = [v2 headerText];

  return v3;
}

- (id)textSuggestion
{
  v3 = [(TUISuggestionCandidateCell *)self candidate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TUISuggestionCandidateCell *)self candidate];
    v6 = [v5 textSuggestion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (void)setStyle:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateBaseCell *)self style];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = TUISuggestionCandidateCell;
    [(TUICandidateBaseCell *)&v7 setStyle:v4];
    [(TUISuggestionCandidateCell *)self updateLabel];
  }
}

- (void)setCandidate:(id)a3
{
  v5 = a3;
  candidate = self->_candidate;
  if (candidate != v5)
  {
    v7 = v5;
    candidate = [candidate isEqual:v5];
    v5 = v7;
    if ((candidate & 1) == 0)
    {
      objc_storeStrong(&self->_candidate, a3);
      candidate = [(TUISuggestionCandidateCell *)self updateLabel];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](candidate, v5);
}

- (TUISuggestionCandidateCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUISuggestionCandidateCell;
  v3 = [(TUISuggestionCandidateCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUISuggestionCandidateCell *)v3 commonInit];
  }

  return v4;
}

- (TUISuggestionCandidateCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUISuggestionCandidateCell;
  v3 = [(TUICandidateBaseCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v6 = [(TUISuggestionCandidateCell *)self contentView];
  [v6 addSubview:self->_iconImageView];

  v7 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(TUISuggestionCandidateCell *)self bounds];
  v8 = [v7 initWithFrame:?];
  textLabel = self->_textLabel;
  self->_textLabel = v8;

  [(UILabel *)self->_textLabel setTextAlignment:1];
  [(UILabel *)self->_textLabel setNumberOfLines:0];
  [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(TUISuggestionCandidateCell *)self contentView];
  [v10 addSubview:self->_textLabel];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  paddedContainer = self->_paddedContainer;
  self->_paddedContainer = v11;

  v13 = [(TUISuggestionCandidateCell *)self contentView];
  [v13 addLayoutGuide:self->_paddedContainer];

  v14 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  centeredContainer = self->_centeredContainer;
  self->_centeredContainer = v14;

  v16 = [(TUISuggestionCandidateCell *)self contentView];
  [v16 addLayoutGuide:self->_centeredContainer];

  v17 = [(UILayoutGuide *)self->_paddedContainer topAnchor];
  v18 = [(TUISuggestionCandidateCell *)self contentView];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  topPaddingConstraint = self->_topPaddingConstraint;
  self->_topPaddingConstraint = v20;

  v22 = [(UILayoutGuide *)self->_paddedContainer leftAnchor];
  v23 = [(TUISuggestionCandidateCell *)self contentView];
  v24 = [v23 leftAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  leftPaddingConstraint = self->_leftPaddingConstraint;
  self->_leftPaddingConstraint = v25;

  v27 = [(TUISuggestionCandidateCell *)self contentView];
  v28 = [v27 bottomAnchor];
  v29 = [(UILayoutGuide *)self->_paddedContainer bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  bottomPaddingConstraint = self->_bottomPaddingConstraint;
  self->_bottomPaddingConstraint = v30;

  v32 = [(TUISuggestionCandidateCell *)self contentView];
  v33 = [v32 rightAnchor];
  v34 = [(UILayoutGuide *)self->_paddedContainer rightAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  rightPaddingConstraint = self->_rightPaddingConstraint;
  self->_rightPaddingConstraint = v35;

  [(NSLayoutConstraint *)self->_topPaddingConstraint setActive:1];
  [(NSLayoutConstraint *)self->_leftPaddingConstraint setActive:1];
  [(NSLayoutConstraint *)self->_bottomPaddingConstraint setActive:1];
  [(NSLayoutConstraint *)self->_rightPaddingConstraint setActive:1];
  v37 = [(UILayoutGuide *)self->_centeredContainer centerXAnchor];
  v38 = [(UILayoutGuide *)self->_paddedContainer centerXAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = [(UILayoutGuide *)self->_centeredContainer centerYAnchor];
  v41 = [(UILayoutGuide *)self->_paddedContainer centerYAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [(UIImageView *)self->_iconImageView leadingAnchor];
  v44 = [(UILayoutGuide *)self->_centeredContainer leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  v46 = [(UIImageView *)self->_iconImageView centerYAnchor];
  v47 = [(UILayoutGuide *)self->_centeredContainer centerYAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = [(UILabel *)self->_textLabel leadingAnchor];
  v50 = [(UIImageView *)self->_iconImageView trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  paddingBetweenConstraint = self->_paddingBetweenConstraint;
  self->_paddingBetweenConstraint = v51;

  [(NSLayoutConstraint *)self->_paddingBetweenConstraint setActive:1];
  v53 = [(UILabel *)self->_textLabel trailingAnchor];
  v54 = [(UILayoutGuide *)self->_centeredContainer trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
  [v55 setActive:1];

  v58 = [(UILabel *)self->_textLabel centerYAnchor];
  v56 = [(UILayoutGuide *)self->_centeredContainer centerYAnchor];
  v57 = [v58 constraintEqualToAnchor:v56];
  [v57 setActive:1];
}

@end