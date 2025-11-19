@interface WALegibilityLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)textColor;
- (WALegibilityLabel)initWithCoder:(id)a3;
- (WALegibilityLabel)initWithFrame:(CGRect)a3;
- (WALegibilityLabel)initWithSettings:(id)a3 strength:(double)a4;
- (WALegibilityLabel)initWithSettings:(id)a3 strength:(double)a4 text:(id)a5 font:(id)a6 options:(int64_t)a7;
- (double)_layoutGuideOffsetFromBottom:(id)a3;
- (double)firstBaselineOffsetFromBottom;
- (double)lastBaselineOffsetFromBottom;
- (void)_updateLabelForLegibilitySettings;
- (void)_updateLegibilityView;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setMinimumScaleFactor:(double)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)updateConstraints;
@end

@implementation WALegibilityLabel

- (WALegibilityLabel)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:{0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v5 = [(WALegibilityLabel *)self initWithSettings:v4 strength:*MEMORY[0x277D774E0]];

  return v5;
}

- (WALegibilityLabel)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"WALegibilityLabel.m" lineNumber:50 description:@"Not supported"];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(WALegibilityLabel *)self initWithFrame:v6, v7, v8, v9];
}

- (WALegibilityLabel)initWithSettings:(id)a3 strength:(double)a4
{
  v6 = MEMORY[0x277D74300];
  v7 = a3;
  [v6 systemFontSize];
  v8 = [v6 systemFontOfSize:?];
  v9 = [(WALegibilityLabel *)self initWithSettings:v7 strength:0 text:v8 font:a4];

  return v9;
}

