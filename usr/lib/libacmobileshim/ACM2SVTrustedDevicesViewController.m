@interface ACM2SVTrustedDevicesViewController
- (ACM2SVTrustedDevicesViewController)initWithDelegate:(id)a3;
- (CGSize)sizeOfString:(id)a3 withFont:(id)a4 widthConstraints:(double)a5;
- (double)navigationBarHeight;
- (double)tableHeight;
- (id)footerButtonWithText:(id)a3;
- (id)labelWithText:(id)a3 font:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)buildConstraints;
- (void)buildHorizontalConstraints;
- (void)buildVerticalConstraints;
- (void)cancelAction:(id)a3;
- (void)dealloc;
- (void)disableControls:(BOOL)a3;
- (void)hideAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)loadView;
- (void)presentWithParentViewController:(id)a3 deviceList:(id)a4 completion:(id)a5;
- (void)reset;
- (void)resetWithDeviceList:(id)a3;
- (void)sendAction:(id)a3;
- (void)setDelegate:(id)a3;
- (void)startIconDownloadForDevice:(id)a3 forIndexPath:(id)a4;
- (void)stopImageDownloads;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)unableReceiveMessagesTextDidTap:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ACM2SVTrustedDevicesViewController

- (ACM2SVTrustedDevicesViewController)initWithDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = ACM2SVTrustedDevicesViewController;
  v4 = [(ACM2SVTrustedDevicesViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACM2SVTrustedDevicesViewController *)v4 setDelegate:a3];
    -[ACM2SVTrustedDevicesViewController setImageDownloadsInProgress:](v5, "setImageDownloadsInProgress:", [MEMORY[0x29EDB8DE8] array]);
  }

  return v5;
}

