@interface ICMusicLibraryContentMetadataDescriptor
- (BOOL)isEqual:(id)a3;
- (ICMusicLibraryContentMetadataDescriptor)initWithTitle:(id)a3 andStoreAdamID:(int64_t)a4;
- (id)debugDescription;
@end

@implementation ICMusicLibraryContentMetadataDescriptor

- (id)debugDescription
{
  v3 = [(ICMusicLibraryContentMetadataDescriptor *)self title];
  v4 = [NSString stringWithFormat:@"Title: %@, storeAdamID: %lld", v3, [(ICMusicLibraryContentMetadataDescriptor *)self storeAdamID]];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ICMusicLibraryContentMetadataDescriptor *)self storeAdamID];
    if (v6 == [v5 storeAdamID])
    {
      v7 = [(ICMusicLibraryContentMetadataDescriptor *)self title];
      v8 = [v5 title];
      v9 = [v7 isEqualToString:v8];
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

- (ICMusicLibraryContentMetadataDescriptor)initWithTitle:(id)a3 andStoreAdamID:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = ICMusicLibraryContentMetadataDescriptor;
  v7 = [(ICMusicLibraryContentMetadataDescriptor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICMusicLibraryContentMetadataDescriptor *)v7 setTitle:v6];
    [(ICMusicLibraryContentMetadataDescriptor *)v8 setStoreAdamID:a4];
  }

  return v8;
}

@end