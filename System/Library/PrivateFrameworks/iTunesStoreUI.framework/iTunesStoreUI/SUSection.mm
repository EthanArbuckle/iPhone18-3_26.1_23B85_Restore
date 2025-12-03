@interface SUSection
- (BOOL)isDefaultSection;
- (BOOL)loadFromDictionary:(id)dictionary searchField:(id)field;
- (NSArray)itemImages;
- (NSString)title;
- (NSURL)url;
- (SUGradient)backgroundGradient;
- (SUPageSectionGroup)pageSectionGroup;
- (SUSection)initWithClientInterface:(id)interface;
- (SUSection)initWithClientInterface:(id)interface sectionType:(int64_t)type defaultPNGStyle:(int64_t)style;
- (UIImage)image;
- (UIImage)moreListImage;
- (UIImage)selectedImage;
- (UIImage)selectedMoreListImage;
- (id)_colorForKey:(id)key;
- (id)_sectionButtonsForKey:(id)key;
- (id)description;
- (id)imageForSectionButtonWithTag:(int64_t)tag;
- (id)valueForProperty:(id)property;
- (int64_t)_minimumNetworkTypeFromDictionary:(id)dictionary;
- (int64_t)_typeForString:(id)string;
- (int64_t)defaultPNGStyle;
- (int64_t)minimumNetworkType;
- (int64_t)type;
- (void)dealloc;
- (void)setSectionButtonImage:(id)image forTag:(int64_t)tag;
@end

@implementation SUSection

- (int64_t)defaultPNGStyle
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"default-png-style"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [v2 isEqualToString:@"dark"];
  }

  else
  {
    return 0;
  }
}

- (SUSection)initWithClientInterface:(id)interface
{
  v6.receiver = self;
  v6.super_class = SUSection;
  v4 = [(SUSection *)&v6 init];
  if (v4)
  {
    v4->_clientInterface = interface;
  }

  return v4;
}

- (SUSection)initWithClientInterface:(id)interface sectionType:(int64_t)type defaultPNGStyle:(int64_t)style
{
  v13.receiver = self;
  v13.super_class = SUSection;
  v8 = [(SUSection *)&v13 init];
  if (!v8)
  {
    return v8;
  }

  v8->_clientInterface = interface;
  dictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8->_dictionary = dictionary;
  if (style)
  {
    if (style != 1)
    {
      goto LABEL_7;
    }

    [(NSMutableDictionary *)dictionary setObject:&unk_1F41EA970 forKey:@"background-gradient"];
    [(NSMutableDictionary *)v8->_dictionary setObject:@"dark" forKey:@"default-png-style"];
    [(NSMutableDictionary *)v8->_dictionary setObject:@"white" forKey:@"loading-indicator-color"];
    dictionary = v8->_dictionary;
    v10 = @"loading-text-color";
    v11 = @"white";
  }

  else
  {
    v11 = &unk_1F41EA998;
    v10 = @"background-gradient";
  }

  [(NSMutableDictionary *)dictionary setObject:v11 forKey:v10];
LABEL_7:
  if ((type - 1) <= 5)
  {
    [(NSMutableDictionary *)v8->_dictionary setObject:off_1E81648E8[type - 1] forKey:@"canonical-name"];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSection;
  [(SUSection *)&v3 dealloc];
}

- (id)description
{
  urlBagKey = [(SUSection *)self urlBagKey];
  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SUSection;
  v5 = [(SUSection *)&v8 description];
  identifier = [(SUSection *)self identifier];
  if (!urlBagKey)
  {
    urlBagKey = [(SUSection *)self url];
  }

  return [v4 stringWithFormat:@"%@: %@: %@", v5, identifier, urlBagKey];
}

- (SUGradient)backgroundGradient
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"background-gradient"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[SUGradient alloc] initWithPropertyList:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)image
{
  image = self->_image;
  _imageBaseName = [(SUSection *)self _imageBaseName];
  if (image)
  {
    v4 = 1;
  }

  else
  {
    v4 = _imageBaseName == 0;
  }

  if (v4)
  {
    return image;
  }

  v6 = MEMORY[0x1E69DCAB8];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.png", _imageBaseName];

  return [v6 imageNamed:v7];
}

- (id)imageForSectionButtonWithTag:(int64_t)tag
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:tag];
  v5 = [(NSMutableDictionary *)self->_sectionButtonImages objectForKey:v4];

  return v5;
}

- (BOOL)isDefaultSection
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"active-tab"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (NSArray)itemImages
{
  v2 = [+[SUItemDataSource sharedDataSource](SUItemDataSource "sharedDataSource")];
  v3 = [objc_msgSend(v2 "itemImageCollection")];

  return v3;
}

