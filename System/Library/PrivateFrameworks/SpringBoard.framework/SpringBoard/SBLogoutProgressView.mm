@interface SBLogoutProgressView
- (SBLogoutProgressView)initWithFrame:(CGRect)frame;
- (double)_goodbyeLabelBaselineOffset;
- (double)_moreDocumentsLabelBaselineOffset;
- (double)_userAvatarVerticalOffsetFromCenter;
- (void)_updateBlame;
- (void)_updateGoodbye;
- (void)_updateLegibility;
- (void)_updateUserAvatar;
- (void)_updateViewData;
- (void)setLegibilitySettings:(id)settings;
- (void)setPendingApplications:(id)applications;
- (void)setUserContact:(id)contact;
- (void)updateConstraints;
@end

@implementation SBLogoutProgressView

- (SBLogoutProgressView)initWithFrame:(CGRect)frame
{
  v112[25] = *MEMORY[0x277D85DE8];
  v111.receiver = self;
  v111.super_class = SBLogoutProgressView;
  v3 = [(SBLogoutProgressView *)&v111 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    goodbyeLabel = v3->_goodbyeLabel;
    v3->_goodbyeLabel = v9;

    v11 = v3->_goodbyeLabel;
    v12 = [MEMORY[0x277D74300] boldSystemFontOfSize:48.0];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)v3->_goodbyeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_goodbyeLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_goodbyeLabel setMinimumScaleFactor:0.8];
    [(UILabel *)v3->_goodbyeLabel setTextAlignment:1];
    [(SBLogoutProgressView *)v3 addSubview:v3->_goodbyeLabel];
    firstBaselineAnchor = [(UILabel *)v3->_goodbyeLabel firstBaselineAnchor];
    topAnchor = [(SBLogoutProgressView *)v3 topAnchor];
    [(SBLogoutProgressView *)v3 _goodbyeLabelBaselineOffset];
    v15 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
    goodbyeLabelConstraint = v3->_goodbyeLabelConstraint;
    v3->_goodbyeLabelConstraint = v15;

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    userAvatarView = v3->_userAvatarView;
    v3->_userAvatarView = v17;

    [(UIImageView *)v3->_userAvatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBLogoutProgressView *)v3 addSubview:v3->_userAvatarView];
    centerYAnchor = [(UIImageView *)v3->_userAvatarView centerYAnchor];
    centerYAnchor2 = [(SBLogoutProgressView *)v3 centerYAnchor];
    [(SBLogoutProgressView *)v3 _userAvatarVerticalOffsetFromCenter];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:?];
    userAvatarVerticalConstraint = v3->_userAvatarVerticalConstraint;
    v3->_userAvatarVerticalConstraint = v21;

    v23 = [MEMORY[0x277D74300] systemFontOfSize:20.0 weight:*MEMORY[0x277D74418]];
    v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    savingDocumentsActivityAndLabelContainerView = v3->_savingDocumentsActivityAndLabelContainerView;
    v3->_savingDocumentsActivityAndLabelContainerView = v24;

    [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBLogoutProgressView *)v3 addSubview:v3->_savingDocumentsActivityAndLabelContainerView];
    v26 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    savingDocumentsLabel = v3->_savingDocumentsLabel;
    v3->_savingDocumentsLabel = v26;

    [(UILabel *)v3->_savingDocumentsLabel setFont:v23];
    [(UILabel *)v3->_savingDocumentsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView addSubview:v3->_savingDocumentsLabel];
    v28 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:1];
    savingDocumentsActivityIndicator = v3->_savingDocumentsActivityIndicator;
    v3->_savingDocumentsActivityIndicator = v28;

    [(UIActivityIndicatorView *)v3->_savingDocumentsActivityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v3->_savingDocumentsActivityIndicator startAnimating];
    [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView addSubview:v3->_savingDocumentsActivityIndicator];
    v30 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    savingDocumentsMoreLabel = v3->_savingDocumentsMoreLabel;
    v3->_savingDocumentsMoreLabel = v30;

    v110 = v23;
    [(UILabel *)v3->_savingDocumentsMoreLabel setFont:v23];
    [(UILabel *)v3->_savingDocumentsMoreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBLogoutProgressView *)v3 addSubview:v3->_savingDocumentsMoreLabel];
    firstBaselineAnchor2 = [(UILabel *)v3->_savingDocumentsMoreLabel firstBaselineAnchor];
    bottomAnchor = [(SBLogoutProgressView *)v3 bottomAnchor];
    [(SBLogoutProgressView *)v3 _moreDocumentsLabelBaselineOffset];
    v34 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:?];
    savingDocumentsMoreLabelConstraint = v3->_savingDocumentsMoreLabelConstraint;
    v3->_savingDocumentsMoreLabelConstraint = v34;

    v36 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    blameContainerView = v3->_blameContainerView;
    v3->_blameContainerView = v36;

    [(UIView *)v3->_blameContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBLogoutProgressView *)v3 addSubview:v3->_blameContainerView];
    v38 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    blameAppIconView = v3->_blameAppIconView;
    v3->_blameAppIconView = v38;

    [(UIImageView *)v3->_blameAppIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_blameContainerView addSubview:v3->_blameAppIconView];
    v40 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    blameAppNameLabel = v3->_blameAppNameLabel;
    v3->_blameAppNameLabel = v40;

    [(UILabel *)v3->_blameAppNameLabel setFont:v23];
    [(UILabel *)v3->_blameAppNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_blameContainerView addSubview:v3->_blameAppNameLabel];
    v85 = MEMORY[0x277CCAAD0];
    centerXAnchor = [(UILabel *)v3->_goodbyeLabel centerXAnchor];
    centerXAnchor2 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v107 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v112[0] = v107;
    widthAnchor = [(UILabel *)v3->_goodbyeLabel widthAnchor];
    widthAnchor2 = [(SBLogoutProgressView *)v3 widthAnchor];
    v104 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 constant:-72.0];
    v112[1] = v104;
    v112[2] = v3->_goodbyeLabelConstraint;
    centerXAnchor3 = [(UIImageView *)v3->_userAvatarView centerXAnchor];
    centerXAnchor4 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v101 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v112[3] = v101;
    v112[4] = v3->_userAvatarVerticalConstraint;
    widthAnchor3 = [(UIImageView *)v3->_userAvatarView widthAnchor];
    v99 = [widthAnchor3 constraintEqualToConstant:256.0];
    v112[5] = v99;
    heightAnchor = [(UIImageView *)v3->_userAvatarView heightAnchor];
    widthAnchor4 = [(UIImageView *)v3->_userAvatarView widthAnchor];
    v96 = [heightAnchor constraintEqualToAnchor:widthAnchor4];
    v112[6] = v96;
    centerYAnchor3 = [(UILabel *)v3->_savingDocumentsLabel centerYAnchor];
    centerYAnchor4 = [(UIActivityIndicatorView *)v3->_savingDocumentsActivityIndicator centerYAnchor];
    v93 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v112[7] = v93;
    leadingAnchor = [(UIActivityIndicatorView *)v3->_savingDocumentsActivityIndicator leadingAnchor];
    leadingAnchor2 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView leadingAnchor];
    v90 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v112[8] = v90;
    leadingAnchor3 = [(UILabel *)v3->_savingDocumentsLabel leadingAnchor];
    trailingAnchor = [(UIActivityIndicatorView *)v3->_savingDocumentsActivityIndicator trailingAnchor];
    v87 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
    v112[9] = v87;
    trailingAnchor2 = [(UILabel *)v3->_savingDocumentsLabel trailingAnchor];
    trailingAnchor3 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView trailingAnchor];
    v83 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v112[10] = v83;
    topAnchor2 = [(UILabel *)v3->_savingDocumentsLabel topAnchor];
    topAnchor3 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView topAnchor];
    v80 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v112[11] = v80;
    bottomAnchor2 = [(UILabel *)v3->_savingDocumentsLabel bottomAnchor];
    bottomAnchor3 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView bottomAnchor];
    v77 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v112[12] = v77;
    centerYAnchor5 = [(UILabel *)v3->_blameAppNameLabel centerYAnchor];
    centerYAnchor6 = [(UIImageView *)v3->_blameAppIconView centerYAnchor];
    v74 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v112[13] = v74;
    leadingAnchor4 = [(UIImageView *)v3->_blameAppIconView leadingAnchor];
    leadingAnchor5 = [(UIView *)v3->_blameContainerView leadingAnchor];
    v71 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v112[14] = v71;
    leadingAnchor6 = [(UILabel *)v3->_blameAppNameLabel leadingAnchor];
    trailingAnchor4 = [(UIImageView *)v3->_blameAppIconView trailingAnchor];
    v68 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
    v112[15] = v68;
    trailingAnchor5 = [(UILabel *)v3->_blameAppNameLabel trailingAnchor];
    trailingAnchor6 = [(UIView *)v3->_blameContainerView trailingAnchor];
    v65 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v112[16] = v65;
    topAnchor4 = [(UIImageView *)v3->_blameAppIconView topAnchor];
    topAnchor5 = [(UIView *)v3->_blameContainerView topAnchor];
    v62 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v112[17] = v62;
    bottomAnchor4 = [(UIImageView *)v3->_blameAppIconView bottomAnchor];
    bottomAnchor5 = [(UIView *)v3->_blameContainerView bottomAnchor];
    v59 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v112[18] = v59;
    centerXAnchor5 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView centerXAnchor];
    centerXAnchor6 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v56 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v112[19] = v56;
    centerXAnchor7 = [(UIView *)v3->_blameContainerView centerXAnchor];
    centerXAnchor8 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v53 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v112[20] = v53;
    centerXAnchor9 = [(UILabel *)v3->_savingDocumentsMoreLabel centerXAnchor];
    centerXAnchor10 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v43 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    v112[21] = v43;
    v112[22] = v3->_savingDocumentsMoreLabelConstraint;
    firstBaselineAnchor3 = [(UILabel *)v3->_blameAppNameLabel firstBaselineAnchor];
    firstBaselineAnchor4 = [(UILabel *)v3->_savingDocumentsMoreLabel firstBaselineAnchor];
    v46 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4 constant:-36.0];
    v112[23] = v46;
    firstBaselineAnchor5 = [(UILabel *)v3->_savingDocumentsLabel firstBaselineAnchor];
    firstBaselineAnchor6 = [(UILabel *)v3->_blameAppNameLabel firstBaselineAnchor];
    v49 = [firstBaselineAnchor5 constraintEqualToAnchor:firstBaselineAnchor6 constant:-36.0];
    v112[24] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:25];
    [v85 activateConstraints:v50];
  }

  return v3;
}

