@interface UIReferenceLibraryViewController
+ (BOOL)_shouldShowDefineForTerm:(id)a3;
+ (BOOL)dictionaryHasDefinitionForTerm:(NSString *)term;
+ (id)_colorAttributes;
+ (id)_defaultButtonImage;
+ (id)_dictionaryDefinitionAttributes;
+ (id)_localizedDictionaryTitleAttributes;
+ (id)_pressedButtonImage;
- (BOOL)shouldAutorotate;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (UIReferenceLibraryViewController)init;
- (UIReferenceLibraryViewController)initWithCoder:(NSCoder *)coder;
- (UIReferenceLibraryViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (UIReferenceLibraryViewController)initWithTerm:(NSString *)term;
- (id)_backgroundColor;
- (id)_colorAttributes;
- (id)_defaultButtonImage;
- (id)_dictionaryDefinitionAttributes;
- (id)_diddlyDoViewLineColor;
- (id)_foregroundColor;
- (id)_localizedDictionaryTitleAttributes;
- (id)_pressedButtonImage;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didResignContentViewControllerOfPopover:(id)a3;
- (void)_dismissModalReferenceView:(id)a3;
- (void)_installDoneButtonOnViewControllerIfNeeded:(id)a3;
- (void)_installRequiredElementsOnViewController:(id)a3;
- (void)_searchWeb:(id)a3;
- (void)_setPopoverController:(id)a3;
- (void)_willBecomeContentViewControllerOfPopover:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pushDownloadManager:(id)a3;
- (void)setEnableRotation:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)window:(id)a3 setupWithInterfaceOrientation:(int64_t)a4;
@end

@implementation UIReferenceLibraryViewController

- (UIReferenceLibraryViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"-[UIReferenceLibraryViewController initWithNibName:bundle:] is not a valid initializer. You must call -[UIReferenceLibraryViewController initWithTerm:]."];

  return 0;
}

- (UIReferenceLibraryViewController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIReferenceLibraryViewController init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (UIReferenceLibraryViewController)initWithTerm:(NSString *)term
{
  v5 = term;
  if (!v5)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v6 raise:v7 format:{@"-[%@ %s] does not accept nil as an argument.", v9, sel_getName(a2)}];
  }

  v17.receiver = self;
  v17.super_class = UIReferenceLibraryViewController;
  v10 = [(UIViewController *)&v17 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = [(NSString *)v5 copy];
    v12 = v10->_term;
    v10->_term = v11;

    v13 = +[_UIDictionaryManager assetManager];
    v14 = [v13 _definitionValuesForTerm:v5];
    definitionValues = v10->_definitionValues;
    v10->_definitionValues = v14;

    [(UIViewController *)v10 setPreferredContentSize:320.0, 420.0];
  }

  return v10;
}

- (UIReferenceLibraryViewController)initWithCoder:(NSCoder *)coder
{
  v4.receiver = self;
  v4.super_class = UIReferenceLibraryViewController;
  return [(UIViewController *)&v4 initWithCoder:coder];
}

+ (BOOL)_shouldShowDefineForTerm:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && [v3 length] && objc_msgSend(v4, "length") < 0xC9;

  return v5;
}

