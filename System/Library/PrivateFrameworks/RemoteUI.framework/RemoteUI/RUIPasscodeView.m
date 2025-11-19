@interface RUIPasscodeView
- (BOOL)_requiresLocalPasscodeValidation;
- (RUIObjectModel)objectModel;
- (RUIPage)page;
- (RUIPasscodeView)initWithAttributes:(id)a3 parent:(id)a4;
- (_TtC8RemoteUI28RUITextActivityIndicatorView)activityIndicatorView;
- (id)HTMLHeaderView;
- (id)_passcodeFieldAccessibilityIdentifier;
- (id)footerView;
- (id)headerView;
- (id)passcodeView;
- (id)sourceURL;
- (id)subElementWithID:(id)a3;
- (void)_clearPasscode;
- (void)_complexPasscodeFieldDidChange:(id)a3;
- (void)_doneButtonTapped:(id)a3;
- (void)_jiggleView:(id)a3;
- (void)_updateFieldSpacer;
- (void)autofillWithToken:(id)a3;
- (void)footerView:(id)a3 activatedLinkWithURL:(id)a4;
- (void)keyboardFrameDidChange:(id)a3;
- (void)performAction:(int)a3 forElement:(id)a4 completion:(id)a5;
- (void)populatePostbackDictionary:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageAlignment:(unint64_t)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setKeyboardAppearance:(int64_t)a3;
- (void)setNumberOfEntryFields:(unint64_t)a3;
- (void)startActivityIndicator;
- (void)stopActivityIndicator;
- (void)submitPIN;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayout;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RUIPasscodeView

- (RUIPasscodeView)initWithAttributes:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = RUIPasscodeView;
  v8 = [(RUIElement *)&v15 initWithAttributes:v6 parent:v7];
  v9 = v8;
  if (v8)
  {
    v8->_numberOfEntryFields = 4;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = getPSListControllerClass_softClass;
    v20 = getPSListControllerClass_softClass;
    if (!getPSListControllerClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getPSListControllerClass_block_invoke;
      v16[3] = &unk_2782E8258;
      v16[4] = &v17;
      __getPSListControllerClass_block_invoke(v16);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    v12 = [v10 appearance];
    v13 = [MEMORY[0x277D75348] labelColor];
    [v12 setTextColor:v13];
  }

  return v9;
}

- (id)sourceURL
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v3 = [WeakRetained sourceURL];

  return v3;
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_foregroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_foregroundColor, a3);
    [(PSPasscodeField *)self->_passcodeField setForegroundColor:self->_foregroundColor];
    if (objc_opt_respondsToSelector())
    {
      [(RUIHeader *)self->_headerView setHeaderColor:self->_foregroundColor];
    }

    v5 = objc_opt_respondsToSelector();
    v6 = v7;
    if (v5)
    {
      v5 = [(RemoteUITableFooter *)self->_footerView setTextColor:self->_foregroundColor];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setKeyboardAppearance:(int64_t)a3
{
  if (self->_keyboardAppearance != a3)
  {
    self->_keyboardAppearance = a3;
    [(PSPasscodeField *)self->_passcodeField setKeyboardAppearance:?];
  }
}

- (void)_updateFieldSpacer
{
  if (![(RUIPasscodeView *)self _requiresLocalPasscodeValidation]&& self->_passcodeField)
  {
    v3 = [(RUIElement *)self attributes];
    v6 = [v3 objectForKeyedSubscript:@"fieldSpacer"];

    if ((self->_numberOfEntryFields & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 isEqualToString:@"center"])
        {
          v4 = objc_opt_new();
          if (self->_numberOfEntryFields >= 4)
          {
            v5 = 1;
            do
            {
              [v4 addObject:&unk_282D7ABD0];
              ++v5;
            }

            while (v5 < self->_numberOfEntryFields >> 1);
          }

          [v4 addObject:&unk_282D7ABE8];
          [(PSPasscodeField *)self->_passcodeField setFieldSpacing:v4];
        }
      }
    }
  }
}

