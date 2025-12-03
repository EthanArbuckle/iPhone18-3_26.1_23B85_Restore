@interface ICURLBagLibraryDAAPConfiguration
- (ICURLBagLibraryDAAPConfiguration)initWithBagLibraryDAAPDictionary:(id)dictionary;
@end

@implementation ICURLBagLibraryDAAPConfiguration

- (ICURLBagLibraryDAAPConfiguration)initWithBagLibraryDAAPDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICURLBagLibraryDAAPConfiguration;
  v6 = [(ICURLBagLibraryDAAPConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagDictionary, dictionary);
  }

  return v7;
}

@end