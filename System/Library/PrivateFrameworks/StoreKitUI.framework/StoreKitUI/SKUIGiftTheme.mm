@interface SKUIGiftTheme
- (SKUIGiftTheme)initWithThemeDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SKUIGiftTheme

- (SKUIGiftTheme)initWithThemeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftTheme initWithThemeDictionary:];
  }

  v23.receiver = self;
  v23.super_class = SKUIGiftTheme;
  v5 = [(SKUIGiftTheme *)&v23 init];
  if (v5)
  {
    v6 = [[SKUIUber alloc] initWithUberDictionary:dictionaryCopy];
    colorScheme = [(SKUIUber *)v6 colorScheme];
    backgroundColor = [colorScheme backgroundColor];
    [(SKUIGiftTheme *)v5 setBackgroundColor:backgroundColor];

    primaryTextColor = [colorScheme primaryTextColor];
    [(SKUIGiftTheme *)v5 setBodyTextColor:primaryTextColor];

    secondaryTextColor = [colorScheme secondaryTextColor];
    [(SKUIGiftTheme *)v5 setPrimaryTextColor:secondaryTextColor];

    v11 = [dictionaryCopy objectForKey:@"fcId"];
    if (objc_opt_respondsToSelector())
    {
      v5->_themeIdentifier = [v11 longLongValue];
    }

    v12 = [dictionaryCopy objectForKey:@"localized_name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      themeName = v5->_themeName;
      v5->_themeName = v13;
    }

    artworkProvider = [(SKUIUber *)v6 artworkProvider];
    if ([artworkProvider hasArtwork])
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v18 = v17;

      if (v18 == 2.0)
      {
        [artworkProvider largestArtwork];
      }

      else
      {
        [artworkProvider smallestArtwork];
      }
      v19 = ;
      v20 = [v19 URL];
      headerImageURL = v5->_headerImageURL;
      v5->_headerImageURL = v20;
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIGiftTheme;
  v4 = [(SKUIGiftTheme *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%lld, %@, %@]", v4, self->_themeIdentifier, self->_themeName, self->_headerImageURL];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(UIColor *)self->_backgroundColor copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(UIColor *)self->_bodyTextColor copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  objc_storeStrong((v5 + 24), self->_headerImage);
  objc_storeStrong((v5 + 32), self->_headerImageURL);
  v10 = [(UIColor *)self->_primaryTextColor copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 48) = self->_themeIdentifier;
  v12 = [(NSString *)self->_themeName copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  return v5;
}

- (void)initWithThemeDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftTheme initWithThemeDictionary:]";
}

@end