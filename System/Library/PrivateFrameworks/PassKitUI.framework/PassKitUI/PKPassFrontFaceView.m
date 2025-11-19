@interface PKPassFrontFaceView
- (CGRect)barcodeFrame;
- (CGSize)contentSize;
- (PKPassFrontFaceView)initWithStyle:(int64_t)a3;
- (id)_rebucketAuxiliaryFields:(id)a3;
- (id)createContactlessLogoView;
- (id)createExpiredLabel;
- (id)fetchRelevantBuckets;
- (id)passFaceTemplate;
- (id)templateForHeaderBucket;
- (void)_positionBarcodeView;
- (void)createBodyContentViews;
- (void)createHeaderContentViews;
- (void)insertContentView:(id)a3 ofType:(int64_t)a4;
- (void)layoutSubviews;
- (void)setBottomRightItem:(int64_t)bottomRightItem;
- (void)setPassState:(id)a3;
- (void)setRelevancyActive:(BOOL)a3;
- (void)setShowsBarcodeView:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsLinkedApp:(BOOL)a3;
- (void)updateValidity;
@end

@implementation PKPassFrontFaceView

- (id)passFaceTemplate
{
  v3 = [(PKPassFaceView *)self pass];
  v4 = [v3 displayProfile];
  v5 = -[PKPassFrontFaceView templateForLayoutMode:](self, "templateForLayoutMode:", [v4 layoutMode]);

  return v5;
}

- (void)createBodyContentViews
{
  v22.receiver = self;
  v22.super_class = PKPassFrontFaceView;
  [(PKPassFaceView *)&v22 createBodyContentViews];
  v3 = [(PKPassFaceView *)self pass];
  v4 = [v3 style];
  v5 = [v3 barcode];
  if (v5 && (v4 - 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = [(PKPassFaceView *)self faceTemplate];
    [v6 barcodeBottomInset];
    if (v7 == 0.0 || (v4 - 9) <= 1)
    {
    }

    else
    {
      showsBarcodeView = self->_showsBarcodeView;

      if (showsBarcodeView)
      {
        barcodeView = self->_barcodeView;
        if (!barcodeView)
        {
          v10 = [[PKBarcodeStickerView alloc] initWithBarcode:v5 validityState:[PKBarcodeStickerView passStyle:"validityStateForPass:" validityStateForPass:v3], v4];
          v11 = self->_barcodeView;
          self->_barcodeView = v10;

          v12 = [v3 altImage];
          if (v12)
          {
            v13 = self->_barcodeView;
            v14 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v12];
            [(PKBarcodeStickerView *)v13 setAltImage:v14];
          }

          [(PKBarcodeStickerView *)self->_barcodeView sizeToFit];
          [(PKBarcodeStickerView *)self->_barcodeView setAlpha:1.0];
          [(PKBarcodeStickerView *)self->_barcodeView layoutIfNeeded];

          barcodeView = self->_barcodeView;
        }

        [(PKPassFrontFaceView *)self insertContentView:barcodeView ofType:2];
      }
    }
  }

  else if (v4 == 6)
  {
    goto LABEL_23;
  }

  if (self->_showsLinkedApp && [v3 linksToApp])
  {
    linkedApp = self->_linkedApp;
    if (linkedApp)
    {
      v16 = 0;
    }

    else
    {
      v16 = (v4 - 9) >= 2;
    }

    if (v16)
    {
      v17 = [[PKLinkedApplication alloc] initWithPass:v3];
      [(PKLinkedApplication *)v17 setUseSmallIcon:1];
      v18 = [[PKLinkedAppIconView alloc] initWithLinkedApplication:v17];
      v19 = self->_linkedApp;
      self->_linkedApp = v18;

      v20 = [(PKLinkedAppIconView *)self->_linkedApp layer];
      v21 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v21 scale];
      [v20 setRasterizationScale:?];

      linkedApp = self->_linkedApp;
    }

    [(PKPassFrontFaceView *)self insertContentView:linkedApp ofType:2];
  }

LABEL_23:
}

