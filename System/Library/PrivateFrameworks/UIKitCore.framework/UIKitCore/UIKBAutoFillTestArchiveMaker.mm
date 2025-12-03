@interface UIKBAutoFillTestArchiveMaker
+ (id)archiveMakerWithViewControllerToSnapshot:(id)snapshot;
- (UIKBAutoFillTestArchiveMaker)initWithViewControllerToSnapshot:(id)snapshot;
- (id)_cloneBarButtonItem:(id)item;
- (id)_cloneButton:(id)button;
- (id)_cloneGenericView:(id)view;
- (id)_cloneLabel:(id)label;
- (id)_cloneNavigationItem:(id)item;
- (id)_cloneTableView:(id)view;
- (id)_cloneTextField:(id)field;
- (id)_cloneTextView:(id)view;
- (id)_cloneView:(id)view;
- (id)_cloneViewHierarchyFromRootView:(id)view;
- (id)_makeCopyOfObject:(id)object;
- (id)archiver:(id)archiver willEncodeObject:(id)object;
- (id)makeArchive;
- (void)_applyPropertiesFromLabel:(id)label toLabel:(id)toLabel;
- (void)_applyPropertiesFromView:(id)view toView:(id)toView;
@end

@implementation UIKBAutoFillTestArchiveMaker

+ (id)archiveMakerWithViewControllerToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = [[self alloc] initWithViewControllerToSnapshot:snapshotCopy];

  return v5;
}

- (UIKBAutoFillTestArchiveMaker)initWithViewControllerToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6 = [(UIKBAutoFillTestArchiveMaker *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewControllerToSnapshot, snapshot);
    v8 = v7;
  }

  return v7;
}

- (id)makeArchive
{
  testArchive = self->_testArchive;
  if (testArchive)
  {
    v3 = testArchive;
    goto LABEL_12;
  }

  v5 = objc_alloc_init(UIKBAutoFillTestArchive);
  v6 = self->_testArchive;
  self->_testArchive = v5;

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [(UIKBAutoFillTestArchive *)self->_testArchive setViewControllerClassName:v8];

  title = [(UIViewController *)self->_viewControllerToSnapshot title];
  [(UIKBAutoFillTestArchive *)self->_testArchive setViewControllerTitle:title];

  navigationItem = [(UIViewController *)self->_viewControllerToSnapshot navigationItem];
  v11 = [(UIKBAutoFillTestArchiveMaker *)self _cloneNavigationItem:navigationItem];
  [(UIKBAutoFillTestArchive *)self->_testArchive setViewControllerNavigationItem:v11];

  navigationController = [(UIViewController *)self->_viewControllerToSnapshot navigationController];
  if (navigationController)
  {
    [(UIKBAutoFillTestArchive *)self->_testArchive setRequiresNavigationControllerNesting:1];
    navigationController2 = [(UIViewController *)self->_viewControllerToSnapshot navigationController];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [(UIKBAutoFillTestArchive *)self->_testArchive setNavigationControllerClassName:v15];

    presentingViewController = [(UIViewController *)navigationController presentingViewController];
    if (!presentingViewController)
    {
      viewControllerToSnapshot = navigationController;
      goto LABEL_9;
    }

LABEL_7:
    parentViewController = presentingViewController;

LABEL_10:
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [(UIKBAutoFillTestArchive *)self->_testArchive setPresentingViewControllerClassName:v20];

    goto LABEL_11;
  }

  presentingViewController = [(UIViewController *)self->_viewControllerToSnapshot presentingViewController];
  if (presentingViewController)
  {
    goto LABEL_7;
  }

  viewControllerToSnapshot = self->_viewControllerToSnapshot;
LABEL_9:
  parentViewController = [(UIViewController *)viewControllerToSnapshot parentViewController];
  if (parentViewController)
  {
    goto LABEL_10;
  }

LABEL_11:
  view = [(UIViewController *)self->_viewControllerToSnapshot view];
  v22 = [(UIKBAutoFillTestArchiveMaker *)self _cloneViewHierarchyFromRootView:view];

  [v22 setAutoresizingMask:0];
  [(UIKBAutoFillTestArchive *)self->_testArchive setSnapshotView:v22];
  v3 = self->_testArchive;

LABEL_12:

  return v3;
}

