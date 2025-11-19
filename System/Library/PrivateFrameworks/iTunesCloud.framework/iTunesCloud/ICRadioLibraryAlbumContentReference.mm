@interface ICRadioLibraryAlbumContentReference
- (ICRadioLibraryAlbumContentReference)initWithCoder:(id)a3;
- (NSString)albumName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)matchDictionaryWithSubscriptionStatus:(id)a3;
- (id)rawContentDictionaryWithSubscriptionStatus:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICRadioLibraryAlbumContentReference

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICRadioLibraryAlbumContentReference;
  v4 = a3;
  [(ICRadioContentReference *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_albumName forKey:{@"an", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_representativeCloudIdentifier forKey:@"cid"];
  [v4 encodeObject:self->_storeIdentifier forKey:@"id"];
}

- (ICRadioLibraryAlbumContentReference)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICRadioLibraryAlbumContentReference;
  v5 = [(ICRadioContentReference *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"an"];
    albumName = v5->_albumName;
    v5->_albumName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cid"];
    representativeCloudIdentifier = v5->_representativeCloudIdentifier;
    v5->_representativeCloudIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = ICRadioLibraryAlbumContentReference;
  v5 = [(ICRadioContentReference *)&v13 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_albumName copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSNumber *)self->_representativeCloudIdentifier copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSNumber *)self->_storeIdentifier copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (id)rawContentDictionaryWithSubscriptionStatus:(id)a3
{
  v10.receiver = self;
  v10.super_class = ICRadioLibraryAlbumContentReference;
  v4 = [(ICRadioContentReference *)&v10 rawContentDictionaryWithSubscriptionStatus:a3];
  v5 = [v4 mutableCopy];

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if ([(NSString *)self->_albumName length])
  {
    [v6 setObject:self->_albumName forKey:@"album-name"];
  }

  representativeCloudIdentifier = self->_representativeCloudIdentifier;
  if (representativeCloudIdentifier)
  {
    [v6 setObject:representativeCloudIdentifier forKey:@"rep-cloud-id"];
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier)
  {
    [v6 setObject:storeIdentifier forKey:@"album-id"];
  }

  if ([v5 count])
  {
    [v6 addEntriesFromDictionary:v5];
  }

  return v6;
}

- (id)matchDictionaryWithSubscriptionStatus:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionaryWithCapacity:1];
  v7 = [(ICRadioLibraryAlbumContentReference *)self rawContentDictionaryWithSubscriptionStatus:v5];

  [v6 setObject:v7 forKey:@"library-album"];

  return v6;
}

- (NSString)albumName
{
  if (self->_albumName)
  {
    return self->_albumName;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICRadioLibraryAlbumContentReference *)self storeIdentifier];
  v5 = [(ICRadioLibraryAlbumContentReference *)self representativeCloudIdentifier];
  v6 = [(ICRadioLibraryAlbumContentReference *)self albumName];
  v7 = [v3 stringWithFormat:@"<ICRadioLibraryAlbumContentReference: %p adamID=%@ representativeItemCloudID=%@ albumName='%@'>", self, v4, v5, v6];

  return v7;
}

@end