- (void)dealloc
{
  [(ACM2SVTrustedDevicesViewController *)self setImageDownloadsInProgress:0];
  [(ACM2SVTrustedDevicesViewController *)self setTrustedDevicesArray:0];
  [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] setDataSource:0];
  [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] setDelegate:0];
  [(ACM2SVTrustedDevicesViewController *)self setTrustedDevicesListView:0];
  [(ACM2SVTrustedDevicesViewController *)self setTextColor:0];
  [(ACM2SVTrustedDevicesViewController *)self setBackgroundColor:0];
  [(ACM2SVTrustedDevicesViewController *)self setCompletionBlock:0];
  [(ACM2SVTrustedDevicesViewController *)self setEmptyLabel:0];
  [(ACM2SVTrustedDevicesViewController *)self setHeaderTitleLabel:0];
  [(ACM2SVTrustedDevicesViewController *)self setHeaderTextLabel:0];
  [(ACM2SVTrustedDevicesViewController *)self setFooterTextLabel:0];
  [(ACM2SVTrustedDevicesViewController *)self setFooterButton:0];
  [(UINavigationController *)[(ACM2SVTrustedDevicesViewController *)self navigationController] setDelegate:0];
  [(ACM2SVTrustedDevicesViewController *)self setNavigationController:0];
  v3.receiver = self;
  v3.super_class = ACM2SVTrustedDevicesViewController;
  [(ACM2SVTrustedDevicesViewController *)&v3 dealloc];
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = ACM2SVTrustedDevicesViewController;
  [(ACM2SVTrustedDevicesViewController *)&v21 loadView];
  [MEMORY[0x29EDC7A58] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v3 = [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")];
    v4 = [ACMBaseLocale localizedString:@"Verify Identity"];
    if (v3)
    {
LABEL_6:
      [(ACM2SVTrustedDevicesViewController *)self setTitle:v4];
      goto LABEL_11;
    }
  }

  else
  {
    v4 = [ACMBaseLocale localizedString:@"Verify Identity"];
  }

  if ([v4 length] <= 0x11)
  {
    goto LABEL_6;
  }

  v5 = objc_alloc_init(MEMORY[0x29EDC7B38]);
  [v5 setAdjustsFontSizeToFitWidth:1];
  [v5 setText:v4];
  [v5 setTextAlignment:1];
  v6 = MEMORY[0x29EDC76B0];
  [MEMORY[0x29EDC76B0] systemFontSize];
  [v5 setFont:{objc_msgSend(v6, "boldSystemFontOfSize:", v7 + 1.0)}];
  if ([(ACM2SVTrustedDevicesViewController *)self isLegacyStyle])
  {
    v8 = [MEMORY[0x29EDC7A00] whiteColor];
  }

  else
  {
    v8 = [(ACM2SVTrustedDevicesViewController *)self textColor];
  }

  [v5 setTextColor:v8];
  [v5 setLineBreakMode:0];
  [v5 setNumberOfLines:2];
  [v5 setBackgroundColor:{objc_msgSend(MEMORY[0x29EDC7A00], "clearColor")}];
  [v5 setFrame:{0.0, 0.0, 400.0, 40.0}];
  [-[ACM2SVTrustedDevicesViewController navigationItem](self "navigationItem")];
LABEL_11:
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [(ACM2SVTrustedDevicesViewController *)self setEdgesForExtendedLayout:0];
  v9 = [objc_alloc(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAction_];
  v10 = [objc_alloc(MEMORY[0x29EDC7940]) initWithTitle:+[ACMBaseLocale localizedString:](ACMBaseLocale style:"localizedString:" target:@"Continue" action:{0, self, sel_sendAction_}];
  [-[ACM2SVTrustedDevicesViewController navigationItem](self "navigationItem")];
  [-[ACM2SVTrustedDevicesViewController navigationItem](self "navigationItem")];
  [objc_msgSend(-[ACM2SVTrustedDevicesViewController navigationItem](self "navigationItem")];
  v11 = objc_alloc(MEMORY[0x29EDC7D08]);
  v12 = [(ACM2SVTrustedDevicesViewController *)self isLegacyStyle];
  v13 = [v11 initWithFrame:!v12 style:{*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)}];
  [v13 setDataSource:self];
  [v13 setDelegate:self];
  [v13 setBackgroundColor:{-[ACM2SVTrustedDevicesViewController backgroundColor](self, "backgroundColor")}];
  [v13 setScrollEnabled:0];
  [(ACM2SVTrustedDevicesViewController *)self setTrustedDevicesListView:v13];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  v14 = MEMORY[0x29EDC76B0];
  [MEMORY[0x29EDC76B0] systemFontSize];
  -[ACM2SVTrustedDevicesViewController setEmptyLabel:](self, "setEmptyLabel:", -[ACM2SVTrustedDevicesViewController labelWithText:font:](self, "labelWithText:font:", @"\n", [v14 boldSystemFontOfSize:?]));
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self emptyLabel] setBackgroundColor:[(ACM2SVTrustedDevicesViewController *)self backgroundColor]];
  v15 = [ACMBaseLocale localizedString:@"Two-step verification is enabled for this Apple ID."];
  v16 = MEMORY[0x29EDC76B0];
  [MEMORY[0x29EDC76B0] systemFontSize];
  -[ACM2SVTrustedDevicesViewController setHeaderTitleLabel:](self, "setHeaderTitleLabel:", -[ACM2SVTrustedDevicesViewController labelWithText:font:](self, "labelWithText:font:", v15, [v16 boldSystemFontOfSize:?]));
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self headerTitleLabel] setBackgroundColor:[(ACM2SVTrustedDevicesViewController *)self backgroundColor]];
  v17 = [ACMBaseLocale localizedString:@"The device you select below will be sent a temporary code that you can use to verify your identity."];
  v18 = MEMORY[0x29EDC76B0];
  [MEMORY[0x29EDC76B0] systemFontSize];
  -[ACM2SVTrustedDevicesViewController setHeaderTextLabel:](self, "setHeaderTextLabel:", -[ACM2SVTrustedDevicesViewController labelWithText:font:](self, "labelWithText:font:", v17, [v18 systemFontOfSize:?]));
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self headerTextLabel] setBackgroundColor:[(ACM2SVTrustedDevicesViewController *)self backgroundColor]];
  v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:+[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"To manage your trusted devices visit %@ from a Mac or PC.", @"appleid.apple.com"];
  v20 = MEMORY[0x29EDC76B0];
  [MEMORY[0x29EDC76B0] systemFontSize];
  -[ACM2SVTrustedDevicesViewController setFooterTextLabel:](self, "setFooterTextLabel:", -[ACM2SVTrustedDevicesViewController labelWithText:font:](self, "labelWithText:font:", v19, [v20 systemFontOfSize:?]));
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self footerTextLabel] setBackgroundColor:[(ACM2SVTrustedDevicesViewController *)self backgroundColor]];
  [(ACM2SVTrustedDevicesViewController *)self setFooterButton:[(ACM2SVTrustedDevicesViewController *)self footerButtonWithText:[ACMBaseLocale localizedString:@"Unable to receive messages at any of your devices?"]]];
  [(UIButton *)[(ACM2SVTrustedDevicesViewController *)self footerButton] setBackgroundColor:[(ACM2SVTrustedDevicesViewController *)self backgroundColor]];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [(ACM2SVTrustedDevicesViewController *)self buildConstraints];
}

