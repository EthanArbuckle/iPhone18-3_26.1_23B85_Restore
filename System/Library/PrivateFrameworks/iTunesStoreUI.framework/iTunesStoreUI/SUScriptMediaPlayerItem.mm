@interface SUScriptMediaPlayerItem
+ (id)webScriptNameForKey:(const char *)key;
- (NSNumber)itemIdentifier;
- (NSNumber)playableDuration;
- (NSString)URL;
- (NSString)backgroundImageURL;
- (NSString)bookmarkIdentifier;
- (NSString)initialOrientation;
- (NSString)itemType;
- (NSString)subtitle;
- (NSString)title;
- (SUScriptMediaPlayerItem)initWithDictionary:(id)dictionary;
- (id)copyNativeMediaPlayerItem;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setBackgroundImageURL:(id)l;
- (void)setBookmarkIdentifier:(id)identifier;
- (void)setInitialOrientation:(id)orientation;
- (void)setItemIdentifier:(id)identifier;
- (void)setItemType:(id)type;
- (void)setPlayableDuration:(id)duration;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setURL:(id)l;
@end

@implementation SUScriptMediaPlayerItem

- (SUScriptMediaPlayerItem)initWithDictionary:(id)dictionary
{
  v15.receiver = self;
  v15.super_class = SUScriptMediaPlayerItem;
  v4 = [(SUScriptObject *)&v15 init];
  if (v4)
  {
    v4->_mediaItem = objc_alloc_init(SUMediaPlayerItem);
    v5 = [dictionary objectForKey:@"backgroundImageURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUMediaPlayerItem setBackgroundImageURL:](v4->_mediaItem, "setBackgroundImageURL:", [MEMORY[0x1E695DFF8] URLWithString:v5]);
    }

    v6 = [dictionary objectForKey:@"bookmarkIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUMediaPlayerItem *)v4->_mediaItem setBookmarkIdentifier:v6];
    }

    v7 = [dictionary objectForKey:@"itemType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUMediaPlayerItem setItemType:](v4->_mediaItem, "setItemType:", [+[SUItemDataSource sharedDataSource](SUItemDataSource "sharedDataSource")]);
    }

    v8 = [dictionary objectForKey:@"playableDuration"];
    if (objc_opt_respondsToSelector())
    {
      mediaItem = v4->_mediaItem;
      [v8 doubleValue];
      [(SUMediaPlayerItem *)mediaItem setPlayableDuration:v10 / 1000.0];
    }

    v11 = [dictionary objectForKey:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUMediaPlayerItem *)v4->_mediaItem setSubtitle:v11];
    }

    v12 = [dictionary objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUMediaPlayerItem *)v4->_mediaItem setTitle:v12];
    }

    v13 = [dictionary objectForKey:@"URL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUMediaPlayerItem setURL:](v4->_mediaItem, "setURL:", [MEMORY[0x1E695DFF8] URLWithString:v13]);
    }

    [dictionary objectForKey:@"itemIdentifier"];
    [(SUMediaPlayerItem *)v4->_mediaItem setItemIdentifier:SSGetUnsignedLongLongFromValue()];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptMediaPlayerItem;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)copyNativeMediaPlayerItem
{
  [(SUScriptObject *)self lock];
  v3 = [(SUMediaPlayerItem *)self->_mediaItem copy];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSString)backgroundImageURL
{
  [(SUScriptObject *)self lock];
  absoluteString = [(NSURL *)[(SUMediaPlayerItem *)self->_mediaItem backgroundImageURL] absoluteString];
  [(SUScriptObject *)self unlock];
  return absoluteString;
}

- (NSString)bookmarkIdentifier
{
  [(SUScriptObject *)self lock];
  bookmarkIdentifier = [(SUMediaPlayerItem *)self->_mediaItem bookmarkIdentifier];
  [(SUScriptObject *)self unlock];
  return bookmarkIdentifier;
}

- (NSString)initialOrientation
{
  [(SUScriptObject *)self lock];
  v3 = SUOrientationStringForDeviceOrientation([(SUMediaPlayerItem *)self->_mediaItem initialOrientation]);
  [(SUScriptObject *)self unlock];
  return &v3->isa;
}

