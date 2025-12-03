@interface ICRadioLibraryArtistContentReference
- (ICRadioLibraryArtistContentReference)initWithCoder:(id)coder;
- (NSString)artistName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)matchDictionaryWithSubscriptionStatus:(id)status;
- (id)rawContentDictionaryWithSubscriptionStatus:(id)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICRadioLibraryArtistContentReference

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ICRadioLibraryArtistContentReference;
  coderCopy = coder;
  [(ICRadioContentReference *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_artistName forKey:{@"an", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_representativeCloudIdentifier forKey:@"cid"];
  [coderCopy encodeObject:self->_storeIdentifier forKey:@"id"];
}

- (ICRadioLibraryArtistContentReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICRadioLibraryArtistContentReference;
  v5 = [(ICRadioContentReference *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"an"];
    artistName = v5->_artistName;
    v5->_artistName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cid"];
    representativeCloudIdentifier = v5->_representativeCloudIdentifier;
    v5->_representativeCloudIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = ICRadioLibraryArtistContentReference;
  v5 = [(ICRadioContentReference *)&v13 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_artistName copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSNumber *)self->_representativeCloudIdentifier copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSNumber *)self->_storeIdentifier copyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (id)rawContentDictionaryWithSubscriptionStatus:(id)status
{
  v10.receiver = self;
  v10.super_class = ICRadioLibraryArtistContentReference;
  v4 = [(ICRadioContentReference *)&v10 rawContentDictionaryWithSubscriptionStatus:status];
  v5 = [v4 mutableCopy];

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if ([(NSString *)self->_artistName length])
  {
    [v6 setObject:self->_artistName forKey:@"artist-name"];
  }

  representativeCloudIdentifier = self->_representativeCloudIdentifier;
  if (representativeCloudIdentifier)
  {
    [v6 setObject:representativeCloudIdentifier forKey:@"rep-cloud-id"];
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier)
  {
    [v6 setObject:storeIdentifier forKey:@"artist-id"];
  }

  if ([v5 count])
  {
    [v6 addEntriesFromDictionary:v5];
  }

  return v6;
}

- (id)matchDictionaryWithSubscriptionStatus:(id)status
{
  v4 = MEMORY[0x1E695DF90];
  statusCopy = status;
  v6 = [v4 dictionaryWithCapacity:2];
  v7 = [(ICRadioLibraryArtistContentReference *)self rawContentDictionaryWithSubscriptionStatus:statusCopy];

  [v6 setObject:v7 forKey:@"library-artist"];
  [v6 setObject:MEMORY[0x1E695E118] forKey:@"use-artist"];

  return v6;
}

- (NSString)artistName
{
  if (self->_artistName)
  {
    return self->_artistName;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  storeIdentifier = [(ICRadioLibraryArtistContentReference *)self storeIdentifier];
  representativeCloudIdentifier = [(ICRadioLibraryArtistContentReference *)self representativeCloudIdentifier];
  artistName = [(ICRadioLibraryArtistContentReference *)self artistName];
  v7 = [v3 stringWithFormat:@"<ICRadioLibraryArtistContentReference: %p adamID=%@ representativeItemCloudID=%@ artistName='%@'>", self, storeIdentifier, representativeCloudIdentifier, artistName];

  return v7;
}

@end