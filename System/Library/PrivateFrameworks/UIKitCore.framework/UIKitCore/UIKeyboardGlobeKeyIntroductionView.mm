@interface UIKeyboardGlobeKeyIntroductionView
- (UIKeyboardGlobeKeyIntroductionView)initWithFrame:(CGRect)frame completion:(id)completion;
- (void)continueButtonTapped;
- (void)layoutSubviews;
@end

@implementation UIKeyboardGlobeKeyIntroductionView

- (UIKeyboardGlobeKeyIntroductionView)initWithFrame:(CGRect)frame completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  completionCopy = completion;
  v46.receiver = self;
  v46.super_class = UIKeyboardGlobeKeyIntroductionView;
  height = [(UIView *)&v46 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(UIKeyboardGlobeKeyIntroductionView *)height setCompletionBlock:completionCopy];
    [(UIView *)v11 setUserInteractionEnabled:1];
    [(UIView *)v11 setAutoresizingMask:18];
    _inheritedRenderConfig = [(UIView *)v11 _inheritedRenderConfig];
    v13 = -[_UIBackdropView initWithStyle:]([_UIBackdropView alloc], "initWithStyle:", [_inheritedRenderConfig backdropStyle]);
    [(UIKeyboardGlobeKeyIntroductionView *)v11 setBackdropView:v13];

    backdropView = [(UIKeyboardGlobeKeyIntroductionView *)v11 backdropView];
    [(UIView *)v11 addSubview:backdropView];

    v15 = _UILocalizedStringInSystemLanguage(@"Quickly Change Keyboards", @"Quickly Change Keyboards");
    v16 = _UILocalizedStringInSystemLanguage(@"Continue", @"Continue");
    if ([_inheritedRenderConfig lightKeyboard])
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v17 = ;
    v18 = [UILabel alloc];
    v19 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = [(UILabel *)v18 initWithFrame:*MEMORY[0x1E695F058], v20, v21, v22];
    [(UIKeyboardGlobeKeyIntroductionView *)v11 setTitleLabel:v23];

    titleLabel = [(UIKeyboardGlobeKeyIntroductionView *)v11 titleLabel];
    [titleLabel setTextColor:v17];

    titleLabel2 = [(UIKeyboardGlobeKeyIntroductionView *)v11 titleLabel];
    [titleLabel2 setTextAlignment:1];

    titleLabel3 = [(UIKeyboardGlobeKeyIntroductionView *)v11 titleLabel];
    [titleLabel3 setText:v15];

    titleLabel4 = [(UIKeyboardGlobeKeyIntroductionView *)v11 titleLabel];
    [(UIView *)v11 addSubview:titleLabel4];

    v28 = [[UITextView alloc] initWithFrame:v19, v20, v21, v22];
    [(UIKeyboardGlobeKeyIntroductionView *)v11 setDescriptionLabel:v28];

    descriptionLabel = [(UIKeyboardGlobeKeyIntroductionView *)v11 descriptionLabel];
    [descriptionLabel setTextColor:v17];

    v30 = +[UIColor clearColor];
    descriptionLabel2 = [(UIKeyboardGlobeKeyIntroductionView *)v11 descriptionLabel];
    [descriptionLabel2 setBackgroundColor:v30];

    descriptionLabel3 = [(UIKeyboardGlobeKeyIntroductionView *)v11 descriptionLabel];
    [descriptionLabel3 setEditable:0];

    descriptionLabel4 = [(UIKeyboardGlobeKeyIntroductionView *)v11 descriptionLabel];
    [descriptionLabel4 setTextAlignment:1];

    descriptionLabel5 = [(UIKeyboardGlobeKeyIntroductionView *)v11 descriptionLabel];
    [descriptionLabel5 setUserInteractionEnabled:0];

    descriptionLabel6 = [(UIKeyboardGlobeKeyIntroductionView *)v11 descriptionLabel];
    [(UIView *)v11 addSubview:descriptionLabel6];

    v36 = [[UIButton alloc] initWithFrame:v19, v20, v21, v22];
    [(UIKeyboardGlobeKeyIntroductionView *)v11 setContinueButton:v36];

    continueButton = [(UIKeyboardGlobeKeyIntroductionView *)v11 continueButton];
    [continueButton setTitle:v16 forState:0];

    continueButton2 = [(UIKeyboardGlobeKeyIntroductionView *)v11 continueButton];
    v39 = +[UIColor linkColor];
    [continueButton2 setTitleColor:v39 forState:0];

    continueButton3 = [(UIKeyboardGlobeKeyIntroductionView *)v11 continueButton];
    v41 = +[UIColor linkColor];
    [continueButton3 setTitleColor:v41 forState:0];

    continueButton4 = [(UIKeyboardGlobeKeyIntroductionView *)v11 continueButton];
    [continueButton4 addTarget:v11 action:sel_continueButtonTapped forControlEvents:64];

    continueButton5 = [(UIKeyboardGlobeKeyIntroductionView *)v11 continueButton];
    [(UIView *)v11 addSubview:continueButton5];

    date = [MEMORY[0x1E695DF00] date];
    [(UIKeyboardGlobeKeyIntroductionView *)v11 setStartDate:date];
  }

  return v11;
}

