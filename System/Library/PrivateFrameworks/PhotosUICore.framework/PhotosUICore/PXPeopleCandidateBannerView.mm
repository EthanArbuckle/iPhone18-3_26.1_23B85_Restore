@interface PXPeopleCandidateBannerView
- (BOOL)_wantsNotNowTextInRegularSizeClass;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PHPerson)person;
- (PXPeopleCandidateBannerView)initWithCoder:(id)coder;
- (PXPeopleCandidateBannerView)initWithFrame:(CGRect)frame;
- (PXPeopleCandidateBannerView)initWithStyle:(int64_t)style;
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
- (void)setAttribution:(int64_t)attribution;
- (void)setContactSuggestion:(id)suggestion;
- (void)setNameSuggestion:(id)suggestion;
- (void)setPerson:(id)person;
- (void)setSpec:(id)spec;
- (void)setSuggestedContactImage:(id)image;
- (void)traitCollectionDidChange:(id)change;
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
  delegate = [(PXPeopleCandidateBannerView *)self delegate];
  [delegate bannerViewDidSelectNotNow:self];
}

- (void)_reviewTapped
{
  delegate = [(PXPeopleCandidateBannerView *)self delegate];
  [delegate bannerViewDidSelectPrimaryAction:self];
}

- (void)_updateContactAvatarImage
{
  self->_contactImageRequestVersion = (self->_contactImageRequestVersion + 1) % 1000;
  contactSuggestion = [(PXPeopleCandidateBannerView *)self contactSuggestion];
  if (contactSuggestion)
  {
    traitCollection = [(PXPeopleCandidateBannerView *)self traitCollection];
    [traitCollection displayScale];
    v6 = v5;

    traitCollection2 = [(PXPeopleCandidateBannerView *)self traitCollection];
    v8 = [traitCollection2 layoutDirection] == 1;

    contactImageRequestVersion = self->_contactImageRequestVersion;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__PXPeopleCandidateBannerView__updateContactAvatarImage__block_invoke;
    v10[3] = &unk_1E774A890;
    v10[4] = self;
    v10[5] = contactImageRequestVersion;
    [PXActivityUtilities requestImageForContact:contactSuggestion targetSize:v8 displayScale:0 isRTL:v10 deliverOnce:37.0 completion:37.0, v6];
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
  _suggestionTitle = [(PXPeopleCandidateBannerView *)self _suggestionTitle];
  style = [(PXPeopleCandidateBannerView *)self style];
  if ((style - 1) < 4)
  {
    v7 = *MEMORY[0x1E69DB648];
    v22 = *MEMORY[0x1E69DB648];
    v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
    v23 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    _suggestionString = [(PXPeopleCandidateBannerView *)self _suggestionString];
    if (_suggestionString)
    {
      v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v3 addingSymbolicTraits:32770 options:2];
      v20 = v7;
      v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
      v21 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

      if ([_suggestionTitle length])
      {
        v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_suggestionTitle attributes:v13];
        v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
        [v14 appendAttributedString:v15];

        v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_suggestionString attributes:v9];
        [v14 appendAttributedString:v16];
        v17 = [v14 copy];
      }

      else
      {
        v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_suggestionString attributes:v13];
      }
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_suggestionTitle attributes:v9];
    }

    goto LABEL_12;
  }

  if (!style)
  {
    v24 = *MEMORY[0x1E69DB648];
    v18 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
    v25[0] = v18;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_suggestionTitle attributes:v9];
LABEL_12:

    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:
  promptLabel = [(PXPeopleCandidateBannerView *)self promptLabel];
  [promptLabel setAttributedText:v17];
}

