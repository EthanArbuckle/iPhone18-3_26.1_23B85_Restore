@interface SearchUICustomViewCardSection
- (SearchUICustomViewCardSection)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SearchUICustomViewCardSection

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SearchUICustomViewCardSection;
  coderCopy = coder;
  [(SearchUICustomViewCardSection *)&v7 encodeWithCoder:coderCopy];
  v5 = [(SearchUICustomViewCardSection *)self typeIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:self->typeIdentifier];

  instanceIdentifier = [(SearchUICustomViewCardSection *)self instanceIdentifier];
  [coderCopy encodeObject:instanceIdentifier forKey:self->instanceIdentifier];
}

- (SearchUICustomViewCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SearchUICustomViewCardSection;
  v5 = [(SearchUICustomViewCardSection *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v5->typeIdentifier];
    [(SearchUICustomViewCardSection *)v5 setTypeIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v5->instanceIdentifier];
    [(SearchUICustomViewCardSection *)v5 setInstanceIdentifier:v7];
  }

  return v5;
}

@end