- (void)buildConstraints
{
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self emptyLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self headerTitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self headerTextLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self footerTextLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)[(ACM2SVTrustedDevicesViewController *)self footerButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ACM2SVTrustedDevicesViewController *)self buildHorizontalConstraints];

  [(ACM2SVTrustedDevicesViewController *)self buildVerticalConstraints];
}

- (double)navigationBarHeight
{
  [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
  v4 = v3 + 64.0;
  v5 = [(ACM2SVTrustedDevicesViewController *)self isLegacyStyle];
  result = 44.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)tableHeight
{
  if ([(NSArray *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesArray] count])
  {
    v3 = [(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView];
    v4 = -[UITableView cellForRowAtIndexPath:](v3, "cellForRowAtIndexPath:", [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:0]);
    if (v4)
    {
      [(UITableViewCell *)v4 frame];
      v6 = v5;
    }

    else
    {
      v6 = 44.0;
    }

    v7 = v6 * [(NSArray *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesArray] count];
  }

  else
  {
    v7 = 44.0;
  }

  v8 = [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] headerViewForSection:0];
  if (v8)
  {
    [(UITableViewHeaderFooterView *)v8 frame];
  }

  else
  {
    v9 = 55.5;
  }

  return v7 + v9;
}

- (void)buildHorizontalConstraints
{
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  v3 = [MEMORY[0x29EDBA008] constraintWithItem:-[ACM2SVTrustedDevicesViewController footerTextLabel](self attribute:"footerTextLabel") relatedBy:2 toItem:0 attribute:-[ACM2SVTrustedDevicesViewController view](self multiplier:"view") constant:{2, 1.0, -12.0}];
  v4 = [(ACM2SVTrustedDevicesViewController *)self view];

  [v4 addConstraint:v3];
}

- (void)buildVerticalConstraints
{
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  v3 = MEMORY[0x29EDBA008];
  v4 = [(ACM2SVTrustedDevicesViewController *)self headerTitleLabel];
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self headerTitleLabel] frame];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  v6 = MEMORY[0x29EDBA008];
  v7 = [(ACM2SVTrustedDevicesViewController *)self headerTextLabel];
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self headerTextLabel] frame];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  v9 = MEMORY[0x29EDBA008];
  v10 = [(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView];
  v11 = [(ACM2SVTrustedDevicesViewController *)self headerTextLabel];
  if ([(ACM2SVTrustedDevicesViewController *)self isLegacyStyle])
  {
    v12 = 10.0;
  }

  else
  {
    v12 = -18.0;
  }

  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  v13 = MEMORY[0x29EDBA008];
  v14 = [(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView];
  [(ACM2SVTrustedDevicesViewController *)self tableHeight];
  v16 = [v13 constraintWithItem:v14 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v15];
  LODWORD(v17) = 1112014848;
  [v16 setPriority:v17];
  [(ACM2SVTrustedDevicesViewController *)self setTableConstraint:v16];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  v18 = [MEMORY[0x29EDBA008] constraintWithItem:-[ACM2SVTrustedDevicesViewController footerButton](self attribute:"footerButton") relatedBy:8 toItem:0 attribute:0 multiplier:8 constant:{1.0, 10.0}];
  LODWORD(v19) = 1112014848;
  [v18 setPriority:v19];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  v20 = MEMORY[0x29EDBA008];
  v21 = [(ACM2SVTrustedDevicesViewController *)self footerTextLabel];
  [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self footerTextLabel] frame];
  v23 = [v20 constraintWithItem:v21 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v22];
  v24 = [(ACM2SVTrustedDevicesViewController *)self view];

  [v24 addConstraint:v23];
}

