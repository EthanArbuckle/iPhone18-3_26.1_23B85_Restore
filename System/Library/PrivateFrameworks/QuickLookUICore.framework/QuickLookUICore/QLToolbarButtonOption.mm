@interface QLToolbarButtonOption
+ (id)cancelOption;
- (BOOL)isCancel;
- (BOOL)isEqual:(id)equal;
- (QLToolbarButtonOption)initWithCoder:(id)coder;
- (QLToolbarButtonOption)initWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLToolbarButtonOption

- (QLToolbarButtonOption)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = QLToolbarButtonOption;
  v6 = [(QLToolbarButtonOption *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
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
  identifier = [(QLToolbarButtonOption *)self identifier];
  v3 = [identifier isEqualToString:@"QLToolbarButtonOptionCancelIdentifier"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  identifier = [(QLToolbarButtonOption *)self identifier];
  identifier2 = [equalCopy identifier];
  v7 = identifier2;
  if (identifier == identifier2)
  {
  }

  else
  {
    identifier3 = [(QLToolbarButtonOption *)self identifier];
    identifier4 = [equalCopy identifier];
    v10 = [identifier3 isEqual:identifier4];

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  title = [(QLToolbarButtonOption *)self title];
  title2 = [equalCopy title];
  v13 = title2;
  if (title == title2)
  {

    goto LABEL_9;
  }

  title3 = [(QLToolbarButtonOption *)self title];
  title4 = [equalCopy title];
  v16 = [title3 isEqual:title4];

  if (v16)
  {
LABEL_9:
    style = [(QLToolbarButtonOption *)self style];
    v17 = style == [equalCopy style];
    goto LABEL_10;
  }

LABEL_7:
  v17 = 0;
LABEL_10:

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(QLToolbarButtonOption *)self identifier];

  if (identifier)
  {
    identifier2 = [(QLToolbarButtonOption *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"identifier"];
  }

  title = [(QLToolbarButtonOption *)self title];

  if (title)
  {
    title2 = [(QLToolbarButtonOption *)self title];
    [coderCopy encodeObject:title2 forKey:@"title"];
  }

  [coderCopy encodeInteger:-[QLToolbarButtonOption style](self forKey:{"style"), @"style"}];
}

- (QLToolbarButtonOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = QLToolbarButtonOption;
  v5 = [(QLToolbarButtonOption *)&v12 init];
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

@end