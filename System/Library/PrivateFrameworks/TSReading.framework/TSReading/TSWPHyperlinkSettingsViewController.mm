@interface TSWPHyperlinkSettingsViewController
- (TSWPHyperlinkSettingsViewController)initWithHyperlink:(id)a3 readOnly:(BOOL)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)keyboardDidHideOrUndock:(id)a3;
- (void)keyboardDidShowOrDock:(id)a3;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TSWPHyperlinkSettingsViewController

- (TSWPHyperlinkSettingsViewController)initWithHyperlink:(id)a3 readOnly:(BOOL)a4
{
  v6 = [(TSWPHyperlinkSettingsViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_readOnly = a4;
    [(TSWPHyperlinkSettingsViewController *)v6 setHyperlink:a3];
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

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
  v8 = [(NSString *)[(NSURL *)[(TSWPHyperlinkField *)[(TSWPHyperlinkSettingsViewController *)self hyperlink] url] scheme] isEqualToString:@"mailto"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"cell%ld.%ld", objc_msgSend(a4, "section"), objc_msgSend(a4, "row")];
  v10 = [a3 dequeueReusableCellWithIdentifier:v9];
  if (!v10)
  {
    if ([a4 section])
    {
      v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
      [-[TSWPTextFieldTableViewCell textLabel](v10 "textLabel")];
      [-[TSWPTextFieldTableViewCell textLabel](v10 "textLabel")];
      v11 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
      v12 = [(TSWPTextFieldTableViewCell *)v10 textLabel];
LABEL_4:
      [(UITextField *)v12 setTextColor:v11];
      goto LABEL_5;
    }

    v10 = [[TSWPTextFieldTableViewCell alloc] initWithStyle:1 reuseIdentifier:v9];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v7 selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:{-[TSWPTextFieldTableViewCell textField](v10, "textField")}];
    -[UITextField setTag:](-[TSWPTextFieldTableViewCell textField](v10, "textField"), "setTag:", [a4 row]);
    if ([a4 row])
    {
      if ([a4 row] == 1)
      {
        [-[TSWPTextFieldTableViewCell textLabel](v10 "textLabel")];
        -[UITextField setText:](-[TSWPTextFieldTableViewCell textField](v10, "textField"), "setText:", [v7 stringForDisplay]);
        [(TSWPTextFieldTableViewCell *)v10 setSelectionStyle:0];
        if (self->_readOnly)
        {
          [(UITextField *)[(TSWPTextFieldTableViewCell *)v10 textField] setEnabled:0];
          v11 = [MEMORY[0x277D75348] colorWithRed:0.219999999 green:0.330000013 blue:0.529999971 alpha:0.5];
          v12 = [(TSWPTextFieldTableViewCell *)v10 textField];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
  v6.receiver = self;
  v6.super_class = TSWPHyperlinkSettingsViewController;
  [(TSWPHyperlinkSettingsViewController *)&v6 viewWillAppear:v3];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TSWPHyperlinkSettingsViewController;
  [(TSWPHyperlinkSettingsViewController *)&v4 viewWillDisappear:a3];
  if (TSUPhoneUI())
  {
    [TSKKeyboardMonitor removeKeyboardObserver:self];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [-[TSWPHyperlinkSettingsViewController view](self "view")];

  return [v3 application:v4 supportedInterfaceOrientationsForWindow:v5];
}

- (void)keyboardDidShowOrDock:(id)a3
{
  v4 = [(TSWPHyperlinkSettingsViewController *)self view];
  [+[TSKKeyboardMonitor sharedKeyboardMonitor](TSKKeyboardMonitor "sharedKeyboardMonitor")];
  if (v5 >= v6)
  {
    v5 = v6;
  }

  [v4 setContentInset:{0.0, 0.0, v5, 0.0}];
  v7 = [v4 indexPathForCell:self->_editingCell];

  [v4 scrollToRowAtIndexPath:v7 atScrollPosition:0 animated:1];
}

- (void)keyboardDidHideOrUndock:(id)a3
{
  v3 = [(TSWPHyperlinkSettingsViewController *)self view];
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);

  [v3 setContentInset:{v4, v5, v6, v7}];
}

@end