- (void)layoutSubviews
{
  v107[3] = *MEMORY[0x1E69E9840];
  v103.receiver = self;
  v103.super_class = UIKeyboardGlobeKeyIntroductionView;
  [(UIView *)&v103 layoutSubviews];
  v107[0] = @"UICTFontTextStyleBody";
  v107[1] = @"UICTFontTextStyleSubhead";
  v107[2] = @"UICTFontTextStyleSubhead";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:3];
  v106[0] = @"UICTFontTextStyleBody";
  v106[1] = @"UICTFontTextStyleSubhead";
  v106[2] = @"UICTFontTextStyleFootnote";
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:3];
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig lightKeyboard])
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v5 = ;

  v99 = _UILocalizedStringInSystemLanguage(@"Tap %@ to switch keyboards.\n\nTouch and hold to select from a list.", @"Tap %@ to switch keyboards.\n\nTouch and hold to select from a list.");
  v6 = [v99 rangeOfString:@"%@"];
  v8 = v7;
  v9 = [[off_1E70ECBA8 alloc] initWithData:0 ofType:0];
  v10 = [UIImage systemImageNamed:@"globe"];
  v11 = [v10 imageWithTintColor:v5 renderingMode:1];
  v98 = v9;
  [v9 setImage:v11];

  defaultParagraphStyle = [off_1E70ECB88 defaultParagraphStyle];
  v13 = [defaultParagraphStyle mutableCopy];

  v97 = v13;
  [v13 setAlignment:1];
  v14 = 0;
  v94 = *off_1E70EC918;
  v89 = v8;
  v90 = v6;
  v16 = v6 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0;
  v93 = v16;
  v91 = *off_1E70EC988;
  v92 = *off_1E70EC920;
  v95 = v5;
  v96 = v3;
  while (v14 < [v3 count])
  {
    v102 = [v3 objectAtIndexedSubscript:v14];
    v101 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:? addingSymbolicTraits:? options:?];
    v17 = [off_1E70ECC18 fontWithDescriptor:0.0 size:?];
    titleLabel = [(UIKeyboardGlobeKeyIntroductionView *)self titleLabel];
    [titleLabel setFont:v17];

    v19 = [v100 objectAtIndexedSubscript:v14];
    v20 = [off_1E70ECC18 preferredFontForTextStyle:v19];
    v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v98];
    v22 = objc_alloc(MEMORY[0x1E696AD40]);
    v104 = v94;
    v105 = v20;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    v24 = [v22 initWithString:v99 attributes:v23];

    if (v93)
    {
      [v24 replaceCharactersInRange:v90 withAttributedString:{v89, v21}];
    }

    [v24 addAttribute:v92 value:v5 range:{0, objc_msgSend(v24, "length")}];
    [v24 addAttribute:v91 value:v97 range:{0, objc_msgSend(v24, "length")}];
    descriptionLabel = [(UIKeyboardGlobeKeyIntroductionView *)self descriptionLabel];
    [descriptionLabel setAttributedText:v24];

    [(UIView *)self bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    window = [(UIView *)self window];
    [window safeAreaInsets];
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = 0.12;
    if (!v14)
    {
      if (v33 < 335.0 || (v41 = 0.2, v38 == 0.0) && (v42 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL, v41 = 0.2, v42 != 1))
      {
        v41 = 0.16;
      }
    }

    v43 = 19.0;
    if (v38 != 0.0)
    {
      v43 = v38;
    }

    if (v36 == 0.0)
    {
      v44 = 24.0;
      if (v14)
      {
        v45 = v40;
      }

      else
      {
        v45 = 24.0;
      }

      if (v14)
      {
        v44 = v36;
      }

      if (v31 < 414.0)
      {
        v40 = v45;
      }

      else
      {
        v40 = 44.0;
      }

      if (v31 < 414.0)
      {
        v36 = v44;
      }

      else
      {
        v36 = 44.0;
      }
    }

    v46 = round(v33 * v41);
    v47 = v27 + v36;
    v48 = v29 + v46;
    v49 = v31 - (v40 + v36);
    v50 = v33 - (v43 + v46);
    titleLabel2 = [(UIKeyboardGlobeKeyIntroductionView *)self titleLabel];
    font = [titleLabel2 font];
    [font lineHeight];
    v54 = ceil(v53);

    v108.origin.x = v47;
    v108.origin.y = v48;
    v108.size.width = v49;
    v108.size.height = v50;
    MinX = CGRectGetMinX(v108);
    v109.origin.x = v47;
    v109.origin.y = v48;
    v109.size.width = v49;
    v109.size.height = v50;
    MinY = CGRectGetMinY(v109);
    v57 = 15.0;
    if (v14 == 2)
    {
      v57 = 8.0;
    }

    v58 = v57 + MinY;
    v110.origin.x = v47;
    v110.origin.y = v48;
    v110.size.width = v49;
    v110.size.height = v50;
    Width = CGRectGetWidth(v110);
    titleLabel3 = [(UIKeyboardGlobeKeyIntroductionView *)self titleLabel];
    [titleLabel3 setFrame:{MinX, v58, Width, v54}];

    v111.origin.x = v47;
    v111.origin.y = v48;
    v111.size.width = v49;
    v111.size.height = v50;
    v61 = CGRectGetMinX(v111);
    v112.origin.x = v47;
    v112.origin.y = v48;
    v112.size.width = v49;
    v112.size.height = v50;
    v62 = CGRectGetMaxY(v112) - v54;
    v113.origin.x = v47;
    v113.origin.y = v48;
    v113.size.width = v49;
    v113.size.height = v50;
    v63 = CGRectGetWidth(v113);
    continueButton = [(UIKeyboardGlobeKeyIntroductionView *)self continueButton];
    [continueButton setFrame:{v61, v62, v63, v54}];

    v114.origin.x = v47;
    v114.origin.y = v48;
    v114.size.width = v49;
    v114.size.height = v50;
    v65 = CGRectGetMinX(v114);
    titleLabel4 = [(UIKeyboardGlobeKeyIntroductionView *)self titleLabel];
    [titleLabel4 frame];
    v67 = CGRectGetMaxY(v115) + 18.0;
    v116.origin.x = v47;
    v116.origin.y = v48;
    v116.size.width = v49;
    v116.size.height = v50;
    v68 = CGRectGetWidth(v116);
    continueButton2 = [(UIKeyboardGlobeKeyIntroductionView *)self continueButton];
    [continueButton2 frame];
    v70 = CGRectGetMinY(v117);
    titleLabel5 = [(UIKeyboardGlobeKeyIntroductionView *)self titleLabel];
    [titleLabel5 frame];
    v72 = v70 - CGRectGetMaxY(v118) + -18.0;
    descriptionLabel2 = [(UIKeyboardGlobeKeyIntroductionView *)self descriptionLabel];
    [descriptionLabel2 setFrame:{v65, v67, v68, v72}];

    descriptionLabel3 = [(UIKeyboardGlobeKeyIntroductionView *)self descriptionLabel];
    [descriptionLabel3 contentSize];
    v76 = v75;
    descriptionLabel4 = [(UIKeyboardGlobeKeyIntroductionView *)self descriptionLabel];
    [descriptionLabel4 frame];
    v79 = v78;

    if (v76 <= v79)
    {

      v5 = v95;
      v3 = v96;
      break;
    }

    [(UIView *)self bounds];
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    backdropView = [(UIKeyboardGlobeKeyIntroductionView *)self backdropView];
    [backdropView setFrame:{v81, v83, v85, v87}];

    ++v14;
    v5 = v95;
    v3 = v96;
    if (v14 == 3)
    {
      break;
    }
  }
}

- (void)continueButtonTapped
{
  completionBlock = [(UIKeyboardGlobeKeyIntroductionView *)self completionBlock];

  if (completionBlock)
  {
    date = [MEMORY[0x1E695DF00] date];
    startDate = [(UIKeyboardGlobeKeyIntroductionView *)self startDate];
    [date timeIntervalSinceDate:startDate];
    v7 = v6;

    [UIKBAnalyticsDispatcher globeKeyEducationShown:v7];
    completionBlock2 = [(UIKeyboardGlobeKeyIntroductionView *)self completionBlock];
    completionBlock2[2]();
  }
}

@end