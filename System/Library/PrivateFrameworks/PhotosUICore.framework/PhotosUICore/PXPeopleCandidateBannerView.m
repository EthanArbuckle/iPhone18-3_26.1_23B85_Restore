@interface PXPeopleCandidateBannerView
- (BOOL)_wantsNotNowTextInRegularSizeClass;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PHPerson)person;
- (PXPeopleCandidateBannerView)initWithCoder:(id)a3;
- (PXPeopleCandidateBannerView)initWithFrame:(CGRect)a3;
- (PXPeopleCandidateBannerView)initWithStyle:(int64_t)a3;
- (PXPeopleCandidateBannerViewDelegate)delegate;
- (UIImage)suggestedContactImage;
- (id)_attributionTitle;
- (id)_reviewButtonTitle;
- (id)_suggestionString;
- (id)_suggestionTitle;
- (int64_t)avatarStyle;
- (void)_notNowTapped;
- (void)_reviewTapped;
- (void)_updateContactAvatarImage;
- (void)_updateNotNowButton;
- (void)_updatePromptTitle;
- (void)setAttribution:(int64_t)a3;
- (void)setContactSuggestion:(id)a3;
- (void)setNameSuggestion:(id)a3;
- (void)setPerson:(id)a3;
- (void)setSpec:(id)a3;
- (void)setSuggestedContactImage:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation PXPeopleCandidateBannerView

- (PXPeopleCandidateBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_notNowTapped
{
  v3 = [(PXPeopleCandidateBannerView *)self delegate];
  [v3 bannerViewDidSelectNotNow:self];
}

- (void)_reviewTapped
{
  v3 = [(PXPeopleCandidateBannerView *)self delegate];
  [v3 bannerViewDidSelectPrimaryAction:self];
}

- (void)_updateContactAvatarImage
{
  self->_contactImageRequestVersion = (self->_contactImageRequestVersion + 1) % 1000;
  v3 = [(PXPeopleCandidateBannerView *)self contactSuggestion];
  if (v3)
  {
    v4 = [(PXPeopleCandidateBannerView *)self traitCollection];
    [v4 displayScale];
    v6 = v5;

    v7 = [(PXPeopleCandidateBannerView *)self traitCollection];
    v8 = [v7 layoutDirection] == 1;

    contactImageRequestVersion = self->_contactImageRequestVersion;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__PXPeopleCandidateBannerView__updateContactAvatarImage__block_invoke;
    v10[3] = &unk_1E774A890;
    v10[4] = self;
    v10[5] = contactImageRequestVersion;
    [PXActivityUtilities requestImageForContact:v3 targetSize:v8 displayScale:0 isRTL:v10 deliverOnce:37.0 completion:37.0, v6];
  }

  else
  {
    [(PXPeopleCandidateBannerView *)self setSuggestedContactImage:0];
  }
}

void *__56__PXPeopleCandidateBannerView__updateContactAvatarImage__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (*(v3 + 8) == result[53])
  {
    return [result setSuggestedContactImage:a2];
  }

  return result;
}

- (void)_updatePromptTitle
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DDD28];
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 options:2];
  v5 = [(PXPeopleCandidateBannerView *)self _suggestionTitle];
  v6 = [(PXPeopleCandidateBannerView *)self style];
  if ((v6 - 1) < 4)
  {
    v7 = *MEMORY[0x1E69DB648];
    v22 = *MEMORY[0x1E69DB648];
    v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
    v23 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v10 = [(PXPeopleCandidateBannerView *)self _suggestionString];
    if (v10)
    {
      v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v3 addingSymbolicTraits:32770 options:2];
      v20 = v7;
      v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
      v21 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

      if ([v5 length])
      {
        v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5 attributes:v13];
        v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
        [v14 appendAttributedString:v15];

        v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v9];
        [v14 appendAttributedString:v16];
        v17 = [v14 copy];
      }

      else
      {
        v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v13];
      }
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v9];
    }

    goto LABEL_12;
  }

  if (!v6)
  {
    v24 = *MEMORY[0x1E69DB648];
    v18 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
    v25[0] = v18;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v9];
LABEL_12:

    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:
  v19 = [(PXPeopleCandidateBannerView *)self promptLabel];
  [v19 setAttributedText:v17];
}

