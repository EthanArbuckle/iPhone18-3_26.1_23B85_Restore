@interface WBSRecentItem
- (BOOL)isEqual:(id)a3;
- (NSString)deviceLocationDescription;
- (WBSRecentItem)initWithIdentifier:(id)a3 url:(id)a4 date:(id)a5;
@end

@implementation WBSRecentItem

- (WBSRecentItem)initWithIdentifier:(id)a3 url:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = WBSRecentItem;
  v11 = [(WBSRecentItem *)&v16 init];
  if (v11)
  {
    v12 = [v8 copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_URL, a4);
    objc_storeStrong(&v11->_date, a5);
    v14 = v11;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v3 = [(WBSRecentItem *)self device];
  v4 = [v3 disambiguatedName];

  v5 = [(WBSRecentItem *)self icon];
  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  v8 = [v6 stringWithFormat:v7, v4];

  return v8;
}

@end