@interface VUIDownloadEntity
- (BOOL)isEqual:(id)a3;
- (NSNumber)numberOfMediaItemsDownloading;
- (VUIDownloadEntity)initWithMediaEntities:(id)a3 withDownloadType:(int64_t)a4;
- (VUIDownloadEntity)initWithMediaEntity:(id)a3 withDownloadType:(int64_t)a4;
- (VUIDownloadEntityDelegate)delegate;
- (VUIMediaEntityIdentifier)identifier;
- (VUIMediaEntityIdentifier)showIdentifier;
- (unint64_t)hash;
- (void)_assetControllerStateDidChange:(id)a3;
- (void)_configureWithMediaEntities:(id)a3;
- (void)_removeDeletedMediaItemInShowPageIfNeeded;
- (void)setMediaEntities:(id)a3;
@end

@implementation VUIDownloadEntity

- (VUIDownloadEntity)initWithMediaEntity:(id)a3 withDownloadType:(int64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v11 count:1];

  v9 = [(VUIDownloadEntity *)self initWithMediaEntities:v8 withDownloadType:a4, v11, v12];
  return v9;
}

- (VUIDownloadEntity)initWithMediaEntities:(id)a3 withDownloadType:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = VUIDownloadEntity;
  v7 = [(VUIDownloadEntity *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_downloadType = a4;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetControllers = v8->_assetControllers;
    v8->_assetControllers = v9;

    [(VUIDownloadEntity *)v8 _configureWithMediaEntities:v6];
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

      v9 = [*(*(&v17 + 1) + 8 * i) assetController];
      v10 = [v9 state];
      if ([v10 status] == 2)
      {
      }

      else
      {
        v11 = [v9 state];
        v12 = [v11 status];

        if (v12 != 1)
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

- (void)setMediaEntities:(id)a3
{
  v4 = a3;
  v5 = [(VUIDownloadEntity *)self mediaEntities];
  v6 = [v5 count];

  v7 = [v4 count];
  [(VUIDownloadEntity *)self _configureWithMediaEntities:v4];

  if (v6 != v7)
  {
    v8 = [(VUIDownloadEntity *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 downloadEntity:self numberOfItemsDidChange:v7];
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
      v4 = [(VUIDownloadEntity *)self showIdentifier];
      v5 = self->_identifier;
      self->_identifier = v4;
    }

    else
    {
      v6 = [(VUIDownloadEntity *)self mediaEntities];
      v5 = [v6 firstObject];

      v7 = [v5 identifier];
      v8 = self->_identifier;
      self->_identifier = v7;
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
    v4 = [(VUIDownloadEntity *)self mediaEntities];
    v5 = [v4 firstObject];

    v6 = [v5 showIdentifier];
    v7 = self->_showIdentifier;
    self->_showIdentifier = v6;

    showIdentifier = self->_showIdentifier;
LABEL_5:
    v8 = showIdentifier;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)_configureWithMediaEntities:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:0];

  if ([(NSMutableArray *)self->_assetControllers count])
  {
    [(NSMutableArray *)self->_assetControllers removeAllObjects];
  }

  objc_storeStrong(&self->_mediaEntities, a3);
  v7 = [v5 firstObject];
  v8 = v7;
  downloadType = self->_downloadType;
  if (downloadType > 1)
  {
    if (downloadType == 2)
    {
      v11 = [v7 showTitle];
    }

    else
    {
      if (downloadType != 3)
      {
        goto LABEL_14;
      }

      v11 = [v7 title];
    }

    v15 = v11;
    [(VUIDownloadEntity *)self setTitle:v11];

    v16 = v8;
    v17 = [v16 episodeNumber];
    [(VUIDownloadEntity *)self setEpisodeNumber:v17];

    v18 = [v16 fractionalEpisodeNumber];
    [(VUIDownloadEntity *)self setFractionalEpisodeNumber:v18];

    v19 = [v16 duration];

    [(VUIDownloadEntity *)self setDuration:v19];
    goto LABEL_13;
  }

  if (!downloadType)
  {
    v12 = [v7 title];
    [(VUIDownloadEntity *)self setTitle:v12];

    [(VUIDownloadEntity *)self setDownloadType:0];
    v13 = [v8 releaseYear];
    [(VUIDownloadEntity *)self setReleaseYear:v13];

    v14 = [v8 duration];
    [(VUIDownloadEntity *)self setDuration:v14];

    goto LABEL_13;
  }

  if (downloadType == 1)
  {
    v10 = [v7 showTitle];
    [(VUIDownloadEntity *)self setTitle:v10];

    [(VUIDownloadEntity *)self setDownloadType:1];
LABEL_13:
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
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

          v26 = [*(*(&v30 + 1) + 8 * v25) assetController];
          if (v26)
          {
            [(NSMutableArray *)self->_assetControllers addObject:v26];
            v27 = [MEMORY[0x1E696AD88] defaultCenter];
            [v27 addObserver:self selector:sel__assetControllerStateDidChange_ name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:v26];
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v23);
    }

    v8 = v28;
    v5 = v29;
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
    v15 = self;
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
        v10 = [v9 assetController];
        v11 = [v10 state];
        v12 = [v11 status];

        if (v12)
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
            v14 = [v13 downloadExpirationDate];

            if (v14)
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

        [(VUIDownloadEntity *)v15 setMediaEntities:v3];
        return;
      }
    }
  }
}

- (void)_assetControllerStateDidChange:(id)a3
{
  v8 = [a3 object];
  v4 = [v8 state];
  v5 = [v4 status];

  if (!v5)
  {
    [(VUIDownloadEntity *)self _removeDeletedMediaItemInShowPageIfNeeded];
  }

  v6 = [(VUIDownloadEntity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(VUIDownloadEntity *)self numberOfMediaItemsDownloading];
    if (![v7 intValue])
    {
      [(VUIDownloadEntity *)self setDownloadType:1];
    }

    [v6 downloadEntity:self numberOfItemsDownloadingDidChange:v7];
  }
}

- (unint64_t)hash
{
  v3 = [(VUIDownloadEntity *)self downloadType];
  v4 = [(VUIDownloadEntity *)self identifier];
  v5 = v3 ^ (2 * [v4 hash]);

  v6 = [(VUIDownloadEntity *)self mediaEntities];
  v7 = v5 ^ (8 * [v6 count]);

  return v7;
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
    v7 = [(VUIDownloadEntity *)self downloadType];
    if (v7 == -[VUIDownloadEntity downloadType](v6, "downloadType") && (-[VUIDownloadEntity identifier](self, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), -[VUIDownloadEntity identifier](v6, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqual:v9], v9, v8, v10))
    {
      v11 = [(VUIDownloadEntity *)self mediaEntities];
      v12 = [v11 count];
      v13 = [(VUIDownloadEntity *)v6 mediaEntities];
      v14 = v12 == [v13 count];
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