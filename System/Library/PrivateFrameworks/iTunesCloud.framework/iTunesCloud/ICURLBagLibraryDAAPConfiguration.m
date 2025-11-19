@interface ICURLBagLibraryDAAPConfiguration
- (ICURLBagLibraryDAAPConfiguration)initWithBagLibraryDAAPDictionary:(id)a3;
@end

@implementation ICURLBagLibraryDAAPConfiguration

- (ICURLBagLibraryDAAPConfiguration)initWithBagLibraryDAAPDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICURLBagLibraryDAAPConfiguration;
  v6 = [(ICURLBagLibraryDAAPConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagDictionary, a3);
  }

  return v7;
}

@end