- (void)presentWithParentViewController:(id)a3 deviceList:(id)a4 completion:(id)a5
{
  if ([(ACM2SVTrustedDevicesViewController *)self completionBlock])
  {
    v9 = *(a5 + 2);

    v9(a5, 0);
  }

  else
  {
    if (a4)
    {
      [(ACM2SVTrustedDevicesViewController *)self resetWithDeviceList:a4];
    }

    [(ACM2SVTrustedDevicesViewController *)self setCompletionBlock:a5];
    -[ACM2SVTrustedDevicesViewController setNavigationController:](self, "setNavigationController:", [objc_alloc(MEMORY[0x29EDC7B80]) initWithRootViewController:self]);
    [(UINavigationController *)[(ACM2SVTrustedDevicesViewController *)self navigationController] setDelegate:self];
    [(UINavigationBar *)[(UINavigationController *)[(ACM2SVTrustedDevicesViewController *)self navigationController] navigationBar] setTranslucent:0];
    v10 = [(ACM2SVTrustedDevicesViewController *)self navigationController];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __92__ACM2SVTrustedDevicesViewController_presentWithParentViewController_deviceList_completion___block_invoke;
    v11[3] = &unk_29EE918B0;
    v11[4] = a4;
    v11[5] = self;
    [a3 presentViewController:v10 animated:1 completion:v11];
  }
}

uint64_t __92__ACM2SVTrustedDevicesViewController_presentWithParentViewController_deviceList_completion___block_invoke(uint64_t result)
{
  if (!*(result + 32))
  {
    v2 = result;
    v3 = [*(result + 40) delegate];
    v4 = *(v2 + 40);

    return [v3 trustedDevicesViewControllerNeedsRefresh:v4];
  }

  return result;
}

- (void)hideAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v5 = a3;
  [(ACM2SVTrustedDevicesViewController *)self setCompletionBlock:0];
  v7 = [(ACM2SVTrustedDevicesViewController *)self presentingViewController];

  [v7 dismissViewControllerAnimated:v5 completion:a4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ACM2SVTrustedDevicesViewController;
  [(ACM2SVTrustedDevicesViewController *)&v4 viewDidAppear:a3];
  [(ACM2SVTrustedDevicesViewController *)self reset];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(ACM2SVTrustedDevicesViewController *)self stopImageDownloads];
  v5.receiver = self;
  v5.super_class = ACM2SVTrustedDevicesViewController;
  [(ACM2SVTrustedDevicesViewController *)&v5 viewWillDisappear:v3];
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    [(ACM2SVTrustedDevicesViewController *)self stopImageDownloads];
    self->_delegate = a3;
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (CGSize)sizeOfString:(id)a3 withFont:(id)a4 widthConstraints:(double)a5
{
  v25 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDB90E8];
  v7 = *(MEMORY[0x29EDB90E8] + 8);
  v9 = [a3 componentsSeparatedByString:@"\n"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
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

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([(__CFString *)v14 length])
        {
          v15 = v14;
        }

        else
        {
          v15 = @"A";
        }

        [(__CFString *)v15 sizeWithFont:a4 constrainedToSize:0 lineBreakMode:a5, 300.0];
        if (v8 < v16)
        {
          v8 = v16;
        }

        v7 = v7 + v17;
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = v8;
  v19 = v7;
  result.height = v19;
  result.width = v18;
  return result;
}