- (id)_cloneView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIKBAutoFillTestArchiveMaker *)self _cloneTextField:viewCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UIKBAutoFillTestArchiveMaker *)self _cloneTextView:viewCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(UIKBAutoFillTestArchiveMaker *)self _cloneLabel:viewCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UIKBAutoFillTestArchiveMaker *)self _cloneButton:viewCopy];
        }

        else
        {
          [(UIKBAutoFillTestArchiveMaker *)self _cloneGenericView:viewCopy];
        }
        v5 = ;
      }
    }
  }

  v6 = v5;

  return v6;
}

- (void)_applyPropertiesFromView:(id)view toView:(id)toView
{
  viewCopy = view;
  toViewCopy = toView;
  if (viewCopy)
  {
    [viewCopy transform];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  [toViewCopy setTransform:v9];
  backgroundColor = [viewCopy backgroundColor];
  [toViewCopy setBackgroundColor:backgroundColor];

  [toViewCopy setOpaque:{objc_msgSend(viewCopy, "isOpaque")}];
  [toViewCopy setHidden:{objc_msgSend(viewCopy, "isHidden")}];
  [toViewCopy setUserInteractionEnabled:{objc_msgSend(viewCopy, "isUserInteractionEnabled")}];
  [viewCopy alpha];
  [toViewCopy setAlpha:?];
  [toViewCopy setContentMode:{objc_msgSend(viewCopy, "contentMode")}];
  tintColor = [viewCopy tintColor];
  [toViewCopy setTintColor:tintColor];
}

- (void)_applyPropertiesFromLabel:(id)label toLabel:(id)toLabel
{
  labelCopy = label;
  toLabelCopy = toLabel;
  [(UIKBAutoFillTestArchiveMaker *)self _applyPropertiesFromView:labelCopy toView:toLabelCopy];
  text = [labelCopy text];
  [toLabelCopy setText:text];

  [toLabelCopy setTextAlignment:{objc_msgSend(labelCopy, "textAlignment")}];
  shadowColor = [labelCopy shadowColor];
  [toLabelCopy setShadowColor:shadowColor];

  [labelCopy shadowOffset];
  [toLabelCopy setShadowOffset:?];
  [toLabelCopy setNumberOfLines:{objc_msgSend(labelCopy, "numberOfLines")}];
  [toLabelCopy setBaselineAdjustment:{objc_msgSend(labelCopy, "baselineAdjustment")}];
  [toLabelCopy setAdjustsFontSizeToFitWidth:{objc_msgSend(labelCopy, "adjustsFontSizeToFitWidth")}];
  [toLabelCopy setLineBreakMode:{objc_msgSend(labelCopy, "lineBreakMode")}];
  [labelCopy minimumScaleFactor];
  [toLabelCopy setMinimumScaleFactor:?];
  textColor = [labelCopy textColor];
  [toLabelCopy setTextColor:textColor];

  attributedText = [labelCopy attributedText];

  if (attributedText)
  {
    attributedText2 = [labelCopy attributedText];
    [toLabelCopy setAttributedText:attributedText2];
  }

  font = [labelCopy font];
  [toLabelCopy setFont:font];
}

- (id)_cloneLabel:(id)label
{
  labelCopy = label;
  v5 = [UILabel alloc];
  [labelCopy frame];
  v6 = [(UILabel *)v5 initWithFrame:?];
  [(UIKBAutoFillTestArchiveMaker *)self _applyPropertiesFromLabel:labelCopy toLabel:v6];

  return v6;
}

- (id)_cloneTextField:(id)field
{
  fieldCopy = field;
  v5 = [UITextField alloc];
  [fieldCopy frame];
  v6 = [(UITextField *)v5 initWithFrame:?];
  ++self->_currentTextFieldTag;
  [(UIView *)v6 setTag:?];
  [(UIKBAutoFillTestArchiveMaker *)self _applyPropertiesFromView:fieldCopy toView:v6];
  -[UITextField setAutocapitalizationType:](v6, "setAutocapitalizationType:", [fieldCopy autocapitalizationType]);
  -[UITextField setAutocorrectionType:](v6, "setAutocorrectionType:", [fieldCopy autocorrectionType]);
  -[UITextField setSpellCheckingType:](v6, "setSpellCheckingType:", [fieldCopy spellCheckingType]);
  -[UITextField setKeyboardType:](v6, "setKeyboardType:", [fieldCopy keyboardType]);
  -[UITextField setKeyboardAppearance:](v6, "setKeyboardAppearance:", [fieldCopy keyboardAppearance]);
  -[UITextField setReturnKeyType:](v6, "setReturnKeyType:", [fieldCopy returnKeyType]);
  -[UITextField setSecureTextEntry:](v6, "setSecureTextEntry:", [fieldCopy isSecureTextEntry]);
  textContentType = [fieldCopy textContentType];
  [(UITextField *)v6 setTextContentType:textContentType];

  passwordRules = [fieldCopy passwordRules];
  [(UITextField *)v6 setPasswordRules:passwordRules];

  -[UITextField setTextAlignment:](v6, "setTextAlignment:", [fieldCopy textAlignment]);
  -[UITextField setBorderStyle:](v6, "setBorderStyle:", [fieldCopy borderStyle]);
  font = [fieldCopy font];
  [(UITextField *)v6 setFont:font];

  -[UITextField setAdjustsFontSizeToFitWidth:](v6, "setAdjustsFontSizeToFitWidth:", [fieldCopy adjustsFontSizeToFitWidth]);
  textColor = [fieldCopy textColor];
  [(UITextField *)v6 setTextColor:textColor];

  text = [fieldCopy text];
  [(UITextField *)v6 setText:text];

  attributedText = [fieldCopy attributedText];

  if (attributedText)
  {
    attributedText2 = [fieldCopy attributedText];
    [(UITextField *)v6 setAttributedText:attributedText2];
  }

  placeholder = [fieldCopy placeholder];
  [(UITextField *)v6 setPlaceholder:placeholder];

  attributedPlaceholder = [fieldCopy attributedPlaceholder];

  if (attributedPlaceholder)
  {
    attributedPlaceholder2 = [fieldCopy attributedPlaceholder];
    [(UITextField *)v6 setAttributedPlaceholder:attributedPlaceholder2];
  }

  return v6;
}

- (id)_cloneTextView:(id)view
{
  viewCopy = view;
  v5 = [UITextView alloc];
  [viewCopy frame];
  v6 = [(UITextView *)v5 initWithFrame:?];
  ++self->_currentTextFieldTag;
  [(UIView *)v6 setTag:?];
  [(UIKBAutoFillTestArchiveMaker *)self _applyPropertiesFromView:viewCopy toView:v6];
  -[UITextView setAutocapitalizationType:](v6, "setAutocapitalizationType:", [viewCopy autocapitalizationType]);
  -[UITextView setAutocorrectionType:](v6, "setAutocorrectionType:", [viewCopy autocorrectionType]);
  -[UITextView setSpellCheckingType:](v6, "setSpellCheckingType:", [viewCopy spellCheckingType]);
  -[UITextView setKeyboardType:](v6, "setKeyboardType:", [viewCopy keyboardType]);
  -[UITextView setKeyboardAppearance:](v6, "setKeyboardAppearance:", [viewCopy keyboardAppearance]);
  -[UITextView setReturnKeyType:](v6, "setReturnKeyType:", [viewCopy returnKeyType]);
  -[UITextView setSecureTextEntry:](v6, "setSecureTextEntry:", [viewCopy isSecureTextEntry]);
  textContentType = [viewCopy textContentType];
  [(UITextView *)v6 setTextContentType:textContentType];

  -[UITextView setTextAlignment:](v6, "setTextAlignment:", [viewCopy textAlignment]);
  passwordRules = [viewCopy passwordRules];
  [(UITextView *)v6 setPasswordRules:passwordRules];

  font = [viewCopy font];
  [(UITextView *)v6 setFont:font];

  text = [viewCopy text];
  [(UITextView *)v6 setText:text];

  textColor = [viewCopy textColor];
  [(UITextView *)v6 setTextColor:textColor];

  attributedText = [viewCopy attributedText];

  if (attributedText)
  {
    attributedText2 = [viewCopy attributedText];
    [(UITextView *)v6 setAttributedText:attributedText2];
  }

  return v6;
}

- (id)_cloneButton:(id)button
{
  buttonCopy = button;
  v5 = +[UIButton buttonWithType:](UIButton, "buttonWithType:", [buttonCopy buttonType]);
  [(UIKBAutoFillTestArchiveMaker *)self _applyPropertiesFromView:buttonCopy toView:v5];
  [buttonCopy frame];
  [v5 setFrame:?];
  titleLabel = [buttonCopy titleLabel];
  titleLabel2 = [v5 titleLabel];
  [(UIKBAutoFillTestArchiveMaker *)self _applyPropertiesFromLabel:titleLabel toLabel:titleLabel2];

  v8 = [buttonCopy titleForState:0];
  [v5 setTitle:v8 forState:0];

  v9 = [buttonCopy titleColorForState:0];
  [v5 setTitleColor:v9 forState:0];

  v10 = [buttonCopy attributedTitleForState:0];
  if (v10)
  {
    [v5 setAttributedTitle:v10 forState:0];
  }

  v11 = [buttonCopy backgroundImageForState:0];
  [v5 setBackgroundImage:v11 forState:0];

  v12 = [buttonCopy imageForState:0];
  [v5 setImage:v12 forState:0];

  return v5;
}

- (id)_cloneGenericView:(id)view
{
  viewCopy = view;
  v5 = [UIView alloc];
  [viewCopy frame];
  v6 = [(UIView *)v5 initWithFrame:?];
  [(UIKBAutoFillTestArchiveMaker *)self _applyPropertiesFromView:viewCopy toView:v6];

  return v6;
}

- (id)_cloneTableView:(id)view
{
  v70 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = [UITableView alloc];
  [viewCopy frame];
  v10 = -[UITableView initWithFrame:style:](v5, "initWithFrame:style:", [viewCopy style], v6, v7, v8, v9);
  currentTableViewTag = self->_currentTableViewTag;
  selfCopy = self;
  self->_currentTableViewTag = currentTableViewTag + 1;
  v55 = v10;
  v56 = currentTableViewTag + 1;
  [(UIView *)v10 setTag:?];
  v12 = objc_alloc_init(UIKBAutoFillTestTableViewDataSource);
  numberOfSections = [viewCopy numberOfSections];
  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      -[UIKBAutoFillTestTableViewDataSource setNumberOfRows:forSection:](v12, "setNumberOfRows:forSection:", [viewCopy numberOfRowsInSection:i], i);
    }
  }

  v58 = numberOfSections;
  v64 = v12;
  indexPathsForVisibleRows = [viewCopy indexPathsForVisibleRows];
  v16 = [indexPathsForVisibleRows mutableCopy];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v59 = v16;
  obj = [v16 copy];
  v17 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
  v63 = viewCopy;
  if (v17)
  {
    v18 = v17;
    v19 = *v66;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v65 + 1) + 8 * j);
        v22 = [viewCopy cellForRowAtIndexPath:v21];
        v23 = v22;
        if (v22)
        {
          contentView = [v22 contentView];
          v25 = [(UIKBAutoFillTestArchiveMaker *)selfCopy _makeCopyOfObject:contentView];

          v26 = [UITableViewCell alloc];
          style = [v23 style];
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          v30 = [(UITableViewCell *)v26 initWithStyle:style reuseIdentifier:uUIDString];

          [v23 frame];
          [(UITableViewCell *)v30 setFrame:?];
          contentView2 = [(UITableViewCell *)v30 contentView];
          [contentView2 addSubview:v25];

          v32 = [UIKBTestAutoFillTableViewCellData alloc];
          [v23 frame];
          v33 = [(UIKBTestAutoFillTableViewCellData *)v32 initWithCell:v30 height:CGRectGetHeight(v72)];
          [(UIKBAutoFillTestTableViewDataSource *)v64 setCellData:v33 forRowAtIndexPath:v21];

          viewCopy = v63;
        }

        else
        {
          [v59 removeObject:v21];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v18);
  }

  delegate = [viewCopy delegate];
  dataSource = [viewCopy dataSource];
  obja = objc_opt_respondsToSelector();
  v36 = dataSource;
  v57 = objc_opt_respondsToSelector();
  v37 = objc_opt_respondsToSelector();
  v38 = objc_opt_respondsToSelector();
  v39 = objc_opt_respondsToSelector();
  v40 = objc_opt_respondsToSelector();
  if (v58 >= 1)
  {
    v41 = 0;
    v42 = v37 & v39;
    v43 = v38 & v40;
    do
    {
      if (v42)
      {
        [delegate tableView:viewCopy heightForHeaderInSection:v41];
        v45 = v44;
        if (v44 <= 0.0)
        {
          v46 = 0;
        }

        else
        {
          v46 = [delegate tableView:viewCopy viewForHeaderInSection:v41];
        }
      }

      else
      {
        v46 = 0;
        v45 = 0.0;
      }

      if (obja)
      {
        v47 = [v36 tableView:viewCopy titleForHeaderInSection:v41];
      }

      else
      {
        v47 = 0;
      }

      if (v46 | v47)
      {
        v48 = [[UIKBAutoFillTestTableViewHeaderFooterData alloc] initWithTitle:v47 view:v46 height:v45];
        [(UIKBAutoFillTestTableViewDataSource *)v64 setHeaderData:v48 forSection:v41];

        viewCopy = v63;
      }

      if (v43)
      {
        [delegate tableView:viewCopy heightForFooterInSection:v41];
        v50 = v49;
        if (v49 <= 0.0)
        {
          v51 = 0;
        }

        else
        {
          v51 = [delegate tableView:viewCopy viewForFooterInSection:v41];
        }
      }

      else
      {
        v51 = 0;
        v50 = 0.0;
      }

      if (v57)
      {
        v52 = [v36 tableView:viewCopy titleForFooterInSection:v41];
      }

      else
      {
        v52 = 0;
      }

      if (v51 | v52)
      {
        v53 = [[UIKBAutoFillTestTableViewHeaderFooterData alloc] initWithTitle:v52 view:v51 height:v50];
        [(UIKBAutoFillTestTableViewDataSource *)v64 setFooterData:v53 forSection:v41];

        viewCopy = v63;
      }

      ++v41;
    }

    while (v58 != v41);
  }

  [(UIKBAutoFillTestArchive *)selfCopy->_testArchive setTableViewDataSource:v64 forTableViewWithTag:v56];

  return v55;
}

