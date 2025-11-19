@interface SSPasteCommand
- (SSPasteCommand)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSPasteCommand

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSPasteCommand;
  v4 = a3;
  [(SSPasteCommand *)&v6 encodeWithCoder:v4];
  v5 = [(SSPasteCommand *)self copyableItems:v6.receiver];
  [v4 encodeObject:v5 forKey:@"copyableItems"];
}

- (SSPasteCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SSPasteCommand;
  v5 = [(SSPasteCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"copyableItems"];
    [(SSPasteCommand *)v5 setCopyableItems:v6];
  }

  return v5;
}

@end