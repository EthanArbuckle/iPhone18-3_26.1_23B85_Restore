@interface ExternalDownloadState
- (ExternalDownloadState)init;
- (id)_copyValueForEntity:(int64_t)entity property:(id)property dictionary:(id)dictionary;
- (id)externalValuesForAssetID:(int64_t)d;
- (id)externalValuesForDownloadID:(int64_t)d;
- (id)valueForExternalProperty:(id)property ofAssetID:(int64_t)d;
- (id)valueForExternalProperty:(id)property ofDownloadID:(int64_t)d;
- (void)_setValue:(id)value forEntity:(int64_t)entity property:(id)property dictionary:(id)dictionary;
- (void)_setValues:(id)values forEntity:(int64_t)entity dictionary:(id)dictionary;
- (void)dealloc;
- (void)removeExternalValuesForAssetID:(int64_t)d;
- (void)removeExternalValuesForDownloadID:(int64_t)d;
- (void)setBytesDownloaded:(int64_t)downloaded forAssetID:(int64_t)d ofDownloadID:(int64_t)iD;
- (void)setBytesUploaded:(int64_t)uploaded forAssetID:(int64_t)d ofDownloadID:(int64_t)iD;
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

- (id)externalValuesForAssetID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  v5 = [-[NSMutableDictionary objectForKey:](self->_externalAssetValues objectForKey:{v4), "copy"}];

  return v5;
}

- (id)externalValuesForDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  v5 = [-[NSMutableDictionary objectForKey:](self->_externalDownloadValues objectForKey:{v4), "copy"}];

  return v5;
}

- (void)removeExternalValuesForAssetID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableDictionary *)self->_externalAssetValues removeObjectForKey:v4];
}

- (void)removeExternalValuesForDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableDictionary *)self->_externalDownloadValues removeObjectForKey:v4];
}

- (void)setBytesDownloaded:(int64_t)downloaded forAssetID:(int64_t)d ofDownloadID:(int64_t)iD
{
  v9 = SSDownloadAssetExternalPropertyBytesDownloaded;
  v15 = [(ExternalDownloadState *)self _copyValueForEntity:d property:SSDownloadAssetExternalPropertyBytesDownloaded dictionary:self->_externalAssetValues];
  v10 = SSDownloadExternalPropertyBytesDownloaded;
  v11 = [(ExternalDownloadState *)self _copyValueForEntity:iD property:SSDownloadExternalPropertyBytesDownloaded dictionary:self->_externalDownloadValues];
  v12 = v11;
  if (v11)
  {
    longLongValue = [v11 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  downloadedCopy = downloaded;
  if (v15)
  {
    downloadedCopy = downloaded - [v15 longLongValue];
  }

  [(ExternalDownloadState *)self _setValue:[NSNumber numberWithLongLong:?]dictionary:d, v9, self->_externalAssetValues];
  [(ExternalDownloadState *)self _setValue:[NSNumber numberWithLongLong:?]dictionary:iD, v10, self->_externalDownloadValues];
}

- (void)setBytesUploaded:(int64_t)uploaded forAssetID:(int64_t)d ofDownloadID:(int64_t)iD
{
  v9 = SSDownloadAssetExternalPropertyBytesUploaded;
  v15 = [(ExternalDownloadState *)self _copyValueForEntity:d property:SSDownloadAssetExternalPropertyBytesUploaded dictionary:self->_externalAssetValues];
  v10 = SSDownloadExternalPropertyBytesUploaded;
  v11 = [(ExternalDownloadState *)self _copyValueForEntity:iD property:SSDownloadExternalPropertyBytesUploaded dictionary:self->_externalDownloadValues];
  v12 = v11;
  if (v11)
  {
    longLongValue = [v11 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  uploadedCopy = uploaded;
  if (v15)
  {
    uploadedCopy = uploaded - [v15 longLongValue];
  }

  [(ExternalDownloadState *)self _setValue:[NSNumber numberWithLongLong:?]dictionary:d, v9, self->_externalAssetValues];
  [(ExternalDownloadState *)self _setValue:[NSNumber numberWithLongLong:?]dictionary:iD, v10, self->_externalDownloadValues];
}

- (id)valueForExternalProperty:(id)property ofAssetID:(int64_t)d
{
  v4 = [(ExternalDownloadState *)self _copyValueForEntity:d property:property dictionary:self->_externalAssetValues];

  return v4;
}

- (id)valueForExternalProperty:(id)property ofDownloadID:(int64_t)d
{
  v4 = [(ExternalDownloadState *)self _copyValueForEntity:d property:property dictionary:self->_externalDownloadValues];

  return v4;
}

- (id)_copyValueForEntity:(int64_t)entity property:(id)property dictionary:(id)dictionary
{
  v7 = [[NSNumber alloc] initWithLongLong:entity];
  v8 = [objc_msgSend(dictionary objectForKey:{v7), "objectForKey:", property}];

  return v8;
}

- (void)_setValue:(id)value forEntity:(int64_t)entity property:(id)property dictionary:(id)dictionary
{
  v11 = [[NSNumber alloc] initWithLongLong:entity];
  v9 = [dictionary objectForKey:?];
  if (v9)
  {
    if (value)
    {
      [v9 setObject:value forKey:property];
    }

    else
    {
      [v9 removeObjectForKey:property];
    }
  }

  else if (value)
  {
    v10 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{value, property, 0}];
    [dictionary setObject:v10 forKey:v11];
  }
}

- (void)_setValues:(id)values forEntity:(int64_t)entity dictionary:(id)dictionary
{
  v9 = [[NSNumber alloc] initWithLongLong:entity];
  v7 = [dictionary objectForKey:?];
  if (v7)
  {
    [v7 addEntriesFromDictionary:values];
  }

  else if (values)
  {
    v8 = [values mutableCopy];
    [dictionary setObject:v8 forKey:v9];
  }
}

@end