- (id)fetchRelevantBuckets
{
  v3 = [(PKPassFaceView *)self pass];
  v4 = [v3 frontFieldBuckets];

  v5 = [(PKPassFaceView *)self pass];
  v6 = [v5 style];

  if (v6 == 8 || v6 == 2)
  {
    v7 = [(PKPassFrontFaceView *)self _rebucketAuxiliaryFields:v4];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = PKPassFrontFaceView;
  [(PKPassFaceView *)&v53 layoutSubviews];
  v3 = [(PKPassFaceView *)self contentView];
  [v3 bounds];
  v49 = v4;
  v50 = v5;
  v51 = v7;
  v52 = v6;
  [(PKPassFaceView *)self style];
  PKPassFaceLogoRect();
  if (self->_logoLabel)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (!CGRectIsNull(*&v8))
    {
      v16 = [(PKPassFaceView *)self pass];
      [v16 logoRect];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v54.origin.x = v18;
      v54.origin.y = v20;
      v54.size.width = v22;
      rect = v24;
      v54.size.height = v24;
      v25 = v12;
      if (!CGRectIsNull(v54))
      {
        v55.origin.x = v18;
        v55.origin.y = v20;
        v55.size.width = v22;
        v55.size.height = rect;
        v25 = CGRectGetMaxX(v55) + 8.0;
      }

      [(UILabel *)self->_logoLabel sizeToFit];
      [(UILabel *)self->_logoLabel frame];
      UIRectCenteredYInRect();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v56.origin.x = v12;
      v56.origin.y = v13;
      v56.size.width = v14;
      v56.size.height = v15;
      [(UILabel *)self->_logoLabel setFrame:v27, v29, CGRectGetMaxX(v56) - v25, v31];
    }
  }

  if (self->_showsLinkedApp)
  {
    [(PKLinkedAppIconView *)self->_linkedApp intrinsicContentSize];
    v33 = v32;
    v35 = v34;
    v57.origin.x = v49;
    v57.origin.y = v52;
    v57.size.height = v50;
    v57.size.width = v51;
    [(PKLinkedAppIconView *)self->_linkedApp setFrame:v49 + 7.0, CGRectGetMaxY(v57) - (v35 + 7.0), v33, v35];
  }

  bottomRightItemView = self->_bottomRightItemView;
  if (bottomRightItemView)
  {
    [(UIView *)bottomRightItemView frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v58.origin.x = v49;
    v58.origin.y = v52;
    v58.size.width = v51;
    v58.size.height = v50;
    MaxX = CGRectGetMaxX(v58);
    v59.origin.x = v38;
    v59.origin.y = v40;
    v59.size.width = v42;
    v59.size.height = v44;
    v46 = MaxX - (CGRectGetWidth(v59) + 7.0);
    v60.origin.x = v49;
    v60.origin.y = v52;
    v60.size.width = v51;
    v60.size.height = v50;
    MaxY = CGRectGetMaxY(v60);
    v61.origin.x = v46;
    v61.origin.y = v40;
    v61.size.width = v42;
    v61.size.height = v44;
    [(UIView *)self->_bottomRightItemView setFrame:v46, MaxY - (CGRectGetHeight(v61) + 7.0), v42, v44];
  }

  [(PKPassFrontFaceView *)self _positionBarcodeView];
}

- (void)_positionBarcodeView
{
  if (self->_barcodeView)
  {
    v3 = [(PKPassFaceView *)self contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    barcodeView = self->_barcodeView;
    v13 = [(PKPassFrontFaceView *)self passFaceTemplate];
    [v13 barcodeMaxSize];
    [(PKBarcodeStickerView *)barcodeView sizeThatFits:?];

    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    CGRectGetMaxY(v17);
    v14 = [(PKPassFaceView *)self faceTemplate];
    [v14 barcodeBottomInset];

    v15 = self->_barcodeView;
    UIRectCenteredXInRect();

    [(PKBarcodeStickerView *)v15 setFrame:?];
  }
}

- (void)createHeaderContentViews
{
  v18.receiver = self;
  v18.super_class = PKPassFrontFaceView;
  [(PKPassFaceView *)&v18 createHeaderContentViews];
  v3 = [(PKPassFaceView *)self style];
  v4 = [(PKPassFaceView *)self pass];
  v5 = [v4 logoText];

  if (v5)
  {
    PKPassFaceLogoRect();
    if (!CGRectIsEmpty(v19) && (v3 - 9) >= 2)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      logoLabel = self->_logoLabel;
      self->_logoLabel = v6;

      v8 = self->_logoLabel;
      v9 = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v8 setBackgroundColor:v9];

      v10 = [(PKPassFaceView *)self colorProfile];
      v11 = [v10 isLight];
      v12 = MEMORY[0x1E695DF90];
      v13 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
      if (v11)
      {
        [v10 foregroundAttributesForFont:v13];
      }

      else
      {
        [v10 labelAttributesForFont:v13];
      }
      v14 = ;
      v15 = [v12 dictionaryWithDictionary:v14];

      v16 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v16 setLineBreakMode:4];
      [v16 setAlignment:0];
      [v15 setObject:v16 forKey:*MEMORY[0x1E69DB688]];
      v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v15];
      [(UILabel *)self->_logoLabel setAttributedText:v17];
      [(PKPassFrontFaceView *)self insertContentView:self->_logoLabel ofType:0];
    }
  }
}