- (NSNumber)itemIdentifier
{
  [(SUScriptObject *)self lock];
  v3 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:{-[SUMediaPlayerItem itemIdentifier](self->_mediaItem, "itemIdentifier")}];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSString)itemType
{
  [(SUScriptObject *)self lock];
  v3 = [+[SUItemDataSource sharedDataSource](SUItemDataSource "sharedDataSource")];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSNumber)playableDuration
{
  [(SUScriptObject *)self lock];
  v3 = MEMORY[0x1E696AD98];
  [(SUMediaPlayerItem *)self->_mediaItem playableDuration];
  v5 = [v3 numberWithDouble:v4 * 1000.0];
  [(SUScriptObject *)self unlock];
  return v5;
}

- (void)setBackgroundImageURL:(id)l
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!l || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = l, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    -[SUMediaPlayerItem setBackgroundImageURL:](self->_mediaItem, "setBackgroundImageURL:", [MEMORY[0x1E695DFF8] URLWithString:v5]);

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setBookmarkIdentifier:(id)identifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!identifier || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = identifier, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SUMediaPlayerItem *)self->_mediaItem setBookmarkIdentifier:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setInitialOrientation:(id)orientation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!orientation || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = orientation, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    if (SUOrientationStringIsValid(v5))
    {
      [(SUScriptObject *)self lock];
      [(SUMediaPlayerItem *)self->_mediaItem setInitialOrientation:SUInterfaceOrientationForString(v5)];

      [(SUScriptObject *)self unlock];
    }

    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setItemIdentifier:(id)identifier
{
  v5 = SSGetUnsignedLongLongFromValue();
  if (identifier)
  {
    v6 = v5;
    [(SUScriptObject *)self lock];
    [(SUMediaPlayerItem *)self->_mediaItem setItemIdentifier:v6];

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];

    [v7 throwException:@"Invalid argument"];
  }
}

- (void)setItemType:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!type || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = type, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    -[SUMediaPlayerItem setItemType:](self->_mediaItem, "setItemType:", [+[SUItemDataSource sharedDataSource](SUItemDataSource "sharedDataSource")]);

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setPlayableDuration:(id)duration
{
  if (objc_opt_respondsToSelector())
  {
    [(SUScriptObject *)self lock];
    mediaItem = self->_mediaItem;
    [duration doubleValue];
    [(SUMediaPlayerItem *)mediaItem setPlayableDuration:v6 / 1000.0];

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];

    [v7 throwException:@"Invalid argument"];
  }
}

- (void)setSubtitle:(id)subtitle
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!subtitle || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = subtitle, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SUMediaPlayerItem *)self->_mediaItem setSubtitle:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setTitle:(id)title
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!title || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = title, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SUMediaPlayerItem *)self->_mediaItem setTitle:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setURL:(id)l
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!l || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = l, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    -[SUMediaPlayerItem setURL:](self->_mediaItem, "setURL:", [MEMORY[0x1E695DFF8] URLWithString:v5]);

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (NSString)subtitle
{
  [(SUScriptObject *)self lock];
  subtitle = [(SUMediaPlayerItem *)self->_mediaItem subtitle];
  [(SUScriptObject *)self unlock];
  return subtitle;
}

- (NSString)title
{
  [(SUScriptObject *)self lock];
  title = [(SUMediaPlayerItem *)self->_mediaItem title];
  [(SUScriptObject *)self unlock];
  return title;
}

- (NSString)URL
{
  [(SUScriptObject *)self lock];
  absoluteString = [(NSURL *)[(SUMediaPlayerItem *)self->_mediaItem URL] absoluteString];
  [(SUScriptObject *)self unlock];
  return absoluteString;
}

+ (id)webScriptNameForKey:(const char *)key
{
  result = SUWebScriptNameForKey(key, &__KeyMapping_0, 9);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaPlayerItem;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKey_, key);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMediaPlayerItem;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  SUWebScriptAddPropertyKeysToArray(scriptAttributeKeys, &__KeyMapping_0, 9);
  return scriptAttributeKeys;
}

@end