- (id)passcodeView
{
  v56 = *MEMORY[0x277D85DE8];
  if (!self->_containerView)
  {
    v3 = objc_alloc(MEMORY[0x277D759D8]);
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
    containerView = self->_containerView;
    self->_containerView = v8;

    v10 = self->_containerView;
    v11 = [MEMORY[0x277D75348] clearColor];
    [(UIScrollView *)v10 setBackgroundColor:v11];

    v12 = +[RUIPlatform isSolariumEnabled];
    v13 = self->_containerView;
    if (v12)
    {
      [(UIScrollView *)v13 setPreservesSuperviewLayoutMargins:1];
    }

    else
    {
      [(UIScrollView *)v13 setDirectionalLayoutMargins:0.0, 20.0, 0.0, 20.0];
    }

    [(UIScrollView *)self->_containerView setLayoutMarginsFollowReadableWidth:1];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:self selector:sel_keyboardFrameDidChange_ name:*MEMORY[0x277D76C60] object:0];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:self selector:sel_keyboardFrameDidChange_ name:*MEMORY[0x277D76B98] object:0];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:self selector:sel_keyboardFrameDidChange_ name:*MEMORY[0x277D76C50] object:0];

    if ([(RUIPasscodeView *)self _requiresLocalPasscodeValidation])
    {
      LODWORD(v47) = 0;
      v17 = [getMCProfileConnectionClass_0() sharedConnection];
      v18 = [v17 unlockScreenTypeWithOutSimplePasscodeType:&v47];

      if (v18)
      {
        if (v18 == 2)
        {
          v19 = 0;
          goto LABEL_11;
        }

        if (v18 == 1)
        {
          v19 = 1;
LABEL_11:
          v20 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{v4, v5, v6, v7}];
          p_complexPasscodeField = &self->_complexPasscodeField;
          complexPasscodeField = self->_complexPasscodeField;
          self->_complexPasscodeField = v20;

          [(UITextField *)self->_complexPasscodeField setKeyboardAppearance:self->_keyboardAppearance];
          [(UITextField *)self->_complexPasscodeField setEnablesReturnKeyAutomatically:1];
          [(UITextField *)self->_complexPasscodeField addTarget:self action:sel__complexPasscodeFieldDidChange_ forControlEvents:983040];
          v23 = self->_complexPasscodeField;
          v24 = MEMORY[0x277D74300];
          v25 = [MEMORY[0x277D75418] currentDevice];
          v26 = [v25 userInterfaceIdiom];

          v27 = 18.0;
          if ((v26 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v27 = 23.0;
          }

          v28 = [v24 systemFontOfSize:{v27, v47}];
          [(UITextField *)v23 setFont:v28];

          [*p_complexPasscodeField setSecureTextEntry:1];
          [*p_complexPasscodeField setTextAlignment:1];
          v29 = [*p_complexPasscodeField layer];
          [v29 setBorderWidth:1.0];

          v30 = [*p_complexPasscodeField layer];
          v31 = [MEMORY[0x277D75348] _labelColor];
          v32 = v31;
          [v30 setBorderColor:{objc_msgSend(v31, "CGColor")}];

          v33 = [*p_complexPasscodeField layer];
          [v33 setCornerRadius:10.0];

          if (v19)
          {
            [*p_complexPasscodeField setKeyboardType:4];
          }

LABEL_29:
          [(UIScrollView *)self->_containerView addSubview:*p_complexPasscodeField];
          goto LABEL_30;
        }

        if (_isInternalInstall())
        {
          v35 = _RUILoggingFacility();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v18;
            _os_log_impl(&dword_21B93D000, v35, OS_LOG_TYPE_DEFAULT, "Error! Unexpected unlock type: %d", buf, 8u);
          }
        }
      }

      else
      {
        if (v47 == 1)
        {
          v34 = 6;
        }

        else
        {
          if (v47)
          {
            if (_isInternalInstall())
            {
              v46 = _RUILoggingFacility();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v47;
                _os_log_impl(&dword_21B93D000, v46, OS_LOG_TYPE_DEFAULT, "Error! Unlock type is MCUnlockScreenSimple, but value for MCSimplePasscodeType (%d) is invalid.", buf, 8u);
              }
            }

            goto LABEL_24;
          }

          v34 = 4;
        }

        self->_numberOfEntryFields = v34;
      }
    }

