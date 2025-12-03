@interface SSPasteCommand
- (SSPasteCommand)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSPasteCommand

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SSPasteCommand;
  coderCopy = coder;
  [(SSPasteCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(SSPasteCommand *)self copyableItems:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"copyableItems"];
}

- (SSPasteCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SSPasteCommand;
  v5 = [(SSPasteCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"copyableItems"];
    [(SSPasteCommand *)v5 setCopyableItems:v6];
  }

  return v5;
}

@end