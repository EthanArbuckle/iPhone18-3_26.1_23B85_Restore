@interface PKLinkedApplicationActionCell
- (PKLinkedApplicationActionCell)initWithCoder:(id)a3;
- (PKLinkedApplicationActionCell)initWithLinkedApplication:(id)a3 reuseIdentifier:(id)a4;
- (PKLinkedApplicationActionCell)initWithStoreIDs:(id)a3 appLaunchURL:(id)a4 reuseIdentifier:(id)a5;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)a3;
@end

@implementation PKLinkedApplicationActionCell

- (PKLinkedApplicationActionCell)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return [(PKLinkedApplicationActionCell *)self init];
}

- (PKLinkedApplicationActionCell)initWithStoreIDs:(id)a3 appLaunchURL:(id)a4 reuseIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PKLinkedApplication alloc] initWithStoreIDs:v10 defaultLaunchURL:v9];

  v12 = [(PKLinkedApplicationActionCell *)self initWithLinkedApplication:v11 reuseIdentifier:v8];
  return v12;
}

- (PKLinkedApplicationActionCell)initWithLinkedApplication:(id)a3 reuseIdentifier:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PKLinkedApplicationActionCell;
  v7 = [(PKLinkedApplicationActionCell *)&v10 initWithStyle:0 reuseIdentifier:a4];
  if (v7)
  {
    v8 = v6;
    if (!v6)
    {
      v8 = [[PKLinkedApplication alloc] initWithStoreIDs:0 defaultLaunchURL:0];
    }

    objc_storeStrong(&v7->_linkedApplication, v8);
    if (!v6)
    {
    }

    [(PKLinkedApplication *)v7->_linkedApplication addObserver:v7];
    [(PKLinkedApplicationActionCell *)v7 setNeedsLayout];
  }

  return v7;
}

- (void)dealloc
{
  [(PKLinkedApplication *)self->_linkedApplication removeObserver:self];
  v3.receiver = self;
  v3.super_class = PKLinkedApplicationActionCell;
  [(PKLinkedApplicationActionCell *)&v3 dealloc];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PKLinkedApplicationActionCell;
  [(PKLinkedApplicationActionCell *)&v4 didMoveToWindow];
  v3 = [(PKLinkedApplicationActionCell *)self window];

  if (v3)
  {
    [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKLinkedApplicationActionCell;
  [(PKLinkedApplicationActionCell *)&v17 layoutSubviews];
  v3 = [(PKLinkedApplication *)self->_linkedApplication state];
  v4 = v3 == 1 || v3 != 0;
  v5 = v3 == 1;
  v6 = [(PKLinkedApplicationActionCell *)self textLabel];
  v7 = v6;
  if (!v4 || !v5)
  {
    if (!self->_disabledTextColor)
    {
      v8 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      goto LABEL_11;
    }

LABEL_9:
    [v6 setTextColor:?];
    goto LABEL_12;
  }

  if (self->_textColor)
  {
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_11:
  v9 = v8;
  [v7 setTextColor:v8];

LABEL_12:
  v10 = [(PKLinkedApplication *)self->_linkedApplication displayName];
  if ([v10 length])
  {
    PKLocalizedString(&cfstr_OpenApp.isa, &stru_1F3BD5BF0.isa, v10, 0);
  }

  else
  {
    PKLocalizedString(&cfstr_OpenAppNoName.isa);
  }
  v11 = ;
  [v7 setText:v11];

  if (v4)
  {
    v12 = [(PKLinkedApplicationActionCell *)self accessoryView];

    if (v12)
    {
      [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
      [(PKLinkedApplicationActionCell *)self setAccessoryView:0];
    }
  }

  else
  {
    if (!self->_activityIndicator)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      activityIndicator = self->_activityIndicator;
      self->_activityIndicator = v13;
    }

    v15 = [(PKLinkedApplicationActionCell *)self accessoryView];

    if (!v15)
    {
      [(PKLinkedApplicationActionCell *)self setAccessoryView:self->_activityIndicator];
      [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    }
  }

  if (v5)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [(PKLinkedApplicationActionCell *)self setSelectionStyle:v16];
  [(PKLinkedApplicationActionCell *)self setUserInteractionEnabled:v5];
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  v5 = a3;
  if (![v5 state])
  {
    v4 = [(PKLinkedApplicationActionCell *)self window];

    if (v4)
    {
      [v5 reloadApplicationStateIfNecessary];
    }
  }

  [(PKLinkedApplicationActionCell *)self setNeedsLayout];
}

@end