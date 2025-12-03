@interface PreorderEntity
+ (id)newClientPreorderWithPersistentID:(int64_t)d allValues:(const void *)values;
+ (id)newValueDictionaryWithItem:(id)item;
- (void)setValuesWithItem:(id)item;
@end

@implementation PreorderEntity

+ (id)newClientPreorderWithPersistentID:(int64_t)d allValues:(const void *)values
{
  v5 = [[SSPreorder alloc] _initWithPersistentIdentifier:d];
  [v5 _setArtistName:*values];
  [v5 _setItemKind:values[2]];
  [v5 _setReleaseDateString:values[4]];
  [v5 _setStoreAccountIdentifier:values[5]];
  [v5 _setTitle:values[8]];
  v6 = values[3];
  if (v6)
  {
    [v6 doubleValue];
    [v5 _setReleaseDate:{+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:")}];
  }

  if (values[6])
  {
    [v5 _setStoreItemIdentifier:SSGetItemIdentifierFromValue()];
  }

  if (values[7])
  {
    [v5 _setStorePreorderIdentifier:SSGetItemIdentifierFromValue()];
  }

  if (values[1])
  {
    objc_opt_class();
    ObjectWithArchivedData = SSCodingCreateObjectWithArchivedData();
    [v5 _setImageCollection:ObjectWithArchivedData];
  }

  return v5;
}

+ (id)newValueDictionaryWithItem:(id)item
{
  v4 = objc_alloc_init(NSMutableDictionary);
  artistName = [item artistName];
  if (artistName)
  {
    [v4 setObject:artistName forKey:@"artist_name"];
  }

  itemKind = [item itemKind];
  if (itemKind)
  {
    [v4 setObject:itemKind forKey:@"kind"];
  }

  releaseDate = [item releaseDate];
  if (releaseDate)
  {
    [releaseDate timeIntervalSinceReferenceDate];
    [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"release_date"}];
  }

  releaseDateString = [item releaseDateString];
  if (releaseDateString)
  {
    [v4 setObject:releaseDateString forKey:@"release_date_string"];
  }

  iTunesStoreIdentifier = [item ITunesStoreIdentifier];
  if (iTunesStoreIdentifier)
  {
    [v4 setObject:iTunesStoreIdentifier forKey:@"store_item_id"];
  }

  preOrderIdentifier = [item preOrderIdentifier];
  if (preOrderIdentifier)
  {
    [v4 setObject:preOrderIdentifier forKey:@"store_preorder_id"];
  }

  itemTitle = [item itemTitle];
  if (itemTitle)
  {
    [v4 setObject:itemTitle forKey:@"title"];
  }

  if ([item imageCollection])
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

- (void)setValuesWithItem:(id)item
{
  v4 = [objc_opt_class() newValueDictionaryWithItem:item];
  [(PreorderEntity *)self setValuesWithDictionary:v4];
}

@end