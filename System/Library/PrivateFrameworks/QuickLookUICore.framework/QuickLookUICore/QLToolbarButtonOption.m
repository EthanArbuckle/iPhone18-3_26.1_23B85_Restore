@interface QLToolbarButtonOption
+ (id)cancelOption;
- (BOOL)isCancel;
- (BOOL)isEqual:(id)a3;
- (QLToolbarButtonOption)initWithCoder:(id)a3;
- (QLToolbarButtonOption)initWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLToolbarButtonOption

- (QLToolbarButtonOption)initWithIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = QLToolbarButtonOption;
  v6 = [(QLToolbarButtonOption *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)cancelOption
{
  v2 = [[QLToolbarButtonOption alloc] initWithIdentifier:@"QLToolbarButtonOptionCancelIdentifier"];
  v3 = QLLocalizedString(@"Cancel");
  [(QLToolbarButtonOption *)v2 setTitle:v3];

  [(QLToolbarButtonOption *)v2 setStyle:1];

  return v2;
}

- (BOOL)isCancel
{
  v2 = [(QLToolbarButtonOption *)self identifier];
  v3 = [v2 isEqualToString:@"QLToolbarButtonOptionCancelIdentifier"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(QLToolbarButtonOption *)self identifier];
  v6 = [v4 identifier];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(QLToolbarButtonOption *)self identifier];
    v9 = [v4 identifier];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v11 = [(QLToolbarButtonOption *)self title];
  v12 = [v4 title];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_9;
  }

  v14 = [(QLToolbarButtonOption *)self title];
  v15 = [v4 title];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
LABEL_9:
    v18 = [(QLToolbarButtonOption *)self style];
    v17 = v18 == [v4 style];
    goto LABEL_10;
  }

LABEL_7:
  v17 = 0;
LABEL_10:

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(QLToolbarButtonOption *)self identifier];

  if (v4)
  {
    v5 = [(QLToolbarButtonOption *)self identifier];
    [v8 encodeObject:v5 forKey:@"identifier"];
  }

  v6 = [(QLToolbarButtonOption *)self title];

  if (v6)
  {
    v7 = [(QLToolbarButtonOption *)self title];
    [v8 encodeObject:v7 forKey:@"title"];
  }

  [v8 encodeInteger:-[QLToolbarButtonOption style](self forKey:{"style"), @"style"}];
}

- (QLToolbarButtonOption)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = QLToolbarButtonOption;
  v5 = [(QLToolbarButtonOption *)&v12 init];
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

@end