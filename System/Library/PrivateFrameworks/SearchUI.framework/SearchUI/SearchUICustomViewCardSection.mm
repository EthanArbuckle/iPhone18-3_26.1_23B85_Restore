@interface SearchUICustomViewCardSection
- (SearchUICustomViewCardSection)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SearchUICustomViewCardSection

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SearchUICustomViewCardSection;
  v4 = a3;
  [(SearchUICustomViewCardSection *)&v7 encodeWithCoder:v4];
  v5 = [(SearchUICustomViewCardSection *)self typeIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:self->typeIdentifier];

  v6 = [(SearchUICustomViewCardSection *)self instanceIdentifier];
  [v4 encodeObject:v6 forKey:self->instanceIdentifier];
}

- (SearchUICustomViewCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUICustomViewCardSection;
  v5 = [(SearchUICustomViewCardSection *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v5->typeIdentifier];
    [(SearchUICustomViewCardSection *)v5 setTypeIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v5->instanceIdentifier];
    [(SearchUICustomViewCardSection *)v5 setInstanceIdentifier:v7];
  }

  return v5;
}

@end