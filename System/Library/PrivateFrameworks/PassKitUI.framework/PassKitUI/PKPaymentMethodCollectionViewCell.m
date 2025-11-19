@interface PKPaymentMethodCollectionViewCell
- (void)configureWithItem:(id)a3 style:(unint64_t)a4 delegate:(id)a5;
@end

@implementation PKPaymentMethodCollectionViewCell

- (void)configureWithItem:(id)a3 style:(unint64_t)a4 delegate:(id)a5
{
  v59[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 paymentPass];
  v11 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v12 = [v11 textProperties];
  v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  [v12 setFont:v13];

  if (v10)
  {
    [v10 localizedDescription];
  }

  else
  {
    v14 = [v11 textProperties];
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v14 setColor:v15];

    [v8 paymentMethodName];
  }
  v16 = ;
  [v11 setText:v16];

  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    [v11 setDirectionalLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    v17 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v18 = MEMORY[0x1E69DC628];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __70__PKPaymentMethodCollectionViewCell_configureWithItem_style_delegate___block_invoke;
    v50[3] = &unk_1E8016230;
    v19 = v8;
    v51 = v19;
    v52 = v17;
    v53 = v9;
    v20 = v17;
    v21 = [v18 actionWithHandler:v50];
    [v20 addAction:v21 forControlEvents:4096];

    [v20 setOn:{objc_msgSend(v19, "isSelected")}];
    v22 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v20 placement:1];
    [v22 setMaintainsFixedSize:1];
    v59[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
    [(PKPaymentMethodCollectionViewCell *)self setAccessories:v23];

    goto LABEL_9;
  }

  [v11 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  if ([v8 isSelected])
  {
    v20 = objc_alloc_init(MEMORY[0x1E69DC788]);
    v58 = v20;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    [(PKPaymentMethodCollectionViewCell *)self setAccessories:v24];

LABEL_9:
    goto LABEL_11;
  }

  [(PKPaymentMethodCollectionViewCell *)self setAccessories:MEMORY[0x1E695E0F0]];
LABEL_11:
  v25 = [v8 balance];
  if (v25)
  {
    v26 = [objc_alloc(MEMORY[0x1E69655F0]) initWithShape:0];
    [v26 setScale:2];
    [v26 setStyle:1];
    v27 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    [v26 setColor:v27];

    v28 = *MEMORY[0x1E69655D0];
    v57[0] = v26;
    v29 = *MEMORY[0x1E69DB650];
    v56[0] = v28;
    v56[1] = v29;
    v30 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v57[1] = v30;
    v56[2] = *MEMORY[0x1E69DB648];
    v31 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    v57[2] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

    v33 = [v25 formattedStringValue];
    v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v33 attributes:v32];
    [v11 setSecondaryAttributedText:v34];
  }

  else
  {
    v54[0] = *MEMORY[0x1E69DB650];
    v35 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v54[1] = *MEMORY[0x1E69DB648];
    v55[0] = v35;
    v36 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    v55[1] = v36;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];

    v37 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v10)
    {
      v38 = PKSanitizedPrimaryAccountRepresentationForPass();
      v32 = [v37 initWithString:v38 attributes:v26];

      [v11 setSecondaryAttributedText:v32];
    }

    else
    {
      v39 = PKDeviceSpecificLocalizedStringKeyForKey(@"PASS_DETAILS_AUTO_RELOAD_PAYMENT_METHOD_NOT_ON_THIS_DEVICE", 0);
      v40 = PKLocalizedPaymentString(v39);
      v32 = [v37 initWithString:v40 attributes:v26];

      [v11 setSecondaryAttributedText:v32];
      [(PKPaymentMethodCollectionViewCell *)self setUserInteractionEnabled:0];
    }
  }

  PKPassFrontFaceContentSize();
  if (v10)
  {
    v41 = [[PKPassView alloc] initWithPass:v10 content:4 suppressedContent:1911];
    [(PKPassView *)v41 setModallyPresented:1];
    [(PKPassView *)v41 setPaused:1];
    PKFloatRoundToPixel();
    v43 = [(PKPassView *)v41 snapshotOfFrontFaceWithRequestedSize:60.0, v42];
    [v11 setImage:v43];
  }

  else
  {
    v44 = MEMORY[0x1E69B8950];
    PKFloatRoundToPixel();
    v41 = [v44 constraintsWithMaxSize:{60.0, v45}];
    v46 = MEMORY[0x1E69B8948];
    v47 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v43 = [v46 imageNamed:@"PlaceholderCardArt_Large" inBundle:v47];

    v48 = [v43 resizedImageWithConstraints:v41];
    v49 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v48];
    [v11 setImage:v49];
  }

  [(PKPaymentMethodCollectionViewCell *)self setContentConfiguration:v11];
}

uint64_t __70__PKPaymentMethodCollectionViewCell_configureWithItem_style_delegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelected:{objc_msgSend(*(a1 + 40), "isOn")}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 paymentMethodCellDidToggleItem:v3];
}

@end