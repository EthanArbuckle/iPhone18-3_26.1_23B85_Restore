@interface VUIDownloadEntity
- (BOOL)isEqual:(id)equal;
- (NSNumber)numberOfMediaItemsDownloading;
- (VUIDownloadEntity)initWithMediaEntities:(id)entities withDownloadType:(int64_t)type;
- (VUIDownloadEntity)initWithMediaEntity:(id)entity withDownloadType:(int64_t)type;
- (VUIDownloadEntityDelegate)delegate;
- (VUIMediaEntityIdentifier)identifier;
- (VUIMediaEntityIdentifier)showIdentifier;
- (unint64_t)hash;
- (void)_assetControllerStateDidChange:(id)change;
- (void)_configureWithMediaEntities:(id)entities;
- (void)_removeDeletedMediaItemInShowPageIfNeeded;
- (void)setMediaEntities:(id)entities;
@end

@implementation VUIDownloadEntity

- (VUIDownloadEntity)initWithMediaEntity:(id)entity withDownloadType:(int64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v6 = MEMORY[0x1E695DEC8];
  entityCopy2 = entity;
  v8 = [v6 arrayWithObjects:&entityCopy count:1];

  v9 = [(VUIDownloadEntity *)self initWithMediaEntities:v8 withDownloadType:type, entityCopy, v12];
  return v9;
}

- (VUIDownloadEntity)initWithMediaEntities:(id)entities withDownloadType:(int64_t)type
{
  entitiesCopy = entities;
  v12.receiver = self;
  v12.super_class = VUIDownloadEntity;
  v7 = [(VUIDownloadEntity *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_downloadType = type;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetControllers = v8->_assetControllers;
    v8->_assetControllers = v9;

    [(VUIDownloadEntity *)v8 _configureWithMediaEntities:entitiesCopy];
  }

  return v8;
}

- (NSNumber)numberOfMediaItemsDownloading
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_mediaEntities;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v3);
      }

      assetController = [*(*(&v17 + 1) + 8 * i) assetController];
      state = [assetController state];
      if ([state status] == 2)
      {
      }

      else
      {
        state2 = [assetController state];
        status = [state2 status];

        if (status != 1)
        {
          goto LABEL_10;
        }
      }

      v6 = (v6 + 1);
LABEL_10:
    }

    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v5);
LABEL_14:

  v13 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  numberOfMediaItemsDownloading = self->_numberOfMediaItemsDownloading;
  self->_numberOfMediaItemsDownloading = v13;

  v15 = self->_numberOfMediaItemsDownloading;

  return v15;
}

- (void)setMediaEntities:(id)entities
{
  entitiesCopy = entities;
  mediaEntities = [(VUIDownloadEntity *)self mediaEntities];
  v6 = [mediaEntities count];

  v7 = [entitiesCopy count];
  [(VUIDownloadEntity *)self _configureWithMediaEntities:entitiesCopy];

  if (v6 != v7)
  {
    delegate = [(VUIDownloadEntity *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate downloadEntity:self numberOfItemsDidChange:v7];
    }
  }
}

- (VUIMediaEntityIdentifier)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    if ([(VUIDownloadEntity *)self downloadType])
    {
      showIdentifier = [(VUIDownloadEntity *)self showIdentifier];
      firstObject = self->_identifier;
      self->_identifier = showIdentifier;
    }

    else
    {
      mediaEntities = [(VUIDownloadEntity *)self mediaEntities];
      firstObject = [mediaEntities firstObject];

      identifier = [firstObject identifier];
      v8 = self->_identifier;
      self->_identifier = identifier;
    }

    identifier = self->_identifier;
  }

  v9 = identifier;

  return v9;
}