- (void)setUserContact:(id)contact
{
  contactCopy = contact;
  if (self->_userContact != contactCopy)
  {
    v6 = contactCopy;
    objc_storeStrong(&self->_userContact, contact);
    [(SBLogoutProgressView *)self _updateViewData];
    contactCopy = v6;
  }
}

- (void)setPendingApplications:(id)applications
{
  v4 = [applications copy];
  pendingApplications = self->_pendingApplications;
  self->_pendingApplications = v4;

  [(SBLogoutProgressView *)self _updateViewData];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v6 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBLogoutProgressView *)self _updateLegibility];
    settingsCopy = v6;
  }
}

- (void)updateConstraints
{
  goodbyeLabelConstraint = self->_goodbyeLabelConstraint;
  [(SBLogoutProgressView *)self _goodbyeLabelBaselineOffset];
  [(NSLayoutConstraint *)goodbyeLabelConstraint setConstant:?];
  savingDocumentsMoreLabelConstraint = self->_savingDocumentsMoreLabelConstraint;
  [(SBLogoutProgressView *)self _moreDocumentsLabelBaselineOffset];
  [(NSLayoutConstraint *)savingDocumentsMoreLabelConstraint setConstant:?];
  userAvatarVerticalConstraint = self->_userAvatarVerticalConstraint;
  [(SBLogoutProgressView *)self _userAvatarVerticalOffsetFromCenter];
  [(NSLayoutConstraint *)userAvatarVerticalConstraint setConstant:?];
  v6.receiver = self;
  v6.super_class = SBLogoutProgressView;
  [(SBLogoutProgressView *)&v6 updateConstraints];
}

