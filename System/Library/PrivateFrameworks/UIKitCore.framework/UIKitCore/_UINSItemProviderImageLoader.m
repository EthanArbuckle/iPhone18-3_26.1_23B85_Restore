@interface _UINSItemProviderImageLoader
- (BOOL)_really_cancel;
- (_UINSItemProviderImageLoader)initWithItemProvider:(id)a3 typeIdentifier:(id)a4;
- (void)_really_loadImage:(id)a3;
@end

@implementation _UINSItemProviderImageLoader

- (_UINSItemProviderImageLoader)initWithItemProvider:(id)a3 typeIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _UINSItemProviderImageLoader;
  v9 = [(_UIImageLoader *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemProvider, a3);
    if (v8)
    {
      v11 = [v8 copy];
    }

    else
    {
      v11 = [*MEMORY[0x1E6982E30] identifier];
    }

    v12 = v11;
    objc_storeStrong(&v10->_typeIdentifier, v11);
  }

  return v10;
}

- (void)_really_loadImage:(id)a3
{
  v4 = a3;
  itemProvider = self->_itemProvider;
  typeIdentifier = self->_typeIdentifier;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50___UINSItemProviderImageLoader__really_loadImage___block_invoke;
  v12 = &unk_1E7106558;
  v13 = self;
  v14 = v4;
  v7 = v4;
  v8 = [(NSItemProvider *)itemProvider loadDataRepresentationForTypeIdentifier:typeIdentifier completionHandler:&v9];
  [(_UINSItemProviderImageLoader *)self _setProgress:v8, v9, v10, v11, v12, v13];
}

- (BOOL)_really_cancel
{
  v2 = [(_UINSItemProviderImageLoader *)self _progress];
  [v2 cancel];

  return 1;
}

@end