- (void)_updateNotNowButton
{
  v3 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v4 = [(PXPeopleCandidateBannerView *)self traitCollection];
  if ([v4 horizontalSizeClass] == 2)
  {
    v5 = [(PXPeopleCandidateBannerView *)self _wantsNotNowTextInRegularSizeClass];

    if (v5)
    {
      v7 = *MEMORY[0x1E69DDCE0];
      v6 = *(MEMORY[0x1E69DDCE0] + 8);
      v8 = *(MEMORY[0x1E69DDCE0] + 16);
      v9 = *(MEMORY[0x1E69DDCE0] + 24);
      v10 = [v3 background];
      [v10 setCornerRadius:12.0];

      v11 = [(PXPeopleCandidateBannerView *)self tintColor];
      v12 = [v3 background];
      [v12 setStrokeColor:v11];

      v13 = [v3 background];
      [v13 setStrokeWidth:1.0];

      v14 = PXLocalizedStringFromTable(@"PXPeopleCandidateNotNowTitle", @"PhotosUICore");
      v15 = MEMORY[0x1E695DF58];
      v16 = [MEMORY[0x1E696AAE8] mainBundle];
      v17 = [v16 preferredLocalizations];
      v18 = [v17 firstObject];
      v19 = [v15 localeWithLocaleIdentifier:v18];
      v20 = [v14 uppercaseStringWithLocale:v19];
      [v3 setTitle:v20];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40] scale:1];
  v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v14];
  [v3 setImage:v21];

  [v3 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v3 setBaseForegroundColor:v16];
  v8 = -10.0;
  v9 = -17.0;
  v6 = -17.0;
  v7 = -10.0;
LABEL_6:

  v22 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB958]];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __50__PXPeopleCandidateBannerView__updateNotNowButton__block_invoke;
  v32[3] = &unk_1E7741BF8;
  v23 = v22;
  v33 = v23;
  [v3 setTitleTextAttributesTransformer:v32];
  notNowButton = self->_notNowButton;
  if (notNowButton)
  {
    [(UIButton *)notNowButton setConfiguration:v3];
  }

  else
  {
    objc_initWeak(&location, self);
    v25 = MEMORY[0x1E69DC628];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __50__PXPeopleCandidateBannerView__updateNotNowButton__block_invoke_2;
    v29[3] = &unk_1E774BB08;
    objc_copyWeak(&v30, &location);
    v26 = [v25 actionWithHandler:v29];
    v27 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v3 primaryAction:v26];
    v28 = self->_notNowButton;
    self->_notNowButton = v27;

    [(UIButton *)self->_notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXPeopleCandidateBannerView *)self addSubview:self->_notNowButton];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  [(UIButton *)self->_notNowButton _setTouchInsets:v7, v6, v8, v9];
}

id __50__PXPeopleCandidateBannerView__updateNotNowButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [MEMORY[0x1E69DCA40] defaultMetrics];
  v5 = [v4 scaledFontForFont:*(a1 + 32)];

  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

void __50__PXPeopleCandidateBannerView__updateNotNowButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notNowTapped];
}

- (BOOL)_wantsNotNowTextInRegularSizeClass
{
  v4 = [(PXPeopleCandidateBannerView *)self style];
  if (v4 >= 5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXPeopleCandidateBannerView.m" lineNumber:414 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 1u >> v4;
}

- (id)_reviewButtonTitle
{
  v4 = [(PXPeopleCandidateBannerView *)self style];
  if ((v4 - 1) < 3)
  {
    v5 = @"PXPeopleCandidateNameContactSuggestionReviewButton";
LABEL_7:
    v2 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
    goto LABEL_8;
  }

  if (v4 == 4)
  {
    v5 = @"PXPeopleCandidateYouSuggestionAcceptButton";
    goto LABEL_7;
  }

  if (!v4)
  {
    v6 = [(PXPeopleCandidateBannerView *)self person];
    v7 = [v6 photoLibrary];
    v2 = PXLocalizedStringForPersonOrPetAndVisibility(0, [v7 px_peoplePetsHomeVisibility], @"PXPeopleCandidateReviewTitle");
  }

LABEL_8:

  return v2;
}

- (id)_suggestionString
{
  v3 = [(PXPeopleCandidateBannerView *)self style];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = @"PXPeopleCandidateYouContactSuggestionMessage";
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_14;
      }

      v7 = @"PXPeopleMeConfirmMessage";
    }

    v4 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    if (v3 == 1)
    {
      v5 = [(PXPeopleCandidateBannerView *)self contactSuggestion];
      if (v5)
      {
        [MEMORY[0x1E6978980] fullNameFromContact:v5];
        objc_claimAutoreleasedReturnValue();
        v8 = [(PXPeopleCandidateBannerView *)self person];
        PXLocalizedStringForPersonOrPetAndVisibility(v8, 0, @"PXPeopleCandidateNameContactSuggestionMessage");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_14;
      }

      v5 = [(PXPeopleCandidateBannerView *)self nameSuggestion];
      if (v5)
      {
        v6 = [(PXPeopleCandidateBannerView *)self person];
        PXLocalizedStringForPersonOrPetAndVisibility(v6, 0, @"PXPeopleCandidateNameContactSuggestionMessage");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }
    }

    v4 = 0;
  }

