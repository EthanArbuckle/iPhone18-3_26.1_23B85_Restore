@interface PKFusedDoubleCellView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKFusedDoubleCellView)init;
- (PKFusedDoubleCellView)initWithFrame:(CGRect)a3;
- (double)_layoutLabelsSideBySide:(CGRect)a3 halfSize:(CGSize)a4 leftTitleSize:(CGSize)a5 leftDetailSize:(CGSize)a6 leftSubDetailSize:(CGSize)a7 disclosureSize:(CGSize)a8 disclosurePadding:(double)a9 rightSize:(CGSize)a10 rightTitleSize:(CGSize)a11 rightDetailSize:(CGSize)a12 rightSubDetailSize:(CGSize)a13 isTemplateLayout:(BOOL)a14;
- (double)_layoutLabelsStacked:(CGRect)a3 disclosureSize:(CGSize)a4 disclosurePadding:(double)a5 isTemplateLayout:(BOOL)a6;
- (id)_detailFont;
- (id)_titleFont;
- (void)_setupViews;
- (void)_updateContent:(BOOL)a3;
- (void)endUpdates:(BOOL)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEnableDisclosure:(BOOL)a3;
- (void)setLeftDetail:(id)a3;
- (void)setLeftDetailColor:(id)a3;
- (void)setLeftSubDetail:(id)a3;
- (void)setLeftSubDetailColor:(id)a3;
- (void)setLeftTitle:(id)a3;
- (void)setLeftTitleColor:(id)a3;
- (void)setPass:(id)a3;
- (void)setRightDetail:(id)a3;
- (void)setRightDetailColor:(id)a3;
- (void)setRightSubDetail:(id)a3;
- (void)setRightSubDetailColor:(id)a3;
- (void)setRightTitle:(id)a3;
- (void)setRightTitleColor:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKFusedDoubleCellView

- (PKFusedDoubleCellView)init
{
  v5.receiver = self;
  v5.super_class = PKFusedDoubleCellView;
  v2 = [(PKFusedDoubleCellView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKFusedDoubleCellView *)v2 _performInit];
  }

  return v3;
}

- (PKFusedDoubleCellView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKFusedDoubleCellView;
  v3 = [(PKFusedDoubleCellView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKFusedDoubleCellView *)v3 _performInit];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(UILabel *)self->_leftTitleView setText:0];
  [(UILabel *)self->_leftDetailView setText:0];
  [(UILabel *)self->_leftSubDetailView setText:0];
  [(UILabel *)self->_rightTitleView setText:0];
  [(UILabel *)self->_rightDetailView setText:0];
  [(UILabel *)self->_rightSubDetailView setText:0];
  [(UIView *)self->_separatorView setAlpha:0.0];
  disclosureView = self->_disclosureView;

  [(UIImageView *)disclosureView setAlpha:0.0];
}

