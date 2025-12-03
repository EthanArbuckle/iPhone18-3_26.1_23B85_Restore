@interface PKAMSLookupItem
- (PKAMSLookupItem)initWithDict:(id)dict;
@end

@implementation PKAMSLookupItem

- (PKAMSLookupItem)initWithDict:(id)dict
{
  dictCopy = dict;
  if (dictCopy)
  {
    v17.receiver = self;
    v17.super_class = PKAMSLookupItem;
    v5 = [(PKAMSLookupItem *)&v17 init];
    if (v5)
    {
      v6 = [dictCopy objectForKeyedSubscript:*MEMORY[0x1E698B3F0]];
      numberValue = [v6 numberValue];
      appStoreIdentifier = v5->_appStoreIdentifier;
      v5->_appStoreIdentifier = numberValue;

      v9 = [dictCopy objectForKeyedSubscript:*MEMORY[0x1E698B410]];
      artwork = v5->_artwork;
      v5->_artwork = v9;

      v11 = [dictCopy objectForKeyedSubscript:*MEMORY[0x1E698B428]];
      displayName = v5->_displayName;
      v5->_displayName = v11;

      v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x1E698B408]];
      distributionIdentifier = v5->_distributionIdentifier;
      v5->_distributionIdentifier = v13;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end