- (double)_goodbyeLabelBaselineOffset
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {

      goto LABEL_15;
    }
  }

  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v9 = v8;
  v10 = *(MEMORY[0x277D66E30] + 280);
  if ((v7 & 1) == 0)
  {
  }

  if ((v5 & 1) == 0)
  {
  }

  if (v9 >= v10)
  {
    v11 = ([SBApp activeInterfaceOrientation] - 3) >= 2;
    result = 315.0;
    v13 = 184.0;
    goto LABEL_16;
  }

LABEL_15:
  v11 = ([SBApp activeInterfaceOrientation] - 3) >= 2;
  result = 184.0;
  v13 = 138.0;
LABEL_16:
  if (!v11)
  {
    return v13;
  }

  return result;
}

- (double)_moreDocumentsLabelBaselineOffset
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {

      goto LABEL_15;
    }
  }

  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v9 = v8;
  v10 = *(MEMORY[0x277D66E30] + 280);
  if ((v7 & 1) == 0)
  {
  }

  if ((v5 & 1) == 0)
  {
  }

  if (v9 >= v10)
  {
    return dbl_21F8A6F80[([SBApp activeInterfaceOrientation] - 3) < 2];
  }

LABEL_15:
  activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
  result = -128.0;
  if ((activeInterfaceOrientation - 3) < 2)
  {
    return -78.5;
  }

  return result;
}

