@interface PSTimeZoneTableCell
- (void)prepareForReuse;
- (void)setCity:(id)city;
@end

@implementation PSTimeZoneTableCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PSTimeZoneTableCell;
  [(PSTimeZoneTableCell *)&v4 prepareForReuse];
  city = self->_city;
  self->_city = 0;
}

- (void)setCity:(id)city
{
  objc_storeStrong(&self->_city, city);
  cityCopy = city;
  v7 = [(ALCity *)self->_city displayNameIncludingCountry:1];

  textLabel = [(PSTimeZoneTableCell *)self textLabel];
  [textLabel setText:v7];
}

@end