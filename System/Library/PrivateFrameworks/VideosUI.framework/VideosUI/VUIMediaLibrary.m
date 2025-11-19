@interface VUIMediaLibrary
- (BOOL)isEqual:(id)a3;
- (NSString)title;
- (VUIMediaLibrary)init;
- (VUIMediaLibrary)initWithIdentifier:(id)a3 type:(unint64_t)a4 manager:(id)a5;
- (VUIMediaLibraryManager)manager;
- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
- (id)_imageLoadParamsForImageLoaderObject:(id)a3;
- (id)_imageLoaderIdentifier;
- (id)description;
- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4;
- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3;
- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4;
- (unint64_t)_incrementRevision;
- (unint64_t)hash;
- (unint64_t)revision;
- (void)_postContentsDidChangeNotification;
- (void)_updateWithTitle:(id)a3 connectionState:(unint64_t)a4;
- (void)connectWithCompletionHandler:(id)a3 progressHandler:(id)a4;
@end

@implementation VUIMediaLibrary

- (void)_postContentsDidChangeNotification
{
  [(VUIMediaLibrary *)self _incrementRevision];
  objc_initWeak(&location, self);
  v3 = [(VUIMediaLibrary *)self manager];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__VUIMediaLibrary__postContentsDidChangeNotification__block_invoke;
  v4[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, &location);
  [v3 _enqueueCompletionQueueBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (unint64_t)_incrementRevision
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_revision + 1;
  v2->_revision = v3;
  objc_sync_exit(v2);

  return v3;
}

- (VUIMediaLibraryManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

void __53__VUIMediaLibrary__postContentsDidChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"VUISideBandContentsDidChangeNotification" object:0];

    WeakRetained = v3;
  }
}

- (VUIMediaLibrary)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaLibrary)initWithIdentifier:(id)a3 type:(unint64_t)a4 manager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = VUIMediaLibrary;
  v10 = [(VUIMediaLibraryImageLoader *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_type = a4;
    objc_storeWeak(&v10->_manager, v9);
    v10->_revision = 1;
  }

  return v10;
}

- (NSString)title
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The %@ method needs to be override by a subclass.", v4}];

  return &stru_1F5DB25C0;
}

- (unint64_t)revision
{
  v2 = self;
  objc_sync_enter(v2);
  revision = v2->_revision;
  objc_sync_exit(v2);

  return revision;
}

- (void)connectWithCompletionHandler:(id)a3 progressHandler:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [(VUIMediaLibrary *)self manager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__VUIMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke;
    v7[3] = &unk_1E872D7E0;
    v8 = v5;
    [v6 _enqueueCompletionQueueBlock:v7];
  }
}

- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ method needs to be override by a subclass.", v5}];

  return 0;
}

- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ method needs to be override by a subclass.", v6}];

  return 0;
}

- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ method needs to be override by a subclass.", v6}];

  return 0;
}

- (id)_imageLoaderIdentifier
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The %@ method needs to be override by a subclass.", v4}];

  return 0;
}

- (id)_imageLoadParamsForImageLoaderObject:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ method needs to be override by a subclass.", v5}];

  return 0;
}

- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The %@ method needs to be override by a subclass.", v7}];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(VUIMediaLibrary *)self type];
  v4 = v3 ^ (2 * [(VUIMediaLibrary *)self revision]);
  v5 = [(VUIMediaLibrary *)self identifier];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUIMediaLibrary *)self type];
    if (v7 == [(VUIMediaLibrary *)v6 type]&& (v8 = [(VUIMediaLibrary *)self revision], v8 == [(VUIMediaLibrary *)v6 revision]))
    {
      v9 = [(VUIMediaLibrary *)self identifier];
      v10 = [(VUIMediaLibrary *)v6 identifier];
      v11 = v9;
      v12 = v10;
      v13 = v12;
      if (v11 == v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = 0;
        if (v11 && v12)
        {
          v14 = [v11 isEqual:v12];
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28.receiver = self;
  v28.super_class = VUIMediaLibrary;
  v4 = [(VUIMediaLibrary *)&v28 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMediaLibrary *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = VUIMediaLibraryTypeLogString([(VUIMediaLibrary *)self type]);
  v10 = [v8 stringWithFormat:@"%@=%@", @"type", v9];
  [v3 addObject:v10];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%lu", @"revision", -[VUIMediaLibrary revision](self, "revision")];
  [v3 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(VUIMediaLibrary *)self title];
  v14 = [v12 stringWithFormat:@"%@=%@", @"title", v13];
  [v3 addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  [(VUIMediaLibrary *)self isConnectable];
  v16 = VUIBoolLogString();
  v17 = [v15 stringWithFormat:@"%@=%@", @"connectable", v16];
  [v3 addObject:v17];

  v18 = MEMORY[0x1E696AEC0];
  [(VUIMediaLibrary *)self supportsDRMContent];
  v19 = VUIBoolLogString();
  v20 = [v18 stringWithFormat:@"%@=%@", @"supportsDRMContent", v19];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696AEC0];
  v22 = VUIMediaLibraryConnectionStateLogString([(VUIMediaLibrary *)self connectionState]);
  v23 = [v21 stringWithFormat:@"%@=%@", @"connectionState", v22];
  [v3 addObject:v23];

  v24 = MEMORY[0x1E696AEC0];
  v25 = [v3 componentsJoinedByString:{@", "}];
  v26 = [v24 stringWithFormat:@"<%@>", v25];

  return v26;
}

- (void)_updateWithTitle:(id)a3 connectionState:(unint64_t)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ method needs to be override by a subclass.", v6}];
}

@end