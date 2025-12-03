@interface ICRadioLibraryTrackContentReference
- (ICRadioLibraryTrackContentReference)initWithCoder:(id)coder;
- (NSString)albumArtistName;
- (NSString)albumName;
- (NSString)artistName;
- (NSString)composerName;
- (NSString)copyright;
- (NSString)description;
- (NSString)genreName;
- (NSString)kind;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)matchDictionaryWithSubscriptionStatus:(id)status;
- (id)rawContentDictionaryWithSubscriptionStatus:(id)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICRadioLibraryTrackContentReference

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ICRadioLibraryTrackContentReference;
  coderCopy = coder;
  [(ICRadioContentReference *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_albumArtistName forKey:{@"albumArtist", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_albumName forKey:@"album"];
  [coderCopy encodeObject:self->_artistName forKey:@"artist"];
  [coderCopy encodeObject:self->_compilation forKey:@"compilation"];
  [coderCopy encodeObject:self->_composerName forKey:@"composer"];
  [coderCopy encodeObject:self->_copyright forKey:@"copyright"];
  [coderCopy encodeObject:self->_discCount forKey:@"discCount"];
  [coderCopy encodeObject:self->_discNumber forKey:@"discNumber"];
  [coderCopy encodeObject:self->_duration forKey:@"duration"];
  [coderCopy encodeObject:self->_fileSize forKey:@"fileSize"];
  [coderCopy encodeObject:self->_genreName forKey:@"genreName"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_storeCloudIdentifier forKey:@"cloudID"];
  [coderCopy encodeObject:self->_storeAdamIdentifier forKey:@"id"];
  [coderCopy encodeObject:self->_trackCount forKey:@"trackCount"];
  [coderCopy encodeObject:self->_trackNumber forKey:@"trackNumber"];
  [coderCopy encodeObject:self->_year forKey:@"year"];
  [coderCopy encodeObject:self->_containerID forKey:@"containerID"];
  [coderCopy encodeObject:self->_universalCloudLibraryID forKey:@"universalLibraryID"];
}

- (ICRadioLibraryTrackContentReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = ICRadioLibraryTrackContentReference;
  v5 = [(ICRadioContentReference *)&v49 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"albumArtist"];
    albumArtistName = v5->_albumArtistName;
    v5->_albumArtistName = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"album"];
    albumName = v5->_albumName;
    v5->_albumName = v9;

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"artist"];
    artistName = v5->_artistName;
    v5->_artistName = v11;

    v13 = [coderCopy decodeObjectOfClass:v6 forKey:@"composer"];
    composerName = v5->_composerName;
    v5->_composerName = v13;

    v15 = [coderCopy decodeObjectOfClass:v6 forKey:@"copyright"];
    copyright = v5->_copyright;
    v5->_copyright = v15;

    v17 = [coderCopy decodeObjectOfClass:v6 forKey:@"genreName"];
    genreName = v5->_genreName;
    v5->_genreName = v17;

    v19 = [coderCopy decodeObjectOfClass:v6 forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v19;

    v21 = [coderCopy decodeObjectOfClass:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v21;

    v23 = [coderCopy decodeObjectOfClass:v6 forKey:@"universalLibraryID"];
    universalCloudLibraryID = v5->_universalCloudLibraryID;
    v5->_universalCloudLibraryID = v23;

    v25 = objc_opt_class();
    v26 = [coderCopy decodeObjectOfClass:v25 forKey:@"compilation"];
    compilation = v5->_compilation;
    v5->_compilation = v26;

    v28 = [coderCopy decodeObjectOfClass:v25 forKey:@"discCount"];
    discCount = v5->_discCount;
    v5->_discCount = v28;

    v30 = [coderCopy decodeObjectOfClass:v25 forKey:@"discNumber"];
    discNumber = v5->_discNumber;
    v5->_discNumber = v30;

    v32 = [coderCopy decodeObjectOfClass:v25 forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v32;

    v34 = [coderCopy decodeObjectOfClass:v25 forKey:@"fileSize"];
    fileSize = v5->_fileSize;
    v5->_fileSize = v34;

    v36 = [coderCopy decodeObjectOfClass:v25 forKey:@"cloudID"];
    storeCloudIdentifier = v5->_storeCloudIdentifier;
    v5->_storeCloudIdentifier = v36;

    v38 = [coderCopy decodeObjectOfClass:v25 forKey:@"id"];
    storeAdamIdentifier = v5->_storeAdamIdentifier;
    v5->_storeAdamIdentifier = v38;

    v40 = [coderCopy decodeObjectOfClass:v25 forKey:@"trackCount"];
    trackCount = v5->_trackCount;
    v5->_trackCount = v40;

    v42 = [coderCopy decodeObjectOfClass:v25 forKey:@"trackNumber"];
    trackNumber = v5->_trackNumber;
    v5->_trackNumber = v42;

    v44 = [coderCopy decodeObjectOfClass:v25 forKey:@"year"];
    year = v5->_year;
    v5->_year = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerID"];
    containerID = v5->_containerID;
    v5->_containerID = v46;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v47.receiver = self;
  v47.super_class = ICRadioLibraryTrackContentReference;
  v5 = [(ICRadioContentReference *)&v47 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_albumArtistName copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_albumName copyWithZone:zone];
    v9 = v5[3];
    v5[3] = v8;

    v10 = [(NSString *)self->_artistName copyWithZone:zone];
    v11 = v5[4];
    v5[4] = v10;

    v12 = [(NSNumber *)self->_compilation copyWithZone:zone];
    v13 = v5[11];
    v5[11] = v12;

    v14 = [(NSString *)self->_composerName copyWithZone:zone];
    v15 = v5[5];
    v5[5] = v14;

    v16 = [(NSString *)self->_copyright copyWithZone:zone];
    v17 = v5[6];
    v5[6] = v16;

    v18 = [(NSNumber *)self->_discCount copyWithZone:zone];
    v19 = v5[7];
    v5[7] = v18;

    v20 = [(NSNumber *)self->_discNumber copyWithZone:zone];
    v21 = v5[8];
    v5[8] = v20;

    v22 = [(NSNumber *)self->_duration copyWithZone:zone];
    v23 = v5[12];
    v5[12] = v22;

    v24 = [(NSNumber *)self->_fileSize copyWithZone:zone];
    v25 = v5[9];
    v5[9] = v24;

    v26 = [(NSString *)self->_genreName copyWithZone:zone];
    v27 = v5[10];
    v5[10] = v26;

    v28 = [(NSString *)self->_kind copyWithZone:zone];
    v29 = v5[13];
    v5[13] = v28;

    v30 = [(NSString *)self->_name copyWithZone:zone];
    v31 = v5[14];
    v5[14] = v30;

    v32 = [(NSNumber *)self->_storeAdamIdentifier copyWithZone:zone];
    v33 = v5[15];
    v5[15] = v32;

    v34 = [(NSNumber *)self->_storeCloudIdentifier copyWithZone:zone];
    v35 = v5[16];
    v5[16] = v34;

    v36 = [(NSNumber *)self->_trackCount copyWithZone:zone];
    v37 = v5[17];
    v5[17] = v36;

    v38 = [(NSNumber *)self->_trackNumber copyWithZone:zone];
    v39 = v5[18];
    v5[18] = v38;

    v40 = [(NSNumber *)self->_year copyWithZone:zone];
    v41 = v5[19];
    v5[19] = v40;

    v42 = [(NSString *)self->_containerID copyWithZone:zone];
    v43 = v5[1];
    v5[1] = v42;

    v44 = [(NSString *)self->_universalCloudLibraryID copyWithZone:zone];
    v45 = v5[20];
    v5[20] = v44;
  }

  return v5;
}

- (id)rawContentDictionaryWithSubscriptionStatus:(id)status
{
  v20.receiver = self;
  v20.super_class = ICRadioLibraryTrackContentReference;
  v4 = [(ICRadioContentReference *)&v20 rawContentDictionaryWithSubscriptionStatus:status];
  v5 = [v4 mutableCopy];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSString *)self->_albumArtistName length])
  {
    [v6 setObject:self->_albumArtistName forKey:@"album-artist"];
  }

  if ([(NSString *)self->_albumName length])
  {
    [v6 setObject:self->_albumName forKey:@"playlist-name"];
  }

  if ([(NSString *)self->_artistName length])
  {
    [v6 setObject:self->_artistName forKey:@"artist-name"];
  }

  compilation = self->_compilation;
  if (compilation)
  {
    [v6 setObject:compilation forKey:@"compilation"];
  }

  if ([(NSString *)self->_composerName length])
  {
    [v6 setObject:self->_composerName forKey:@"composer-name"];
  }

  if ([(NSString *)self->_copyright length])
  {
    [v6 setObject:self->_copyright forKey:@"copyright"];
  }

  discCount = self->_discCount;
  if (discCount)
  {
    [v6 setObject:discCount forKey:@"disc-count"];
  }

  discNumber = self->_discNumber;
  if (discNumber)
  {
    [v6 setObject:discNumber forKey:@"disc-number"];
  }

  duration = self->_duration;
  if (duration)
  {
    [(NSNumber *)duration doubleValue];
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:(v11 * 1000.0)];
    [v6 setObject:v12 forKey:@"duration"];
  }

  fileSize = self->_fileSize;
  if (fileSize)
  {
    [v6 setObject:fileSize forKey:@"size"];
  }

  if ([(NSString *)self->_genreName length])
  {
    [v6 setObject:self->_genreName forKey:@"genre-name"];
  }

  if ([(NSString *)self->_kind length])
  {
    [v6 setObject:self->_kind forKey:@"kind"];
  }

  if ([(NSString *)self->_name length])
  {
    [v6 setObject:self->_name forKey:@"item-name"];
  }

  storeAdamIdentifier = self->_storeAdamIdentifier;
  if (storeAdamIdentifier)
  {
    [v6 setObject:storeAdamIdentifier forKey:@"item-id"];
  }

  storeCloudIdentifier = self->_storeCloudIdentifier;
  if (storeCloudIdentifier)
  {
    [v6 setObject:storeCloudIdentifier forKey:@"cloud-id"];
  }

  trackCount = self->_trackCount;
  if (trackCount)
  {
    [v6 setObject:trackCount forKey:@"track-count"];
  }

  trackNumber = self->_trackNumber;
  if (trackNumber)
  {
    [v6 setObject:trackNumber forKey:@"track-number"];
  }

  year = self->_year;
  if (year)
  {
    [v6 setObject:year forKey:@"year"];
  }

  if ([(NSString *)self->_universalCloudLibraryID length])
  {
    [v6 setObject:self->_universalCloudLibraryID forKey:@"track-ulid"];
  }

  if ([(NSString *)self->_containerID length])
  {
    [v6 setObject:self->_containerID forKey:@"container-id"];
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
  v6 = [v4 dictionaryWithCapacity:1];
  v7 = [(ICRadioLibraryTrackContentReference *)self rawContentDictionaryWithSubscriptionStatus:statusCopy];

  [v6 setObject:v7 forKey:@"library-track"];

  return v6;
}

