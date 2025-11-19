@interface PKPassHeaderView
- ($B0D7179037C8EDE3CE00C7FA70DE5BDA)passSizeInfoForHeight:(SEL)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPassHeaderView)initWithPass:(id)a3 rendererState:(id)a4;
- (PKPassHeaderViewDelegate)delegate;
- (id)_primaryTextColor;
- (id)_secondaryTextColor;
- (void)_passLibraryDidChange:(id)a3;
- (void)_resetFonts;
- (void)_updateContent;
- (void)_updateTextContent;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setExpiredPass:(BOOL)a3;
- (void)setPass:(id)a3;
- (void)setPeerPaymentAccount:(id)a3;
- (void)setPrimaryTextColor:(id)a3;
- (void)setRendererState:(id)a3;
- (void)setSecondaryTextColor:(id)a3;
- (void)setShowModificationDate:(BOOL)a3;
- (void)setSmall:(BOOL)a3;
- (void)setSuppressedContent:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateModifiedDate;
- (void)updateShadow:(double)a3;
@end

@implementation PKPassHeaderView

- (PKPassHeaderView)initWithPass:(id)a3 rendererState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = PKPassHeaderView;
  v9 = [(PKPassHeaderView *)&v38 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    v37 = v8;
    objc_storeStrong(&v9->_pass, a3);
    objc_storeStrong(&v10->_rendererState, a4);
    *&v10->_contentInsets.top = StandardContentInsets;
    *&v10->_contentInsets.bottom = unk_1BE116608;
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    if ([(PKPass *)v10->_pass isRemotePass])
    {
      [v11 addObserver:v10 selector:sel__passLibraryDidChange_ name:*MEMORY[0x1E69BBBD8] object:0];
    }

    else
    {
      v12 = [(PKPass *)v10->_pass dataAccessor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_remoteDataAccessor, v12);
        v13 = *MEMORY[0x1E69BBBD8];
        v14 = [(PKRemoteDataAccessor *)v10->_remoteDataAccessor library];
        [v11 addObserver:v10 selector:sel__passLibraryDidChange_ name:v13 object:v14];
      }
    }

    v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
    passMaskView = v10->_passMaskView;
    v10->_passMaskView = v15;

    v17 = MEMORY[0x1E69DCAB8];
    v18 = PKPassKitUIBundle();
    v19 = [v17 imageNamed:@"CardDetail_PassPocket" inBundle:v18];

    v20 = [v19 imageWithAlignmentRectInsets:{0.0, 15.0, 0.0, 15.0}];

    v21 = [v20 pkui_resizableImageByTilingCenterPixel];

    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v21];
    maskShadow = v10->_maskShadow;
    v10->_maskShadow = v22;

    v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v10->_title;
    v10->_title = v24;

    [(UILabel *)v10->_title setNumberOfLines:2];
    v26 = v10->_title;
    v27 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v26 setBackgroundColor:v27];

    v28 = v10->_title;
    v29 = [(PKPassHeaderView *)v10 _primaryTextColor];
    [(UILabel *)v28 setTextColor:v29];

    [(UILabel *)v10->_title setMinimumScaleFactor:0.6];
    [(UILabel *)v10->_title setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v10->_title setLineBreakMode:4];
    [(UILabel *)v10->_title setTextAlignment:1];
    [(UILabel *)v10->_title setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v30 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitle = v10->_subtitle;
    v10->_subtitle = v30;

    [(UILabel *)v10->_subtitle setMinimumScaleFactor:0.6];
    [(UILabel *)v10->_subtitle setAdjustsFontSizeToFitWidth:1];
    v32 = v10->_subtitle;
    v33 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v32 setBackgroundColor:v33];

    v34 = v10->_subtitle;
    v35 = [(PKPassHeaderView *)v10 _secondaryTextColor];
    [(UILabel *)v34 setTextColor:v35];

    [(UILabel *)v10->_subtitle setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKPassHeaderView *)v10 _resetFonts];
    [(UIView *)v10->_passMaskView addSubview:v10->_maskShadow];
    [(PKPassHeaderView *)v10 addSubview:v10->_passMaskView];
    [(PKPassHeaderView *)v10 addSubview:v10->_title];
    [(PKPassHeaderView *)v10 addSubview:v10->_subtitle];
    [(PKPassHeaderView *)v10 _updateContent];
    [(PKPassHeaderView *)v10 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];

    v8 = v37;
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPassHeaderView;
  [(PKPassHeaderView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v75.receiver = self;
  v75.super_class = PKPassHeaderView;
  [(PKPassHeaderView *)&v75 layoutSubviews];
  [(PKPassHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  memset(&slice, 0, sizeof(slice));
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  v11 = v3 + left;
  v12 = v6 + top;
  v13 = v8 - (left + self->_contentInsets.right);
  v15 = v14 - (top + self->_contentInsets.bottom);
  remainder.origin.x = v3 + left;
  remainder.origin.y = v6 + top;
  remainder.size.width = v13;
  remainder.size.height = v15;
  sx = 0.0;
  v70 = 0u;
  *amount = 0u;
  [(PKPassHeaderView *)self passSizeInfoForHeight:self->passImageHeight];
  [(UIView *)self->_passMaskView setFrame:v4 + -44.0, v6 + -44.0, v8 + 88.0, self->_contentInsets.top + 44.0 + 0.0];
  if ([(UIView *)self->_passMaskView clipsToBounds:0])
  {
    [(UIView *)self->_passMaskView setClipsToBounds:0];
  }

  [(UIImageView *)self->_maskShadow setAlpha:0];
  v16 = [(PKPassView *)self->_passView layer];
  CATransform3DMakeScale(&v69, sx, sx, 1.0);
  [v16 setTransform:&v69];
  [v16 bounds];
  v18 = v17;
  v68 = v19;
  [v16 anchorPoint];
  v21 = v20;
  v23 = v22;
  v76.origin.x = v11;
  v76.origin.y = v12;
  v76.size.width = v13;
  v76.size.height = v15;
  CGRectDivide(v76, &slice, &remainder, amount[1], CGRectMinYEdge);
  PKSizeAlignedInRect();
  v25 = *&v24;
  v27 = *&v26;
  v29 = v28;
  v31 = v30;
  v32.n128_f64[0] = sx;
  v33.n128_f64[0] = v24 + 44.0 + v21 * v18 * sx;
  v34.n128_f64[0] = v26 + 44.0 + v23 * v68 * sx;
  PKPointRoundToPixel(v33, v34, v32);
  [v16 setPosition:?];
  [(UIImageView *)self->_maskShadow pkui_alignmentRect];
  v35.n128_u64[0] = v25;
  v36.n128_u64[0] = v27;
  v37.n128_u64[0] = v29;
  v38.n128_u64[0] = v31;
  PKRectRoundToPixel(v35, v36, v37, v38, v39);
  PKSizeAlignedInRect();
  [(UIImageView *)self->_maskShadow pkui_setAlignmentRect:v40 + 44.0, v41 + 44.0];
  v42 = [(UILabel *)self->_title font];
  [v42 _bodyLeading];
  v44 = v43;

  v45 = [(UILabel *)self->_subtitle font];
  [v45 _bodyLeading];
  v47 = v46;

  v48.n128_f64[0] = v44 * 0.2682;
  PKFloatFloorToPixel(v48, v49);
  CGRectDivide(remainder, &slice, &remainder, v50, CGRectMinYEdge);
  [(UILabel *)self->_title minimumScaleFactor];
  v52 = v51;
  [(UILabel *)self->_title pkui_sizeThatFits:1 forceWordWrap:remainder.size.width / v51, remainder.size.height / v51];
  v55.n128_f64[0] = fmax(fmin(fmin(remainder.size.width / v53, 1.0), fmin(remainder.size.height / v54, 1.0)), v52);
  v56.n128_f64[0] = v53 * v55.n128_f64[0];
  v57.n128_f64[0] = v54 * v55.n128_f64[0];
  PKSizeCeilToPixel(v56, v57, v55);
  CGRectDivide(remainder, &slice, &remainder, v58, CGRectMinYEdge);
  title = self->_title;
  PKSizeAlignedInRect();
  [(UILabel *)title setFrame:?];
  v60 = [(UILabel *)self->_subtitle text];
  v61 = [v60 length];

  if (v61)
  {
    v62.n128_f64[0] = v47 * 0.1111;
    PKFloatFloorToPixel(v62, v63);
    CGRectDivide(remainder, &slice, &remainder, v64, CGRectMinYEdge);
    [(UILabel *)self->_subtitle pkui_sizeThatFits:remainder.size.width, remainder.size.height];
    CGRectDivide(remainder, &slice, &remainder, v65, CGRectMinYEdge);
    subtitle = self->_subtitle;
    PKSizeAlignedInRect();
    [(UILabel *)subtitle setFrame:?];
  }

  v62.n128_f64[0] = v44 * 0.1219;
  PKFloatFloorToPixel(v62, v63);
  CGRectDivide(remainder, &slice, &remainder, v67, CGRectMinYEdge);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  self->passImageHeight = a3.height;
  [(PKPassHeaderView *)self passSizeInfoForHeight:a3.height, 0, 0, 0];
  v6 = [(UILabel *)self->_title font];
  [v6 _bodyLeading];
  v8 = v7;

  v9 = [(UILabel *)self->_subtitle font];
  [v9 _bodyLeading];
  v11 = v10;

  bottom = self->_contentInsets.bottom;
  v13 = width - self->_contentInsets.left - self->_contentInsets.right + -12.0;
  v14 = height - self->_contentInsets.top - bottom;
  v15.n128_u64[0] = 0;
  v16 = self->_contentInsets.top + bottom + 0.0;
  v17.n128_f64[0] = v8 * 0.2682;
  PKFloatFloorToPixel(v17, v15);
  v19 = v16 + v18;
  [(UILabel *)self->_title minimumScaleFactor];
  v21 = v20;
  [(UILabel *)self->_title pkui_sizeThatFits:1 forceWordWrap:v13 / v20, v14 / v20];
  v24.n128_f64[0] = fmax(fmin(fmin(v13 / v22, 1.0), fmin(v13 / v23, 1.0)), v21);
  v25.n128_f64[0] = v22 * v24.n128_f64[0];
  v26.n128_f64[0] = v23 * v24.n128_f64[0];
  PKSizeCeilToPixel(v25, v26, v24);
  v28 = v19 + v27;
  v29 = [(UILabel *)self->_subtitle text];
  v30 = [v29 length];

  if (v30)
  {
    v31.n128_f64[0] = v11 * 0.1111;
    PKFloatFloorToPixel(v31, v32);
    v34 = v28 + v33;
    [(UILabel *)self->_subtitle pkui_sizeThatFits:1 forceWordWrap:v13, v14];
    v28 = v34 + v32.n128_f64[0];
  }

  v31.n128_f64[0] = v8 * 0.1219;
  PKFloatFloorToPixel(v31, v32);
  v36 = self->_contentInsets.top + v28 + v35 + self->_contentInsets.bottom;
  v37 = width;
  result.height = v36;
  result.width = v37;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassHeaderView;
  [(PKPassHeaderView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKPassHeaderView *)self traitCollection];
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
        [(PKPassHeaderView *)self _resetFonts];
      }
    }
  }
}