- (id)_cloneViewHierarchyFromRootView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIKBAutoFillTestArchiveMaker *)self _cloneTableView:viewCopy];
  }

  else
  {
    v5 = [(UIKBAutoFillTestArchiveMaker *)self _cloneView:viewCopy];
    if ([v5 isMemberOfClass:objc_opt_class()])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      subviews = [viewCopy subviews];
      v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(subviews);
            }

            v11 = [(UIKBAutoFillTestArchiveMaker *)self _cloneViewHierarchyFromRootView:*(*(&v13 + 1) + 8 * i)];
            [v5 addSubview:v11];
          }

          v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }
  }

  return v5;
}

- (id)_cloneBarButtonItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(UIBarButtonItem);
  largeContentSizeImage = [itemCopy largeContentSizeImage];
  [(UIBarButtonItem *)v5 setLargeContentSizeImage:largeContentSizeImage];

  [itemCopy largeContentSizeImageInsets];
  [(UIBarButtonItem *)v5 setLargeContentSizeImageInsets:?];
  -[UIBarButtonItem setEnabled:](v5, "setEnabled:", [itemCopy isEnabled]);
  if ([itemCopy isSystemItem])
  {
    -[UIBarButtonItem _setSystemItem:](v5, "_setSystemItem:", [itemCopy systemItem]);
  }

  else if ([itemCopy isCustomViewItem])
  {
    customView = [itemCopy customView];
    v8 = [(UIKBAutoFillTestArchiveMaker *)self _makeCopyOfObject:customView];
    [(UIBarButtonItem *)v5 setCustomView:v8];
  }

  title = [itemCopy title];
  [(UIBarButtonItem *)v5 setTitle:title];

  [itemCopy _width];
  if (v10 != 0.0)
  {
    [itemCopy _width];
    [(UIBarButtonItem *)v5 _setWidth:?];
  }

  image = [itemCopy image];
  [(UIBarButtonItem *)v5 setImage:image];

  [itemCopy imageInsets];
  [(UIBarButtonItem *)v5 setImageInsets:?];
  landscapeImagePhone = [itemCopy landscapeImagePhone];
  [(UIBarButtonItem *)v5 setLandscapeImagePhone:landscapeImagePhone];

  [itemCopy landscapeImagePhoneInsets];
  [(UIBarButtonItem *)v5 setLandscapeImagePhoneInsets:?];
  tintColor = [itemCopy tintColor];
  [(UIBarButtonItem *)v5 setTintColor:tintColor];

  return v5;
}