- (WALegibilityLabel)initWithSettings:(id)a3 strength:(double)a4 text:(id)a5 font:(id)a6 options:(int64_t)a7
{
  v75[4] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v73.receiver = self;
  v73.super_class = WALegibilityLabel;
  v16 = *MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v18 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *(MEMORY[0x277CBF3A0] + 24);
  v20 = [(WALegibilityLabel *)&v73 initWithFrame:*MEMORY[0x277CBF3A0], v17, v18, v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_legibilitySettings, a3);
    v21->_strength = a4;
    v22 = [v14 copy];
    text = v21->_text;
    v21->_text = v22;

    objc_storeStrong(&v21->_font, a6);
    v21->_options = a7;
    v24 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v16, v17, v18, v19}];
    v72 = v13;
    lookasideLabel = v21->_lookasideLabel;
    v21->_lookasideLabel = v24;

    [(UILabel *)v21->_lookasideLabel setHidden:1];
    [(UILabel *)v21->_lookasideLabel setText:v21->_text];
    [(UILabel *)v21->_lookasideLabel setFont:v21->_font];
    [(UILabel *)v21->_lookasideLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WALegibilityLabel *)v21 addSubview:v21->_lookasideLabel];
    v58 = MEMORY[0x277CCAAD0];
    v68 = [(UILabel *)v21->_lookasideLabel topAnchor];
    v66 = [(WALegibilityLabel *)v21 topAnchor];
    v64 = [v68 constraintEqualToAnchor:v66];
    v75[0] = v64;
    v62 = [(UILabel *)v21->_lookasideLabel leadingAnchor];
    v60 = [(WALegibilityLabel *)v21 leadingAnchor];
    [v62 constraintEqualToAnchor:v60];
    v26 = v70 = v15;
    v75[1] = v26;
    v27 = [(UILabel *)v21->_lookasideLabel widthAnchor];
    v28 = [(WALegibilityLabel *)v21 widthAnchor];
    [v27 constraintEqualToAnchor:v28];
    v29 = v71 = v14;
    v75[2] = v29;
    v30 = [(UILabel *)v21->_lookasideLabel heightAnchor];
    v31 = [(WALegibilityLabel *)v21 heightAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v75[3] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:4];
    [v58 activateConstraints:v33];

    v34 = objc_alloc_init(MEMORY[0x277D756D0]);
    firstBaselineLayoutGuide = v21->_firstBaselineLayoutGuide;
    v21->_firstBaselineLayoutGuide = v34;

    [(WALegibilityLabel *)v21 addLayoutGuide:v21->_firstBaselineLayoutGuide];
    v36 = objc_alloc_init(MEMORY[0x277D756D0]);
    lastBaselineLayoutGuide = v21->_lastBaselineLayoutGuide;
    v21->_lastBaselineLayoutGuide = v36;

    [(WALegibilityLabel *)v21 addLayoutGuide:v21->_lastBaselineLayoutGuide];
    v55 = MEMORY[0x277CCAAD0];
    v69 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide topAnchor];
    v67 = [(UILabel *)v21->_lookasideLabel firstBaselineAnchor];
    v65 = [v69 constraintEqualToAnchor:v67];
    v74[0] = v65;
    v63 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide heightAnchor];
    v61 = [v63 constraintEqualToConstant:0.0];
    v74[1] = v61;
    v59 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide leadingAnchor];
    v57 = [(WALegibilityLabel *)v21 leadingAnchor];
    v56 = [v59 constraintEqualToAnchor:v57];
    v74[2] = v56;
    v54 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide trailingAnchor];
    v53 = [(WALegibilityLabel *)v21 trailingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v74[3] = v52;
    v51 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide topAnchor];
    v50 = [(UILabel *)v21->_lookasideLabel lastBaselineAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v74[4] = v49;
    v38 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide heightAnchor];
    v39 = [v38 constraintEqualToConstant:0.0];
    v74[5] = v39;
    v40 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide leadingAnchor];
    v41 = [(WALegibilityLabel *)v21 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v74[6] = v42;
    v43 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide trailingAnchor];
    v44 = [(WALegibilityLabel *)v21 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    v74[7] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:8];
    [v55 activateConstraints:v46];

    v15 = v70;
    v14 = v71;

    v13 = v72;
    [(WALegibilityLabel *)v21 _markOurselfDirty];
  }

  v47 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)setAttributedText:(id)a3
{
  v4 = [a3 copy];
  attributedText = self->_attributedText;
  self->_attributedText = v4;

  [(UILabel *)self->_lookasideLabel setAttributedText:self->_attributedText];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  text = self->_text;
  self->_text = v4;

  [(UILabel *)self->_lookasideLabel setText:self->_text];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (UIColor)textColor
{
  textColorOverride = self->_textColorOverride;
  if (textColorOverride)
  {
    v3 = textColorOverride;
  }

  else
  {
    v3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  }

  return v3;
}

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColorOverride, a3);
  v5 = a3;
  [(UILabel *)self->_lookasideLabel setTextColor:self->_textColorOverride];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setFont:(id)a3
{
  objc_storeStrong(&self->_font, a3);
  v5 = a3;
  [(UILabel *)self->_lookasideLabel setFont:v5];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setNumberOfLines:(int64_t)a3
{
  [(UILabel *)self->_lookasideLabel setNumberOfLines:a3];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setMinimumScaleFactor:(double)a3
{
  [(UILabel *)self->_lookasideLabel setMinimumScaleFactor:a3];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (double)firstBaselineOffsetFromBottom
{
  [(WALegibilityLabel *)self layoutIfNeeded];
  firstBaselineLayoutGuide = self->_firstBaselineLayoutGuide;

  [(WALegibilityLabel *)self _layoutGuideOffsetFromBottom:firstBaselineLayoutGuide];
  return result;
}

- (double)lastBaselineOffsetFromBottom
{
  [(WALegibilityLabel *)self layoutIfNeeded];
  lastBaselineLayoutGuide = self->_lastBaselineLayoutGuide;

  [(WALegibilityLabel *)self _layoutGuideOffsetFromBottom:lastBaselineLayoutGuide];
  return result;
}

- (void)updateConstraints
{
  v31[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = WALegibilityLabel;
  [(WALegibilityLabel *)&v29 updateConstraints];
  legibilityView = self->_legibilityView;
  if (legibilityView)
  {
    v24 = [(_UILegibilityView *)legibilityView leadingAnchor];
    v23 = [(WALegibilityLabel *)self leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v31[0] = v22;
    v21 = [(_UILegibilityView *)self->_legibilityView trailingAnchor];
    v4 = [(WALegibilityLabel *)self trailingAnchor];
    v5 = [v21 constraintEqualToAnchor:v4];
    v31[1] = v5;
    v6 = [(_UILegibilityView *)self->_legibilityView bottomAnchor];
    v7 = [(WALegibilityLabel *)self lastBaselineAnchor];
    [(UILabel *)self->_lookasideLabel _baselineOffsetFromBottom];
    v8 = [v6 constraintEqualToAnchor:v7 constant:?];
    v31[2] = v8;
    v9 = [(_UILegibilityView *)self->_legibilityView topAnchor];
    v10 = [(WALegibilityLabel *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v31[3] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v12;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v14)
    {
      v16 = v14;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v13);
          }

          LODWORD(v15) = 1144750080;
          [*(*(&v25 + 1) + 8 * v18++) setPriority:v15];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
    legibilityConstraints = self->_legibilityConstraints;
    self->_legibilityConstraints = v13;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(WALegibilityLabel *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = WALegibilityLabel;
  [(WALegibilityLabel *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UILabel *)self->_lookasideLabel setNeedsLayout];
    [(WALegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(WALegibilityLabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = WALegibilityLabel;
  [(WALegibilityLabel *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UILabel *)self->_lookasideLabel setNeedsLayout];
    [(WALegibilityLabel *)self _markOurselfDirty];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_lookasideLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WALegibilityLabel;
  [(WALegibilityLabel *)&v3 layoutSubviews];
  if (self->_isDirty)
  {
    self->_isDirty = 0;
    [(WALegibilityLabel *)self _updateLegibilityView];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  objc_storeStrong(&self->_legibilitySettings, a3);

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (double)_layoutGuideOffsetFromBottom:(id)a3
{
  v4 = a3;
  [(WALegibilityLabel *)self bounds];
  v6 = v5;
  v8 = v7;
  [v4 layoutFrame];
  v10 = v9;

  return v6 + v8 - v10;
}

- (void)_updateLabelForLegibilitySettings
{
  v3 = [(UILabel *)self->_lookasideLabel attributedText];
  v7 = [v3 mutableCopy];

  v4 = [v7 length];
  v5 = [(WALegibilityLabel *)self textColor];
  v6 = *MEMORY[0x277D740C0];
  if (v5)
  {
    [v7 addAttribute:v6 value:v5 range:{0, v4}];
  }

  else
  {
    [v7 removeAttribute:v6 range:{0, v4}];
  }

  [(UILabel *)self->_lookasideLabel setAttributedText:v7];
}

- (void)_updateLegibilityView
{
  [(WALegibilityLabel *)self _updateLabelForLegibilitySettings];
  [(WALegibilityLabel *)self bounds];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v4 = _UIGraphicsDrawIntoImageContextWithOptions();

  legibilityConstraints = self->_legibilityConstraints;
  self->_legibilityConstraints = 0;

  [(_UILegibilityView *)self->_legibilityView removeFromSuperview];
  legibilityView = self->_legibilityView;
  self->_legibilityView = 0;

  v7 = [objc_alloc(MEMORY[0x277D760B8]) initWithSettings:self->_legibilitySettings strength:v4 image:0 shadowImage:self->_options options:self->_strength];
  v8 = self->_legibilityView;
  self->_legibilityView = v7;

  [(_UILegibilityView *)self->_legibilityView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WALegibilityLabel *)self addSubview:self->_legibilityView];
  [(WALegibilityLabel *)self setNeedsUpdateConstraints];
}

@end