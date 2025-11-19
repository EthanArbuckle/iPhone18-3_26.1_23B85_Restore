@interface PreorderEntity
+ (id)newClientPreorderWithPersistentID:(int64_t)a3 allValues:(const void *)a4;
+ (id)newValueDictionaryWithItem:(id)a3;
- (void)setValuesWithItem:(id)a3;
@end

@implementation PreorderEntity

+ (id)newClientPreorderWithPersistentID:(int64_t)a3 allValues:(const void *)a4
{
  v5 = [[SSPreorder alloc] _initWithPersistentIdentifier:a3];
  [v5 _setArtistName:*a4];
  [v5 _setItemKind:a4[2]];
  [v5 _setReleaseDateString:a4[4]];
  [v5 _setStoreAccountIdentifier:a4[5]];
  [v5 _setTitle:a4[8]];
  v6 = a4[3];
  if (v6)
  {
    [v6 doubleValue];
    [v5 _setReleaseDate:{+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:")}];
  }

  if (a4[6])
  {
    [v5 _setStoreItemIdentifier:SSGetItemIdentifierFromValue()];
  }

  if (a4[7])
  {
    [v5 _setStorePreorderIdentifier:SSGetItemIdentifierFromValue()];
  }

  if (a4[1])
  {
    objc_opt_class();
    ObjectWithArchivedData = SSCodingCreateObjectWithArchivedData();
    [v5 _setImageCollection:ObjectWithArchivedData];
  }

  return v5;
}

+ (id)newValueDictionaryWithItem:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [a3 artistName];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"artist_name"];
  }

  v6 = [a3 itemKind];
  if (v6)
  {
    [v4 setObject:v6 forKey:@"kind"];
  }

  v7 = [a3 releaseDate];
  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"release_date"}];
  }

  v8 = [a3 releaseDateString];
  if (v8)
  {
    [v4 setObject:v8 forKey:@"release_date_string"];
  }

  v9 = [a3 ITunesStoreIdentifier];
  if (v9)
  {
    [v4 setObject:v9 forKey:@"store_item_id"];
  }

  v10 = [a3 preOrderIdentifier];
  if (v10)
  {
    [v4 setObject:v10 forKey:@"store_preorder_id"];
  }

  v11 = [a3 itemTitle];
  if (v11)
  {
    [v4 setObject:v11 forKey:@"title"];
  }

  if ([a3 imageCollection])
  {
    ArchivableData = SSCodingCreateArchivableData();
    if (ArchivableData)
    {
      v13 = ArchivableData;
      [v4 setObject:ArchivableData forKey:@"image_collection_data"];
    }
  }

  return v4;
}

- (void)setValuesWithItem:(id)a3
{
  v4 = [objc_opt_class() newValueDictionaryWithItem:a3];
  [(PreorderEntity *)self setValuesWithDictionary:v4];
}

@end