LABEL_14:

  return v4;
}

- (id)_suggestionTitle
{
  v4 = [(PXPeopleCandidateBannerView *)self style];
  if (v4 <= 1)
  {
    if (!v4)
    {
      v5 = PXLocalizedStringFromTable(@"PXPeopleCandidatePhotosForReviewNoNameMessage", @"PhotosUICore");
LABEL_13:
      v2 = v5;
      goto LABEL_17;
    }

    if (v4 != 1)
    {
      goto LABEL_17;
    }

LABEL_8:
    v6 = [(PXPeopleCandidateBannerView *)self _attributionTitle];
    if (!v6)
    {
      v7 = @"PXPeopleCandidateContactSuggestionTitle";
LABEL_15:
      v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        goto LABEL_17;
      }

      v5 = [(PXPeopleCandidateBannerView *)self _attributionTitle];
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v6 = [(PXPeopleCandidateBannerView *)self _attributionTitle];
  if (!v6)
  {
    v7 = @"PXPeopleCandidateNameSuggestionTitle";
    goto LABEL_15;
  }

LABEL_11:
  v8 = v6;
LABEL_16:
  v2 = v8;

LABEL_17:

  return v2;
}

- (id)_attributionTitle
{
  v3 = [(PXPeopleCandidateBannerView *)self attribution];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (![(PXPeopleCandidateBannerView *)self _isMeSuggestion])
      {
        PXAssertGetLog();
      }

      v5 = @"PXPeopleCandidatePhotosAttributionTitle";
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_13;
      }

      v5 = @"PXPeopleCandidateHomeAttributionTitle";
    }
  }

  else if (v3 == 1)
  {
    v5 = @"PXPeopleCandidateMessagesAttributionTitle";
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_13;
    }

    v5 = @"PXPeopleCandidateContactsAttributionTitle";
  }

  v4 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
LABEL_13:

  return v4;
}

- (void)updateConstraints
{
  v3 = [(PXPeopleCandidateBannerView *)self spec];
  [v3 contentGuideInsetsForScrollAxis:1];
  v5 = v4;

  v6 = [(PXPeopleCandidateBannerView *)self leadingConstraint];
  [v6 setConstant:v5];

  v7 = [(PXPeopleCandidateBannerView *)self notNowToTrailingConstraint];
  [v7 setConstant:-(v5 + 7.0)];

  v8.receiver = self;
  v8.super_class = PXPeopleCandidateBannerView;
  [(PXPeopleCandidateBannerView *)&v8 updateConstraints];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleCandidateBannerView *)self traitCollection];
  v6 = [v5 horizontalSizeClass];
  v7 = [v4 horizontalSizeClass];

  if (v6 != v7)
  {
    [(PXPeopleCandidateBannerView *)self _updateNotNowButton];
  }

  v8 = [(PXPeopleCandidateBannerView *)self traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = [v4 preferredContentSizeCategory];

  if (v9 != v10)
  {
    [(PXPeopleCandidateBannerView *)self _updatePromptTitle];
  }

  v11 = [(PXPeopleCandidateBannerView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;
  [v4 displayScale];
  if (v13 == v14)
  {
    v15 = [(PXPeopleCandidateBannerView *)self traitCollection];
    v16 = [v15 layoutDirection];
    v17 = [v4 layoutDirection];

    if (v16 == v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [(PXPeopleCandidateBannerView *)self _updateContactAvatarImage];
LABEL_10:
  v18.receiver = self;
  v18.super_class = PXPeopleCandidateBannerView;
  [(PXPeopleCandidateBannerView *)&v18 traitCollectionDidChange:v4];
}

- (int64_t)avatarStyle
{
  v3 = [(PXPeopleCandidateBannerView *)self personAvatarView];

  if (v3)
  {
    v4 = [(PXPeopleCandidateBannerView *)self personAvatarView];
    v5 = [v4 cornerStyle];

    return v5;
  }

  else
  {
    v7 = [(PXPeopleCandidateBannerView *)self contactAvatarView];
    v8 = v7 != 0;

    return 2 * v8;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(PXPeopleCandidateBannerView *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXPeopleCandidateBannerView *)self setNeedsUpdateConstraints];
    v5 = v6;
  }
}

- (void)setNameSuggestion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_nameSuggestion != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      nameSuggestion = self->_nameSuggestion;
      self->_nameSuggestion = v7;

      [(PXPeopleCandidateBannerView *)self _updatePromptTitle];
      v5 = v9;
    }
  }
}