+ (BOOL)dictionaryHasDefinitionForTerm:(NSString *)term
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = term;
  v4 = v3;
  if (v3 && [(NSString *)v3 length]&& [(NSString *)v4 length]<= 0xC8)
  {
    v7 = +[_UIDictionaryManager assetManager];
    v8 = [v7 _allAvailableDefinitionDictionaries];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v9 = v8;
    v5 = [v9 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v10 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v12 + 1) + 8 * i) _hasDefinitionForTerm:{v4, v12}])
          {
            LOBYTE(v5) = 1;
            goto LABEL_16;
          }
        }

        v5 = [v9 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_searchWeb:(id)a3
{
  term = self->_term;
  v5 = MEMORY[0x1E696AB08];
  v6 = a3;
  v7 = [v5 URLQueryAllowedCharacterSet];
  v11 = [(NSString *)term stringByAddingPercentEncodingWithAllowedCharacters:v7];

  v8 = MEMORY[0x1E695DFF8];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-web-search://?%@", v11];
  v10 = [v8 URLWithString:v9];

  [UIApp openURL:v10 options:MEMORY[0x1E695E0F8] completionHandler:&__block_literal_global_146];
  [(UIReferenceLibraryViewController *)self _dismissModalReferenceView:v6];
}

- (void)_dismissModalReferenceView:(id)a3
{
  v4 = [(UIReferenceLibraryViewController *)self dismissCompletionHandler];

  if (v4)
  {
    v5 = [(UIReferenceLibraryViewController *)self dismissCompletionHandler];
    [(UIViewController *)self dismissViewControllerAnimated:1 completion:v5];

    [(UIReferenceLibraryViewController *)self setDismissCompletionHandler:0];

    [(UIReferenceLibraryViewController *)self setEnableRotation:0];
  }

  else
  {

    [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_installRequiredElementsOnViewController:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [UIBarButtonItem alloc];
  v6 = _UINSLocalizedStringWithDefaultValue(@"Manage", @"Manage");
  v7 = [(UIBarButtonItem *)v5 initWithTitle:v6 style:0 target:self action:sel_pushDownloadManager_];

  v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v9 = [UIBarButtonItem alloc];
  v10 = _UINSLocalizedStringWithDefaultValue(@"Search Web", @"Search Web");
  v11 = [(UIBarButtonItem *)v9 initWithTitle:v10 style:0 target:self action:sel__searchWeb_];

  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  [v4 setToolbarItems:v12];
  [(UIReferenceLibraryViewController *)self _installDoneButtonOnViewControllerIfNeeded:v4];
}

- (void)_installDoneButtonOnViewControllerIfNeeded:(id)a3
{
  v14 = a3;
  v4 = self;
  v5 = [(UIViewController *)v4 _existingPresentationControllerImmediate:0 effective:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

LABEL_4:
    v8 = [v14 navigationItem];
    [(UIBarButtonItem *)v8 setRightBarButtonItem:0];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(UIViewController *)v4 _popoverController];

  if (v7)
  {
    goto LABEL_4;
  }

  v9 = [v14 navigationItem];
  v10 = [v9 rightBarButtonItem];

  if (!v10)
  {
    v11 = [UIBarButtonItem alloc];
    v12 = _UINSLocalizedStringWithDefaultValue(@"Done", @"Done");
    v8 = [(UIBarButtonItem *)v11 initWithTitle:v12 style:0 target:v4 action:sel__dismissModalReferenceView_];

    v13 = [v14 navigationItem];
    [v13 setRightBarButtonItem:v8];

    goto LABEL_5;
  }

LABEL_6:
}

- (void)pushDownloadManager:(id)a3
{
  v4 = [[_UIRemoteDictionaryViewController alloc] initWithStyle:0];
  [(UINavigationController *)self->_baseNavController pushViewController:v4 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"definition_cell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"definition_cell"];
    [(UITableViewCell *)v7 setAccessoryType:1];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(UITableViewCell *)v7 contentView];
  v9 = [v8 subviews];

  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v20 + 1) + 8 * i) removeFromSuperview];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = [_UIShortDefinitionView alloc];
  v15 = [(UITableViewCell *)v7 contentView];
  [v15 bounds];
  v16 = [(_UIShortDefinitionView *)v14 initWithFrame:?];

  v17 = -[NSArray objectAtIndex:](self->_definitionValues, "objectAtIndex:", [v6 section]);
  [(_UIShortDefinitionView *)v16 setDefinitionValue:v17];

  v18 = [(UITableViewCell *)v7 contentView];
  [v18 addSubview:v16];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_definitionValues objectAtIndex:a4];
  v5 = [v4 localizedDictionaryName];
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v5 uppercaseStringWithLocale:v6];

  return v7;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [_UILongDefinitionViewController alloc];
  v7 = -[NSArray objectAtIndex:](self->_definitionValues, "objectAtIndex:", [v5 section]);
  v8 = [(_UILongDefinitionViewController *)v6 initWithDefinitionValue:v7];

  [(UIReferenceLibraryViewController *)self _installRequiredElementsOnViewController:v8];
  [(UINavigationController *)self->_baseNavController pushViewController:v8 animated:1];

  return v5;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v6 = [a4 toolbarItems];
  v7 = [v6 count] == 0;

  [v8 setToolbarHidden:v7];
}

- (id)_backgroundColor
{
  v2 = objc_opt_class();

  return [v2 _backgroundColor];
}

- (id)_foregroundColor
{
  v2 = objc_opt_class();

  return [v2 _foregroundColor];
}

- (id)_diddlyDoViewLineColor
{
  v2 = objc_opt_class();

  return [v2 _diddlyDoViewLineColor];
}

+ (id)_defaultButtonImage
{
  v2 = _UIImageWithName(@"UIReferenceLibraryViewControllerButtonNormal");
  v3 = [v2 stretchableImageWithLeftCapWidth:5 topCapHeight:5];

  return v3;
}

- (id)_defaultButtonImage
{
  v2 = objc_opt_class();

  return [v2 _defaultButtonImage];
}

+ (id)_pressedButtonImage
{
  v2 = _UIImageWithName(@"UIReferenceLibraryViewControllerButtonPressed");
  v3 = [v2 stretchableImageWithLeftCapWidth:5 topCapHeight:5];

  return v3;
}

- (id)_pressedButtonImage
{
  v2 = objc_opt_class();

  return [v2 _pressedButtonImage];
}

+ (id)_localizedDictionaryTitleAttributes
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = *off_1E70EC918;
  v3 = [off_1E70ECC18 fontWithName:@"Helvetica-Bold" size:14.0];
  v9[0] = v3;
  v8[1] = *off_1E70EC920;
  v4 = [a1 _foregroundColor];
  v9[1] = v4;
  v8[2] = *off_1E70EC8D0;
  v5 = [a1 _backgroundColor];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)_localizedDictionaryTitleAttributes
{
  v2 = objc_opt_class();

  return [v2 _localizedDictionaryTitleAttributes];
}