- (double)_userAvatarVerticalOffsetFromCenter
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_14:
      activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
      result = -20.0;
      if ((activeInterfaceOrientation - 3) < 2)
      {
        return 0.0;
      }

      return result;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {

      goto LABEL_14;
    }
  }

  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v9 = v8;
  v10 = *(MEMORY[0x277D66E30] + 280);
  if ((v7 & 1) == 0)
  {
  }

  if ((v5 & 1) == 0)
  {
  }

  result = -20.0;
  if (v9 < v10)
  {
    goto LABEL_14;
  }

  return result;
}

- (void)_updateLegibility
{
  [(SBLogoutProgressView *)self _updateUserAvatarLegibility];
  goodbyeLabel = self->_goodbyeLabel;
  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)goodbyeLabel setTextColor:primaryColor];

  savingDocumentsLabel = self->_savingDocumentsLabel;
  primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)savingDocumentsLabel setTextColor:primaryColor2];

  savingDocumentsMoreLabel = self->_savingDocumentsMoreLabel;
  primaryColor3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)savingDocumentsMoreLabel setTextColor:primaryColor3];

  blameAppNameLabel = self->_blameAppNameLabel;
  primaryColor4 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)blameAppNameLabel setTextColor:primaryColor4];
}

- (void)_updateViewData
{
  [(SBLogoutProgressView *)self _updateGoodbye];
  [(SBLogoutProgressView *)self _updateUserAvatar];

  [(SBLogoutProgressView *)self _updateBlame];
}

- (void)_updateGoodbye
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"LOGOUT_GOODBYE_USER_NAME_FORMAT" value:&stru_283094718 table:@"SpringBoard"];

  v5 = [v4 rangeOfString:@"<[a-z]+>" options:1024];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v5;
    v10 = v6;
    v8 = [v4 substringWithRange:{v5, v6}];
    v7 = v8;
    if (!v8)
    {
      goto LABEL_13;
    }

    if ([v8 isEqualToString:@"<firstname>"])
    {
      if (![(CNContact *)self->_userContact isKeyAvailable:@"givenName"])
      {
        goto LABEL_3;
      }

      givenName = [(CNContact *)self->_userContact givenName];
    }

    else
    {
      if (![v7 isEqualToString:@"<surname>"])
      {
        if (![v7 isEqualToString:@"<fullname>"] || !-[CNContact isKeyAvailable:](self->_userContact, "isKeyAvailable:", @"givenName") || !-[CNContact isKeyAvailable:](self->_userContact, "isKeyAvailable:", @"familyName"))
        {
          goto LABEL_3;
        }

        v12 = objc_alloc_init(MEMORY[0x277CBDA78]);
        v19 = [v12 stringFromContact:self->_userContact];
        v20 = [v4 stringByReplacingCharactersInRange:v9 withString:{v10, v19}];

LABEL_12:
        v8 = v20;
        goto LABEL_13;
      }

      if (![(CNContact *)self->_userContact isKeyAvailable:@"familyName"])
      {
        goto LABEL_3;
      }

      givenName = [(CNContact *)self->_userContact familyName];
    }

    v12 = givenName;
    v20 = [v4 stringByReplacingCharactersInRange:v9 withString:{v10, givenName}];
    goto LABEL_12;
  }

  v7 = 0;
LABEL_3:
  v8 = 0;
LABEL_13:
  v21 = v8;
  if ([v8 length] && (v13 = objc_opt_new(), v14 = objc_msgSend(v13, "isCurrentUserAnonymous"), v13, (v14 & 1) == 0))
  {
    v17 = MEMORY[0x277CCACA8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [mainBundle2 localizedStringForKey:@"LOGOUT_GOODBYE_USER" value:&stru_283094718 table:@"SpringBoard"];
    v16 = [v17 stringWithFormat:v18, v21];
  }

  else
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [mainBundle2 localizedStringForKey:@"LOGOUT_GOODBYE_USER_NO_NAME" value:&stru_283094718 table:@"SpringBoard"];
  }

  [(UILabel *)self->_goodbyeLabel setText:v16];
}