- (void)_setupViews
{
  v31 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(UIView *)self pkui_setMaskType:3];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  leftTitleView = self->_leftTitleView;
  self->_leftTitleView = v8;

  v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  rightTitleView = self->_rightTitleView;
  self->_rightTitleView = v10;

  v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  leftDetailView = self->_leftDetailView;
  self->_leftDetailView = v12;

  v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  rightDetailView = self->_rightDetailView;
  self->_rightDetailView = v14;

  v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  leftSubDetailView = self->_leftSubDetailView;
  self->_leftSubDetailView = v16;

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  rightSubDetailView = self->_rightSubDetailView;
  self->_rightSubDetailView = v18;

  v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  separatorView = self->_separatorView;
  self->_separatorView = v20;

  v22 = self->_separatorView;
  v23 = [MEMORY[0x1E69DC888] separatorColor];
  [(UIView *)v22 setBackgroundColor:v23];

  [(UIView *)self->_separatorView setAlpha:0.0];
  v24 = objc_alloc(MEMORY[0x1E69DCAE0]);
  if (_UISolariumFeatureFlagEnabled())
  {
    PKUISmallChevronImage();
  }

  else
  {
    PKUIChevronImage();
  }
  v25 = ;
  v26 = [v24 initWithImage:{v25, 424}];
  disclosureView = self->_disclosureView;
  self->_disclosureView = v26;

  v28 = self->_disclosureView;
  v29 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v28 setTintColor:v29];

  [(UIImageView *)self->_disclosureView setAlpha:0.0];
  [*(&self->super.super.super.isa + v30) setAccessibilityIdentifier:@"PKFusedDoubleCellView.leftTitleView"];
  [(UILabel *)self->_rightTitleView setAccessibilityIdentifier:@"PKFusedDoubleCellView.rightTitleView"];
  [(UILabel *)self->_leftDetailView setAccessibilityIdentifier:@"PKFusedDoubleCellView.leftDetailView"];
  [(UILabel *)self->_rightDetailView setAccessibilityIdentifier:@"PKFusedDoubleCellView.rightDetailView"];
  [(UILabel *)self->_leftSubDetailView setAccessibilityIdentifier:@"PKFusedDoubleCellView.leftSubDetailView"];
  [(UILabel *)self->_rightSubDetailView setAccessibilityIdentifier:@"PKFusedDoubleCellView.rightSubDetailView"];
  [(PKFusedDoubleCellView *)self addSubview:*(&self->super.super.super.isa + v30)];
  [(PKFusedDoubleCellView *)self addSubview:self->_leftDetailView];
  [(PKFusedDoubleCellView *)self addSubview:self->_leftSubDetailView];
  [(PKFusedDoubleCellView *)self addSubview:self->_rightTitleView];
  [(PKFusedDoubleCellView *)self addSubview:self->_rightDetailView];
  [(PKFusedDoubleCellView *)self addSubview:self->_rightSubDetailView];
  [(PKFusedDoubleCellView *)self addSubview:self->_disclosureView];
  [(PKFusedDoubleCellView *)self addSubview:self->_separatorView];
  [(PKFusedDoubleCellView *)self setBackgroundColor:v31];
}

- (id)_titleFont
{
  titleFont = self->_titleFont;
  if (titleFont)
  {
    v3 = titleFont;
  }

  else
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  }

  return v3;
}

