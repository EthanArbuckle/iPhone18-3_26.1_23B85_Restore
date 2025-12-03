@interface VUIMediaLibrary
- (BOOL)isEqual:(id)equal;
- (NSString)title;
- (VUIMediaLibrary)init;
- (VUIMediaLibrary)initWithIdentifier:(id)identifier type:(unint64_t)type manager:(id)manager;
- (VUIMediaLibraryManager)manager;
- (id)_imageLoadOperationWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit;
- (id)_imageLoadParamsForImageLoaderObject:(id)object;
- (id)_imageLoaderIdentifier;
- (id)description;
- (id)enqueueFetchRequests:(id)requests completionHandler:(id)handler;
- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)handler;
- (id)saveMediaEntity:(id)entity completionHandler:(id)handler;
- (unint64_t)_incrementRevision;
- (unint64_t)hash;
- (unint64_t)revision;
- (void)_postContentsDidChangeNotification;
- (void)_updateWithTitle:(id)title connectionState:(unint64_t)state;
- (void)connectWithCompletionHandler:(id)handler progressHandler:(id)progressHandler;
@end

@implementation VUIMediaLibrary

- (void)_postContentsDidChangeNotification
{
  [(VUIMediaLibrary *)self _incrementRevision];
  objc_initWeak(&location, self);
  manager = [(VUIMediaLibrary *)self manager];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__VUIMediaLibrary__postContentsDidChangeNotification__block_invoke;
  v4[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, &location);
  [manager _enqueueCompletionQueueBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (unint64_t)_incrementRevision
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_revision + 1;
  selfCopy->_revision = v3;
  objc_sync_exit(selfCopy);

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

- (VUIMediaLibrary)initWithIdentifier:(id)identifier type:(unint64_t)type manager:(id)manager
{
  identifierCopy = identifier;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = VUIMediaLibrary;
  v10 = [(VUIMediaLibraryImageLoader *)&v14 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_type = type;
    objc_storeWeak(&v10->_manager, managerCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  revision = selfCopy->_revision;
  objc_sync_exit(selfCopy);

  return revision;
}

- (void)connectWithCompletionHandler:(id)handler progressHandler:(id)progressHandler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    manager = [(VUIMediaLibrary *)self manager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__VUIMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke;
    v7[3] = &unk_1E872D7E0;
    v8 = handlerCopy;
    [manager _enqueueCompletionQueueBlock:v7];
  }
}

- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ method needs to be override by a subclass.", v5}];

  return 0;
}

- (id)enqueueFetchRequests:(id)requests completionHandler:(id)handler
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ method needs to be override by a subclass.", v6}];

  return 0;
}

- (id)saveMediaEntity:(id)entity completionHandler:(id)handler
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

- (id)_imageLoadParamsForImageLoaderObject:(id)object
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ method needs to be override by a subclass.", v5}];

  return 0;
}

- (id)_imageLoadOperationWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The %@ method needs to be override by a subclass.", v7}];

  return 0;
}

- (unint64_t)hash
{
  type = [(VUIMediaLibrary *)self type];
  v4 = type ^ (2 * [(VUIMediaLibrary *)self revision]);
  identifier = [(VUIMediaLibrary *)self identifier];
  v6 = [identifier hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    type = [(VUIMediaLibrary *)self type];
    if (type == [(VUIMediaLibrary *)v6 type]&& (v8 = [(VUIMediaLibrary *)self revision], v8 == [(VUIMediaLibrary *)v6 revision]))
    {
      identifier = [(VUIMediaLibrary *)self identifier];
      identifier2 = [(VUIMediaLibrary *)v6 identifier];
      v11 = identifier;
      v12 = identifier2;
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
  identifier = [(VUIMediaLibrary *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", identifier];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = VUIMediaLibraryTypeLogString([(VUIMediaLibrary *)self type]);
  v10 = [v8 stringWithFormat:@"%@=%@", @"type", v9];
  [v3 addObject:v10];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%lu", @"revision", -[VUIMediaLibrary revision](self, "revision")];
  [v3 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  title = [(VUIMediaLibrary *)self title];
  v14 = [v12 stringWithFormat:@"%@=%@", @"title", title];
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

- (void)_updateWithTitle:(id)title connectionState:(unint64_t)state
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ method needs to be override by a subclass.", v6}];
}

@end