- (NSString)name
{
  if (self->_name)
  {
    return self->_name;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)kind
{
  if (self->_kind)
  {
    return self->_kind;
  }

  else
  {
    return @"song";
  }
}

- (NSString)genreName
{
  if (self->_genreName)
  {
    return self->_genreName;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)copyright
{
  if (self->_copyright)
  {
    return self->_copyright;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)composerName
{
  if (self->_composerName)
  {
    return self->_composerName;
  }

  else
  {
    return &stru_1F2C4A680;
  }
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

- (NSString)albumArtistName
{
  if (self->_albumArtistName)
  {
    return self->_albumArtistName;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  kind = [(ICRadioLibraryTrackContentReference *)self kind];
  storeAdamIdentifier = [(ICRadioLibraryTrackContentReference *)self storeAdamIdentifier];
  storeCloudIdentifier = [(ICRadioLibraryTrackContentReference *)self storeCloudIdentifier];
  universalCloudLibraryID = [(ICRadioLibraryTrackContentReference *)self universalCloudLibraryID];
  name = [(ICRadioLibraryTrackContentReference *)self name];
  v9 = [v3 stringWithFormat:@"<ICRadioLibraryTrackContentReference: %p kind=%@ adamID=%@ cloudID=%@ ulid=%@ title='%@'>", self, kind, storeAdamIdentifier, storeCloudIdentifier, universalCloudLibraryID, name];

  return v9;
}

@end