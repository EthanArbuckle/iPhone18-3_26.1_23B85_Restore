@interface ExternalDownloadState
- (ExternalDownloadState)init;
- (id)_copyValueForEntity:(int64_t)a3 property:(id)a4 dictionary:(id)a5;
- (id)externalValuesForAssetID:(int64_t)a3;
- (id)externalValuesForDownloadID:(int64_t)a3;
- (id)valueForExternalProperty:(id)a3 ofAssetID:(int64_t)a4;
- (id)valueForExternalProperty:(id)a3 ofDownloadID:(int64_t)a4;
- (void)_setValue:(id)a3 forEntity:(int64_t)a4 property:(id)a5 dictionary:(id)a6;
- (void)_setValues:(id)a3 forEntity:(int64_t)a4 dictionary:(id)a5;
- (void)dealloc;
- (void)removeExternalValuesForAssetID:(int64_t)a3;
- (void)removeExternalValuesForDownloadID:(int64_t)a3;
- (void)setBytesDownloaded:(int64_t)a3 forAssetID:(int64_t)a4 ofDownloadID:(int64_t)a5;
- (void)setBytesUploaded:(int64_t)a3 forAssetID:(int64_t)a4 ofDownloadID:(int64_t)a5;
@end

@implementation ExternalDownloadState

- (ExternalDownloadState)init
{
  v4.receiver = self;
  v4.super_class = ExternalDownloadState;
  v2 = [(ExternalDownloadState *)&v4 init];
  if (v2)
  {
    v2->_externalAssetValues = objc_alloc_init(NSMutableDictionary);
    v2->_externalDownloadValues = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ExternalDownloadState;
  [(ExternalDownloadState *)&v3 dealloc];
}

- (id)externalValuesForAssetID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  v5 = [-[NSMutableDictionary objectForKey:](self->_externalAssetValues objectForKey:{v4), "copy"}];

  return v5;
}

- (id)externalValuesForDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  v5 = [-[NSMutableDictionary objectForKey:](self->_externalDownloadValues objectForKey:{v4), "copy"}];

  return v5;
}

- (void)removeExternalValuesForAssetID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableDictionary *)self->_externalAssetValues removeObjectForKey:v4];
}

- (void)removeExternalValuesForDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableDictionary *)self->_externalDownloadValues removeObjectForKey:v4];
}

- (void)setBytesDownloaded:(int64_t)a3 forAssetID:(int64_t)a4 ofDownloadID:(int64_t)a5
{
  v9 = SSDownloadAssetExternalPropertyBytesDownloaded;
  v15 = [(ExternalDownloadState *)self _copyValueForEntity:a4 property:SSDownloadAssetExternalPropertyBytesDownloaded dictionary:self->_externalAssetValues];
  v10 = SSDownloadExternalPropertyBytesDownloaded;
  v11 = [(ExternalDownloadState *)self _copyValueForEntity:a5 property:SSDownloadExternalPropertyBytesDownloaded dictionary:self->_externalDownloadValues];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 longLongValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  if (v15)
  {
    v14 = a3 - [v15 longLongValue];
  }

  [(ExternalDownloadState *)self _setValue:[NSNumber numberWithLongLong:?]dictionary:a4, v9, self->_externalAssetValues];
  [(ExternalDownloadState *)self _setValue:[NSNumber numberWithLongLong:?]dictionary:a5, v10, self->_externalDownloadValues];
}

- (void)setBytesUploaded:(int64_t)a3 forAssetID:(int64_t)a4 ofDownloadID:(int64_t)a5
{
  v9 = SSDownloadAssetExternalPropertyBytesUploaded;
  v15 = [(ExternalDownloadState *)self _copyValueForEntity:a4 property:SSDownloadAssetExternalPropertyBytesUploaded dictionary:self->_externalAssetValues];
  v10 = SSDownloadExternalPropertyBytesUploaded;
  v11 = [(ExternalDownloadState *)self _copyValueForEntity:a5 property:SSDownloadExternalPropertyBytesUploaded dictionary:self->_externalDownloadValues];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 longLongValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  if (v15)
  {
    v14 = a3 - [v15 longLongValue];
  }

  [(ExternalDownloadState *)self _setValue:[NSNumber numberWithLongLong:?]dictionary:a4, v9, self->_externalAssetValues];
  [(ExternalDownloadState *)self _setValue:[NSNumber numberWithLongLong:?]dictionary:a5, v10, self->_externalDownloadValues];
}

- (id)valueForExternalProperty:(id)a3 ofAssetID:(int64_t)a4
{
  v4 = [(ExternalDownloadState *)self _copyValueForEntity:a4 property:a3 dictionary:self->_externalAssetValues];

  return v4;
}

- (id)valueForExternalProperty:(id)a3 ofDownloadID:(int64_t)a4
{
  v4 = [(ExternalDownloadState *)self _copyValueForEntity:a4 property:a3 dictionary:self->_externalDownloadValues];

  return v4;
}

- (id)_copyValueForEntity:(int64_t)a3 property:(id)a4 dictionary:(id)a5
{
  v7 = [[NSNumber alloc] initWithLongLong:a3];
  v8 = [objc_msgSend(a5 objectForKey:{v7), "objectForKey:", a4}];

  return v8;
}

- (void)_setValue:(id)a3 forEntity:(int64_t)a4 property:(id)a5 dictionary:(id)a6
{
  v11 = [[NSNumber alloc] initWithLongLong:a4];
  v9 = [a6 objectForKey:?];
  if (v9)
  {
    if (a3)
    {
      [v9 setObject:a3 forKey:a5];
    }

    else
    {
      [v9 removeObjectForKey:a5];
    }
  }

  else if (a3)
  {
    v10 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{a3, a5, 0}];
    [a6 setObject:v10 forKey:v11];
  }
}

- (void)_setValues:(id)a3 forEntity:(int64_t)a4 dictionary:(id)a5
{
  v9 = [[NSNumber alloc] initWithLongLong:a4];
  v7 = [a5 objectForKey:?];
  if (v7)
  {
    [v7 addEntriesFromDictionary:a3];
  }

  else if (a3)
  {
    v8 = [a3 mutableCopy];
    [a5 setObject:v8 forKey:v9];
  }
}

@end