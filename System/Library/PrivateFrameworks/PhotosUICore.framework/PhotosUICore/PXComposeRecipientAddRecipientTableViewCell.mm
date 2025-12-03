@interface PXComposeRecipientAddRecipientTableViewCell
- (PXComposeRecipientAddRecipientTableViewCell)initWithCoder:(id)coder;
- (PXComposeRecipientAddRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PXComposeRecipientAddRecipientTableViewCell

- (PXComposeRecipientAddRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_1A524C674();
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for ComposeRecipientAddRecipientTableViewCell();
  v7 = [(PXComposeRecipientAddRecipientTableViewCell *)&v10 initWithStyle:style reuseIdentifier:v6];

  v8 = v7;
  sub_1A524D314();

  return v8;
}

- (PXComposeRecipientAddRecipientTableViewCell)initWithCoder:(id)coder
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

@end