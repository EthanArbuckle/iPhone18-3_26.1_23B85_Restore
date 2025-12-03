@interface WBSRecentItem
- (BOOL)isEqual:(id)equal;
- (NSString)deviceLocationDescription;
- (WBSRecentItem)initWithIdentifier:(id)identifier url:(id)url date:(id)date;
@end

@implementation WBSRecentItem

- (WBSRecentItem)initWithIdentifier:(id)identifier url:(id)url date:(id)date
{
  identifierCopy = identifier;
  urlCopy = url;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = WBSRecentItem;
  v11 = [(WBSRecentItem *)&v16 init];
  if (v11)
  {
    v12 = [identifierCopy copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_URL, url);
    objc_storeStrong(&v11->_date, date);
    v14 = v11;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([v5[2] isEqual:self->_URL])
      {
        v6 = [v5[1] isEqual:self->_identifier];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)deviceLocationDescription
{
  device = [(WBSRecentItem *)self device];
  disambiguatedName = [device disambiguatedName];

  icon = [(WBSRecentItem *)self icon];
  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  v8 = [v6 stringWithFormat:v7, disambiguatedName];

  return v8;
}

@end