- (id)labelWithText:(id)a3 font:(id)a4
{
  [-[ACM2SVTrustedDevicesViewController view](self "view")];
  [(ACM2SVTrustedDevicesViewController *)self sizeOfString:a3 withFont:a4 widthConstraints:v7];
  v10 = [objc_alloc(MEMORY[0x29EDC7B38]) initWithFrame:{0.0, 0.0, v9, v8 + 18.0}];
  [v10 setText:a3];
  [v10 setFont:a4];
  if ([(ACM2SVTrustedDevicesViewController *)self isLegacyStyle])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v10 setNumberOfLines:v11];
  [v10 setTextColor:{-[ACM2SVTrustedDevicesViewController labelTextColor](self, "labelTextColor")}];
  [v10 setLineBreakMode:0];
  [v10 setBackgroundColor:{objc_msgSend(MEMORY[0x29EDC7A00], "clearColor")}];
  return v10;
}

- (id)footerButtonWithText:(id)a3
{
  v5 = [(ACM2SVTrustedDevicesViewController *)self isLegacyStyle];
  v6 = [MEMORY[0x29EDC7958] buttonWithType:!v5];
  if ([(ACM2SVTrustedDevicesViewController *)self isLegacyStyle])
  {
    [v6 setTitleColor:objc_msgSend(MEMORY[0x29EDC7A00] forState:{"colorWithRed:green:blue:alpha:", 0.09, 0.52, 1.0, 1.0), 0}];
    [v6 setTitleColor:objc_msgSend(MEMORY[0x29EDC7A00] forState:{"colorWithRed:green:blue:alpha:", 0.5, 0.5, 0.5, 1.0), 1}];
  }

  [v6 setTitle:a3 forState:0];
  [v6 addTarget:self action:sel_unableReceiveMessagesTextDidTap_ forControlEvents:64];
  [objc_msgSend(v6 "titleLabel")];
  [objc_msgSend(v6 "titleLabel")];
  [objc_msgSend(v6 "titleLabel")];
  v7 = MEMORY[0x29EDC76B0];
  [MEMORY[0x29EDC76B0] systemFontSize];
  [objc_msgSend(v6 "titleLabel")];
  return v6;
}

- (void)reset
{
  [(ACM2SVTrustedDevicesViewController *)self setSelectedDeviceIndex:-1];
  [(ACM2SVTrustedDevicesViewController *)self disableControls:0];
  [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] reloadData];
  [(ACM2SVTrustedDevicesViewController *)self tableHeight];
  if (v3 > 0.0)
  {
    v4 = v3;
    [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] frame];
    v6 = v4 - v5;
    [-[ACM2SVTrustedDevicesViewController view](self "view")];
    v8 = v7;
    [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self footerTextLabel] frame];
    v10 = v9;
    [(UILabel *)[(ACM2SVTrustedDevicesViewController *)self footerTextLabel] frame];
    v12 = v8 - (v10 + v11 + 10.0);
    if (v6 <= v12)
    {
      v13 = v6;
    }

    else
    {
      v13 = v8 - (v10 + v11 + 10.0);
    }

    [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] setScrollEnabled:v6 > v12];
    [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] frame];
    [(NSLayoutConstraint *)[(ACM2SVTrustedDevicesViewController *)self tableConstraint] setConstant:v14 + v13];
    v15 = [(ACM2SVTrustedDevicesViewController *)self view];

    [v15 setNeedsUpdateConstraints];
  }
}