- (id)_detailFont
{
  v2 = PKUIGetMinScreenWidthType();
  v3 = 28.0;
  if (!v2)
  {
    v3 = 24.0;
  }

  v4 = PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC28], v3);
  v5 = *MEMORY[0x1E69DB958];

  return PKRoundedSystemFontOfSizeAndWeight(v4, v5);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKFusedDoubleCellView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKFusedDoubleCellView;
  [(PKFusedDoubleCellView *)&v3 layoutSubviews];
  [(PKFusedDoubleCellView *)self bounds];
  [(PKFusedDoubleCellView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  v4 = a4;
  y = a3.origin.y;
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  v7 = [(PKFusedDoubleCellView *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  v10 = _UISolariumFeatureFlagEnabled();
  _UISolariumFeatureFlagEnabled();
  v11 = 10.0;
  if (v10)
  {
    v11 = 16.0;
  }

  v53 = v11;
  v12 = 32.0;
  if (!v10)
  {
    v12 = 20.0;
  }

  v59 = width;
  v13 = width - v12;
  v14 = PKUIPixelLength();
  v58 = v13;
  v15 = v13 * 0.5 + -6.5;
  v16 = v14 * 0.5;
  v17 = v15 - v16;
  if (self->_leftTitle)
  {
    [(UILabel *)self->_leftTitleView sizeThatFits:v15 - v16, 3.40282347e38];
  }

  else
  {
    v18 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

  v49 = v19;
  v54 = v18;
  if (self->_leftDetail)
  {
    [(UILabel *)self->_leftDetailView sizeThatFits:v17, 3.40282347e38];
  }

  else
  {
    v20 = *MEMORY[0x1E695F060];
    v21 = *(MEMORY[0x1E695F060] + 8);
  }

  v48 = v21;
  v52 = v20;
  if (self->_leftSubDetail)
  {
    [(UILabel *)self->_leftSubDetailView sizeThatFits:v17, 3.40282347e38];
    v51 = v22;
    v47 = v23;
  }

  else
  {
    v51 = *MEMORY[0x1E695F060];
    v47 = *(MEMORY[0x1E695F060] + 8);
  }

  [(UIImageView *)self->_disclosureView alpha];
  if (v24 <= 0.0)
  {
    v26 = *MEMORY[0x1E695F060];
    v50 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [(UIImageView *)self->_disclosureView sizeThatFits:v17, 3.40282347e38];
    v26 = v25;
    v50 = v27;
  }

  if (v26 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 10.0;
  }

  if (self->_rightTitle)
  {
    [(UILabel *)self->_rightTitleView sizeThatFits:v17 - v26 + -10.0, 3.40282347e38];
    v30 = v29;
    v46 = v31;
  }

  else
  {
    v30 = *MEMORY[0x1E695F060];
    v46 = *(MEMORY[0x1E695F060] + 8);
  }

  if (self->_rightDetail)
  {
    [(UILabel *)self->_rightDetailView sizeThatFits:v17 - v26 + -10.0, 3.40282347e38];
    v33 = v32;
    v45 = v34;
  }

  else
  {
    v33 = *MEMORY[0x1E695F060];
    v45 = *(MEMORY[0x1E695F060] + 8);
  }

  if (self->_rightSubDetail)
  {
    [(UILabel *)self->_rightSubDetailView sizeThatFits:v17 - v26 + -10.0, 3.40282347e38];
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v36 = *MEMORY[0x1E695F060];
    v38 = *(MEMORY[0x1E695F060] + 8);
  }

  v39 = x + v53;
  v40 = y + 12.0;
  v41 = height + -24.0;
  if (fmax(v54, fmax(v52, v51)) > v17 || v28 + v26 + fmax(v30, fmax(v33, v36)) > v17 || IsAccessibilityCategory)
  {
    [(PKFusedDoubleCellView *)self _layoutLabelsStacked:v4 disclosureSize:v39 disclosurePadding:v40 isTemplateLayout:v58, v41, v26, v50, v28];
  }

  else
  {
    [(PKFusedDoubleCellView *)self _layoutLabelsSideBySide:v4 halfSize:v39 leftTitleSize:v40 leftDetailSize:v58 leftSubDetailSize:v41 disclosureSize:v17 disclosurePadding:3.40282347e38 rightSize:v54 rightTitleSize:v49 rightDetailSize:*&v52 rightSubDetailSize:v48 isTemplateLayout:*&v51, v47, *&v26, *&v50, *&v28, v17 - v26 + -10.0, 0x47EFFFFFE0000000, *&v30, v46, *&v33, v45, *&v36, v38];
  }

  v43 = v42 + 0.0 + 12.0 + 12.0;
  v44 = v59;
  result.height = v43;
  result.width = v44;
  return result;
}

- (double)_layoutLabelsSideBySide:(CGRect)a3 halfSize:(CGSize)a4 leftTitleSize:(CGSize)a5 leftDetailSize:(CGSize)a6 leftSubDetailSize:(CGSize)a7 disclosureSize:(CGSize)a8 disclosurePadding:(double)a9 rightSize:(CGSize)a10 rightTitleSize:(CGSize)a11 rightDetailSize:(CGSize)a12 rightSubDetailSize:(CGSize)a13 isTemplateLayout:(BOOL)a14
{
  width_low = LOBYTE(a6.width);
  rect = a3.size.height;
  height = a5.height;
  width = a3.size.width;
  amount = a4.width;
  y = a3.origin.y;
  v56 = a3.origin.y;
  x = a3.origin.x;
  v18 = [(PKFusedDoubleCellView *)self _shouldReverseLayoutDirection:*&a6.width];
  if (v18)
  {
    v19 = CGRectMinXEdge;
  }

  else
  {
    v19 = CGRectMaxXEdge;
  }

  if (v18)
  {
    v20 = CGRectMaxXEdge;
  }

  else
  {
    v20 = CGRectMinXEdge;
  }

  memset(&v72, 0, sizeof(v72));
  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = width;
  remainder.size.height = rect;
  v21 = fmax(height + a10.width + a11.width, fmax(v73 + v74 + v75, a12.width));
  v22 = PKUIPixelLength();
  memset(&slice, 0, sizeof(slice));
  v76.origin.x = x;
  v76.origin.y = v56;
  v76.size.width = width;
  v76.size.height = rect;
  CGRectDivide(v76, &slice, &remainder, amount, v20);
  CGRectDivide(remainder, &v72, &remainder, 6.5, v20);
  memset(&v69, 0, sizeof(v69));
  CGRectDivide(remainder, &v69, &remainder, v22, v20);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v69.origin.x = v23;
  v69.origin.y = v24;
  v69.size.width = v25;
  v69.size.height = v26;
  CGRectDivide(remainder, &v72, &remainder, 6.5, v20);
  memset(&v68, 0, sizeof(v68));
  CGRectDivide(remainder, &v68, &remainder, a11.height, v19);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v68.origin.x = v27;
  v68.origin.y = v28;
  v68.size.width = v29;
  v68.size.height = v30;
  CGRectDivide(remainder, &v72, &remainder, a12.height, v19);
  memset(&v67, 0, sizeof(v67));
  CGRectDivide(remainder, &v67, &remainder, a13.width, v19);
  memset(&v66, 0, sizeof(v66));
  CGRectDivide(slice, &v66, &slice, height, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v66.origin.x = v31;
  v66.origin.y = v32;
  v66.size.width = v33;
  v66.size.height = v34;
  memset(&v65, 0, sizeof(v65));
  CGRectDivide(slice, &v65, &slice, a10.width, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v65.origin.x = v35;
  v65.origin.y = v36;
  v65.size.width = v37;
  v65.size.height = v38;
  memset(&v64, 0, sizeof(v64));
  CGRectDivide(slice, &v64, &slice, a11.width, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v64.origin.x = v39;
  v64.origin.y = v40;
  v64.size.width = v41;
  v64.size.height = v42;
  memset(&v63, 0, sizeof(v63));
  CGRectDivide(v67, &v63, &v67, v73, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v63.origin.x = v43;
  v63.origin.y = v44;
  v63.size.width = v45;
  v63.size.height = v46;
  memset(&v62, 0, sizeof(v62));
  CGRectDivide(v67, &v62, &v67, v74, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v62.origin.x = v47;
  v62.origin.y = v48;
  v62.size.width = v49;
  v62.size.height = v50;
  memset(&v61, 0, sizeof(v61));
  CGRectDivide(v67, &v61, &v67, v75, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v61.origin.x = v51;
  v61.origin.y = v52;
  v61.size.width = v53;
  v61.size.height = v54;
  if ((width_low & 1) == 0)
  {
    [(UILabel *)self->_leftTitleView setFrame:v66.origin.x, v66.origin.y, v66.size.width, v66.size.height];
    [(UILabel *)self->_leftDetailView setFrame:v65.origin.x, v65.origin.y, v65.size.width, v65.size.height];
    [(UILabel *)self->_leftSubDetailView setFrame:v64.origin.x, v64.origin.y, v64.size.width, v64.size.height];
    [(UILabel *)self->_rightTitleView setFrame:v63.origin.x, v63.origin.y, v63.size.width, v63.size.height];
    [(UILabel *)self->_rightDetailView setFrame:v62.origin.x, v62.origin.y, v62.size.width, v62.size.height];
    [(UILabel *)self->_rightSubDetailView setFrame:v61.origin.x, v61.origin.y, v61.size.width, v61.size.height];
    [(UIView *)self->_separatorView setFrame:v69.origin.x, v69.origin.y, v69.size.width, v69.size.height];
    [(UIImageView *)self->_disclosureView setFrame:v68.origin.x, v68.origin.y, v68.size.width, v68.size.height];
  }

  return v21;
}

- (double)_layoutLabelsStacked:(CGRect)a3 disclosureSize:(CGSize)a4 disclosurePadding:(double)a5 isTemplateLayout:(BOOL)a6
{
  height = a4.height;
  width = a4.width;
  v8 = a3.size.height;
  v9 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = [(PKFusedDoubleCellView *)self _shouldReverseLayoutDirection:a3.origin.x];
  remainder.origin.x = x;
  remainder.origin.y = y;
  rect = y;
  if (v13)
  {
    v14 = CGRectMinXEdge;
  }

  else
  {
    v14 = CGRectMaxXEdge;
  }

  remainder.size.width = v9;
  remainder.size.height = v8;
  v64 = PKUIPixelLength();
  if (self->_leftTitle)
  {
    [(UILabel *)self->_leftTitleView sizeThatFits:v9, v8];
    v16 = v15;
  }

  else
  {
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  if (self->_leftDetail)
  {
    [(UILabel *)self->_leftDetailView sizeThatFits:v9, v8];
    v18 = v17;
  }

  else
  {
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  v67 = width;
  v19 = v9 - width;
  if (self->_leftSubDetail)
  {
    [(UILabel *)self->_leftSubDetailView sizeThatFits:v9, v8];
    v21 = v20;
  }

  else
  {
    v21 = *(MEMORY[0x1E695F060] + 8);
  }

  v22 = v19 + -10.0;
  if (self->_rightTitle)
  {
    [(UILabel *)self->_rightTitleView sizeThatFits:v22, v8];
    v65 = v23;
  }

  else
  {
    v65 = *(MEMORY[0x1E695F060] + 8);
  }

  if (self->_rightDetail)
  {
    [(UILabel *)self->_rightDetailView sizeThatFits:v22, v8];
    v66 = v24;
  }

  else
  {
    v66 = *(MEMORY[0x1E695F060] + 8);
  }

  if (self->_rightSubDetail)
  {
    [(UILabel *)self->_rightSubDetailView sizeThatFits:v22, v8];
    v26 = v25;
  }

  else
  {
    v26 = *(MEMORY[0x1E695F060] + 8);
  }

  memset(&v80, 0, sizeof(v80));
  v27 = v16 + v18 + v21;
  memset(&slice, 0, sizeof(slice));
  v81.origin.x = x;
  v81.origin.y = rect;
  v81.size.width = v9;
  v81.size.height = v8;
  CGRectDivide(v81, &slice, &remainder, v27, CGRectMinYEdge);
  memset(&v77, 0, sizeof(v77));
  CGRectDivide(slice, &v77, &slice, v16, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v77.origin.x = v28;
  v77.origin.y = v29;
  v77.size.width = v30;
  v77.size.height = v31;
  memset(&v76, 0, sizeof(v76));
  CGRectDivide(slice, &v76, &slice, v18, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v76.origin.x = v32;
  v76.origin.y = v33;
  v76.size.width = v34;
  v76.size.height = v35;
  memset(&v75, 0, sizeof(v75));
  CGRectDivide(slice, &v75, &slice, v21, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v75.origin.x = v36;
  v75.origin.y = v37;
  v75.size.width = v38;
  v75.size.height = v39;
  CGRectDivide(remainder, &v80, &remainder, 6.5, CGRectMinYEdge);
  memset(&v74, 0, sizeof(v74));
  CGRectDivide(remainder, &v74, &remainder, v64, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v74.origin.x = v40;
  v74.origin.y = v41;
  v74.size.width = v42;
  v74.size.height = v43;
  CGRectDivide(remainder, &v80, &remainder, 6.5, CGRectMinYEdge);
  v44 = v74.size.height;
  v45 = fmax(v65 + v66 + v26, height);
  memset(&v73, 0, sizeof(v73));
  CGRectDivide(remainder, &v73, &remainder, v45, CGRectMinYEdge);
  memset(&v72, 0, sizeof(v72));
  CGRectDivide(v73, &v72, &v73, v67, v14);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v72.origin.x = v46;
  v72.origin.y = v47;
  v72.size.width = v48;
  v72.size.height = v49;
  memset(&v71, 0, sizeof(v71));
  CGRectDivide(v73, &v71, &v73, v65, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v71.origin.x = v50;
  v71.origin.y = v51;
  v71.size.width = v52;
  v71.size.height = v53;
  memset(&v70, 0, sizeof(v70));
  CGRectDivide(v73, &v70, &v73, v66, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v70.origin.x = v54;
  v70.origin.y = v55;
  v70.size.width = v56;
  v70.size.height = v57;
  memset(&v69, 0, sizeof(v69));
  CGRectDivide(v73, &v69, &v73, v26, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v69.origin.x = v58;
  v69.origin.y = v59;
  v69.size.width = v60;
  v69.size.height = v61;
  if (!a6)
  {
    [(UILabel *)self->_leftTitleView setFrame:v77.origin.x, v77.origin.y, v77.size.width, v77.size.height];
    [(UILabel *)self->_leftDetailView setFrame:v76.origin.x, v76.origin.y, v76.size.width, v76.size.height];
    [(UILabel *)self->_leftSubDetailView setFrame:v75.origin.x, v75.origin.y, v75.size.width, v75.size.height];
    [(UILabel *)self->_rightTitleView setFrame:v71.origin.x, v71.origin.y, v71.size.width, v71.size.height];
    [(UILabel *)self->_rightDetailView setFrame:v70.origin.x, v70.origin.y, v70.size.width, v70.size.height];
    [(UILabel *)self->_rightSubDetailView setFrame:v69.origin.x, v69.origin.y, v69.size.width, v69.size.height];
    [(UIView *)self->_separatorView setFrame:v74.origin.x, v74.origin.y, v74.size.width, v74.size.height];
    [(UIImageView *)self->_disclosureView setFrame:v72.origin.x, v72.origin.y, v72.size.width, v72.size.height];
  }

  return v45 + v27 + 0.0 + 13.0 + v44;
}

- (void)setPass:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_pass, a3);
  }
}

- (void)setEnableDisclosure:(BOOL)a3
{
  if (self->_enableDisclosure != a3)
  {
    self->_enableDisclosure = a3;
  }
}

- (void)setLeftTitle:(id)a3
{
  v4 = a3;
  leftTitle = self->_leftTitle;
  v6 = v4;
  v10 = v6;
  if (leftTitle == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !leftTitle)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)leftTitle isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    leftTitle = self->_leftTitle;
    self->_leftTitle = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setLeftDetail:(id)a3
{
  v4 = a3;
  leftDetail = self->_leftDetail;
  v6 = v4;
  v10 = v6;
  if (leftDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !leftDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)leftDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    leftDetail = self->_leftDetail;
    self->_leftDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setLeftSubDetail:(id)a3
{
  v4 = a3;
  leftSubDetail = self->_leftSubDetail;
  v6 = v4;
  v10 = v6;
  if (leftSubDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !leftSubDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)leftSubDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    leftSubDetail = self->_leftSubDetail;
    self->_leftSubDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setRightTitle:(id)a3
{
  v4 = a3;
  rightTitle = self->_rightTitle;
  v6 = v4;
  v10 = v6;
  if (rightTitle == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !rightTitle)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)rightTitle isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    rightTitle = self->_rightTitle;
    self->_rightTitle = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setRightDetail:(id)a3
{
  v4 = a3;
  rightDetail = self->_rightDetail;
  v6 = v4;
  v10 = v6;
  if (rightDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !rightDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)rightDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    rightDetail = self->_rightDetail;
    self->_rightDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setRightSubDetail:(id)a3
{
  v4 = a3;
  rightSubDetail = self->_rightSubDetail;
  v6 = v4;
  v10 = v6;
  if (rightSubDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !rightSubDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)rightSubDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    rightSubDetail = self->_rightSubDetail;
    self->_rightSubDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setLeftTitleColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leftTitleColor, a3);
  }
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, a3);
  }
}

- (void)setLeftDetailColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leftDetailColor, a3);
  }
}

- (void)setLeftSubDetailColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leftSubDetailColor, a3);
  }
}

- (void)setRightTitleColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rightTitleColor, a3);
  }
}

- (void)setRightDetailColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rightDetailColor, a3);
  }
}

- (void)setRightSubDetailColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rightSubDetailColor, a3);
  }
}