- (CGSize)contentSize
{
  v2 = [(PKPassFaceView *)self pass];
  [v2 style];
  PKPassFrontFaceContentSize();
  v4 = v3;
  v6 = v5;
  if (([v2 hasValidNFCPayload] & 1) != 0 || objc_msgSend(v2, "supportsIssuerBinding"))
  {
    if (PKValueAddedServicesEnabled())
    {
      if (([v2 isValid] & 1) != 0 || (objc_msgSend(v2, "barcode"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
      {
        PKPassHeightAdjustmentForStyle();
        v6 = v6 - v8;
      }
    }
  }

  v9 = v4;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

- (PKPassFrontFaceView)initWithStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = PKPassFrontFaceView;
  result = [(PKPassFaceView *)&v4 initWithStyle:a3];
  if (result)
  {
    result->_bottomRightItem = 0;
    result->_showsLinkedApp = 1;
    result->_showsBarcodeView = 1;
  }

  return result;
}

- (void)updateValidity
{
  v3 = [(PKPassFrontFaceView *)self barcodeView];
  v4 = [(PKPassFaceView *)self pass];
  [v3 setValidity:{+[PKBarcodeStickerView validityStateForPass:](PKBarcodeStickerView, "validityStateForPass:", v4)}];

  [(PKPassFrontFaceView *)self _positionBarcodeView];
}

- (void)setPassState:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassFrontFaceView;
  v4 = a3;
  [(PKPassFaceView *)&v7 setPassState:v4];
  v5 = [v4 relevancyModel];

  v6 = [v5 isRelevancyActive];
  [(PKPassFrontFaceView *)self setRelevancyActive:v6];
}

- (void)insertContentView:(id)a3 ofType:(int64_t)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = PKPassFrontFaceView;
  [(PKPassFaceView *)&v8 insertContentView:v6 ofType:a4];
  if (self->_linkedApp == v6 || self->_bottomRightItemView == v6)
  {
    v7 = [(PKLinkedAppIconView *)v6 superview];
    [v7 bringSubviewToFront:v6];
  }
}

- (void)setShowsLinkedApp:(BOOL)a3
{
  if (self->_showsLinkedApp == !a3)
  {
    self->_showsLinkedApp = a3;
    [(PKLinkedAppIconView *)self->_linkedApp setHidden:?];
    if (self->_linkedApp)
    {
      if (self->_showsLinkedApp)
      {

        [PKPassFrontFaceView insertContentView:"insertContentView:ofType:" ofType:?];
      }

      else
      {

        [PKPassFaceView removeContentView:"removeContentView:ofType:" ofType:?];
      }
    }
  }
}

- (void)setBottomRightItem:(int64_t)bottomRightItem
{
  if (self->_bottomRightItem == bottomRightItem)
  {
    return;
  }

  self->_bottomRightItem = bottomRightItem;
  if (self->_bottomRightItemView)
  {
    [(PKPassFaceView *)self removeContentView:self->_bottomRightItemView ofType:2];
    bottomRightItemView = self->_bottomRightItemView;
    self->_bottomRightItemView = 0;

    bottomRightItem = self->_bottomRightItem;
  }

  if (bottomRightItem == 2)
  {
    v5 = [(PKPassFrontFaceView *)self createExpiredLabel];
  }

  else
  {
    if (bottomRightItem != 1)
    {
      goto LABEL_9;
    }

    v5 = [(PKPassFrontFaceView *)self createContactlessLogoView];
  }

  v6 = self->_bottomRightItemView;
  self->_bottomRightItemView = v5;

LABEL_9:
  v7 = self->_bottomRightItemView;
  if (v7)
  {
    [(PKPassFrontFaceView *)self insertContentView:v7 ofType:2];

    [(PKPassFrontFaceView *)self setNeedsLayout];
  }
}

- (void)setShowsBarcodeView:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsBarcodeView == !a3)
  {
    v4 = a4;
    self->_showsBarcodeView = a3;
    if (a3 && !self->_barcodeView)
    {
      [(PKPassFrontFaceView *)self createBodyContentViews];
    }

    if (self->_barcodeView)
    {
      if (self->_showsBarcodeView)
      {
        [PKPassFrontFaceView insertContentView:"insertContentView:ofType:" ofType:?];
      }

      v6 = 0.2;
      if (!v4)
      {
        v6 = 0.0;
      }

      v7[4] = self;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __52__PKPassFrontFaceView_setShowsBarcodeView_animated___block_invoke;
      v8[3] = &unk_1E8010970;
      v8[4] = self;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __52__PKPassFrontFaceView_setShowsBarcodeView_animated___block_invoke_2;
      v7[3] = &unk_1E8011D28;
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:v7 completion:v6];
    }
  }
}