- (VUIMediaEntityIdentifier)showIdentifier
{
  showIdentifier = self->_showIdentifier;
  if (showIdentifier)
  {
    goto LABEL_5;
  }

  if ([(VUIDownloadEntity *)self downloadType]== 1 || [(VUIDownloadEntity *)self downloadType]== 2)
  {
    mediaEntities = [(VUIDownloadEntity *)self mediaEntities];
    firstObject = [mediaEntities firstObject];

    showIdentifier = [firstObject showIdentifier];
    v7 = self->_showIdentifier;
    self->_showIdentifier = showIdentifier;

    showIdentifier = self->_showIdentifier;
LABEL_5:
    v8 = showIdentifier;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)_configureWithMediaEntities:(id)entities
{
  v35 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:0];

  if ([(NSMutableArray *)self->_assetControllers count])
  {
    [(NSMutableArray *)self->_assetControllers removeAllObjects];
  }

  objc_storeStrong(&self->_mediaEntities, entities);
  firstObject = [entitiesCopy firstObject];
  v8 = firstObject;
  downloadType = self->_downloadType;
  if (downloadType > 1)
  {
    if (downloadType == 2)
    {
      showTitle = [firstObject showTitle];
    }

    else
    {
      if (downloadType != 3)
      {
        goto LABEL_14;
      }

      showTitle = [firstObject title];
    }

    v15 = showTitle;
    [(VUIDownloadEntity *)self setTitle:showTitle];

    v16 = v8;
    episodeNumber = [v16 episodeNumber];
    [(VUIDownloadEntity *)self setEpisodeNumber:episodeNumber];

    fractionalEpisodeNumber = [v16 fractionalEpisodeNumber];
    [(VUIDownloadEntity *)self setFractionalEpisodeNumber:fractionalEpisodeNumber];

    duration = [v16 duration];

    [(VUIDownloadEntity *)self setDuration:duration];
    goto LABEL_13;
  }

  if (!downloadType)
  {
    title = [firstObject title];
    [(VUIDownloadEntity *)self setTitle:title];

    [(VUIDownloadEntity *)self setDownloadType:0];
    releaseYear = [v8 releaseYear];
    [(VUIDownloadEntity *)self setReleaseYear:releaseYear];

    duration2 = [v8 duration];
    [(VUIDownloadEntity *)self setDuration:duration2];

    goto LABEL_13;
  }

  if (downloadType == 1)
  {
    showTitle2 = [firstObject showTitle];
    [(VUIDownloadEntity *)self setTitle:showTitle2];

    [(VUIDownloadEntity *)self setDownloadType:1];
LABEL_13:
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(entitiesCopy, "count")}];
    [(VUIDownloadEntity *)self setNumberOfMediaItems:v20];
  }

LABEL_14:
  if ([(VUIDownloadEntity *)self downloadType]== 2 || [(VUIDownloadEntity *)self downloadType]== 1)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [(VUIDownloadEntity *)self mediaEntities:v8];
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        v25 = 0;
        do
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          assetController = [*(*(&v30 + 1) + 8 * v25) assetController];
          if (assetController)
          {
            [(NSMutableArray *)self->_assetControllers addObject:assetController];
            defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter2 addObserver:self selector:sel__assetControllerStateDidChange_ name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:assetController];
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v23);
    }

    v8 = v28;
    entitiesCopy = v29;
  }
}

- (void)_removeDeletedMediaItemInShowPageIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(VUIDownloadEntity *)self downloadType]== 1 || [(VUIDownloadEntity *)self downloadType]== 2)
  {
    v3 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v4 = self->_mediaEntities;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = v5;
    v7 = *v17;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        assetController = [v9 assetController];
        state = [assetController state];
        status = [state status];

        if (status)
        {
LABEL_9:
          [v3 addObject:v9];
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v9;
          if ([v13 markedAsDeleted])
          {
          }

          else
          {
            downloadExpirationDate = [v13 downloadExpirationDate];

            if (downloadExpirationDate)
            {
              goto LABEL_9;
            }
          }
        }

LABEL_14:
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v6)
      {
LABEL_16:

        [(VUIDownloadEntity *)selfCopy setMediaEntities:v3];
        return;
      }
    }
  }
}

- (void)_assetControllerStateDidChange:(id)change
{
  object = [change object];
  state = [object state];
  status = [state status];

  if (!status)
  {
    [(VUIDownloadEntity *)self _removeDeletedMediaItemInShowPageIfNeeded];
  }

  delegate = [(VUIDownloadEntity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    numberOfMediaItemsDownloading = [(VUIDownloadEntity *)self numberOfMediaItemsDownloading];
    if (![numberOfMediaItemsDownloading intValue])
    {
      [(VUIDownloadEntity *)self setDownloadType:1];
    }

    [delegate downloadEntity:self numberOfItemsDownloadingDidChange:numberOfMediaItemsDownloading];
  }
}

- (unint64_t)hash
{
  downloadType = [(VUIDownloadEntity *)self downloadType];
  identifier = [(VUIDownloadEntity *)self identifier];
  v5 = downloadType ^ (2 * [identifier hash]);

  mediaEntities = [(VUIDownloadEntity *)self mediaEntities];
  v7 = v5 ^ (8 * [mediaEntities count]);

  return v7;
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
    downloadType = [(VUIDownloadEntity *)self downloadType];
    if (downloadType == -[VUIDownloadEntity downloadType](v6, "downloadType") && (-[VUIDownloadEntity identifier](self, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), -[VUIDownloadEntity identifier](v6, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqual:v9], v9, v8, v10))
    {
      mediaEntities = [(VUIDownloadEntity *)self mediaEntities];
      v12 = [mediaEntities count];
      mediaEntities2 = [(VUIDownloadEntity *)v6 mediaEntities];
      v14 = v12 == [mediaEntities2 count];
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

- (VUIDownloadEntityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end