- (UIImage)suggestedContactImage
{
  v2 = [(PXPeopleCandidateBannerView *)self contactAvatarView];
  v3 = [v2 image];

  return v3;
}

- (void)setSuggestedContactImage:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleCandidateBannerView *)self contactAvatarView];
  [v5 setImage:v4];
}

- (void)setContactSuggestion:(id)a3
{
  v5 = a3;
  if (self->_contactSuggestion != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contactSuggestion, a3);
    [(PXPeopleCandidateBannerView *)self _updatePromptTitle];
    [(PXPeopleCandidateBannerView *)self _updateContactAvatarImage];
    v5 = v6;
  }
}

- (PHPerson)person
{
  v2 = [(PXPeopleCandidateBannerView *)self personAvatarView];
  v3 = [v2 person];

  return v3;
}

- (void)setPerson:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleCandidateBannerView *)self personAvatarView];
  [v5 setPerson:v4];
}

- (void)setAttribution:(int64_t)a3
{
  if (self->_attribution != a3)
  {
    self->_attribution = a3;
    [(PXPeopleCandidateBannerView *)self _updatePromptTitle];
  }
}

- (PXPeopleCandidateBannerView)initWithStyle:(int64_t)a3
{
  v99[19] = *MEMORY[0x1E69E9840];
  v97.receiver = self;
  v97.super_class = PXPeopleCandidateBannerView;
  v4 = [(PXPeopleCandidateBannerView *)&v97 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_18;
  }

  v4->_style = a3;
  v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PXPeopleCandidateBannerView *)v5 setBackgroundColor:v6];

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_8:
    v7 = [[PXPeopleScalableAvatarView alloc] initWithFrame:0.0, 0.0, 37.0, 37.0];
    p_personAvatarView = &v5->_personAvatarView;
    personAvatarView = v5->_personAvatarView;
    v5->_personAvatarView = v7;

    [(PXPeopleScalableAvatarView *)v5->_personAvatarView setCornerStyle:1];
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
LABEL_12:
      [0 setTranslatesAutoresizingMaskIntoConstraints:0];
      goto LABEL_13;
    }

    goto LABEL_8;
  }

LABEL_9:
  v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, 37.0, 37.0}];
  p_personAvatarView = &v5->_contactAvatarView;
  contactAvatarView = v5->_contactAvatarView;
  v5->_contactAvatarView = v10;