LABEL_24:
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v36 = getPSPasscodeFieldClass_softClass_0;
    v50 = getPSPasscodeFieldClass_softClass_0;
    if (!getPSPasscodeFieldClass_softClass_0)
    {
      *buf = MEMORY[0x277D85DD0];
      v52 = 3221225472;
      v53 = __getPSPasscodeFieldClass_block_invoke_0;
      v54 = &unk_2782E8258;
      v55 = &v47;
      __getPSPasscodeFieldClass_block_invoke_0(buf);
      v36 = v48[3];
    }

    v37 = v36;
    _Block_object_dispose(&v47, 8);
    v38 = [v36 alloc];
    v39 = [v38 initWithNumberOfEntryFields:{self->_numberOfEntryFields, v47}];
    p_complexPasscodeField = &self->_passcodeField;
    passcodeField = self->_passcodeField;
    self->_passcodeField = v39;

    [(PSPasscodeField *)self->_passcodeField setAccessibilityTraits:*MEMORY[0x277D765A8]];
    v41 = [(RUIPasscodeView *)self _passcodeFieldAccessibilityIdentifier];
    [(PSPasscodeField *)self->_passcodeField setAccessibilityIdentifier:v41];

    if (self->_foregroundColor)
    {
      [*p_complexPasscodeField setForegroundColor:?];
    }

    [(RUIPasscodeView *)self _updateFieldSpacer];
    [*p_complexPasscodeField setKeyboardAppearance:self->_keyboardAppearance];
    v42 = self->_containerView;
    v43 = [(RUIPasscodeView *)self activityIndicatorView];
    [(UIScrollView *)v42 addSubview:v43];

    [*p_complexPasscodeField setDelegate:self];
    goto LABEL_29;
  }

LABEL_30:
  v44 = self->_containerView;

  return v44;
}

- (id)_passcodeFieldAccessibilityIdentifier
{
  v3 = [(RUIElement *)self attributes];
  v4 = @"accessibilityIdentifier";
  v5 = [v3 objectForKeyedSubscript:@"accessibilityIdentifier"];

  v6 = [(RUIElement *)self attributes];
  v7 = v6;
  if (v5)
  {
    goto LABEL_4;
  }

  v4 = @"id";
  v8 = [v6 objectForKeyedSubscript:@"id"];

  if (v8)
  {
    v6 = [(RUIElement *)self attributes];
    v7 = v6;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:v4];

    goto LABEL_5;
  }

  v9 = @"passcodeField";
LABEL_5:

  return v9;
}

- (_TtC8RemoteUI28RUITextActivityIndicatorView)activityIndicatorView
{
  v3 = [(RUIElement *)self style];
  v4 = [v3 supportActivityIndicatorInPinView];

  if (v4)
  {
    activityIndicatorView = self->_activityIndicatorView;
    if (!activityIndicatorView)
    {
      v6 = objc_alloc_init(_TtC8RemoteUI28RUITextActivityIndicatorView);
      v7 = self->_activityIndicatorView;
      self->_activityIndicatorView = v6;

      activityIndicatorView = self->_activityIndicatorView;
    }

    v8 = activityIndicatorView;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)keyboardFrameDidChange:(id)a3
{
  containerView = self->_containerView;
  v5 = a3;
  v6 = [(UIScrollView *)containerView superview];
  v7 = [v6 keyboardSceneDelegate];
  v8 = [(UIScrollView *)self->_containerView superview];
  v9 = [v5 userInfo];

  [v7 verticalOverlapForView:v8 usingKeyboardInfo:v9];
  self->_keyboardHeight = v10;

  [(RUIPasscodeView *)self viewDidLayout];
}

- (void)setNumberOfEntryFields:(unint64_t)a3
{
  if (![(RUIPasscodeView *)self _requiresLocalPasscodeValidation]&& self->_numberOfEntryFields != a3)
  {
    self->_numberOfEntryFields = a3;
    [(PSPasscodeField *)self->_passcodeField setNumberOfEntryFields:a3];

    [(RUIPasscodeView *)self _updateFieldSpacer];
  }
}

- (void)populatePostbackDictionary:(id)a3
{
  v7 = a3;
  if (![(RUIPasscodeView *)self _requiresLocalPasscodeValidation])
  {
    v4 = [(RUIElement *)self attributes];
    v5 = [v4 objectForKeyedSubscript:@"id"];

    if ([v5 length])
    {
      submittedPIN = self->_submittedPIN;
      if (submittedPIN)
      {
        [v7 setObject:submittedPIN forKey:v5];
      }
    }
  }
}

- (void)performAction:(int)a3 forElement:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained passcodeViewOM:self activatedElement:v8 completion:v7];
}