- (void)disableControls:(BOOL)a3
{
  v3 = a3;
  [(UITableView *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesListView] setAllowsSelection:!a3];
  [objc_msgSend(-[ACM2SVTrustedDevicesViewController navigationItem](self "navigationItem")];
  [objc_msgSend(-[ACM2SVTrustedDevicesViewController navigationItem](self "navigationItem")];
  if (!v3)
  {
    v5 = [(ACM2SVTrustedDevicesViewController *)self selectedDeviceIndex]!= -1;
    v6 = [-[ACM2SVTrustedDevicesViewController navigationItem](self "navigationItem")];

    [v6 setEnabled:v5];
  }
}

- (void)resetWithDeviceList:(id)a3
{
  if (a3)
  {
    [(ACM2SVTrustedDevicesViewController *)self setTrustedDevicesArray:?];
  }

  [(ACM2SVTrustedDevicesViewController *)self reset];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(ACM2SVTrustedDevicesViewController *)self trustedDevicesArray:a3];

  return [(NSArray *)v4 count];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"ACM2SVTrustedDeviceCellIdentifier"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x29EDC7D10]) initWithStyle:3 reuseIdentifier:@"ACM2SVTrustedDeviceCellIdentifier"];
  }

  v7 = -[NSArray objectAtIndex:](-[ACM2SVTrustedDevicesViewController trustedDevicesArray](self, "trustedDevicesArray"), "objectAtIndex:", [a4 row]);
  [objc_msgSend(v6 "textLabel")];
  v8 = [a4 row];
  if (v8 == [(ACM2SVTrustedDevicesViewController *)self selectedDeviceIndex])
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [v6 setAccessoryType:v9];
  [objc_msgSend(v6 "textLabel")];
  if ([v7 isSMSDevice])
  {
    v10 = @"SMS to Phone Number";
LABEL_10:
    v11 = [ACMBaseLocale localizedString:v10];
    goto LABEL_12;
  }

  if ([v7 isTOTPDevice])
  {
    v10 = @"Generate TOTP code";
    goto LABEL_10;
  }

  v11 = [v7 deviceModelName];
LABEL_12:
  [objc_msgSend(v6 "detailTextLabel")];
  if (![(ACM2SVTrustedDevicesViewController *)self isLegacyStyle])
  {
    [v6 setBackgroundColor:{-[ACM2SVTrustedDevicesViewController backgroundColor](self, "backgroundColor")}];
    [objc_msgSend(v6 "textLabel")];
    [objc_msgSend(v6 "detailTextLabel")];
  }

  [objc_msgSend(v6 "imageView")];
  if ([v7 deviceIcon])
  {
    v12 = +[ACMUIImageUtilities cropServerImage:bySize:](ACMUIImageUtilities, "cropServerImage:bySize:", [MEMORY[0x29EDC7AC8] imageWithData:{objc_msgSend(v7, "deviceIcon")}], 10.0, 0.0);
  }

  else
  {
    if ([v7 isSMSDevice])
    {
      v13 = @"sms.png";
    }

    else
    {
      if (![v7 isTOTPDevice])
      {
        [objc_msgSend(v6 "imageView")];
        [(ACM2SVTrustedDevicesViewController *)self startIconDownloadForDevice:v7 forIndexPath:a4];
        return v6;
      }

      v13 = @"totp.png";
    }

    v12 = ACMImageWithName(v13);
  }

  [objc_msgSend(v6 "imageView")];
  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  -[ACM2SVTrustedDevicesViewController setSelectedDeviceIndex:](self, "setSelectedDeviceIndex:", [a4 row]);
  [objc_msgSend(-[ACM2SVTrustedDevicesViewController navigationItem](self "navigationItem")];
  [a3 deselectRowAtIndexPath:a4 animated:1];

  [a3 reloadData];
}

