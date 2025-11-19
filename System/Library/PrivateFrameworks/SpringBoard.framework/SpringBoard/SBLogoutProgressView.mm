@interface SBLogoutProgressView
- (SBLogoutProgressView)initWithFrame:(CGRect)a3;
- (double)_goodbyeLabelBaselineOffset;
- (double)_moreDocumentsLabelBaselineOffset;
- (double)_userAvatarVerticalOffsetFromCenter;
- (void)_updateBlame;
- (void)_updateGoodbye;
- (void)_updateLegibility;
- (void)_updateUserAvatar;
- (void)_updateViewData;
- (void)setLegibilitySettings:(id)a3;
- (void)setPendingApplications:(id)a3;
- (void)setUserContact:(id)a3;
- (void)updateConstraints;
@end

@implementation SBLogoutProgressView

- (SBLogoutProgressView)initWithFrame:(CGRect)a3
{
  v112[25] = *MEMORY[0x277D85DE8];
  v111.receiver = self;
  v111.super_class = SBLogoutProgressView;
  v3 = [(SBLogoutProgressView *)&v111 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v13 = [(UILabel *)v3->_goodbyeLabel firstBaselineAnchor];
    v14 = [(SBLogoutProgressView *)v3 topAnchor];
    [(SBLogoutProgressView *)v3 _goodbyeLabelBaselineOffset];
    v15 = [v13 constraintEqualToAnchor:v14 constant:?];
    goodbyeLabelConstraint = v3->_goodbyeLabelConstraint;
    v3->_goodbyeLabelConstraint = v15;

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    userAvatarView = v3->_userAvatarView;
    v3->_userAvatarView = v17;

    [(UIImageView *)v3->_userAvatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBLogoutProgressView *)v3 addSubview:v3->_userAvatarView];
    v19 = [(UIImageView *)v3->_userAvatarView centerYAnchor];
    v20 = [(SBLogoutProgressView *)v3 centerYAnchor];
    [(SBLogoutProgressView *)v3 _userAvatarVerticalOffsetFromCenter];
    v21 = [v19 constraintEqualToAnchor:v20 constant:?];
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
    v32 = [(UILabel *)v3->_savingDocumentsMoreLabel firstBaselineAnchor];
    v33 = [(SBLogoutProgressView *)v3 bottomAnchor];
    [(SBLogoutProgressView *)v3 _moreDocumentsLabelBaselineOffset];
    v34 = [v32 constraintEqualToAnchor:v33 constant:?];
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
    v109 = [(UILabel *)v3->_goodbyeLabel centerXAnchor];
    v108 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v107 = [v109 constraintEqualToAnchor:v108];
    v112[0] = v107;
    v106 = [(UILabel *)v3->_goodbyeLabel widthAnchor];
    v105 = [(SBLogoutProgressView *)v3 widthAnchor];
    v104 = [v106 constraintLessThanOrEqualToAnchor:v105 constant:-72.0];
    v112[1] = v104;
    v112[2] = v3->_goodbyeLabelConstraint;
    v103 = [(UIImageView *)v3->_userAvatarView centerXAnchor];
    v102 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v101 = [v103 constraintEqualToAnchor:v102];
    v112[3] = v101;
    v112[4] = v3->_userAvatarVerticalConstraint;
    v100 = [(UIImageView *)v3->_userAvatarView widthAnchor];
    v99 = [v100 constraintEqualToConstant:256.0];
    v112[5] = v99;
    v98 = [(UIImageView *)v3->_userAvatarView heightAnchor];
    v97 = [(UIImageView *)v3->_userAvatarView widthAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v112[6] = v96;
    v95 = [(UILabel *)v3->_savingDocumentsLabel centerYAnchor];
    v94 = [(UIActivityIndicatorView *)v3->_savingDocumentsActivityIndicator centerYAnchor];
    v93 = [v95 constraintEqualToAnchor:v94];
    v112[7] = v93;
    v92 = [(UIActivityIndicatorView *)v3->_savingDocumentsActivityIndicator leadingAnchor];
    v91 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView leadingAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    v112[8] = v90;
    v89 = [(UILabel *)v3->_savingDocumentsLabel leadingAnchor];
    v88 = [(UIActivityIndicatorView *)v3->_savingDocumentsActivityIndicator trailingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88 constant:8.0];
    v112[9] = v87;
    v86 = [(UILabel *)v3->_savingDocumentsLabel trailingAnchor];
    v84 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView trailingAnchor];
    v83 = [v86 constraintEqualToAnchor:v84];
    v112[10] = v83;
    v82 = [(UILabel *)v3->_savingDocumentsLabel topAnchor];
    v81 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView topAnchor];
    v80 = [v82 constraintEqualToAnchor:v81];
    v112[11] = v80;
    v79 = [(UILabel *)v3->_savingDocumentsLabel bottomAnchor];
    v78 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView bottomAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v112[12] = v77;
    v76 = [(UILabel *)v3->_blameAppNameLabel centerYAnchor];
    v75 = [(UIImageView *)v3->_blameAppIconView centerYAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v112[13] = v74;
    v73 = [(UIImageView *)v3->_blameAppIconView leadingAnchor];
    v72 = [(UIView *)v3->_blameContainerView leadingAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v112[14] = v71;
    v70 = [(UILabel *)v3->_blameAppNameLabel leadingAnchor];
    v69 = [(UIImageView *)v3->_blameAppIconView trailingAnchor];
    v68 = [v70 constraintEqualToAnchor:v69 constant:8.0];
    v112[15] = v68;
    v67 = [(UILabel *)v3->_blameAppNameLabel trailingAnchor];
    v66 = [(UIView *)v3->_blameContainerView trailingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v112[16] = v65;
    v64 = [(UIImageView *)v3->_blameAppIconView topAnchor];
    v63 = [(UIView *)v3->_blameContainerView topAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v112[17] = v62;
    v61 = [(UIImageView *)v3->_blameAppIconView bottomAnchor];
    v60 = [(UIView *)v3->_blameContainerView bottomAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v112[18] = v59;
    v58 = [(UIView *)v3->_savingDocumentsActivityAndLabelContainerView centerXAnchor];
    v57 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v112[19] = v56;
    v55 = [(UIView *)v3->_blameContainerView centerXAnchor];
    v54 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v112[20] = v53;
    v52 = [(UILabel *)v3->_savingDocumentsMoreLabel centerXAnchor];
    v42 = [(SBLogoutProgressView *)v3 centerXAnchor];
    v43 = [v52 constraintEqualToAnchor:v42];
    v112[21] = v43;
    v112[22] = v3->_savingDocumentsMoreLabelConstraint;
    v44 = [(UILabel *)v3->_blameAppNameLabel firstBaselineAnchor];
    v45 = [(UILabel *)v3->_savingDocumentsMoreLabel firstBaselineAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:-36.0];
    v112[23] = v46;
    v47 = [(UILabel *)v3->_savingDocumentsLabel firstBaselineAnchor];
    v48 = [(UILabel *)v3->_blameAppNameLabel firstBaselineAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:-36.0];
    v112[24] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:25];
    [v85 activateConstraints:v50];
  }

  return v3;
}

- (void)setUserContact:(id)a3
{
  v5 = a3;
  if (self->_userContact != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userContact, a3);
    [(SBLogoutProgressView *)self _updateViewData];
    v5 = v6;
  }
}

- (void)setPendingApplications:(id)a3
{
  v4 = [a3 copy];
  pendingApplications = self->_pendingApplications;
  self->_pendingApplications = v4;

  [(SBLogoutProgressView *)self _updateViewData];
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBLogoutProgressView *)self _updateLegibility];
    v5 = v6;
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
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
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
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
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
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
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
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
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
  v12 = [SBApp activeInterfaceOrientation];
  result = -128.0;
  if ((v12 - 3) < 2)
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
      v12 = [SBApp activeInterfaceOrientation];
      result = -20.0;
      if ((v12 - 3) < 2)
      {
        return 0.0;
      }

      return result;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
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
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
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
  v4 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)goodbyeLabel setTextColor:v4];

  savingDocumentsLabel = self->_savingDocumentsLabel;
  v6 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)savingDocumentsLabel setTextColor:v6];

  savingDocumentsMoreLabel = self->_savingDocumentsMoreLabel;
  v8 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)savingDocumentsMoreLabel setTextColor:v8];

  blameAppNameLabel = self->_blameAppNameLabel;
  v10 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)blameAppNameLabel setTextColor:v10];
}