- (id)subElementWithID:(id)a3
{
  v4 = a3;
  p_header = &self->_header;
  v6 = [(RUIElement *)self->_header identifier];
  v7 = [v6 isEqualToString:v4];

  if ((v7 & 1) != 0 || (p_header = &self->_footer, -[RUIElement identifier](self->_footer, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqualToString:v4], v8, v9))
  {
    v10 = *p_header;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setHeaderTitle:(id)a3
{
  v9 = a3;
  if (!self->_header)
  {
    v4 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:0 parent:self];
    header = self->_header;
    self->_header = v4;
  }

  v6 = [(RUIPasscodeView *)self headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(RUIPasscodeView *)self headerView];
    [v8 setTitle:v9];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  self->_appeared = 1;
  if (self->_pendingAutoFillToken)
  {
    if (_isInternalInstall())
    {
      v4 = _RUILoggingFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_21B93D000, v4, OS_LOG_TYPE_DEFAULT, "Filling pending PINView token", v13, 2u);
      }
    }

    v5 = [(RUIPasscodeView *)self passcodeField];
    [v5 setStringValue:self->_pendingAutoFillToken];

    pendingAutoFillToken = self->_pendingAutoFillToken;
    self->_pendingAutoFillToken = 0;
  }

  [(UIScrollView *)self->_containerView contentSize];
  v8 = v7;
  v9 = [(RUIPasscodeView *)self view];
  v10 = [v9 readableContentGuide];
  [v10 layoutFrame];
  v12 = v11;

  if ([(RUIPasscodeView *)self shouldManageScrollViewInsets])
  {
    [(UIScrollView *)self->_containerView setContentOffset:1 animated:0.0, fmax(v8 - v12, 0.0)];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  if (self->_passcodeField)
  {
    v4 = [(RUIElement *)self attributes];
    v5 = [v4 objectForKeyedSubscript:@"secure"];
    if (v5)
    {
      v6 = [(RUIElement *)self attributes];
      v7 = [v6 objectForKeyedSubscript:@"secure"];
      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = 1;
    }

    [(PSPasscodeField *)self->_passcodeField setSecurePasscodeEntry:v8];
    passcodeField = self->_passcodeField;

    [(PSPasscodeField *)passcodeField becomeFirstResponder];
  }

  else if (self->_complexPasscodeField)
  {
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
    [v12 setEnabled:0];
    v9 = [(RUIPasscodeView *)self page];
    v10 = [v9 navigationItem];
    [v10 setRightBarButtonItem:v12];

    [(UITextField *)self->_complexPasscodeField becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  self->_appeared = 0;
  passcodeField = self->_passcodeField;
  if (passcodeField || (passcodeField = self->_complexPasscodeField) != 0)
  {
    [passcodeField resignFirstResponder];
  }
}

- (void)viewDidLayout
{
  [(UIScrollView *)self->_containerView bounds];
  v123 = v3;
  v5 = v4;
  v6 = [(RUIPasscodeView *)self view];
  v7 = [v6 readableContentGuide];
  [v7 layoutFrame];
  v121 = v8;
  v10 = v9;

  keyboardHeight = 0.0;
  if (!+[RUIPlatform isAppleTV])
  {
    keyboardHeight = self->_keyboardHeight;
  }

  v12 = [(RUIPasscodeView *)self scrollView];
  [v12 adjustedContentInset];
  v14 = v13;

  complexPasscodeField = self->_complexPasscodeField;
  if (complexPasscodeField)
  {
    [(UITextField *)complexPasscodeField sizeToFit];
    [(UITextField *)self->_complexPasscodeField frame];
    v17 = v16;
    v19 = v18;
    v20 = [MEMORY[0x277D75418] currentDevice];
    v21 = [v20 userInterfaceIdiom];

    v22 = 14.0;
    if ((v21 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v22 = 24.0;
    }

    [(UITextField *)self->_complexPasscodeField setFrame:v22, v17, v123 + v22 * -2.0, v19 + v19];
  }

  passcodeField = self->_passcodeField;
  if (!passcodeField)
  {
    passcodeField = self->_complexPasscodeField;
  }

  v122 = passcodeField;
  [v122 frame];
  v25 = v24;
  v27 = v26;
  v28 = [(RUIPasscodeView *)self headerView];
  [v28 frame];

  v29 = [(RUIPasscodeView *)self headerView];
  v30 = objc_opt_respondsToSelector();

  v31 = [(RUIPasscodeView *)self headerView];
  v32 = v31;
  if (v30)
  {
    v33 = [(RUIPasscodeView *)self view];
    [v32 headerHeightForWidth:v33 inView:v10];
    v35 = v34;

    v114 = v10;
  }

  else
  {
    [v31 sizeThatFits:{v10, 1.79769313e308}];
    v114 = v36;
    v35 = v37;
  }

  v117 = keyboardHeight;
  v38 = v5 - keyboardHeight;

  v39 = [(RUIPasscodeView *)self HTMLHeaderView];
  [v39 frame];
  v41 = v40;
  v43 = v42;

  v44 = [(RUIPasscodeView *)self HTMLHeaderView];

  if (v44)
  {
    v45 = [(RUIPasscodeView *)self HTMLHeaderView];
    v46 = [(RUIPasscodeView *)self view];
    [v45 headerHeightForWidth:v46 inView:v10];
    v43 = v47;

    v41 = v10;
  }

  v48 = v38 - v14;
  v49 = [(RUIPasscodeView *)self footerView];
  [v49 frame];

  v50 = [(RUIPasscodeView *)self footerView];
  v51 = objc_opt_respondsToSelector();

  v52 = [(RUIPasscodeView *)self footerView];
  v53 = v52;
  v120 = v10;
  v119 = v41;
  if (v51)
  {
    v54 = [(RUIPasscodeView *)self view];
    [v53 footerHeightForWidth:v54 inView:v10];
    v56 = v55;
  }

  else
  {
    [v52 sizeThatFits:{v10, 1.79769313e308}];
    v56 = v57;
  }

  v58 = +[RUIPlatform isAppleTV];
  [v122 bounds];
  footer = self->_footer;
  v61 = footer == 0;
  v62 = footer != 0;
  v118 = v56;
  if (v61)
  {
    v63 = 0.0;
  }

  else
  {
    v63 = v56;
  }

  v64 = v59 + v63;
  header = self->_header;
  if (header)
  {
    v66 = v35;
  }

  else
  {
    v66 = 0.0;
  }

  HTMLHeader = self->_HTMLHeader;
  v68 = v64 + v66;
  if (header)
  {
    ++v62;
  }

  if (HTMLHeader)
  {
    v69 = v43;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v68 + v69;
  if (HTMLHeader)
  {
    ++v62;
  }

  v71 = fmax(v48 - v70, 0.0) / v62;
  if (v71 <= 20.0)
  {
    v72 = v71;
  }

  else
  {
    v72 = 20.0;
  }

  v116 = v35;
  v73 = v35 + v72;
  if (!header)
  {
    v73 = 0.0;
  }

  if (HTMLHeader)
  {
    v74 = v43 + v72;
  }

  else
  {
    v74 = 0.0;
  }

  if (v58)
  {
    v75 = -160.0;
  }

  else
  {
    v75 = 0.0;
  }

  if (v58)
  {
    v27 = 600.0;
  }

  v76 = (v48 - v27) * 0.5;
  if (v58)
  {
    v77 = v123;
  }

  else
  {
    v77 = v25;
  }

  v78 = v73 + v74;
  if (v76 <= v78)
  {
    v76 = v78;
  }

  v79 = v75 + v76;
  v80 = +[RUIPlatform isSolariumEnabled];
  v81 = round((v123 - v77) * 0.5);
  if (v80)
  {
    v81 = v121;
  }

  [v122 setFrame:{v81, v79, v77, v27}];
  if (self->_header)
  {
    v82 = [(RUIPasscodeView *)self page];
    v83 = [v82 showsTitlesAsHeaderViews];

    if ((v83 & 1) == 0)
    {
      v84 = 0.0;
      if (self->_HTMLHeader)
      {
        v84 = v43 + v72;
      }

      v85 = v79 - v72 - v84 - v35 - v75;
      v86 = (v123 - v115) * 0.5;
      v87 = floorf(v86);
      v88 = [(RUIPasscodeView *)self headerView];
      [v88 setFrame:{v87, v85, v115, v116}];
    }
  }

  if (self->_HTMLHeader)
  {
    v89 = (v123 - v119) * 0.5;
    v90 = floorf(v89);
    v91 = [(RUIPasscodeView *)self HTMLHeaderView];
    [v91 setFrame:{v90, v79 - v72 - v43 - v75, v119, v43}];
  }

  MaxY = v27 + v79;
  if (self->_footer)
  {
    v93 = v72 + MaxY;
    v94 = [(RUIPasscodeView *)self footerView];
    [v94 setFrame:{(v123 - v120) * 0.5, v93, v120, v118}];

    MaxY = v118 + v93;
  }

  v95 = [(RUIPasscodeView *)self activityIndicatorView];
  v96 = [v95 isHidden];

  if ((v96 & 1) == 0)
  {
    v97 = v72 + MaxY;
    v98 = [(RUIPasscodeView *)self activityIndicatorView];
    [v98 frame];

    v99 = [(RUIPasscodeView *)self activityIndicatorView];
    [v99 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v101 = v100;
    v103 = v102;

    v104 = [(RUIPasscodeView *)self activityIndicatorView];
    v105 = [v104 superview];
    [v105 bounds];
    v106 = CGRectGetMidX(v125) + v101 * -0.5;

    v107 = [(RUIPasscodeView *)self activityIndicatorView];
    [v107 setFrame:{v106, v97, v101, v103}];

    v126.origin.x = v106;
    v126.origin.y = v97;
    v126.size.width = v101;
    v126.size.height = v103;
    MaxY = CGRectGetMaxY(v126);
  }

  [(UIScrollView *)self->_containerView setContentSize:0.0, MaxY];
  [(UIScrollView *)self->_containerView contentInset];
  v109 = v108;
  v111 = v110;
  v113 = v112;
  if ([(RUIPasscodeView *)self shouldManageScrollViewInsets])
  {
    [(UIScrollView *)self->_containerView setContentInset:v109, v111, v117, v113];
  }
}

- (void)startActivityIndicator
{
  v3 = [(RUIPasscodeView *)self activityIndicatorView];
  [v3 startAnimating];

  v6 = [(RUIElement *)self pageElement];
  v4 = [v6 page];
  v5 = [v4 view];
  [v5 setNeedsLayout];
}

- (void)stopActivityIndicator
{
  v2 = [(RUIPasscodeView *)self activityIndicatorView];
  [v2 stopAnimating];
}

- (id)headerView
{
  v28[3] = *MEMORY[0x277D85DE8];
  if (self->_header && !self->_headerView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(RUIPasscodeView *)self page];
      [v3 showsTitlesAsHeaderViews];
      v4 = objc_opt_class();
    }

    else
    {
      v4 = 0;
    }

    v5 = [v4 alloc];
    v6 = [(RUIPasscodeView *)self header];
    v7 = [v6 attributes];
    v8 = [v5 initWithAttributes:v7];
    headerView = self->_headerView;
    self->_headerView = v8;

    [(RUIHeaderElement *)self->_header configureView:self->_headerView];
    if (self->_foregroundColor && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(RUIHeader *)self->_headerView setHeaderColor:self->_foregroundColor];
    }

    v10 = [(RUIPasscodeView *)self passcodeView];
    [v10 addSubview:self->_headerView];

    v11 = [(RUIPasscodeView *)self page];
    v12 = [v11 showsTitlesAsHeaderViews];

    if (v12)
    {
      [(RUIHeader *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
      v24 = MEMORY[0x277CCAAD0];
      v27 = [(RUIHeader *)self->_headerView topAnchor];
      v26 = [(UIScrollView *)self->_containerView topAnchor];
      v25 = [v27 constraintEqualToAnchor:v26];
      v28[0] = v25;
      v23 = [(RUIHeader *)self->_headerView leftAnchor];
      v13 = [(UIScrollView *)self->_containerView readableContentGuide];
      v14 = [v13 leftAnchor];
      v15 = [v23 constraintEqualToAnchor:v14];
      v28[1] = v15;
      v16 = [(RUIHeader *)self->_headerView rightAnchor];
      v17 = [(UIScrollView *)self->_containerView readableContentGuide];
      v18 = [v17 rightAnchor];
      v19 = [v16 constraintEqualToAnchor:v18];
      v28[2] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
      [v24 activateConstraints:v20];
    }

    if ([(RUIElement *)self hasImage])
    {
      [(RUIElement *)self loadImage];
    }
  }

  v21 = self->_headerView;

  return v21;
}

- (id)HTMLHeaderView
{
  if (self->_HTMLHeader)
  {
    if (!self->_HTMLHeaderView)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = objc_alloc_init(RUIHTMLHeaderView);
        HTMLHeaderView = self->_HTMLHeaderView;
        self->_HTMLHeaderView = v3;

        [(RUIHTMLHeaderElement *)self->_HTMLHeader configureView:self->_HTMLHeaderView];
        v5 = [(RUIPasscodeView *)self passcodeView];
        [v5 addSubview:self->_HTMLHeaderView];
      }
    }
  }

  v6 = self->_HTMLHeaderView;

  return v6;
}

- (id)footerView
{
  if (self->_footer && !self->_footerView)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    v3 = objc_alloc(objc_opt_class());
    v4 = [(RUIPasscodeView *)self footer];
    v5 = [v4 attributes];
    v6 = [v3 initWithAttributes:v5];
    footerView = self->_footerView;
    self->_footerView = v6;

    [(RemoteUITableFooter *)self->_footerView setDelegate:self];
    [(RUIElement *)self->_footer configureView:self->_footerView];
    if (self->_foregroundColor && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(RemoteUITableFooter *)self->_footerView setTextColor:self->_foregroundColor];
    }

    v8 = [(RUIPasscodeView *)self passcodeView];
    [v8 addSubview:self->_footerView];
  }

  v9 = self->_footerView;

  return v9;
}

