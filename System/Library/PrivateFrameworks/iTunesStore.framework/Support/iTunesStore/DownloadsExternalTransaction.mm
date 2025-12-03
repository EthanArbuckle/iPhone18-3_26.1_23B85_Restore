@interface DownloadsExternalTransaction
- (DownloadsExternalTransaction)initWithSessionDescriptor:(id)descriptor;
- (void)dealloc;
- (void)setExternalPropertyValues:(id)values forAssetWithID:(int64_t)d;
- (void)setExternalPropertyValues:(id)values forDownloadWithID:(int64_t)d;
- (void)unionChangeset:(id)changeset;
@end

@implementation DownloadsExternalTransaction

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadsExternalTransaction;
  [(DownloadsSession *)&v3 dealloc];
}

- (DownloadsExternalTransaction)initWithSessionDescriptor:(id)descriptor
{
  v6.receiver = self;
  v6.super_class = DownloadsExternalTransaction;
  v4 = [(DownloadsSession *)&v6 initWithSessionDescriptor:?];
  if (v4)
  {
    v4->_changeset = objc_alloc_init(DownloadsChangeset);
    v4->_externalState = [descriptor externalState];
  }

  return v4;
}

- (void)setExternalPropertyValues:(id)values forAssetWithID:(int64_t)d
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(values);
        }

        -[DownloadsExternalTransaction setValue:forExternalProperty:ofAssetID:](self, "setValue:forExternalProperty:ofAssetID:", [values objectForKey:*(*(&v11 + 1) + 8 * v10)], *(*(&v11 + 1) + 8 * v10), d);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setExternalPropertyValues:(id)values forDownloadWithID:(int64_t)d
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(values);
        }

        -[DownloadsExternalTransaction setValue:forExternalProperty:ofDownloadID:](self, "setValue:forExternalProperty:ofDownloadID:", [values objectForKey:*(*(&v11 + 1) + 8 * v10)], *(*(&v11 + 1) + 8 * v10), d);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)unionChangeset:(id)changeset
{
  if (changeset)
  {
    [(DownloadsChangeset *)self->_changeset unionChangeset:?];
  }
}

@end