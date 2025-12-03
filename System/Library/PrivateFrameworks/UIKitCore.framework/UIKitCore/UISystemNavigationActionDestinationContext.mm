@interface UISystemNavigationActionDestinationContext
+ (id)systemNavigationActionContextWithTitle:(id)title andURL:(id)l;
+ (id)systemNavigationActionContextWithTitle:(id)title bundleId:(id)id;
+ (id)systemNavigationActionContextWithTitle:(id)title sceneIdentifier:(id)identifier;
+ (id)systemNavigationActionContextWithURL:(id)l;
- (NSString)debugDescription;
- (UISystemNavigationActionDestinationContext)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation UISystemNavigationActionDestinationContext

+ (id)systemNavigationActionContextWithTitle:(id)title andURL:(id)l
{
  titleCopy = title;
  lCopy = l;
  v8 = lCopy;
  if (titleCopy)
  {
    v9 = [self systemNavigationActionContextWithTitle:titleCopy bundleId:0];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  if (lCopy)
  {
    v9 = [self systemNavigationActionContextWithURL:lCopy];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

+ (id)systemNavigationActionContextWithTitle:(id)title bundleId:(id)id
{
  idCopy = id;
  titleCopy = title;
  v8 = objc_alloc_init(self);
  [v8 setTitle:titleCopy];

  [v8 setBundleId:idCopy];

  return v8;
}

+ (id)systemNavigationActionContextWithTitle:(id)title sceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  v8 = objc_alloc_init(self);
  [v8 setTitle:titleCopy];

  [v8 setSceneIdentifier:identifierCopy];

  return v8;
}

+ (id)systemNavigationActionContextWithURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(self);
  [v5 setURL:lCopy];

  return v5;
}

- (UISystemNavigationActionDestinationContext)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = UISystemNavigationActionDestinationContext;
  v5 = [(UISystemNavigationActionDestinationContext *)&v20 init];
  if (v5)
  {
    v6 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
    v10 = [v9 copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v10;

    v12 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
    if ([v12 length])
    {
      v13 = [MEMORY[0x1E695DFF8] URLWithString:v12 encodingInvalidCharacters:0];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 copy];
    URL = v5->_URL;
    v5->_URL = v14;

    v16 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
    v17 = [v16 copy];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v17;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(NSString *)self->_title length])
  {
    BSSerializeStringToXPCDictionaryWithKey();
  }

  if ([(NSString *)self->_bundleId length])
  {
    BSSerializeStringToXPCDictionaryWithKey();
  }

  URL = self->_URL;
  if (URL)
  {
    absoluteString = [(NSURL *)URL absoluteString];
    BSSerializeStringToXPCDictionaryWithKey();
  }

  v6 = dictionaryCopy;
  if (self->_sceneIdentifier)
  {
    BSSerializeStringToXPCDictionaryWithKey();
    v6 = dictionaryCopy;
  }
}

- (NSString)debugDescription
{
  title = self->_title;
  if (title)
  {
    sceneIdentifier = self->_sceneIdentifier;
    if (sceneIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: title: %@, sceneIdentifier: %@>", self, title, sceneIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: title: %@, bundleId: %@>", self, title, self->_bundleId];
    }
    v9 = ;
  }

  else
  {
    URL = self->_URL;
    if (URL)
    {
      v6 = MEMORY[0x1E696AEC0];
      absoluteString = [(NSURL *)URL absoluteString];
      v8 = [v6 stringWithFormat:@"<%@: URL: %@>", self, absoluteString];

      goto LABEL_9;
    }

    v11.receiver = self;
    v11.super_class = UISystemNavigationActionDestinationContext;
    v9 = [(UISystemNavigationActionDestinationContext *)&v11 debugDescription];
  }

  v8 = v9;
LABEL_9:

  return v8;
}

@end