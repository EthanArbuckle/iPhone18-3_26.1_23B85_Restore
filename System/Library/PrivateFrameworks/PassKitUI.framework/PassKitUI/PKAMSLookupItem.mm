@interface PKAMSLookupItem
- (PKAMSLookupItem)initWithDict:(id)a3;
@end

@implementation PKAMSLookupItem

- (PKAMSLookupItem)initWithDict:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17.receiver = self;
    v17.super_class = PKAMSLookupItem;
    v5 = [(PKAMSLookupItem *)&v17 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698B3F0]];
      v7 = [v6 numberValue];
      appStoreIdentifier = v5->_appStoreIdentifier;
      v5->_appStoreIdentifier = v7;

      v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698B410]];
      artwork = v5->_artwork;
      v5->_artwork = v9;

      v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698B428]];
      displayName = v5->_displayName;
      v5->_displayName = v11;

      v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698B408]];
      distributionIdentifier = v5->_distributionIdentifier;
      v5->_distributionIdentifier = v13;
    }

    self = v5;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end