- (void)updateShadow:(double)a3
{
  v5 = [(PKPassView *)self->_passView layer];
  v4 = fmin(fmax(a3, 0.0), 1.0) * 0.25;
  *&v4 = v4;
  [v5 setShadowOpacity:v4];
}

- ($B0D7179037C8EDE3CE00C7FA70DE5BDA)passSizeInfoForHeight:(SEL)a3
{
  [(PKPassView *)self->_passView sizeOfFront];
  v8 = v7;
  v10 = v9;
  v11 = [(UIView *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
  v12 = 116.0;
  if (v11)
  {
    v12 = 128.0;
  }

  v13 = v12 / v8;
  v14 = floor(v10 * v13);
  retstr->var0.width = v12;
  retstr->var0.height = v14;
  v15 = fmin(v14, a4);
  retstr->var1.width = v12;
  retstr->var1.height = v15;
  retstr->var2 = v13;
  [(PKPass *)self->_pass thumbnailRect];
  v17 = CGRectGetMaxY(v18) * v13 + 1.0;
  if (v15 < v17)
  {
    retstr->var1.height = v17;
  }

  return result;
}

- (void)_updateContent
{
  passView = self->_passView;
  if (passView)
  {
    v4 = [(PKPassView *)passView layer];
    [v4 shadowOpacity];
    v6 = v5;

    v7 = self->_passView;
    if (v7)
    {
      v16 = v7;
      [(PKPassView *)self->_passView removeFromSuperview];
      v8 = self->_passView;
      self->_passView = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v6 = 0.25;
  }

  suppressedContent = self->_suppressedContent;
  if (self->_rendererState && !PKIsLowEndDevice())
  {
    v10 = 1527;
  }

  else
  {
    v10 = 2039;
  }

  v11 = [[PKPassView alloc] initWithPass:self->_pass content:4 suppressedContent:suppressedContent | v10 rendererState:self->_rendererState];
  v12 = self->_passView;
  self->_passView = v11;

  [(PKPassView *)self->_passView setUserInteractionEnabled:0];
  [(PKPassView *)self->_passView setModallyPresented:1];
  [(PKPassView *)self->_passView setPaused:1];
  [(PKPassView *)self->_passView sizeToFit];
  v13 = [(PKPassView *)self->_passView layer];
  [v13 setShouldRasterize:1];
  [v13 setRasterizationScale:PKUIScreenScale()];
  v14 = [MEMORY[0x1E69DC888] blackColor];
  [v13 setShadowColor:{objc_msgSend(v14, "CGColor")}];

  *&v15 = v6;
  [v13 setShadowOpacity:v15];
  [v13 setShadowOffset:{0.0, 12.0}];
  [v13 setShadowRadius:18.0];
  [(UIView *)self->_passMaskView insertSubview:self->_passView belowSubview:self->_maskShadow];
  [(PKPassHeaderView *)self _updateTextContent];
  [(PKPassHeaderView *)self setNeedsLayout];
}

- (void)_updateTextContent
{
  if ([(PKPass *)self->_pass passType]== PKPassTypeSecureElement)
  {
    pass = self->_pass;
  }

  else
  {
    pass = 0;
  }

  v17 = pass;
  title = self->_title;
  v5 = [(PKPass *)self->_pass localizedDescription];
  [(UILabel *)title setText:v5];

  if (v17)
  {
    if ([(PKPass *)self->_pass passType]== PKPassTypeSecureElement)
    {
      v6 = PKPassTypeDisplayStringForPaymentPass();
    }

    else
    {
      v6 = 0;
    }

    [(UILabel *)self->_subtitle setText:v6];
    subtitle = self->_subtitle;
    v10 = [(PKPassHeaderView *)self _secondaryTextColor];
    [(UILabel *)subtitle setTextColor:v10];

    [(UILabel *)self->_subtitle sizeToFit];
LABEL_16:

    goto LABEL_17;
  }

  if (self->_showModificationDate)
  {
    v6 = [(PKPass *)self->_pass modifiedDate];
    if (v6)
    {
      v7 = PKRelativeDateString();
      v8 = PKLocalizedString(&cfstr_LastUpdatedFor.isa, &stru_1F3BD5BF0.isa, v7);
    }

    else
    {
      v8 = 0;
    }

    [(UILabel *)self->_subtitle setText:v8];
    v15 = self->_subtitle;
    v16 = [(PKPassHeaderView *)self _secondaryTextColor];
    [(UILabel *)v15 setTextColor:v16];

    [(UILabel *)self->_subtitle sizeToFit];
    goto LABEL_16;
  }

  if (self->_expiredPass)
  {
    v11 = self->_subtitle;
    v12 = [MEMORY[0x1E69DC888] systemRedColor];
    [(UILabel *)v11 setTextColor:v12];

    v13 = self->_subtitle;
    v14 = PKLocalizedString(&cfstr_NfcPassExpired.isa);
    [(UILabel *)v13 setText:v14];

    [(UILabel *)self->_subtitle sizeToFit];
  }

LABEL_17:
  [(PKPassHeaderView *)self setNeedsLayout];
}

- (void)_resetFonts
{
  title = self->_title;
  v4 = *MEMORY[0x1E69DDC38];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC38], 0x8000, 0, *MEMORY[0x1E69DB980]);
  [(UILabel *)title setFont:v5];

  subtitle = self->_subtitle;
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v4, 0x8000, 0);
  [(UILabel *)subtitle setFont:v7];

  [(PKPassHeaderView *)self setNeedsLayout];
}