- (id)_cloneNavigationItem:(id)item
{
  itemCopy = item;
  v5 = [UINavigationItem alloc];
  title = [itemCopy title];
  v7 = [(UINavigationItem *)v5 initWithTitle:title];

  prompt = [itemCopy prompt];
  [(UINavigationItem *)v7 setPrompt:prompt];

  backButtonTitle = [itemCopy backButtonTitle];
  [(UINavigationItem *)v7 setBackButtonTitle:backButtonTitle];

  backBarButtonItem = [itemCopy backBarButtonItem];
  [(UINavigationItem *)v7 setBackBarButtonItem:backBarButtonItem];

  leftBarButtonItems = [itemCopy leftBarButtonItems];
  if ([leftBarButtonItems count])
  {
    leftBarButtonItem = [(UIKBAutoFillTestArchiveMaker *)self _makeCopyOfObject:leftBarButtonItems];
    [(UINavigationItem *)v7 setLeftBarButtonItems:leftBarButtonItem];
  }

  else
  {
    leftBarButtonItem = [itemCopy leftBarButtonItem];
    v13 = [(UIKBAutoFillTestArchiveMaker *)self _makeCopyOfObject:leftBarButtonItem];
    [(UINavigationItem *)v7 setLeftBarButtonItem:v13];
  }

  titleView = [itemCopy titleView];
  if (titleView)
  {
    v15 = titleView;
    v16 = [(UIKBAutoFillTestArchiveMaker *)self _makeCopyOfObject:titleView];

    [(UINavigationItem *)v7 setTitleView:v16];
  }

  rightBarButtonItems = [itemCopy rightBarButtonItems];
  if ([rightBarButtonItems count])
  {
    rightBarButtonItem = [(UIKBAutoFillTestArchiveMaker *)self _makeCopyOfObject:rightBarButtonItems];
    [(UINavigationItem *)v7 setRightBarButtonItems:rightBarButtonItem];
  }

  else
  {
    rightBarButtonItem = [itemCopy rightBarButtonItem];
    v19 = [(UIKBAutoFillTestArchiveMaker *)self _makeCopyOfObject:rightBarButtonItem];
    [(UINavigationItem *)v7 setRightBarButtonItem:v19];
  }

  if (dyld_program_sdk_at_least())
  {
    -[UINavigationItem setLargeTitleDisplayMode:](v7, "setLargeTitleDisplayMode:", [itemCopy largeTitleDisplayMode]);
  }

  return v7;
}