uint64_t __52__PKPassFrontFaceView_setShowsBarcodeView_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if (*(v1 + 929))
  {
    v2 = 1.0;
  }

  return [*(v1 + 912) setAlpha:v2];
}

uint64_t __52__PKPassFrontFaceView_setShowsBarcodeView_animated___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 929) & 1) == 0)
  {
    return [result removeContentView:*(result + 912) ofType:2];
  }

  return result;
}

- (void)setRelevancyActive:(BOOL)a3
{
  if (self->_relevancyActive != a3)
  {
    self->_relevancyActive = a3;
  }
}

- (id)_rebucketAuxiliaryFields:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v4 lastObject];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([v13 row] == 1)
          {
            v14 = v7;
          }

          else
          {
            v14 = v6;
          }

          [v14 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v15 = [(PKPassFaceView *)self pass];
    v16 = [v15 frontFieldBuckets];
    v17 = [v16 mutableCopy];

    [v17 removeLastObject];
    [v17 addObject:v6];
    [v17 addObject:v7];
    v5 = [v17 copy];
  }

  else
  {
    v5 = [v4 copy];
  }

  return v5;
}

- (id)createContactlessLogoView
{
  if (([(PKPassFaceView *)self style]- 9) >= 2)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"ContactlessLogo" withExtension:@"pdf"];

    v6 = PKUIScreenScale();
    v7 = PKUIImageFromPDF(v5, 21.0, 24.0, v6);
    v8 = [v7 imageWithRenderingMode:2];

    v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    [v3 setContentMode:1];
    [v3 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 21.0, 24.0}];
    v9 = [(PKPassFaceView *)self colorProfile];
    v10 = [v9 foregroundColor];
    [v3 setTintColor:v10];

    [v3 setAlpha:0.7];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)createExpiredLabel
{
  if (([(PKPassFaceView *)self style]- 9) >= 2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC30]);
    [v3 setFont:v4];

    v5 = PKLocalizedString(&cfstr_NfcPassExpired.isa);
    [v3 setText:v5];

    [v3 setTextAlignment:2];
    v6 = [(PKPassFaceView *)self colorProfile];
    v7 = [v6 foregroundColor];
    [v3 setTextColor:v7];

    [v3 sizeToFit];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)templateForHeaderBucket
{
  [(PKPassFaceView *)self style];
  PKPassFrontFaceContentSize();
  v3 = v2;
  v4 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v4 setBucketAlignment:1];
  [(PKPassBucketTemplate *)v4 setBucketRect:v3 + -15.0 + -115.0, 10.0, 115.0, 40.0];
  [(PKPassBucketTemplate *)v4 setMinFieldPadding:16.0];
  [(PKPassBucketTemplate *)v4 setMaxFields:3];
  v5 = [(PKPassBucketTemplate *)v4 defaultFieldTemplate];
  v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [v5 setLabelFont:v6];

  v7 = [(PKPassBucketTemplate *)v4 defaultFieldTemplate];
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:21.0];
  [v7 setValueFont:v8];

  v9 = [(PKPassBucketTemplate *)v4 defaultFieldTemplate];
  [v9 setTextAlignment:2];

  v10 = [(PKPassBucketTemplate *)v4 defaultFieldTemplate];
  [v10 setVerticalPadding:-3.0];

  return v4;
}

- (CGRect)barcodeFrame
{
  barcodeView = self->_barcodeView;
  if (barcodeView)
  {
    [(PKBarcodeStickerView *)barcodeView frame];
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end