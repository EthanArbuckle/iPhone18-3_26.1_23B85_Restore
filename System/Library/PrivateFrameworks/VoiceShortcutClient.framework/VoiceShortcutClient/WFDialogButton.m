@interface WFDialogButton
+ (id)cancelButton;
+ (id)defaultButtonWithTitle:(id)a3;
+ (id)doneButton;
+ (id)okButton;
+ (id)selectButton;
+ (id)startButton;
- (WFDialogButton)initWithCoder:(id)a3;
- (WFDialogButton)initWithIdentifier:(id)a3 title:(id)a4 style:(int64_t)a5;
- (WFDialogButton)initWithTitle:(id)a3 style:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDialogButton

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(WFDialogButton *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  v5 = [(WFDialogButton *)self title];
  [v6 encodeObject:v5 forKey:@"title"];

  [v6 encodeInteger:-[WFDialogButton style](self forKey:{"style"), @"style"}];
}

- (WFDialogButton)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFDialogButton;
  v5 = [(WFDialogButton *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v10 = v5;
  }

  return v5;
}

- (WFDialogButton)initWithTitle:(id)a3 style:(int64_t)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a3;
  v8 = [v6 UUID];
  v9 = [v8 UUIDString];
  v10 = [(WFDialogButton *)self initWithIdentifier:v9 title:v7 style:a4];

  return v10;
}

- (WFDialogButton)initWithIdentifier:(id)a3 title:(id)a4 style:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = WFDialogButton;
  v10 = [(WFDialogButton *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    title = v10->_title;
    v10->_title = v13;

    v10->_style = a5;
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

+ (id)defaultButtonWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[WFDialogButton alloc] initWithTitle:v3 style:0];

  return v4;
}

@end