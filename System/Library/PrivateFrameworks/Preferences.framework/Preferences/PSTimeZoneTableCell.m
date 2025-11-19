@interface PSTimeZoneTableCell
- (void)prepareForReuse;
- (void)setCity:(id)a3;
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

- (void)setCity:(id)a3
{
  objc_storeStrong(&self->_city, a3);
  v5 = a3;
  v7 = [(ALCity *)self->_city displayNameIncludingCountry:1];

  v6 = [(PSTimeZoneTableCell *)self textLabel];
  [v6 setText:v7];
}

@end