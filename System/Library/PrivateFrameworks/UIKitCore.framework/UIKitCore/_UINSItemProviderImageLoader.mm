@interface _UINSItemProviderImageLoader
- (BOOL)_really_cancel;
- (_UINSItemProviderImageLoader)initWithItemProvider:(id)provider typeIdentifier:(id)identifier;
- (void)_really_loadImage:(id)image;
@end

@implementation _UINSItemProviderImageLoader

- (_UINSItemProviderImageLoader)initWithItemProvider:(id)provider typeIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _UINSItemProviderImageLoader;
  v9 = [(_UIImageLoader *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemProvider, provider);
    if (identifierCopy)
    {
      identifier = [identifierCopy copy];
    }

    else
    {
      identifier = [*MEMORY[0x1E6982E30] identifier];
    }

    v12 = identifier;
    objc_storeStrong(&v10->_typeIdentifier, identifier);
  }

  return v10;
}

- (void)_really_loadImage:(id)image
{
  imageCopy = image;
  itemProvider = self->_itemProvider;
  typeIdentifier = self->_typeIdentifier;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50___UINSItemProviderImageLoader__really_loadImage___block_invoke;
  v12 = &unk_1E7106558;
  selfCopy = self;
  v14 = imageCopy;
  v7 = imageCopy;
  v8 = [(NSItemProvider *)itemProvider loadDataRepresentationForTypeIdentifier:typeIdentifier completionHandler:&v9];
  [(_UINSItemProviderImageLoader *)self _setProgress:v8, v9, v10, v11, v12, selfCopy];
}

- (BOOL)_really_cancel
{
  _progress = [(_UINSItemProviderImageLoader *)self _progress];
  [_progress cancel];

  return 1;
}

@end