- (void)updateModifiedDate
{
  if (self->_subtitle)
  {
    v5 = [(PKPass *)self->_pass modifiedDate];
    if (v5)
    {
      v3 = PKRelativeDateString();
      v4 = PKLocalizedString(&cfstr_LastUpdatedFor.isa, &stru_1F3BD5BF0.isa, v3);
    }

    else
    {
      v4 = 0;
    }

    [(UILabel *)self->_subtitle setText:v4];
    [(UILabel *)self->_subtitle sizeToFit];
    [(PKPassHeaderView *)self setNeedsLayout];
  }
}

- (void)_passLibraryDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__PKPassHeaderView__passLibraryDidChange___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __42__PKPassHeaderView__passLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 496) isRemotePass];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 496);
  if (v5)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v7 = [*(a1 + 40) object];

    if (v7)
    {
      return;
    }

    v4 = *(a1 + 32);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PKPassHeaderView__passLibraryDidChange___block_invoke_2;
  aBlock[3] = &unk_1E8021248;
  aBlock[4] = v4;
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 32);
  if (v3 && (v10 = *(v9 + 560)) != 0)
  {
    v11 = [*(v9 + 496) passTypeIdentifier];
    v12 = [*(*(a1 + 32) + 496) serialNumber];
    v13 = [v10 passWithPassTypeIdentifier:v11 serialNumber:v12];
  }

  else
  {
    v11 = [*(v9 + 408) library];
    v12 = [*(*(a1 + 32) + 496) passTypeIdentifier];
    v14 = [*(*(a1 + 32) + 496) serialNumber];
    v13 = [v11 passWithPassTypeIdentifier:v12 serialNumber:v14];
  }

  v8[2](v8, v13);
}