+ (id)_dictionaryDefinitionAttributes
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = *off_1E70EC918;
  v3 = [off_1E70ECC18 fontWithName:@"Baskerville" size:16.0];
  v9[0] = v3;
  v8[1] = *off_1E70EC920;
  v4 = [a1 _foregroundColor];
  v9[1] = v4;
  v8[2] = *off_1E70EC8D0;
  v5 = [a1 _backgroundColor];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)_dictionaryDefinitionAttributes
{
  v2 = objc_opt_class();

  return [v2 _dictionaryDefinitionAttributes];
}

+ (id)_colorAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *off_1E70EC920;
  v3 = [a1 _foregroundColor];
  v8[0] = v3;
  v7[1] = *off_1E70EC8D0;
  v4 = [a1 _backgroundColor];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)_colorAttributes
{
  v2 = objc_opt_class();

  return [v2 _colorAttributes];
}

- (void)viewDidLoad
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = UIReferenceLibraryViewController;
  [(UIViewController *)&v13 viewDidLoad];
  v3 = [objc_alloc(DataDetectorsUIGetClass(@"DDParsecCollectionViewController")) initWithString:self->_term range:0 dictionaryOnly:{-[NSString length](self->_term, "length"), 1}];
  baseNavController = self->_baseNavController;
  self->_baseNavController = v3;

  [(UIViewController *)self addChildViewController:self->_baseNavController];
  v5 = [(UIViewController *)self view];
  v6 = [(UIViewController *)self->_baseNavController view];
  [v5 addSubview:v6];

  v7 = [(UIViewController *)self->_baseNavController view];
  v8 = [(UIViewController *)self view];
  [v8 bounds];
  [v7 setFrame:?];

  [(UINavigationController *)self->_baseNavController setToolbarHidden:0];
  [(UINavigationController *)self->_baseNavController setDelegate:self];
  v9 = self->_baseNavController;
  v10 = [(UIViewController *)self presentationController];
  [v10 setDelegate:v9];

  v14[0] = 0x1EFE32560;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(UIViewController *)self _registerForTraitTokenChanges:v11 withTarget:self action:sel__semanticContextTraitChanged];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIReferenceLibraryViewController;
  [(UIViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(UIViewController *)self view];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)_setPopoverController:(id)a3
{
  v3.receiver = self;
  v3.super_class = UIReferenceLibraryViewController;
  [(UIViewController *)&v3 _setPopoverController:a3];
}

- (void)_willBecomeContentViewControllerOfPopover:(id)a3
{
  v4 = a3;
  [(UIReferenceLibraryViewController *)self _setPopoverController:v4];
  self->_oldPopoverStyle = [v4 _popoverBackgroundStyle];
  [v4 _setPopoverBackgroundStyle:2];
  v5.receiver = self;
  v5.super_class = UIReferenceLibraryViewController;
  [(UIViewController *)&v5 _willBecomeContentViewControllerOfPopover:v4];
}

- (void)_didResignContentViewControllerOfPopover:(id)a3
{
  v4 = a3;
  [(UIReferenceLibraryViewController *)self _setPopoverController:0];
  [v4 _setPopoverBackgroundStyle:self->_oldPopoverStyle];
  v5.receiver = self;
  v5.super_class = UIReferenceLibraryViewController;
  [(UIViewController *)&v5 _didResignContentViewControllerOfPopover:v4];
}

- (void)setEnableRotation:(BOOL)a3
{
  if (self->_enableRotation != a3)
  {
    if (a3)
    {
      self->_previousIgnoreOrientation = [(UIViewController *)self _ignoreAppSupportedOrientations];
      previousIgnoreOrientation = 1;
    }

    else
    {
      previousIgnoreOrientation = self->_previousIgnoreOrientation;
    }

    [(UIViewController *)self _setIgnoreAppSupportedOrientations:previousIgnoreOrientation];
    self->_enableRotation = a3;
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_enableRotation)
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);

    return (MethodImplementation)(self, a2);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIReferenceLibraryViewController;
    return [(UIViewController *)&v7 supportedInterfaceOrientations];
  }
}

- (BOOL)shouldAutorotate
{
  if (self->_enableRotation)
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);

    return (MethodImplementation)(self, a2);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIReferenceLibraryViewController;
    return [(UIViewController *)&v7 shouldAutorotate];
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  if (self->_enableRotation)
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);

    return (MethodImplementation)(self, a2, a3);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIReferenceLibraryViewController;
    return [(UIViewController *)&v9 shouldAutorotateToInterfaceOrientation:a3];
  }
}

- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)a3
{
  if (self->_enableRotation)
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);

    return (MethodImplementation)(self, a2, a3);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIReferenceLibraryViewController;
    return [(UIViewController *)&v9 _preferredInterfaceOrientationGivenCurrentOrientation:a3];
  }
}

- (void)window:(id)a3 setupWithInterfaceOrientation:(int64_t)a4
{
  if (self->_enableRotation)
  {
    v8 = a3;
    v9 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v9, a2);
    (MethodImplementation)(self, a2, v8, a4);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIReferenceLibraryViewController;
    [(UIViewController *)&v11 window:a3 setupWithInterfaceOrientation:a4];
  }
}

@end