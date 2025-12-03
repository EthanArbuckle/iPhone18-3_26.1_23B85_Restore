@interface TSWPHyperlinkSettingsViewController
- (TSWPHyperlinkSettingsViewController)initWithHyperlink:(id)hyperlink readOnly:(BOOL)only;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)keyboardDidHideOrUndock:(id)undock;
- (void)keyboardDidShowOrDock:(id)dock;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TSWPHyperlinkSettingsViewController

- (TSWPHyperlinkSettingsViewController)initWithHyperlink:(id)hyperlink readOnly:(BOOL)only
{
  v6 = [(TSWPHyperlinkSettingsViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_readOnly = only;
    [(TSWPHyperlinkSettingsViewController *)v6 setHyperlink:hyperlink];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPHyperlinkSettingsViewController;
  [(TSWPHyperlinkSettingsViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = +[TSWPHyperlinkUIController defaultTableView];
  [v3 setDataSource:self];
  [v3 setDelegate:self];
  [(TSWPHyperlinkSettingsViewController *)self setView:v3];
  [-[TSWPHyperlinkSettingsViewController navigationItem](self "navigationItem")];
  [(TSWPHyperlinkSettingsViewController *)self setEdgesForExtendedLayout:0];
  [TSKPopoverBasedViewController preferredContentSizeForTableView:v3];

  [(TSWPHyperlinkSettingsViewController *)self setPreferredContentSize:?];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_readOnly)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
  v8 = [(NSString *)[(NSURL *)[(TSWPHyperlinkField *)[(TSWPHyperlinkSettingsViewController *)self hyperlink] url] scheme] isEqualToString:@"mailto"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"cell%ld.%ld", objc_msgSend(path, "section"), objc_msgSend(path, "row")];
  v10 = [view dequeueReusableCellWithIdentifier:v9];
  if (!v10)
  {
    if ([path section])
    {
      v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
      [-[TSWPTextFieldTableViewCell textLabel](v10 "textLabel")];
      [-[TSWPTextFieldTableViewCell textLabel](v10 "textLabel")];
      v11 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
      textLabel = [(TSWPTextFieldTableViewCell *)v10 textLabel];
LABEL_4:
      [(UITextField *)textLabel setTextColor:v11];
      goto LABEL_5;
    }

    v10 = [[TSWPTextFieldTableViewCell alloc] initWithStyle:1 reuseIdentifier:v9];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:{-[TSWPTextFieldTableViewCell textField](v10, "textField")}];
    -[UITextField setTag:](-[TSWPTextFieldTableViewCell textField](v10, "textField"), "setTag:", [path row]);
    if ([path row])
    {
      if ([path row] == 1)
      {
        [-[TSWPTextFieldTableViewCell textLabel](v10 "textLabel")];
        -[UITextField setText:](-[TSWPTextFieldTableViewCell textField](v10, "textField"), "setText:", [v7 stringForDisplay]);
        [(TSWPTextFieldTableViewCell *)v10 setSelectionStyle:0];
        if (self->_readOnly)
        {
          [(UITextField *)[(TSWPTextFieldTableViewCell *)v10 textField] setEnabled:0];
          v11 = [MEMORY[0x277D75348] colorWithRed:0.219999999 green:0.330000013 blue:0.529999971 alpha:0.5];
          textLabel = [(TSWPTextFieldTableViewCell *)v10 textField];
          goto LABEL_4;
        }
      }
    }

    else
    {
      v15 = TSWPBundle();
      if (v8)
      {
        v16 = @"To";
      }

      else
      {
        v16 = @"Link";
      }

      if (v8)
      {
        v17 = 7;
      }

      else
      {
        v17 = 3;
      }

      [-[TSWPTextFieldTableViewCell textLabel](v10 "textLabel")];
      [(UITextField *)[(TSWPTextFieldTableViewCell *)v10 textField] setKeyboardType:v17];
      objc_opt_class();
      [objc_msgSend(v7 "interactiveCanvasController")];
      v18 = TSUDynamicCast();
      if ((objc_opt_respondsToSelector() & 1) != 0 && (v19 = [v18 performSelector:sel_hyperlinkUICustomStringForURLString_ withObject:{objc_msgSend(v7, "stringForURL")}]) != 0)
      {
        [(UITextField *)[(TSWPTextFieldTableViewCell *)v10 textField] setText:v19];
        [(UITextField *)[(TSWPTextFieldTableViewCell *)v10 textField] setEnabled:0];
        -[UITextField setTextColor:](-[TSWPTextFieldTableViewCell textField](v10, "textField"), "setTextColor:", [MEMORY[0x277D75348] colorWithRed:0.219999999 green:0.330000013 blue:0.529999971 alpha:0.5]);
      }

      else
      {
        -[UITextField setText:](-[TSWPTextFieldTableViewCell textField](v10, "textField"), "setText:", [objc_msgSend(v7 "stringForURL")]);
      }

      [(UITextField *)[(TSWPTextFieldTableViewCell *)v10 textField] setAutocorrectionType:1];
      [(TSWPTextFieldTableViewCell *)v10 setSelectionStyle:0];
    }
  }

LABEL_5:
  [TSKPopoverBasedViewController configureTableViewCell:v10];
  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
  v6.receiver = self;
  v6.super_class = TSWPHyperlinkSettingsViewController;
  [(TSWPHyperlinkSettingsViewController *)&v6 viewWillAppear:appearCopy];
  if ([v5 editingController])
  {
    [v5 hideHyperlinkHighlight];
    [v5 p_selectHyperlinkField];
  }

  if (TSUPhoneUI())
  {
    [TSKKeyboardMonitor addKeyboardObserver:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = TSWPHyperlinkSettingsViewController;
  [(TSWPHyperlinkSettingsViewController *)&v4 viewWillDisappear:disappear];
  if (TSUPhoneUI())
  {
    [TSKKeyboardMonitor removeKeyboardObserver:self];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v5 = [-[TSWPHyperlinkSettingsViewController view](self "view")];

  return [v3 application:mEMORY[0x277D75128] supportedInterfaceOrientationsForWindow:v5];
}

- (void)keyboardDidShowOrDock:(id)dock
{
  view = [(TSWPHyperlinkSettingsViewController *)self view];
  [+[TSKKeyboardMonitor sharedKeyboardMonitor](TSKKeyboardMonitor "sharedKeyboardMonitor")];
  if (v5 >= v6)
  {
    v5 = v6;
  }

  [view setContentInset:{0.0, 0.0, v5, 0.0}];
  v7 = [view indexPathForCell:self->_editingCell];

  [view scrollToRowAtIndexPath:v7 atScrollPosition:0 animated:1];
}

- (void)keyboardDidHideOrUndock:(id)undock
{
  view = [(TSWPHyperlinkSettingsViewController *)self view];
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);

  [view setContentInset:{v4, v5, v6, v7}];
}

@end