- (void)footerView:(id)a3 activatedLinkWithURL:(id)a4
{
  if (self->_footer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    [WeakRetained passcodeViewOM:self activatedElement:self->_footer completion:0];
  }
}

- (void)submitPIN
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(RUIPasscodeView *)self _requiresLocalPasscodeValidation];
  passcodeField = self->_passcodeField;
  if (!passcodeField)
  {
    passcodeField = self->_complexPasscodeField;
  }

  v5 = passcodeField;
  if (!v3)
  {
    v15 = [(PSPasscodeField *)self->_passcodeField stringValue];
    [(RUIPasscodeView *)self setSubmittedPIN:v15];

    goto LABEL_7;
  }

  if (self->_passcodeValidationAttempts <= 2)
  {
    v16 = self->_passcodeField;
    if (v16)
    {
      v17 = [(PSPasscodeField *)v16 stringValue];
    }

    else
    {
      complexPasscodeField = self->_complexPasscodeField;
      if (!complexPasscodeField)
      {
        v19 = 0;
LABEL_15:
        v20 = [getMCProfileConnectionClass_0() sharedConnection];
        v27 = 0;
        v21 = [v20 unlockDeviceWithPasscode:v19 outError:&v27];
        v22 = v27;

        if (v22 && _isInternalInstall())
        {
          v23 = _RUILoggingFacility();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v22;
            _os_log_impl(&dword_21B93D000, v23, OS_LOG_TYPE_DEFAULT, "Error! Entered passcode does not validate: %@", buf, 0xCu);
          }
        }

        ++self->_passcodeValidationAttempts;

        if ((v21 & 1) == 0)
        {
          if (self->_passcodeValidationAttempts < 3)
          {
            [(RUIPasscodeView *)self _jiggleView:v5];
            v24 = dispatch_time(0, 250000000);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __28__RUIPasscodeView_submitPIN__block_invoke;
            block[3] = &unk_2782E7F30;
            block[4] = self;
            dispatch_after(v24, MEMORY[0x277D85CD0], block);
            goto LABEL_9;
          }

          goto LABEL_5;
        }

        [(RUIPasscodeView *)self setSubmittedPIN:0];
LABEL_7:
        WeakRetained = objc_loadWeakRetained(&self->_objectModel);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __28__RUIPasscodeView_submitPIN__block_invoke_2;
        v25[3] = &unk_2782E8018;
        v25[4] = self;
        [WeakRetained passcodeViewOM:self activatedElement:self completion:v25];
        goto LABEL_8;
      }

      v17 = [(UITextField *)complexPasscodeField text];
    }

    v19 = v17;
    goto LABEL_15;
  }