- (void)startIconDownloadForDevice:(id)a3 forIndexPath:(id)a4
{
  if ((-[NSMutableArray containsObject:](-[ACM2SVTrustedDevicesViewController imageDownloadsInProgress](self, "imageDownloadsInProgress"), "containsObject:", [a3 deviceID]) & 1) == 0)
  {
    -[NSMutableArray addObject:](-[ACM2SVTrustedDevicesViewController imageDownloadsInProgress](self, "imageDownloadsInProgress"), "addObject:", [a3 deviceID]);
    v7 = [a3 imageURL];
    if (v7)
    {
      v8 = v7;
      if (qword_2A1EB8FF8)
      {
        if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "[ACM2SVTrustedDevicesViewController startIconDownloadForDevice:forIndexPath:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVTrustedDevicesViewController.m", 589, 0, "Download image from URL %@ for device: %@", v8, a3);
        }
      }

      v9 = [(ACM2SVTrustedDevicesViewController *)self delegate];
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 3221225472;
      v10[2] = __78__ACM2SVTrustedDevicesViewController_startIconDownloadForDevice_forIndexPath___block_invoke;
      v10[3] = &unk_29EE91E08;
      v10[4] = self;
      v10[5] = a4;
      v10[6] = a3;
      [(ACM2SVTrustedDevicesViewControllerDelegate *)v9 downloadImageWithURL:v8 completionBlock:v10];
    }

    else if (qword_2A1EB8FF8 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACM2SVTrustedDevicesViewController startIconDownloadForDevice:forIndexPath:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVTrustedDevicesViewController.m", 620, 0, "Couldn't create URL for device %@", a3);
    }
  }
}

uint64_t __78__ACM2SVTrustedDevicesViewController_startIconDownloadForDevice_forIndexPath___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 length])
  {
    v4 = [objc_msgSend(*(a1 + 32) "trustedDevicesListView")];
    [*(a1 + 48) setDeviceIcon:a2];
    v5 = [MEMORY[0x29EDC7AC8] imageWithData:{objc_msgSend(*(a1 + 48), "deviceIcon")}];
    if (v5)
    {
      [objc_msgSend(v4 "imageView")];
      [v4 setNeedsLayout];
    }

    else if (qword_2A1EB8FF8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACM2SVTrustedDevicesViewController startIconDownloadForDevice:forIndexPath:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVTrustedDevicesViewController.m", 606, 0, "Failed to create image for device: %@", *(a1 + 48));
    }
  }

  else if (qword_2A1EB8FF8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVTrustedDevicesViewController startIconDownloadForDevice:forIndexPath:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVTrustedDevicesViewController.m", 611, 0, "Image not found for device: %@", *(a1 + 48));
  }

  v6 = [*(a1 + 32) imageDownloadsInProgress];
  v7 = [*(a1 + 48) deviceID];

  return [v6 removeObject:v7];
}

- (void)stopImageDownloads
{
  [(ACM2SVTrustedDevicesViewControllerDelegate *)[(ACM2SVTrustedDevicesViewController *)self delegate] cancelInProgressImageDownloads];
  v3 = [(ACM2SVTrustedDevicesViewController *)self imageDownloadsInProgress];

  [(NSMutableArray *)v3 removeAllObjects];
}

- (void)sendAction:(id)a3
{
  [(ACM2SVTrustedDevicesViewController *)self disableControls:1];
  v4 = [(ACM2SVTrustedDevicesViewController *)self completionBlock];
  v5 = [(NSArray *)[(ACM2SVTrustedDevicesViewController *)self trustedDevicesArray] objectAtIndexedSubscript:[(ACM2SVTrustedDevicesViewController *)self selectedDeviceIndex]];
  v6 = v4[2];

  v6(v4, v5);
}

- (void)cancelAction:(id)a3
{
  v4 = [(ACM2SVTrustedDevicesViewController *)self completionBlock];
  v4[2](v4, 0);

  [(ACM2SVTrustedDevicesViewController *)self setCompletionBlock:0];
}

- (void)unableReceiveMessagesTextDidTap:(id)a3
{
  v4 = [(ACM2SVTrustedDevicesViewController *)self delegate];

  [(ACM2SVTrustedDevicesViewControllerDelegate *)v4 trustedDevicesViewControllerDidSelectUnableReceiveMessages:self];
}

@end