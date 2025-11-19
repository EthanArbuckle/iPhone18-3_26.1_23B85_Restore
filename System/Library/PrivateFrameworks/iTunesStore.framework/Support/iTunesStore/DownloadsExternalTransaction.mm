@interface DownloadsExternalTransaction
- (DownloadsExternalTransaction)initWithSessionDescriptor:(id)a3;
- (void)dealloc;
- (void)setExternalPropertyValues:(id)a3 forAssetWithID:(int64_t)a4;
- (void)setExternalPropertyValues:(id)a3 forDownloadWithID:(int64_t)a4;
- (void)unionChangeset:(id)a3;
@end

@implementation DownloadsExternalTransaction

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadsExternalTransaction;
  [(DownloadsSession *)&v3 dealloc];
}

- (DownloadsExternalTransaction)initWithSessionDescriptor:(id)a3
{
  v6.receiver = self;
  v6.super_class = DownloadsExternalTransaction;
  v4 = [(DownloadsSession *)&v6 initWithSessionDescriptor:?];
  if (v4)
  {
    v4->_changeset = objc_alloc_init(DownloadsChangeset);
    v4->_externalState = [a3 externalState];
  }

  return v4;
}

- (void)setExternalPropertyValues:(id)a3 forAssetWithID:(int64_t)a4
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        -[DownloadsExternalTransaction setValue:forExternalProperty:ofAssetID:](self, "setValue:forExternalProperty:ofAssetID:", [a3 objectForKey:*(*(&v11 + 1) + 8 * v10)], *(*(&v11 + 1) + 8 * v10), a4);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setExternalPropertyValues:(id)a3 forDownloadWithID:(int64_t)a4
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        -[DownloadsExternalTransaction setValue:forExternalProperty:ofDownloadID:](self, "setValue:forExternalProperty:ofDownloadID:", [a3 objectForKey:*(*(&v11 + 1) + 8 * v10)], *(*(&v11 + 1) + 8 * v10), a4);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)unionChangeset:(id)a3
{
  if (a3)
  {
    [(DownloadsChangeset *)self->_changeset unionChangeset:?];
  }
}

@end