LABEL_5:
  v6 = MEMORY[0x277D75110];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TOO_MANY_FAILED_PASSCODE_ATTEMPTS" value:&stru_282D68F58 table:@"Localizable"];
  WeakRetained = [v6 alertControllerWithTitle:v8 message:0 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_282D68F58 table:@"Localizable"];
  v13 = [v10 actionWithTitle:v12 style:1 handler:0];
  [WeakRetained addAction:v13];

  v14 = [(RUIPasscodeView *)self page];
  [v14 presentViewController:WeakRetained animated:1 completion:0];

LABEL_8:
LABEL_9:
}

void __28__RUIPasscodeView_submitPIN__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 350000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__RUIPasscodeView_submitPIN__block_invoke_3;
  block[3] = &unk_2782E7F30;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)_clearPasscode
{
  passcodeField = self->_passcodeField;
  if (passcodeField)
  {

    [(PSPasscodeField *)passcodeField setStringValue:&stru_282D68F58];
  }

  else
  {
    complexPasscodeField = self->_complexPasscodeField;
    if (complexPasscodeField)
    {
      [(UITextField *)complexPasscodeField setText:&stru_282D68F58];
      v5 = self->_complexPasscodeField;

      [(RUIPasscodeView *)self _complexPasscodeFieldDidChange:v5];
    }
  }
}