- (void)endUpdates:(BOOL)a3
{
  v3 = self->_deferUpdateCounter - 1;
  self->_deferUpdateCounter = v3;
  if (!v3)
  {
    [(PKFusedDoubleCellView *)self _updateContent:a3];
  }
}

- (void)_updateContent:(BOOL)a3
{
  if (!self->_deferUpdateCounter)
  {
    v4 = a3;
    v32 = [(PKFusedDoubleCellView *)self _titleFont];
    v6 = [(PKFusedDoubleCellView *)self _detailFont];
    v7 = [(PKFusedDoubleCellView *)self _subDetailFont];
    [(UILabel *)self->_leftTitleView setFont:v32];
    leftTitleView = self->_leftTitleView;
    leftTitle = self->_leftTitle;
    leftTitleColor = self->_leftTitleColor;
    if (leftTitleColor)
    {
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftTitleView, self->_leftTitle, leftTitleColor, 0, v4);
    }

    else
    {
      v11 = [MEMORY[0x1E69DC888] labelColor];
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftTitleView, leftTitle, v11, 0, v4);
    }

    [(UILabel *)self->_rightTitleView setFont:v32];
    rightTitleView = self->_rightTitleView;
    rightTitle = self->_rightTitle;
    rightTitleColor = self->_rightTitleColor;
    if (rightTitleColor)
    {
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightTitleView, self->_rightTitle, rightTitleColor, 0, v4);
    }

    else
    {
      v15 = [MEMORY[0x1E69DC888] labelColor];
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightTitleView, rightTitle, v15, 0, v4);
    }

    [(UILabel *)self->_leftDetailView setFont:v6];
    [(UILabel *)self->_leftDetailView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_leftDetailView setMinimumScaleFactor:0.5];
    leftDetailView = self->_leftDetailView;
    leftDetail = self->_leftDetail;
    leftDetailColor = self->_leftDetailColor;
    if (leftDetailColor)
    {
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftDetailView, self->_leftDetail, leftDetailColor, 1, v4);
    }

    else
    {
      v19 = [MEMORY[0x1E69DC888] labelColor];
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftDetailView, leftDetail, v19, 1, v4);
    }

    [(UILabel *)self->_rightDetailView setFont:v6];
    [(UILabel *)self->_rightDetailView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_rightDetailView setMinimumScaleFactor:0.5];
    rightDetailView = self->_rightDetailView;
    rightDetail = self->_rightDetail;
    rightDetailColor = self->_rightDetailColor;
    if (rightDetailColor)
    {
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightDetailView, self->_rightDetail, rightDetailColor, 1, v4);
    }

    else
    {
      v23 = [MEMORY[0x1E69DC888] labelColor];
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightDetailView, rightDetail, v23, 1, v4);
    }

    if (self->_leftSubDetail)
    {
      [(UILabel *)self->_leftSubDetailView setFont:v7];
      leftSubDetailView = self->_leftSubDetailView;
      leftSubDetail = self->_leftSubDetail;
      leftSubDetailColor = self->_leftSubDetailColor;
      if (leftSubDetailColor)
      {
        __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftSubDetailView, leftSubDetail, leftSubDetailColor, 0, v4);
      }

      else
      {
        v27 = [MEMORY[0x1E69DC888] labelColor];
        __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftSubDetailView, leftSubDetail, v27, 0, v4);
      }
    }

    if (self->_rightSubDetail)
    {
      [(UILabel *)self->_rightSubDetailView setFont:v7];
      rightSubDetailView = self->_rightSubDetailView;
      rightSubDetail = self->_rightSubDetail;
      rightSubDetailColor = self->_rightSubDetailColor;
      if (rightSubDetailColor)
      {
        __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightSubDetailView, rightSubDetail, rightSubDetailColor, 0, v4);
      }

      else
      {
        v31 = [MEMORY[0x1E69DC888] labelColor];
        __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightSubDetailView, rightSubDetail, v31, 0, v4);
      }
    }

    __45__PKAdjustableSingleCellView__updateContent___block_invoke(self->_disclosureView, self->_enableDisclosure, v4);
    __45__PKAdjustableSingleCellView__updateContent___block_invoke(self->_separatorView, 1u, v4);
    [(PKFusedDoubleCellView *)self setNeedsLayout];
    if (v4)
    {
      [(PKFusedDoubleCellView *)self layoutIfNeeded];
    }

    [(PKFusedDoubleCellView *)self setNeedsLayout];
  }
}

