@interface UISystemNavigationActionDestinationContext
+ (id)systemNavigationActionContextWithTitle:(id)a3 andURL:(id)a4;
+ (id)systemNavigationActionContextWithTitle:(id)a3 bundleId:(id)a4;
+ (id)systemNavigationActionContextWithTitle:(id)a3 sceneIdentifier:(id)a4;
+ (id)systemNavigationActionContextWithURL:(id)a3;
- (NSString)debugDescription;
- (UISystemNavigationActionDestinationContext)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation UISystemNavigationActionDestinationContext

+ (id)systemNavigationActionContextWithTitle:(id)a3 andURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [a1 systemNavigationActionContextWithTitle:v6 bundleId:0];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  if (v7)
  {
    v9 = [a1 systemNavigationActionContextWithURL:v7];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

+ (id)systemNavigationActionContextWithTitle:(id)a3 bundleId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setTitle:v7];

  [v8 setBundleId:v6];

  return v8;
}

+ (id)systemNavigationActionContextWithTitle:(id)a3 sceneIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setTitle:v7];

  [v8 setSceneIdentifier:v6];

  return v8;
}

+ (id)systemNavigationActionContextWithURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setURL:v4];

  return v5;
}

- (UISystemNavigationActionDestinationContext)initWithXPCDictionary:(id)a3
{
  v4 = a3;
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

- (void)encodeWithXPCDictionary:(id)a3
{
  v7 = a3;
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
    v5 = [(NSURL *)URL absoluteString];
    BSSerializeStringToXPCDictionaryWithKey();
  }

  v6 = v7;
  if (self->_sceneIdentifier)
  {
    BSSerializeStringToXPCDictionaryWithKey();
    v6 = v7;
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
      v7 = [(NSURL *)URL absoluteString];
      v8 = [v6 stringWithFormat:@"<%@: URL: %@>", self, v7];

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