- (void)autofillWithToken:(id)a3
{
  v5 = a3;
  if (self->_appeared)
  {
    v6 = [(RUIPasscodeView *)self passcodeField];
    [v6 setStringValue:v5];
  }

  else
  {
    if (_isInternalInstall())
    {
      v7 = _RUILoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_21B93D000, v7, OS_LOG_TYPE_DEFAULT, "PINView autofill pending appearance", v8, 2u);
      }
    }

    objc_storeStrong(&self->_pendingAutoFillToken, a3);
  }
}

- (void)_complexPasscodeFieldDidChange:(id)a3
{
  v4 = [(UITextField *)self->_complexPasscodeField text];
  if ([v4 length])
  {
    passcodeValidationAttempts = self->_passcodeValidationAttempts;

    if (passcodeValidationAttempts < 3)
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 0;
LABEL_6:
  v9 = [(RUIPasscodeView *)self page];
  v7 = [v9 navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:v6];
}

- (void)_doneButtonTapped:(id)a3
{
  v4 = [(UITextField *)self->_complexPasscodeField text];
  [(RUIPasscodeView *)self passcodeField:0 enteredPasscode:v4];
}

- (void)_jiggleView:(id)a3
{
  v14 = [a3 layer];
  v4 = [MEMORY[0x277CD9FA0] animation];
  [v4 setMass:1.20000005];
  [v4 setStiffness:1200.0];
  [v4 setDamping:12.0];
  [v4 setDuration:1.39999998];
  [v4 setFillMode:*MEMORY[0x277CDA228]];
  [v4 setDelegate:self];
  LODWORD(v5) = 30.0;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v4 setFromValue:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v4 setToValue:v7];

  v8 = [MEMORY[0x277CDA008] functionWithName:*MEMORY[0x277CDA9C8]];
  [v4 setValueFunction:v8];

  LODWORD(v9) = 1028389654;
  LODWORD(v10) = 990057071;
  LODWORD(v11) = 1059712716;
  LODWORD(v12) = 1.0;
  v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v9 :v10 :v11 :v12];
  [v4 setTimingFunction:v13];

  [v4 setKeyPath:@"transform"];
  [v14 addAnimation:v4 forKey:@"shake"];
}

- (BOOL)_requiresLocalPasscodeValidation
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"requireLocalPasscode"];

  LOBYTE(v2) = [v3 isEqual:@"true"];
  return v2;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(RUIPasscodeView *)self page];
  v6 = [v5 showsTitlesAsHeaderViews];

  v7 = [(RUIPasscodeView *)self headerView];
  v8 = v7;
  if (v6)
  {
    [v7 setIcon:v4 accessibilityLabel:0];
  }

  else
  {
    [v7 setIconImage:v4];
  }
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(RUIPasscodeView *)self page];
  v7 = [v6 showsTitlesAsHeaderViews];

  if ((v7 & 1) == 0)
  {
    v8 = [(RUIPasscodeView *)self headerView];
    [v8 setImageSize:{width, height}];
  }
}

- (void)setImageAlignment:(unint64_t)a3
{
  v5 = [(RUIPasscodeView *)self page];
  v6 = [v5 showsTitlesAsHeaderViews];

  if ((v6 & 1) == 0)
  {
    v7 = [(RUIPasscodeView *)self headerView];
    [v7 setImageAlignment:a3];
  }
}

- (RUIObjectModel)objectModel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);

  return WeakRetained;
}

- (RUIPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

@end