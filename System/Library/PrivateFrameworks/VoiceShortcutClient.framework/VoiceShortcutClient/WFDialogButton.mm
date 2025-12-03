@interface WFDialogButton
+ (id)cancelButton;
+ (id)defaultButtonWithTitle:(id)title;
+ (id)doneButton;
+ (id)okButton;
+ (id)selectButton;
+ (id)startButton;
- (WFDialogButton)initWithCoder:(id)coder;
- (WFDialogButton)initWithIdentifier:(id)identifier title:(id)title style:(int64_t)style;
- (WFDialogButton)initWithTitle:(id)title style:(int64_t)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDialogButton

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFDialogButton *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  title = [(WFDialogButton *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeInteger:-[WFDialogButton style](self forKey:{"style"), @"style"}];
}

- (WFDialogButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFDialogButton;
  v5 = [(WFDialogButton *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v10 = v5;
  }

  return v5;
}

- (WFDialogButton)initWithTitle:(id)title style:(int64_t)style
{
  v6 = MEMORY[0x1E696AFB0];
  titleCopy = title;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v10 = [(WFDialogButton *)self initWithIdentifier:uUIDString title:titleCopy style:style];

  return v10;
}

- (WFDialogButton)initWithIdentifier:(id)identifier title:(id)title style:(int64_t)style
{
  identifierCopy = identifier;
  titleCopy = title;
  v17.receiver = self;
  v17.super_class = WFDialogButton;
  v10 = [(WFDialogButton *)&v17 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v13;

    v10->_style = style;
    v15 = v10;
  }

  return v10;
}

+ (id)cancelButton
{
  v2 = [WFDialogButton alloc];
  v3 = WFLocalizedString(@"Cancel");
  v4 = [(WFDialogButton *)v2 initWithTitle:v3 style:1];

  return v4;
}

+ (id)selectButton
{
  v2 = [WFDialogButton alloc];
  v3 = WFLocalizedString(@"Select");
  v4 = [(WFDialogButton *)v2 initWithTitle:v3 style:0];

  return v4;
}

+ (id)okButton
{
  v2 = [WFDialogButton alloc];
  v3 = WFLocalizedString(@"OK");
  v4 = [(WFDialogButton *)v2 initWithTitle:v3 style:0];

  return v4;
}

+ (id)startButton
{
  v2 = [WFDialogButton alloc];
  v3 = WFLocalizedString(@"Start");
  v4 = [(WFDialogButton *)v2 initWithTitle:v3 style:0];

  return v4;
}

+ (id)doneButton
{
  v2 = [WFDialogButton alloc];
  v3 = WFLocalizedString(@"Done");
  v4 = [(WFDialogButton *)v2 initWithTitle:v3 style:0];

  return v4;
}

+ (id)defaultButtonWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[WFDialogButton alloc] initWithTitle:titleCopy style:0];

  return v4;
}

@end