- (void)_updateViewData
{
  [(SBLogoutProgressView *)self _updateGoodbye];
  [(SBLogoutProgressView *)self _updateUserAvatar];

  [(SBLogoutProgressView *)self _updateBlame];
}

- (void)_updateGoodbye
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"LOGOUT_GOODBYE_USER_NAME_FORMAT" value:&stru_283094718 table:@"SpringBoard"];

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

      v11 = [(CNContact *)self->_userContact givenName];
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

      v11 = [(CNContact *)self->_userContact familyName];
    }

    v12 = v11;
    v20 = [v4 stringByReplacingCharactersInRange:v9 withString:{v10, v11}];
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
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [v15 localizedStringForKey:@"LOGOUT_GOODBYE_USER" value:&stru_283094718 table:@"SpringBoard"];
    v16 = [v17 stringWithFormat:v18, v21];
  }

  else
  {
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 localizedStringForKey:@"LOGOUT_GOODBYE_USER_NO_NAME" value:&stru_283094718 table:@"SpringBoard"];
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
  v4 = [v3 isCurrentUserAnonymous];

  if ((v4 & 1) == 0)
  {
    v5 = [(NSArray *)self->_pendingApplications count];
    savingDocumentsLabel = self->_savingDocumentsLabel;
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = v7;
    if (v5)
    {
      v9 = [v7 localizedStringForKey:@"LOGOUT_SAVING_DOCUMENTS_FROM" value:&stru_283094718 table:@"SpringBoard"];
      [(UILabel *)savingDocumentsLabel setText:v9];

      v10 = [(NSArray *)self->_pendingApplications firstObject];
      blameAppNameLabel = self->_blameAppNameLabel;
      v12 = [v10 displayName];
      [(UILabel *)blameAppNameLabel setText:v12];

      v13 = [(UIView *)self _sbWindowScene];
      v14 = [v13 iconController];
      v15 = [v14 iconModel];
      v40 = v10;
      v16 = [v10 bundleIdentifier];
      v17 = [v15 applicationIconForBundleIdentifier:v16];

      v18 = [(SBLogoutProgressView *)self traitCollection];
      v19 = [v14 tableUIIconImageCache];
      v20 = [MEMORY[0x277D75C80] sbh_iconImageAppearanceFromTraitCollection:v18];
      v21 = [v19 genericImageWithImageAppearance:v20 options:0];
      [(UIImageView *)self->_blameAppIconView setImage:v21];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __36__SBLogoutProgressView__updateBlame__block_invoke;
      v41[3] = &unk_2783B83C0;
      v22 = v19;
      v42 = v22;
      v23 = v17;
      v43 = v23;
      v24 = v20;
      v44 = v24;
      v45 = self;
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
        v38 = v14;
        v39 = v21;
        v30 = v29 = v13;
        [v30 localizedStringForKey:@"LOGOUT_SAVING_DOCUMENTS_MORE_COUNT" value:&stru_283094718 table:@"SpringBoardPlurals"];
        v31 = v22;
        v32 = v23;
        v34 = v33 = v18;
        v35 = [v28 localizedStringWithFormat:v34, v27];

        v18 = v33;
        v23 = v32;
        v22 = v31;

        v13 = v29;
        v14 = v38;
        v21 = v39;
        [(UILabel *)self->_savingDocumentsMoreLabel setText:v35];
        [(UILabel *)self->_savingDocumentsMoreLabel setHidden:0];
      }
    }

    else
    {
      v36 = [v7 localizedStringForKey:@"LOGOUT_SAVING_DOCUMENTS" value:&stru_283094718 table:@"SpringBoard"];
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