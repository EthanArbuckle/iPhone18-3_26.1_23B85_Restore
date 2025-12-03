@interface SKUIITunesPassConfiguration
- (SKUIITunesPassConfiguration)initWithITunesPassDictionary:(id)dictionary clientContext:(id)context;
- (id)learnMoreAlertView;
@end

@implementation SKUIITunesPassConfiguration

- (SKUIITunesPassConfiguration)initWithITunesPassDictionary:(id)dictionary clientContext:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [SKUIITunesPassConfiguration initWithITunesPassDictionary:clientContext:];
    }
  }

  v100.receiver = self;
  v100.super_class = SKUIITunesPassConfiguration;
  v10 = [(SKUIITunesPassConfiguration *)&v100 init];

  if (v10)
  {
    v11 = [dictionaryCopy objectForKey:@"learnMoreAlert"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKey:@"cancelButton"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        dialogNotNowButton = v10->_dialogNotNowButton;
        v10->_dialogNotNowButton = v13;
      }

      v15 = [v11 objectForKey:@"explanation"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 copy];
        dialogMessage = v10->_dialogMessage;
        v10->_dialogMessage = v16;
      }

      v18 = [v11 objectForKey:@"message"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v18 copy];
        dialogTitle = v10->_dialogTitle;
        v10->_dialogTitle = v19;
      }

      v21 = [v11 objectForKey:@"okButton"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v21 copy];
        dialogLearnMoreButton = v10->_dialogLearnMoreButton;
        v10->_dialogLearnMoreButton = v22;
      }
    }

    v24 = [dictionaryCopy objectForKey:@"learnMore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 objectForKey:@"addPassButton"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [v25 copy];
        learnMoreAddPassButtonTitle = v10->_learnMoreAddPassButtonTitle;
        v10->_learnMoreAddPassButtonTitle = v26;
      }

      v28 = [v24 objectForKey:@"doneButton"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = [v28 copy];
        learnMoreDoneButtonTitle = v10->_learnMoreDoneButtonTitle;
        v10->_learnMoreDoneButtonTitle = v29;
      }

      v31 = [v24 objectForKey:@"explanation"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v31 copy];
        learnMoreExplanation = v10->_learnMoreExplanation;
        v10->_learnMoreExplanation = v32;
      }

      v34 = [v24 objectForKey:@"title"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [v34 copy];
        learnMoreTitle = v10->_learnMoreTitle;
        v10->_learnMoreTitle = v35;
      }

      v37 = [v24 objectForKey:@"viewPassButton"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [v37 copy];
        learnMoreViewPassButtonTitle = v10->_learnMoreViewPassButtonTitle;
        v10->_learnMoreViewPassButtonTitle = v38;
      }
    }

    v40 = [dictionaryCopy objectForKey:@"lockup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 objectForKey:@"description"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = [v41 copy];
        lockupDescription = v10->_lockupDescription;
        v10->_lockupDescription = v42;
      }

      v44 = [v40 objectForKey:@"learnMore"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [v44 copy];
        lockupLearnMoreLinkTitle = v10->_lockupLearnMoreLinkTitle;
        v10->_lockupLearnMoreLinkTitle = v45;
      }

      v47 = [v40 objectForKey:@"title"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = [v47 copy];
        lockupTitle = v10->_lockupTitle;
        v10->_lockupTitle = v48;
      }
    }

    if (!v10->_dialogLearnMoreButton)
    {
      v50 = contextCopy;
      v51 = @"Redeem";
      if (v50)
      {
        [v50 localizedStringForKey:@"ITUNES_PASS_DIALOG_BUTTON_LEARN_MORE" inTable:v51];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_DIALOG_BUTTON_LEARN_MORE" inBundles:0 inTable:v51];
      }
      v52 = ;

      v53 = v10->_dialogLearnMoreButton;
      v10->_dialogLearnMoreButton = v52;
    }

    if (!v10->_dialogMessage)
    {
      v54 = contextCopy;
      v55 = @"Redeem";
      if (v54)
      {
        [v54 localizedStringForKey:@"ITUNES_PASS_DIALOG_MESSAGE" inTable:v55];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_DIALOG_MESSAGE" inBundles:0 inTable:v55];
      }
      v56 = ;

      v57 = v10->_dialogMessage;
      v10->_dialogMessage = v56;
    }

    if (!v10->_dialogNotNowButton)
    {
      v58 = contextCopy;
      v59 = @"Redeem";
      if (v58)
      {
        [v58 localizedStringForKey:@"ITUNES_PASS_DIALOG_BUTTON_NOT_NOW" inTable:v59];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_DIALOG_BUTTON_NOT_NOW" inBundles:0 inTable:v59];
      }
      v60 = ;

      v61 = v10->_dialogNotNowButton;
      v10->_dialogNotNowButton = v60;
    }

    if (!v10->_dialogTitle)
    {
      v62 = contextCopy;
      v63 = @"Redeem";
      if (v62)
      {
        [v62 localizedStringForKey:@"ITUNES_PASS_DIALOG_TITLE" inTable:v63];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_DIALOG_TITLE" inBundles:0 inTable:v63];
      }
      v64 = ;

      v65 = v10->_dialogTitle;
      v10->_dialogTitle = v64;
    }

    if (!v10->_learnMoreAddPassButtonTitle)
    {
      v66 = contextCopy;
      v67 = @"Redeem";
      if (v66)
      {
        [v66 localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_ADD_PASS_BUTTON" inTable:v67];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_ADD_PASS_BUTTON" inBundles:0 inTable:v67];
      }
      v68 = ;

      v69 = v10->_learnMoreAddPassButtonTitle;
      v10->_learnMoreAddPassButtonTitle = v68;
    }

    if (!v10->_learnMoreDoneButtonTitle)
    {
      v70 = contextCopy;
      v71 = @"Redeem";
      if (v70)
      {
        [v70 localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_DONE_BUTTON" inTable:v71];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_DONE_BUTTON" inBundles:0 inTable:v71];
      }
      v72 = ;

      v73 = v10->_learnMoreDoneButtonTitle;
      v10->_learnMoreDoneButtonTitle = v72;
    }

    if (!v10->_learnMoreExplanation)
    {
      v74 = contextCopy;
      v75 = @"Redeem";
      if (v74)
      {
        [v74 localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_EXPLANATION" inTable:v75];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_EXPLANATION" inBundles:0 inTable:v75];
      }
      v76 = ;

      v77 = v10->_learnMoreExplanation;
      v10->_learnMoreExplanation = v76;
    }

    if (!v10->_learnMoreTitle)
    {
      v78 = contextCopy;
      v79 = @"Redeem";
      if (v78)
      {
        [v78 localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_TITLE" inTable:v79];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_TITLE" inBundles:0 inTable:v79];
      }
      v80 = ;

      v81 = v10->_learnMoreTitle;
      v10->_learnMoreTitle = v80;
    }

    if (!v10->_learnMoreViewPassButtonTitle)
    {
      v82 = contextCopy;
      v83 = @"Redeem";
      if (v82)
      {
        [v82 localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_VIEW_PASS_BUTTON" inTable:v83];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_VIEW_PASS_BUTTON" inBundles:0 inTable:v83];
      }
      v84 = ;

      v85 = v10->_learnMoreViewPassButtonTitle;
      v10->_learnMoreViewPassButtonTitle = v84;
    }

    if (!v10->_lockupDescription)
    {
      v86 = contextCopy;
      v87 = @"Redeem";
      if (v86)
      {
        [v86 localizedStringForKey:@"ITUNES_PASS_EXPLANATION" inTable:v87];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_EXPLANATION" inBundles:0 inTable:v87];
      }
      v88 = ;

      v89 = v10->_lockupDescription;
      v10->_lockupDescription = v88;
    }

    if (!v10->_lockupLearnMoreLinkTitle)
    {
      v90 = contextCopy;
      v91 = @"Redeem";
      if (v90)
      {
        [v90 localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_LINK" inTable:v91];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_LINK" inBundles:0 inTable:v91];
      }
      v92 = ;

      v93 = v10->_lockupLearnMoreLinkTitle;
      v10->_lockupLearnMoreLinkTitle = v92;
    }

    if (!v10->_lockupTitle)
    {
      v94 = contextCopy;
      v95 = @"Redeem";
      if (v94)
      {
        [v94 localizedStringForKey:@"ITUNES_PASS_TITLE" inTable:v95];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_TITLE" inBundles:0 inTable:v95];
      }
      v96 = ;

      v97 = v10->_lockupTitle;
      v10->_lockupTitle = v96;
    }
  }

  v98 = v10;

  return v98;
}

- (id)learnMoreAlertView
{
  v2 = [objc_alloc(MEMORY[0x277D75118]) initWithTitle:self->_dialogTitle message:self->_dialogMessage delegate:0 cancelButtonTitle:self->_dialogNotNowButton otherButtonTitles:{self->_dialogLearnMoreButton, 0}];

  return v2;
}

- (void)initWithITunesPassDictionary:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIITunesPassConfiguration initWithITunesPassDictionary:clientContext:]";
}

@end