- (id)_makeCopyOfObject:(id)object
{
  if (object)
  {
    v4 = MEMORY[0x1E696ACC8];
    objectCopy = object;
    v6 = [[v4 alloc] initRequiringSecureCoding:0];
    [v6 setDelegate:self];
    [v6 encodeObject:objectCopy forKey:@"Object"];

    encodedData = [v6 encodedData];
    v11 = 0;
    v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:encodedData error:&v11];
    [v8 setRequiresSecureCoding:0];
    v9 = [v8 decodeObjectForKey:@"Object"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  v37 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    if (!isUIKitClass_UIKitBundle)
    {
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = isUIKitClass_UIKitBundle;
      isUIKitClass_UIKitBundle = v8;
    }

    v10 = NSStringFromClass(v7);
    v11 = [isUIKitClass_UIKitBundle classNamed:v10];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        ++self->_currentTextFieldTag;
        [objectCopy setTag:?];
      }

      v12 = objectCopy;
      goto LABEL_13;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(UIKBAutoFillTestArchiveMaker *)self _cloneNavigationItem:objectCopy];
LABEL_13:
    v13 = v12;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(UIKBAutoFillTestArchiveMaker *)self _cloneBarButtonItem:objectCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = objectCopy;
  v17 = v16;
  if (isKindOfClass)
  {
    v13 = [(UIKBAutoFillTestArchiveMaker *)self _cloneView:v16];
    if ([v13 isMemberOfClass:objc_opt_class()])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      subviews = [v17 subviews];
      v19 = [subviews countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v33;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(subviews);
            }

            v23 = *(*(&v32 + 1) + 8 * i);
            [v23 frame];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
            [v23 removeFromSuperview];
            [v23 setTranslatesAutoresizingMaskIntoConstraints:1];
            [v23 setFrame:{v25, v27, v29, v31}];
            [v13 addSubview:v23];
          }

          v20 = [subviews countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v20);
      }
    }
  }

  else
  {
    v13 = v16;
  }

LABEL_14:

  return v13;
}

@end