@interface PKLinkedApplicationActionCell
- (PKLinkedApplicationActionCell)initWithCoder:(id)coder;
- (PKLinkedApplicationActionCell)initWithLinkedApplication:(id)application reuseIdentifier:(id)identifier;
- (PKLinkedApplicationActionCell)initWithStoreIDs:(id)ds appLaunchURL:(id)l reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)state;
@end

@implementation PKLinkedApplicationActionCell

- (PKLinkedApplicationActionCell)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return [(PKLinkedApplicationActionCell *)self init];
}

- (PKLinkedApplicationActionCell)initWithStoreIDs:(id)ds appLaunchURL:(id)l reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  dsCopy = ds;
  v11 = [[PKLinkedApplication alloc] initWithStoreIDs:dsCopy defaultLaunchURL:lCopy];

  v12 = [(PKLinkedApplicationActionCell *)self initWithLinkedApplication:v11 reuseIdentifier:identifierCopy];
  return v12;
}

- (PKLinkedApplicationActionCell)initWithLinkedApplication:(id)application reuseIdentifier:(id)identifier
{
  applicationCopy = application;
  v10.receiver = self;
  v10.super_class = PKLinkedApplicationActionCell;
  v7 = [(PKLinkedApplicationActionCell *)&v10 initWithStyle:0 reuseIdentifier:identifier];
  if (v7)
  {
    v8 = applicationCopy;
    if (!applicationCopy)
    {
      v8 = [[PKLinkedApplication alloc] initWithStoreIDs:0 defaultLaunchURL:0];
    }

    objc_storeStrong(&v7->_linkedApplication, v8);
    if (!applicationCopy)
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
  window = [(PKLinkedApplicationActionCell *)self window];

  if (window)
  {
    [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKLinkedApplicationActionCell;
  [(PKLinkedApplicationActionCell *)&v17 layoutSubviews];
  state = [(PKLinkedApplication *)self->_linkedApplication state];
  v4 = state == 1 || state != 0;
  v5 = state == 1;
  textLabel = [(PKLinkedApplicationActionCell *)self textLabel];
  v7 = textLabel;
  if (!v4 || !v5)
  {
    if (!self->_disabledTextColor)
    {
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      goto LABEL_11;
    }

LABEL_9:
    [textLabel setTextColor:?];
    goto LABEL_12;
  }

  if (self->_textColor)
  {
    goto LABEL_9;
  }

  tertiaryLabelColor = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_11:
  v9 = tertiaryLabelColor;
  [v7 setTextColor:tertiaryLabelColor];

LABEL_12:
  displayName = [(PKLinkedApplication *)self->_linkedApplication displayName];
  if ([displayName length])
  {
    PKLocalizedString(&cfstr_OpenApp.isa, &stru_1F3BD5BF0.isa, displayName, 0);
  }

  else
  {
    PKLocalizedString(&cfstr_OpenAppNoName.isa);
  }
  v11 = ;
  [v7 setText:v11];

  if (v4)
  {
    accessoryView = [(PKLinkedApplicationActionCell *)self accessoryView];

    if (accessoryView)
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

    accessoryView2 = [(PKLinkedApplicationActionCell *)self accessoryView];

    if (!accessoryView2)
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

- (void)linkedApplicationDidChangeState:(id)state
{
  stateCopy = state;
  if (![stateCopy state])
  {
    window = [(PKLinkedApplicationActionCell *)self window];

    if (window)
    {
      [stateCopy reloadApplicationStateIfNecessary];
    }
  }

  [(PKLinkedApplicationActionCell *)self setNeedsLayout];
}

@end