void __42__PKPassHeaderView__passLibraryDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v7 = v4;
  if (v4)
  {
    if ([*(v5 + 496) isEqualToPassIncludingMetadata:v4])
    {
      goto LABEL_6;
    }

    objc_storeStrong((*(a1 + 32) + 496), a2);
    [*(a1 + 32) _updateContent];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 552));
    [WeakRetained passHeaderViewDidChangePass:*(a1 + 32)];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v5 + 552));
    [WeakRetained passHeaderViewPassWasDeleted:*(a1 + 32)];
  }

LABEL_6:
}

- (void)setPeerPaymentAccount:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_peerPaymentAccount, a3);
    [(PKPassHeaderView *)self _updateTextContent];
  }
}

- (void)setRendererState:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rendererState, a3);
    [(PKPassHeaderView *)self _updateContent];
  }
}

- (void)setSuppressedContent:(unint64_t)a3
{
  if (self->_suppressedContent != a3)
  {
    self->_suppressedContent = a3;
    [(PKPassView *)self->_passView setSuppressedContent:a3 | 0x7F7];
  }
}

- (void)setShowModificationDate:(BOOL)a3
{
  if (self->_showModificationDate == !a3)
  {
    self->_showModificationDate = a3;
    [(PKPassHeaderView *)self _updateTextContent];
  }
}

