@interface ICMusicLibraryContentMetadataDescriptor
- (BOOL)isEqual:(id)equal;
- (ICMusicLibraryContentMetadataDescriptor)initWithTitle:(id)title andStoreAdamID:(int64_t)d;
- (id)debugDescription;
@end

@implementation ICMusicLibraryContentMetadataDescriptor

- (id)debugDescription
{
  title = [(ICMusicLibraryContentMetadataDescriptor *)self title];
  v4 = [NSString stringWithFormat:@"Title: %@, storeAdamID: %lld", title, [(ICMusicLibraryContentMetadataDescriptor *)self storeAdamID]];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    storeAdamID = [(ICMusicLibraryContentMetadataDescriptor *)self storeAdamID];
    if (storeAdamID == [v5 storeAdamID])
    {
      title = [(ICMusicLibraryContentMetadataDescriptor *)self title];
      title2 = [v5 title];
      v9 = [title isEqualToString:title2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ICMusicLibraryContentMetadataDescriptor)initWithTitle:(id)title andStoreAdamID:(int64_t)d
{
  titleCopy = title;
  v10.receiver = self;
  v10.super_class = ICMusicLibraryContentMetadataDescriptor;
  v7 = [(ICMusicLibraryContentMetadataDescriptor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICMusicLibraryContentMetadataDescriptor *)v7 setTitle:titleCopy];
    [(ICMusicLibraryContentMetadataDescriptor *)v8 setStoreAdamID:d];
  }

  return v8;
}

@end