void __40__PKFusedDoubleCellView__updateContent___block_invoke_2(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v9 = a1;
  if (v9)
  {
    if (a3)
    {
      v19 = v9;
      v10 = a3;
      [v19 setText:a2];
      [v19 setTextColor:v10];

      [v19 setLineBreakMode:0];
      [v19 setNumberOfLines:a4];
      v9 = v19;
      if (a5)
      {
        v11 = [v19 layer];
        v12 = v11;
        if (a2)
        {
          v13 = 1.0;
        }

        else
        {
          v13 = 0.0;
        }

        [v11 opacity];
        v15 = v14;
        if (v13 != v14)
        {
          v16 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
          [v16 pkui_updateForAdditiveAnimationFromScalar:v15 toScalar:v13];
          v17 = [v12 pkui_addAdditiveAnimation:v16];

          v18 = 0.0;
          if (a2)
          {
            *&v18 = 1.0;
          }

          [v12 setOpacity:v18];
        }

        v9 = v19;
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKFusedDoubleCellView;
  [(PKFusedDoubleCellView *)&v12 traitCollectionDidChange:v4];
  v5 = [(PKFusedDoubleCellView *)self traitCollection];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [v4 preferredContentSizeCategory];
      v8 = [v6 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(v7, v8);

      if (v9)
      {
        v10 = [v4 preferredContentSizeCategory];
        v11 = *MEMORY[0x1E69DDC90];

        if (v10 != v11)
        {
          [(PKFusedDoubleCellView *)self _updateContent:0];
        }
      }
    }
  }
}

@end