- (void)_updateNotNowButton
{
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  traitCollection = [(PXPeopleCandidateBannerView *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    _wantsNotNowTextInRegularSizeClass = [(PXPeopleCandidateBannerView *)self _wantsNotNowTextInRegularSizeClass];

    if (_wantsNotNowTextInRegularSizeClass)
    {
      v7 = *MEMORY[0x1E69DDCE0];
      v6 = *(MEMORY[0x1E69DDCE0] + 8);
      v8 = *(MEMORY[0x1E69DDCE0] + 16);
      v9 = *(MEMORY[0x1E69DDCE0] + 24);
      background = [plainButtonConfiguration background];
      [background setCornerRadius:12.0];

      tintColor = [(PXPeopleCandidateBannerView *)self tintColor];
      background2 = [plainButtonConfiguration background];
      [background2 setStrokeColor:tintColor];

      background3 = [plainButtonConfiguration background];
      [background3 setStrokeWidth:1.0];

      v14 = PXLocalizedStringFromTable(@"PXPeopleCandidateNotNowTitle", @"PhotosUICore");
      v15 = MEMORY[0x1E695DF58];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      preferredLocalizations = [mainBundle preferredLocalizations];
      firstObject = [preferredLocalizations firstObject];
      v19 = [v15 localeWithLocaleIdentifier:firstObject];
      v20 = [v14 uppercaseStringWithLocale:v19];
      [plainButtonConfiguration setTitle:v20];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40] scale:1];
  v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v14];
  [plainButtonConfiguration setImage:v21];

  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  mainBundle = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [plainButtonConfiguration setBaseForegroundColor:mainBundle];
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
  [plainButtonConfiguration setTitleTextAttributesTransformer:v32];
  notNowButton = self->_notNowButton;
  if (notNowButton)
  {
    [(UIButton *)notNowButton setConfiguration:plainButtonConfiguration];
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
    v27 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v26];
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
  style = [(PXPeopleCandidateBannerView *)self style];
  if (style >= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleCandidateBannerView.m" lineNumber:414 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 1u >> style;
}

- (id)_reviewButtonTitle
{
  style = [(PXPeopleCandidateBannerView *)self style];
  if ((style - 1) < 3)
  {
    v5 = @"PXPeopleCandidateNameContactSuggestionReviewButton";
LABEL_7:
    v2 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
    goto LABEL_8;
  }

  if (style == 4)
  {
    v5 = @"PXPeopleCandidateYouSuggestionAcceptButton";
    goto LABEL_7;
  }

  if (!style)
  {
    person = [(PXPeopleCandidateBannerView *)self person];
    photoLibrary = [person photoLibrary];
    v2 = PXLocalizedStringForPersonOrPetAndVisibility(0, [photoLibrary px_peoplePetsHomeVisibility], @"PXPeopleCandidateReviewTitle");
  }

LABEL_8:

  return v2;
}

- (id)_suggestionString
{
  style = [(PXPeopleCandidateBannerView *)self style];
  v4 = 0;
  if (style > 2)
  {
    if (style == 3)
    {
      v7 = @"PXPeopleCandidateYouContactSuggestionMessage";
    }

    else
    {
      if (style != 4)
      {
        goto LABEL_14;
      }

      v7 = @"PXPeopleMeConfirmMessage";
    }

    v4 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    if (style == 1)
    {
      contactSuggestion = [(PXPeopleCandidateBannerView *)self contactSuggestion];
      if (contactSuggestion)
      {
        [MEMORY[0x1E6978980] fullNameFromContact:contactSuggestion];
        objc_claimAutoreleasedReturnValue();
        person = [(PXPeopleCandidateBannerView *)self person];
        PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleCandidateNameContactSuggestionMessage");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }
    }

    else
    {
      if (style != 2)
      {
        goto LABEL_14;
      }

      contactSuggestion = [(PXPeopleCandidateBannerView *)self nameSuggestion];
      if (contactSuggestion)
      {
        person2 = [(PXPeopleCandidateBannerView *)self person];
        PXLocalizedStringForPersonOrPetAndVisibility(person2, 0, @"PXPeopleCandidateNameContactSuggestionMessage");
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
  style = [(PXPeopleCandidateBannerView *)self style];
  if (style <= 1)
  {
    if (!style)
    {
      _attributionTitle2 = PXLocalizedStringFromTable(@"PXPeopleCandidatePhotosForReviewNoNameMessage", @"PhotosUICore");
LABEL_13:
      v2 = _attributionTitle2;
      goto LABEL_17;
    }

    if (style != 1)
    {
      goto LABEL_17;
    }

LABEL_8:
    _attributionTitle = [(PXPeopleCandidateBannerView *)self _attributionTitle];
    if (!_attributionTitle)
    {
      v7 = @"PXPeopleCandidateContactSuggestionTitle";
LABEL_15:
      v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (style != 2)
  {
    if (style != 3)
    {
      if (style != 4)
      {
        goto LABEL_17;
      }

      _attributionTitle2 = [(PXPeopleCandidateBannerView *)self _attributionTitle];
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  _attributionTitle = [(PXPeopleCandidateBannerView *)self _attributionTitle];
  if (!_attributionTitle)
  {
    v7 = @"PXPeopleCandidateNameSuggestionTitle";
    goto LABEL_15;
  }

LABEL_11:
  v8 = _attributionTitle;
LABEL_16:
  v2 = v8;

LABEL_17:

  return v2;
}

- (id)_attributionTitle
{
  attribution = [(PXPeopleCandidateBannerView *)self attribution];
  v4 = 0;
  if (attribution > 2)
  {
    if (attribution == 3)
    {
      if (![(PXPeopleCandidateBannerView *)self _isMeSuggestion])
      {
        PXAssertGetLog();
      }

      v5 = @"PXPeopleCandidatePhotosAttributionTitle";
    }

    else
    {
      if (attribution != 4)
      {
        goto LABEL_13;
      }

      v5 = @"PXPeopleCandidateHomeAttributionTitle";
    }
  }

  else if (attribution == 1)
  {
    v5 = @"PXPeopleCandidateMessagesAttributionTitle";
  }

  else
  {
    if (attribution != 2)
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
  spec = [(PXPeopleCandidateBannerView *)self spec];
  [spec contentGuideInsetsForScrollAxis:1];
  v5 = v4;

  leadingConstraint = [(PXPeopleCandidateBannerView *)self leadingConstraint];
  [leadingConstraint setConstant:v5];

  notNowToTrailingConstraint = [(PXPeopleCandidateBannerView *)self notNowToTrailingConstraint];
  [notNowToTrailingConstraint setConstant:-(v5 + 7.0)];

  v8.receiver = self;
  v8.super_class = PXPeopleCandidateBannerView;
  [(PXPeopleCandidateBannerView *)&v8 updateConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(PXPeopleCandidateBannerView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [changeCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    [(PXPeopleCandidateBannerView *)self _updateNotNowButton];
  }

  traitCollection2 = [(PXPeopleCandidateBannerView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(PXPeopleCandidateBannerView *)self _updatePromptTitle];
  }

  traitCollection3 = [(PXPeopleCandidateBannerView *)self traitCollection];
  [traitCollection3 displayScale];
  v13 = v12;
  [changeCopy displayScale];
  if (v13 == v14)
  {
    traitCollection4 = [(PXPeopleCandidateBannerView *)self traitCollection];
    layoutDirection = [traitCollection4 layoutDirection];
    layoutDirection2 = [changeCopy layoutDirection];

    if (layoutDirection == layoutDirection2)
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
  [(PXPeopleCandidateBannerView *)&v18 traitCollectionDidChange:changeCopy];
}

- (int64_t)avatarStyle
{
  personAvatarView = [(PXPeopleCandidateBannerView *)self personAvatarView];

  if (personAvatarView)
  {
    personAvatarView2 = [(PXPeopleCandidateBannerView *)self personAvatarView];
    cornerStyle = [personAvatarView2 cornerStyle];

    return cornerStyle;
  }

  else
  {
    contactAvatarView = [(PXPeopleCandidateBannerView *)self contactAvatarView];
    v8 = contactAvatarView != 0;

    return 2 * v8;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(PXPeopleCandidateBannerView *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXPeopleCandidateBannerView *)self setNeedsUpdateConstraints];
    specCopy = v6;
  }
}

- (void)setNameSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = suggestionCopy;
  if (self->_nameSuggestion != suggestionCopy)
  {
    v9 = suggestionCopy;
    v6 = [(NSString *)suggestionCopy isEqualToString:?];
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
  contactAvatarView = [(PXPeopleCandidateBannerView *)self contactAvatarView];
  image = [contactAvatarView image];

  return image;
}

- (void)setSuggestedContactImage:(id)image
{
  imageCopy = image;
  contactAvatarView = [(PXPeopleCandidateBannerView *)self contactAvatarView];
  [contactAvatarView setImage:imageCopy];
}

- (void)setContactSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (self->_contactSuggestion != suggestionCopy)
  {
    v6 = suggestionCopy;
    objc_storeStrong(&self->_contactSuggestion, suggestion);
    [(PXPeopleCandidateBannerView *)self _updatePromptTitle];
    [(PXPeopleCandidateBannerView *)self _updateContactAvatarImage];
    suggestionCopy = v6;
  }
}

- (PHPerson)person
{
  personAvatarView = [(PXPeopleCandidateBannerView *)self personAvatarView];
  person = [personAvatarView person];

  return person;
}

- (void)setPerson:(id)person
{
  personCopy = person;
  personAvatarView = [(PXPeopleCandidateBannerView *)self personAvatarView];
  [personAvatarView setPerson:personCopy];
}

- (void)setAttribution:(int64_t)attribution
{
  if (self->_attribution != attribution)
  {
    self->_attribution = attribution;
    [(PXPeopleCandidateBannerView *)self _updatePromptTitle];
  }
}

- (PXPeopleCandidateBannerView)initWithStyle:(int64_t)style
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

  v4->_style = style;
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PXPeopleCandidateBannerView *)v5 setBackgroundColor:systemBackgroundColor];

  if (style <= 2)
  {
    if (style)
    {
      if (style != 1)
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

  if (style != 3)
  {
    if (style != 4)
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
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  tintColor = [(PXPeopleCandidateBannerView *)v5 tintColor];
  [filledButtonConfiguration setBaseBackgroundColor:tintColor];

  background = [filledButtonConfiguration background];
  [background setCornerRadius:12.0];

  [filledButtonConfiguration setContentInsets:{0.0, 10.0, 0.0, 10.0}];
  _reviewButtonTitle = [(PXPeopleCandidateBannerView *)v5 _reviewButtonTitle];
  [filledButtonConfiguration setTitle:_reviewButtonTitle];

  v20 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 weight:*MEMORY[0x1E69DB958]];
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __45__PXPeopleCandidateBannerView_initWithStyle___block_invoke;
  v95[3] = &unk_1E7741BF8;
  v50 = v20;
  v96 = v50;
  [filledButtonConfiguration setTitleTextAttributesTransformer:v95];
  objc_initWeak(&location, v5);
  v21 = MEMORY[0x1E69DC628];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __45__PXPeopleCandidateBannerView_initWithStyle___block_invoke_2;
  v92[3] = &unk_1E774BB08;
  objc_copyWeak(&v93, &location);
  v49 = [v21 actionWithHandler:v92];
  obj = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:?];
  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&v5->_actionButton, obj);
  [(PXPeopleCandidateBannerView *)v5 addSubview:obj];
  [(PXPeopleCandidateBannerView *)v5 _updateNotNowButton];
  v90 = objc_alloc_init(MEMORY[0x1E69DD250]);
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [v90 setBackgroundColor:separatorColor];

  [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXPeopleCandidateBannerView *)v5 addSubview:v90];
  spec = [(PXPeopleCandidateBannerView *)v5 spec];
  [spec layoutMargins];
  v25 = v24;

  trailingAnchor = [(UIButton *)v5->_notNowButton trailingAnchor];
  trailingAnchor2 = [(PXPeopleCandidateBannerView *)v5 trailingAnchor];
  v86 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-(v25 + 7.0)];

  objc_storeStrong(&v5->_notNowToTrailingConstraint, v86);
  if (v12)
  {
    leadingAnchor = [(UILabel *)v5->_promptLabel leadingAnchor];
    leadingAnchor2 = [(PXPeopleCandidateBannerView *)v5 leadingAnchor];
    v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v25];

    objc_storeStrong(&v5->_leadingConstraint, v87);
    v30 = MEMORY[0x1E696ACD8];
    v98[0] = v87;
    centerYAnchor = [(UILabel *)v5->_promptLabel centerYAnchor];
    centerYAnchor2 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    heightAnchor7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v98[1] = heightAnchor7;
    leadingAnchor3 = [obj leadingAnchor];
    trailingAnchor3 = [(UILabel *)v5->_promptLabel trailingAnchor];
    centerYAnchor7 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:15.0];
    v98[2] = centerYAnchor7;
    centerYAnchor3 = [obj centerYAnchor];
    centerYAnchor4 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    trailingAnchor7 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v98[3] = trailingAnchor7;
    heightAnchor = [obj heightAnchor];
    centerYAnchor8 = [heightAnchor constraintEqualToConstant:24.0];
    v98[4] = centerYAnchor8;
    leadingAnchor4 = [(UIButton *)v5->_notNowButton leadingAnchor];
    trailingAnchor4 = [obj trailingAnchor];
    leadingAnchor9 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:15.0];
    v98[5] = leadingAnchor9;
    centerYAnchor5 = [(UIButton *)v5->_notNowButton centerYAnchor];
    centerYAnchor6 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    centerYAnchor9 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v98[6] = centerYAnchor9;
    heightAnchor2 = [(UIButton *)v5->_notNowButton heightAnchor];
    v67 = [heightAnchor2 constraintEqualToConstant:24.0];
    v98[7] = v67;
    v98[8] = v86;
    leadingAnchor5 = [v90 leadingAnchor];
    leadingAnchor6 = [(PXPeopleCandidateBannerView *)v5 leadingAnchor];
    leadingAnchor10 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v98[9] = leadingAnchor10;
    trailingAnchor5 = [v90 trailingAnchor];
    trailingAnchor6 = [(PXPeopleCandidateBannerView *)v5 trailingAnchor];
    centerYAnchor10 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v98[10] = centerYAnchor10;
    bottomAnchor = [v90 bottomAnchor];
    bottomAnchor2 = [(PXPeopleCandidateBannerView *)v5 bottomAnchor];
    heightAnchor8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v98[11] = heightAnchor8;
    heightAnchor3 = [v90 heightAnchor];
    [(PXPeopleCandidateBannerView *)v5 px_screenScale];
    leadingAnchor11 = [heightAnchor3 constraintEqualToConstant:1.0 / v31];
    v98[12] = leadingAnchor11;
    heightAnchor4 = [(PXPeopleCandidateBannerView *)v5 heightAnchor];
    v54 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:60.0];
    v98[13] = v54;
    heightAnchor5 = [(PXPeopleCandidateBannerView *)v5 heightAnchor];
    heightAnchor6 = [(UILabel *)v5->_promptLabel heightAnchor];
    v51 = [heightAnchor5 constraintGreaterThanOrEqualToAnchor:heightAnchor6 constant:28.0];
    v98[14] = v51;
    bottomAnchor3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:15];
    [v30 activateConstraints:bottomAnchor3];
  }

  else
  {
    leadingAnchor7 = [v88 leadingAnchor];
    leadingAnchor8 = [(PXPeopleCandidateBannerView *)v5 leadingAnchor];
    v87 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v25];

    objc_storeStrong(&v5->_leadingConstraint, v87);
    v46 = MEMORY[0x1E696ACD8];
    centerYAnchor = [v88 widthAnchor];
    centerYAnchor2 = [centerYAnchor constraintEqualToConstant:37.0];
    v99[0] = centerYAnchor2;
    heightAnchor7 = [v88 heightAnchor];
    leadingAnchor3 = [heightAnchor7 constraintEqualToConstant:37.0];
    v99[1] = leadingAnchor3;
    trailingAnchor3 = [v88 centerYAnchor];
    centerYAnchor7 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    centerYAnchor3 = [trailingAnchor3 constraintEqualToAnchor:centerYAnchor7];
    v99[2] = centerYAnchor3;
    v99[3] = v87;
    centerYAnchor4 = [(UILabel *)v5->_promptLabel leadingAnchor];
    trailingAnchor7 = [v88 trailingAnchor];
    heightAnchor = [centerYAnchor4 constraintEqualToAnchor:trailingAnchor7 constant:8.0];
    v99[4] = heightAnchor;
    centerYAnchor8 = [(UILabel *)v5->_promptLabel centerYAnchor];
    leadingAnchor4 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    trailingAnchor4 = [centerYAnchor8 constraintEqualToAnchor:leadingAnchor4];
    v99[5] = trailingAnchor4;
    leadingAnchor9 = [obj leadingAnchor];
    centerYAnchor5 = [(UILabel *)v5->_promptLabel trailingAnchor];
    centerYAnchor6 = [leadingAnchor9 constraintEqualToAnchor:centerYAnchor5 constant:15.0];
    v99[6] = centerYAnchor6;
    centerYAnchor9 = [obj centerYAnchor];
    heightAnchor2 = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    v67 = [centerYAnchor9 constraintEqualToAnchor:heightAnchor2];
    v99[7] = v67;
    leadingAnchor5 = [obj heightAnchor];
    leadingAnchor6 = [leadingAnchor5 constraintEqualToConstant:24.0];
    v99[8] = leadingAnchor6;
    leadingAnchor10 = [(UIButton *)v5->_notNowButton leadingAnchor];
    trailingAnchor5 = [obj trailingAnchor];
    trailingAnchor6 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor5 constant:15.0];
    v99[9] = trailingAnchor6;
    centerYAnchor10 = [(UIButton *)v5->_notNowButton centerYAnchor];
    bottomAnchor = [(PXPeopleCandidateBannerView *)v5 centerYAnchor];
    bottomAnchor2 = [centerYAnchor10 constraintEqualToAnchor:bottomAnchor];
    v99[10] = bottomAnchor2;
    heightAnchor8 = [(UIButton *)v5->_notNowButton heightAnchor];
    heightAnchor3 = [heightAnchor8 constraintEqualToConstant:24.0];
    v99[11] = heightAnchor3;
    v99[12] = v86;
    leadingAnchor11 = [v90 leadingAnchor];
    heightAnchor4 = [(PXPeopleCandidateBannerView *)v5 leadingAnchor];
    v54 = [leadingAnchor11 constraintEqualToAnchor:heightAnchor4];
    v99[13] = v54;
    heightAnchor5 = [v90 trailingAnchor];
    heightAnchor6 = [(PXPeopleCandidateBannerView *)v5 trailingAnchor];
    v51 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    v99[14] = v51;
    bottomAnchor3 = [v90 bottomAnchor];
    bottomAnchor4 = [(PXPeopleCandidateBannerView *)v5 bottomAnchor];
    v47 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v99[15] = v47;
    heightAnchor9 = [v90 heightAnchor];
    [(PXPeopleCandidateBannerView *)v5 px_screenScale];
    v37 = [heightAnchor9 constraintEqualToConstant:1.0 / v36];
    v99[16] = v37;
    heightAnchor10 = [(PXPeopleCandidateBannerView *)v5 heightAnchor];
    v39 = [heightAnchor10 constraintGreaterThanOrEqualToConstant:60.0];
    v99[17] = v39;
    heightAnchor11 = [(PXPeopleCandidateBannerView *)v5 heightAnchor];
    heightAnchor12 = [(UILabel *)v5->_promptLabel heightAnchor];
    v42 = [heightAnchor11 constraintGreaterThanOrEqualToAnchor:heightAnchor12 constant:28.0];
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

- (PXPeopleCandidateBannerView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleCandidateBannerView.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXPeopleCandidateBannerView initWithFrame:]"}];

  abort();
}

- (PXPeopleCandidateBannerView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleCandidateBannerView.m" lineNumber:53 description:{@"%s is not available as initializer", "-[PXPeopleCandidateBannerView initWithCoder:]"}];

  abort();
}

@end