- (void)_updateUserAvatar
{
  if ([(_UILegibilitySettings *)self->_legibilitySettings style]>= 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  v5 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:v3 diameter:256.0];
  v4 = [v5 monogramForContact:self->_userContact];
  [(UIImageView *)self->_userAvatarView setImage:v4];
}

- (void)_updateBlame
{
  v3 = objc_opt_new();
  isCurrentUserAnonymous = [v3 isCurrentUserAnonymous];

  if ((isCurrentUserAnonymous & 1) == 0)
  {
    v5 = [(NSArray *)self->_pendingApplications count];
    savingDocumentsLabel = self->_savingDocumentsLabel;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = mainBundle;
    if (v5)
    {
      v9 = [mainBundle localizedStringForKey:@"LOGOUT_SAVING_DOCUMENTS_FROM" value:&stru_283094718 table:@"SpringBoard"];
      [(UILabel *)savingDocumentsLabel setText:v9];

      firstObject = [(NSArray *)self->_pendingApplications firstObject];
      blameAppNameLabel = self->_blameAppNameLabel;
      displayName = [firstObject displayName];
      [(UILabel *)blameAppNameLabel setText:displayName];

      _sbWindowScene = [(UIView *)self _sbWindowScene];
      iconController = [_sbWindowScene iconController];
      iconModel = [iconController iconModel];
      v40 = firstObject;
      bundleIdentifier = [firstObject bundleIdentifier];
      v17 = [iconModel applicationIconForBundleIdentifier:bundleIdentifier];

      traitCollection = [(SBLogoutProgressView *)self traitCollection];
      tableUIIconImageCache = [iconController tableUIIconImageCache];
      v20 = [MEMORY[0x277D75C80] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
      v21 = [tableUIIconImageCache genericImageWithImageAppearance:v20 options:0];
      [(UIImageView *)self->_blameAppIconView setImage:v21];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __36__SBLogoutProgressView__updateBlame__block_invoke;
      v41[3] = &unk_2783B83C0;
      v22 = tableUIIconImageCache;
      v42 = v22;
      v23 = v17;
      v43 = v23;
      v24 = v20;
      v44 = v24;
      selfCopy = self;
      v25 = [v22 cacheImageForIcon:v23 imageAppearance:v24 priority:4 reason:@"logout blame" options:0 completionHandler:v41];
      [(UIView *)self->_blameContainerView setHidden:0];
      v26 = [(NSArray *)self->_pendingApplications count];
      v27 = v26 - 1;
      if (v26 == 1)
      {
        [(UILabel *)self->_savingDocumentsMoreLabel setHidden:1];
      }

      else
      {
        v28 = MEMORY[0x277CCACA8];
        [MEMORY[0x277CCA8D8] mainBundle];
        v38 = iconController;
        v39 = v21;
        v30 = v29 = _sbWindowScene;
        [v30 localizedStringForKey:@"LOGOUT_SAVING_DOCUMENTS_MORE_COUNT" value:&stru_283094718 table:@"SpringBoardPlurals"];
        v31 = v22;
        v32 = v23;
        v34 = v33 = traitCollection;
        v35 = [v28 localizedStringWithFormat:v34, v27];

        traitCollection = v33;
        v23 = v32;
        v22 = v31;

        _sbWindowScene = v29;
        iconController = v38;
        v21 = v39;
        [(UILabel *)self->_savingDocumentsMoreLabel setText:v35];
        [(UILabel *)self->_savingDocumentsMoreLabel setHidden:0];
      }
    }

    else
    {
      v36 = [mainBundle localizedStringForKey:@"LOGOUT_SAVING_DOCUMENTS" value:&stru_283094718 table:@"SpringBoard"];
      [(UILabel *)savingDocumentsLabel setText:v36];

      [(UILabel *)self->_savingDocumentsMoreLabel setHidden:1];
      blameContainerView = self->_blameContainerView;

      [(UIView *)blameContainerView setHidden:1];
    }
  }
}

void __36__SBLogoutProgressView__updateBlame__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageForIcon:*(a1 + 40) imageAppearance:*(a1 + 48) options:0];
  [*(*(a1 + 56) + 512) setImage:v2];
}

@end