- (BOOL)loadFromDictionary:(id)dictionary searchField:(id)field
{
  v7 = self->_dictionary;

  self->_dictionary = [dictionary mutableCopy];
  if ([(SUSection *)self identifier]&& ([(SUSection *)self title]|| [(SUSection *)self urlBagKey]|| [(SUSection *)self url]))
  {
    v8 = [dictionary objectForKey:@"search-field"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [field copy];
      if (v9)
      {
        v10 = v9;
        [(SUSearchFieldConfiguration *)v9 loadFromDictionary:v8];
      }

      else
      {
        v10 = [[SUSearchFieldConfiguration alloc] initWithDictionary:v8 clientInterface:self->_clientInterface];
      }

      [(SUSection *)self setSearchFieldConfiguration:v10];
    }

    else
    {
      [(SUSection *)self setSearchFieldConfiguration:field];
    }

    v11 = 1;
  }

  else
  {

    v11 = 0;
    self->_dictionary = v7;
  }

  return v11;
}

- (int64_t)minimumNetworkType
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"allowed-connection-types"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SUSection *)self _minimumNetworkTypeFromDictionary:v3];
}

- (UIImage)moreListImage
{
  moreListImage = self->_moreListImage;
  _imageBaseName = [(SUSection *)self _imageBaseName];
  if (moreListImage)
  {
    v4 = 1;
  }

  else
  {
    v4 = _imageBaseName == 0;
  }

  if (v4)
  {
    return moreListImage;
  }

  v6 = MEMORY[0x1E69DCAB8];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MoreList%@.png", _imageBaseName];

  return [v6 imageNamed:v7];
}

- (SUPageSectionGroup)pageSectionGroup
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"tabs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[SUPageSectionGroup alloc] initWithSectionsDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)selectedImage
{
  selectedImage = self->_selectedImage;
  _imageBaseName = [(SUSection *)self _imageBaseName];
  if (selectedImage)
  {
    v4 = 1;
  }

  else
  {
    v4 = _imageBaseName == 0;
  }

  if (v4)
  {
    return selectedImage;
  }

  v6 = MEMORY[0x1E69DCAB8];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Selected.png", _imageBaseName];

  return [v6 imageNamed:v7];
}

- (UIImage)selectedMoreListImage
{
  selectedMoreListImage = self->_selectedMoreListImage;
  _imageBaseName = [(SUSection *)self _imageBaseName];
  if (selectedMoreListImage)
  {
    v4 = 1;
  }

  else
  {
    v4 = _imageBaseName == 0;
  }

  if (v4)
  {
    return selectedMoreListImage;
  }

  v6 = MEMORY[0x1E69DCAB8];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MoreList%@Selected.png", _imageBaseName];

  return [v6 imageNamed:v7];
}

- (void)setSectionButtonImage:(id)image forTag:(int64_t)tag
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:tag];
  sectionButtonImages = self->_sectionButtonImages;
  v8 = v6;
  if (image)
  {
    if (!sectionButtonImages)
    {
      sectionButtonImages = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = v8;
      self->_sectionButtonImages = sectionButtonImages;
    }

    [(NSMutableDictionary *)sectionButtonImages setObject:image forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)sectionButtonImages removeObjectForKey:v6];
  }
}

- (NSString)title
{
  v3 = [(SUSection *)self valueForProperty:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"_title"];

  return [mainBundle localizedStringForKey:v6 value:&stru_1F41B3660 table:0];
}

- (int64_t)type
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"canonical-name"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SUSection *)self _typeForString:v3];
}

- (NSURL)url
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:property];

  return v3;
}

- (id)_colorForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = SUCreateColorFromStyleString(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [MEMORY[0x1E69DC888] colorWithCGColor:v4];
  CGColorRelease(v5);
  return v6;
}

- (int64_t)_minimumNetworkTypeFromDictionary:(id)dictionary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1000;
  SSNetworkTypeApplyBlock();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __47__SUSection__minimumNetworkTypeFromDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  result = SSGetStringForNetworkType();
  if (result)
  {
    v5 = [*(a1 + 32) objectForKey:result];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [v5 BOOLValue];
      if (result)
      {
        v6 = *(*(a1 + 40) + 8);
        v7 = *(v6 + 24);
        if (v7 >= a2)
        {
          v7 = a2;
        }

        *(v6 + 24) = v7;
      }
    }
  }

  return result;
}

- (id)_sectionButtonsForKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [[SUSectionButton alloc] initWithSectionButtonDictionary:v11];
            v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[SUSectionButton tag](v12, "tag")}];
            [(SUSectionButton *)v12 setImage:[(NSMutableDictionary *)self->_sectionButtonImages objectForKey:v13]];
            [array addObject:v12];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  return array;
}

- (int64_t)_typeForString:(id)string
{
  if ([string isEqualToString:@"downloads"])
  {
    return 2;
  }

  if ([string isEqualToString:@"search"])
  {
    return 1;
  }

  if ([string isEqualToString:@"updates"])
  {
    return 3;
  }

  if ([string isEqualToString:@"podcasts"])
  {
    return 4;
  }

  if ([string isEqualToString:@"iTunesU"])
  {
    return 5;
  }

  if ([string isEqualToString:@"purchases"])
  {
    return 6;
  }

  return 0;
}

@end