LABEL_10:
  v88 = *p_personAvatarView;
  [v88 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (!v88)
  {
LABEL_13:
    v88 = 0;
    v12 = 1;
    goto LABEL_14;
  }

  [(PXPeopleCandidateBannerView *)v5 addSubview:?];
  v12 = 0;
LABEL_14:
  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  promptLabel = v5->_promptLabel;
  v5->_promptLabel = v13;

  [(UILabel *)v5->_promptLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v15) = 1132068864;
  [(UILabel *)v5->_promptLabel setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1112014848;
  [(UILabel *)v5->_promptLabel setContentHuggingPriority:0 forAxis:v16];
  [(UILabel *)v5->_promptLabel setLineBreakMode:0];
  [(UILabel *)v5->_promptLabel setNumberOfLines:0];
  [(PXPeopleCandidateBannerView *)v5 _updatePromptTitle];
  [(UILabel *)v5->_promptLabel setAdjustsFontForContentSizeCategory:1];
  [(PXPeopleCandidateBannerView *)v5 addSubview:v5->_promptLabel];
  v89 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v17 = [(PXPeopleCandidateBannerView *)v5 tintColor];
  [v89 setBaseBackgroundColor:v17];

  v18 = [v89 background];
  [v18 setCornerRadius:12.0];

  [v89 setContentInsets:{0.0, 10.0, 0.0, 10.0}];
  v19 = [(PXPeopleCandidateBannerView *)v5 _reviewButtonTitle];
  [v89 setTitle:v19];

  v20 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 weight:*MEMORY[0x1E69DB958]];
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __45__PXPeopleCandidateBannerView_initWithStyle___block_invoke;
  v95[3] = &unk_1E7741BF8;
  v50 = v20;
  v96 = v50;
  [v89 setTitleTextAttributesTransformer:v95];
  objc_initWeak(&location, v5);
  v21 = MEMORY[0x1E69DC628];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __45__PXPeopleCandidateBannerView_initWithStyle___block_invoke_2;
  v92[3] = &unk_1E774BB08;
  objc_copyWeak(&v93, &location);
  v49 = [v21 actionWithHandler:v92];
  obj = [MEMORY[0x1E69DC738] buttonWithConfiguration:v89 primaryAction:?];
  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&v5->_actionButton, obj);
  [(PXPeopleCandidateBannerView *)v5 addSubview:obj];
  [(PXPeopleCandidateBannerView *)v5 _updateNotNowButton];
  v90 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v22 = [MEMORY[0x1E69DC888] separatorColor];
  [v90 setBackgroundColor:v22];

  [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXPeopleCandidateBannerView *)v5 addSubview:v90];
  v23 = [(PXPeopleCandidateBannerView *)v5 spec];
  [v23 layoutMargins];
  v25 = v24;

  v26 = [(UIButton *)v5->_notNowButton trailingAnchor];
  v27 = [(PXPeopleCandidateBannerView *)v5 trailingAnchor];
  v86 = [v26 constraintEqualToAnchor:v27 constant:-(v25 + 7.0)];

  objc_storeStrong(&v5->_notNowToTrailingConstraint, v86);
  if (v12)
  {
    v28 = [(UILabel *)v5->_promptLabel leadingAnchor];
    v29 = [(PXPeopleCandidateBannerView *)v5 leadingAnchor];
    v87 = [v28 constraintEqualToAnchor:v29 constant:v25];

    objc_storeStrong(&v5->_leadingConstraint, v87);
    v30 = MEMORY[0x1E696ACD8];
    v98[0] = v87;
    v85 = [(UILabel *)v5->_promptLabel centerYAnchor];
    v84 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v98[1] = v83;
    v82 = [obj leadingAnchor];
    v81 = [(UILabel *)v5->_promptLabel trailingAnchor];
    v80 = [v82 constraintEqualToAnchor:v81 constant:15.0];
    v98[2] = v80;
    v79 = [obj centerYAnchor];
    v78 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v98[3] = v77;
    v76 = [obj heightAnchor];
    v75 = [v76 constraintEqualToConstant:24.0];
    v98[4] = v75;
    v74 = [(UIButton *)v5->_notNowButton leadingAnchor];
    v73 = [obj trailingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:15.0];
    v98[5] = v72;
    v71 = [(UIButton *)v5->_notNowButton centerYAnchor];
    v70 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v98[6] = v69;
    v68 = [(UIButton *)v5->_notNowButton heightAnchor];
    v67 = [v68 constraintEqualToConstant:24.0];
    v98[7] = v67;
    v98[8] = v86;
    v66 = [v90 leadingAnchor];
    v65 = [(PXPeopleCandidateBannerView *)v5 leadingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v98[9] = v64;
    v63 = [v90 trailingAnchor];
    v62 = [(PXPeopleCandidateBannerView *)v5 trailingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v98[10] = v61;
    v60 = [v90 bottomAnchor];
    v59 = [(PXPeopleCandidateBannerView *)v5 bottomAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v98[11] = v58;
    v57 = [v90 heightAnchor];
    [(PXPeopleCandidateBannerView *)v5 px_screenScale];
    v56 = [v57 constraintEqualToConstant:1.0 / v31];
    v98[12] = v56;
    v55 = [(PXPeopleCandidateBannerView *)v5 heightAnchor];
    v54 = [v55 constraintGreaterThanOrEqualToConstant:60.0];
    v98[13] = v54;
    v53 = [(PXPeopleCandidateBannerView *)v5 heightAnchor];
    v52 = [(UILabel *)v5->_promptLabel heightAnchor];
    v51 = [v53 constraintGreaterThanOrEqualToAnchor:v52 constant:28.0];
    v98[14] = v51;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:15];
    [v30 activateConstraints:v32];
  }

  else
  {
    v33 = [v88 leadingAnchor];
    v34 = [(PXPeopleCandidateBannerView *)v5 leadingAnchor];
    v87 = [v33 constraintEqualToAnchor:v34 constant:v25];

    objc_storeStrong(&v5->_leadingConstraint, v87);
    v46 = MEMORY[0x1E696ACD8];
    v85 = [v88 widthAnchor];
    v84 = [v85 constraintEqualToConstant:37.0];
    v99[0] = v84;
    v83 = [v88 heightAnchor];
    v82 = [v83 constraintEqualToConstant:37.0];
    v99[1] = v82;
    v81 = [v88 centerYAnchor];
    v80 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v99[2] = v79;
    v99[3] = v87;
    v78 = [(UILabel *)v5->_promptLabel leadingAnchor];
    v77 = [v88 trailingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77 constant:8.0];
    v99[4] = v76;
    v75 = [(UILabel *)v5->_promptLabel centerYAnchor];
    v74 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v99[5] = v73;
    v72 = [obj leadingAnchor];
    v71 = [(UILabel *)v5->_promptLabel trailingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:15.0];
    v99[6] = v70;
    v69 = [obj centerYAnchor];
    v68 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v99[7] = v67;
    v66 = [obj heightAnchor];
    v65 = [v66 constraintEqualToConstant:24.0];
    v99[8] = v65;
    v64 = [(UIButton *)v5->_notNowButton leadingAnchor];
    v63 = [obj trailingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63 constant:15.0];
    v99[9] = v62;
    v61 = [(UIButton *)v5->_notNowButton centerYAnchor];
    v60 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v99[10] = v59;
    v58 = [(UIButton *)v5->_notNowButton heightAnchor];
    v57 = [v58 constraintEqualToConstant:24.0];
    v99[11] = v57;
    v99[12] = v86;
    v56 = [v90 leadingAnchor];
    v55 = [(PXPeopleCandidateBannerView *)v5 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v99[13] = v54;
    v53 = [v90 trailingAnchor];
    v52 = [(PXPeopleCandidateBannerView *)v5 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v99[14] = v51;
    v32 = [v90 bottomAnchor];
    v48 = [(PXPeopleCandidateBannerView *)v5 bottomAnchor];
    v47 = [v32 constraintEqualToAnchor:v48];
    v99[15] = v47;
    v35 = [v90 heightAnchor];
    [(PXPeopleCandidateBannerView *)v5 px_screenScale];
    v37 = [v35 constraintEqualToConstant:1.0 / v36];
    v99[16] = v37;
    v38 = [(PXPeopleCandidateBannerView *)v5 heightAnchor];
    v39 = [v38 constraintGreaterThanOrEqualToConstant:60.0];
    v99[17] = v39;
    v40 = [(PXPeopleCandidateBannerView *)v5 heightAnchor];
    v41 = [(UILabel *)v5->_promptLabel heightAnchor];
    v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:28.0];
    v99[18] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:19];
    [v46 activateConstraints:v43];
  }

  v44 = v5;
  objc_destroyWeak(&v93);
  objc_destroyWeak(&location);

LABEL_18:
  return v5;
}

id __45__PXPeopleCandidateBannerView_initWithStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [MEMORY[0x1E69DCA40] defaultMetrics];
  v5 = [v4 scaledFontForFont:*(a1 + 32)];

  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

void __45__PXPeopleCandidateBannerView_initWithStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reviewTapped];
}

- (PXPeopleCandidateBannerView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXPeopleCandidateBannerView.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXPeopleCandidateBannerView initWithFrame:]"}];

  abort();
}

- (PXPeopleCandidateBannerView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPeopleCandidateBannerView.m" lineNumber:53 description:{@"%s is not available as initializer", "-[PXPeopleCandidateBannerView initWithCoder:]"}];

  abort();
}

@end