- (void)setExpiredPass:(BOOL)a3
{
  if (self->_expiredPass == !a3)
  {
    self->_expiredPass = a3;
    [(PKPassHeaderView *)self _updateTextContent];
  }
}

- (id)_primaryTextColor
{
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v3 = primaryTextColor;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v3;
}

- (id)_secondaryTextColor
{
  secondaryTextColor = self->_secondaryTextColor;
  if (secondaryTextColor)
  {
    v3 = secondaryTextColor;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  return v3;
}

- (void)setPrimaryTextColor:(id)a3
{
  v5 = a3;
  if (self->_primaryTextColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_primaryTextColor, a3);
    v6 = [(PKPassHeaderView *)self _primaryTextColor];
    [(UILabel *)self->_title setTextColor:v6];

    v5 = v7;
  }
}

- (void)setSecondaryTextColor:(id)a3
{
  v5 = a3;
  if (self->_secondaryTextColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_secondaryTextColor, a3);
    v6 = [(PKPassHeaderView *)self _secondaryTextColor];
    [(UILabel *)self->_subtitle setTextColor:v6];

    v5 = v7;
  }
}

- (void)setSmall:(BOOL)a3
{
  if (self->_small == !a3)
  {
    self->_small = a3;
    if (a3)
    {
      v3 = &SmallContentInsets;
    }

    else
    {
      v3 = &StandardContentInsets;
    }

    v4 = v3[1];
    *&self->_contentInsets.top = *v3;
    *&self->_contentInsets.bottom = v4;
    [(PKPassHeaderView *)self _resetFonts];
  }
}

- (void)setPass:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToPassIncludingMetadata:self->_pass] & 1) == 0)
  {
    objc_storeStrong(&self->_pass, a3);
    [(PKPassHeaderView *)self _updateContent];
  }
}

- (PKPassHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end