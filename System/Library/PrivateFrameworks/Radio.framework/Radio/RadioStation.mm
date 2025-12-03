@interface RadioStation
- (BOOL)editEnabled;
- (BOOL)hasSkipRules;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExplicit;
- (BOOL)isFeatured;
- (BOOL)isGatewayVideoAdEnabled;
- (BOOL)isPremiumPlacement;
- (BOOL)isPreviewOnly;
- (BOOL)isShared;
- (BOOL)isSharingEnabled;
- (BOOL)isSponsored;
- (BOOL)isSubscribed;
- (BOOL)likesEnabled;
- (BOOL)requiresSubscription;
- (BOOL)skipEnabled;
- (BOOL)virtualPlayEnabled;
- (NSArray)editableFields;
- (NSArray)skipTimestamps;
- (NSData)adData;
- (NSData)artworkURLData;
- (NSDictionary)debugDictionary;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)feedbackDictionaryRepresentation;
- (NSString)coreSeedName;
- (NSString)name;
- (NSString)shareToken;
- (NSString)skipIdentifier;
- (NSString)stationDescription;
- (NSString)stationHash;
- (NSString)stationStringID;
- (NSURL)artworkURL;
- (NSURL)streamCertificateURL;
- (NSURL)streamKeyURL;
- (NSURL)streamURL;
- (RadioArtworkCollection)artworkCollection;
- (RadioStation)initWithModel:(id)model managedObject:(id)object;
- (double)skipInterval;
- (id)artworkURLForSize:(CGSize)size expectedSize:(CGSize *)expectedSize;
- (id)seedTracks;
- (int)skipFrequency;
- (int)sortOrder;
- (int)subscriberCount;
- (int64_t)adamID;
- (int64_t)persistentID;
- (int64_t)songMixType;
- (int64_t)stationID;
- (unint64_t)hash;
- (unint64_t)impressionThreshold;
- (void)_radioModelWasDeletedNotification:(id)notification;
- (void)dealloc;
- (void)setAdData:(id)data;
- (void)setAdamID:(int64_t)d;
- (void)setArtworkURL:(id)l;
- (void)setArtworkURLData:(id)data;
- (void)setCoreSeedName:(id)name;
- (void)setDebugDictionary:(id)dictionary;
- (void)setEditableFields:(id)fields;
- (void)setImpressionThreshold:(unint64_t)threshold;
- (void)setName:(id)name;
- (void)setPersistentID:(int64_t)d;
- (void)setSeedTracks:(id)tracks;
- (void)setShareToken:(id)token;
- (void)setSkipIdentifier:(id)identifier;
- (void)setSkipInterval:(double)interval;
- (void)setSkipTimestamps:(id)timestamps;
- (void)setSongMixType:(int64_t)type;
- (void)setStationDescription:(id)description;
- (void)setStationHash:(id)hash;
- (void)setStationID:(int64_t)d;
- (void)setStationStringID:(id)d;
- (void)setStreamCertificateURL:(id)l;
- (void)setStreamKeyURL:(id)l;
- (void)setStreamURL:(id)l;
@end

@implementation RadioStation

- (NSDictionary)feedbackDictionaryRepresentation
{
  dictionaryRepresentation = [(RadioStation *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  debugDictionary = [(RadioStation *)self debugDictionary];
  if (debugDictionary)
  {
    [v4 setObject:debugDictionary forKey:@"debug-dict"];
  }

  v6 = [v4 copy];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(RadioStation *)self stationID])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[RadioStation stationID](self, "stationID")}];
    [v3 setObject:v4 forKey:@"station-id"];
  }

  stationHash = [(RadioStation *)self stationHash];

  if (stationHash)
  {
    stationHash2 = [(RadioStation *)self stationHash];
    [v3 setObject:stationHash2 forKey:@"station-hash"];
  }

  stationDescription = [(RadioStation *)self stationDescription];

  if (stationDescription)
  {
    stationDescription2 = [(RadioStation *)self stationDescription];
    [v3 setObject:stationDescription2 forKey:@"description"];
  }

  name = [(RadioStation *)self name];

  if (name)
  {
    name2 = [(RadioStation *)self name];
    [v3 setObject:name2 forKey:@"name"];
  }

  if ([(RadioStation *)self adamID])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[RadioStation adamID](self, "adamID")}];
    [v3 setObject:v11 forKey:@"adam-id"];
  }

  if ([(RadioStation *)self songMixType])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[RadioStation songMixType](self, "songMixType")}];
    [v3 setObject:v12 forKey:@"mix-type"];
  }

  seedTracks = [(RadioStation *)self seedTracks];

  if (seedTracks)
  {
    seedTracks2 = [(RadioStation *)self seedTracks];
    [v3 setObject:seedTracks2 forKey:@"seeds"];
  }

  return v3;
}

- (id)artworkURLForSize:(CGSize)size expectedSize:(CGSize *)expectedSize
{
  height = size.height;
  width = size.width;
  artworkCollection = [(RadioStation *)self artworkCollection];
  v9 = [artworkCollection bestArtworkForPointSize:{width, height}];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_5;
  }

  if (expectedSize)
  {
    [v9 pointSize];
    expectedSize->width = v11;
    expectedSize->height = v12;
  }

  artworkURL = [v10 URL];
  if (!artworkURL)
  {
LABEL_5:
    artworkURL = [(RadioStation *)self artworkURL];
    if ([artworkURL isFileURL])
    {

      artworkURL = 0;
    }
  }

  return artworkURL;
}

- (RadioArtworkCollection)artworkCollection
{
  v12[1] = *MEMORY[0x277D85DE8];
  artworkURLData = [(RadioStation *)self artworkURLData];
  if ([artworkURLData length])
  {
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:artworkURLData options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [[RadioArtworkCollection alloc] initWithArtworkVariants:v4];

      if (v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  artworkURL = [(RadioStation *)self artworkURL];
  if (artworkURL)
  {
    v7 = [[RadioArtwork alloc] initWithArtworkURL:artworkURL pixelSize:0.0, 0.0];
    if (v7)
    {
      v8 = [RadioArtworkCollection alloc];
      v12[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v5 = [(RadioArtworkCollection *)v8 initWithArtworks:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)virtualPlayEnabled
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__RadioStation_virtualPlayEnabled__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    virtualPlayEnabled = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    virtualPlayEnabled = self->_virtualPlayEnabled;
  }

  return virtualPlayEnabled & 1;
}

uint64_t __34__RadioStation_virtualPlayEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) virtualPlayEnabled];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)subscriberCount
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_subscriberCount;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__RadioStation_subscriberCount__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __31__RadioStation_subscriberCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) subscriberCount];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setStreamKeyURL:(id)l
{
  lCopy = l;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    streamKeyURL = [(RadioStation *)self managedObject];
    managedObjectContext = [streamKeyURL managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [streamKeyURL isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [streamKeyURL setStreamKeyURL:lCopy];
      }
    }
  }

  else
  {
    v8 = lCopy;
    streamKeyURL = self->_streamKeyURL;
    self->_streamKeyURL = v8;
  }
}

- (NSURL)streamKeyURL
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__RadioStation_streamKeyURL__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_streamKeyURL;
  }

  return v6;
}

uint64_t __28__RadioStation_streamKeyURL__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) streamKeyURL];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setStreamCertificateURL:(id)l
{
  lCopy = l;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    streamCertificateURL = [(RadioStation *)self managedObject];
    managedObjectContext = [streamCertificateURL managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [streamCertificateURL isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [streamCertificateURL setStreamCertificateURL:lCopy];
      }
    }
  }

  else
  {
    v8 = lCopy;
    streamCertificateURL = self->_streamCertificateURL;
    self->_streamCertificateURL = v8;
  }
}

- (NSURL)streamCertificateURL
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__RadioStation_streamCertificateURL__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_streamCertificateURL;
  }

  return v6;
}

uint64_t __36__RadioStation_streamCertificateURL__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) streamCertificateURL];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setStreamURL:(id)l
{
  lCopy = l;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    streamURL = [(RadioStation *)self managedObject];
    managedObjectContext = [streamURL managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [streamURL isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [streamURL setStreamURL:lCopy];
      }
    }
  }

  else
  {
    v8 = lCopy;
    streamURL = self->_streamURL;
    self->_streamURL = v8;
  }
}

- (NSURL)streamURL
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __25__RadioStation_streamURL__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_streamURL;
  }

  return v6;
}

uint64_t __25__RadioStation_streamURL__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) streamURL];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setStationID:(int64_t)d
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [managedObject isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [managedObject setStationID:d];
      }
    }
  }

  else
  {
    self->_stationID = d;
  }
}

- (int64_t)stationID
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_stationID;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__RadioStation_stationID__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __25__RadioStation_stationID__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) stationID];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setStationStringID:(id)d
{
  dCopy = d;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__RadioStation_setStationStringID___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = dCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_stationStringID != dCopy)
  {
    v8 = [(NSString *)dCopy copy];
    stationStringID = self->_stationStringID;
    self->_stationStringID = v8;
  }
}

uint64_t __35__RadioStation_setStationStringID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setStationStringID:v4];
  }

  return result;
}

- (NSString)stationStringID
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__RadioStation_stationStringID__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_stationStringID;
  }

  return v6;
}

uint64_t __31__RadioStation_stationStringID__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) stationStringID];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setStationHash:(id)hash
{
  hashCopy = hash;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__RadioStation_setStationHash___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = hashCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_stationHash != hashCopy)
  {
    v8 = [(NSString *)hashCopy copy];
    stationHash = self->_stationHash;
    self->_stationHash = v8;
  }
}

uint64_t __31__RadioStation_setStationHash___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setStationHash:v4];
  }

  return result;
}

- (NSString)stationHash
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__RadioStation_stationHash__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_stationHash;
  }

  return v6;
}

uint64_t __27__RadioStation_stationHash__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) stationHash];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setStationDescription:(id)description
{
  descriptionCopy = description;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__RadioStation_setStationDescription___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = descriptionCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_stationDescription != descriptionCopy)
  {
    v8 = [(NSString *)descriptionCopy copy];
    stationDescription = self->_stationDescription;
    self->_stationDescription = v8;
  }
}

uint64_t __38__RadioStation_setStationDescription___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setStationDescription:v4];
  }

  return result;
}

- (NSString)stationDescription
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__RadioStation_stationDescription__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_stationDescription;
  }

  return v6;
}

uint64_t __34__RadioStation_stationDescription__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) stationDescription];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (int)sortOrder
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_sortOrder;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__RadioStation_sortOrder__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __25__RadioStation_sortOrder__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) sortOrder];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setSongMixType:(int64_t)type
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [managedObject isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [managedObject setSongMixType:type];
      }
    }
  }

  else
  {
    self->_songMixType = type;
  }
}

- (int64_t)songMixType
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_songMixType;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__RadioStation_songMixType__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __27__RadioStation_songMixType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) songMixType];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setSkipTimestamps:(id)timestamps
{
  timestampsCopy = timestamps;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__RadioStation_setSkipTimestamps___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = timestampsCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_skipTimestamps != timestampsCopy)
  {
    v8 = [(NSArray *)timestampsCopy copy];
    skipTimestamps = self->_skipTimestamps;
    self->_skipTimestamps = v8;
  }
}

uint64_t __34__RadioStation_setSkipTimestamps___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setSkipTimestamps:v4];
  }

  return result;
}

- (NSArray)skipTimestamps
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__RadioStation_skipTimestamps__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_skipTimestamps;
  }

  return v6;
}

uint64_t __30__RadioStation_skipTimestamps__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) skipTimestamps];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setSkipInterval:(double)interval
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [managedObject isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [managedObject setSkipInterval:interval];
      }
    }
  }

  else
  {
    self->_skipInterval = interval;
  }
}

- (double)skipInterval
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_skipInterval;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__RadioStation_skipInterval__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __28__RadioStation_skipInterval__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) skipInterval];
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }

  return result;
}

- (void)setSkipIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__RadioStation_setSkipIdentifier___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = identifierCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_skipIdentifier != identifierCopy)
  {
    v8 = [(NSString *)identifierCopy copy];
    skipIdentifier = self->_skipIdentifier;
    self->_skipIdentifier = v8;
  }
}

uint64_t __34__RadioStation_setSkipIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setSkipIdentifier:v4];
  }

  return result;
}

- (NSString)skipIdentifier
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__RadioStation_skipIdentifier__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_skipIdentifier;
  }

  return v6;
}

uint64_t __30__RadioStation_skipIdentifier__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) skipIdentifier];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (int)skipFrequency
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_skipFrequency;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__RadioStation_skipFrequency__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __29__RadioStation_skipFrequency__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) skipFrequency];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)skipEnabled
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__RadioStation_skipEnabled__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    skipEnabled = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    skipEnabled = self->_skipEnabled;
  }

  return skipEnabled & 1;
}

uint64_t __27__RadioStation_skipEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) skipEnabled];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setShareToken:(id)token
{
  tokenCopy = token;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__RadioStation_setShareToken___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = tokenCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_shareToken != tokenCopy)
  {
    v8 = [(NSString *)tokenCopy copy];
    shareToken = self->_shareToken;
    self->_shareToken = v8;
  }
}

uint64_t __30__RadioStation_setShareToken___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setShareToken:v4];
  }

  return result;
}

- (NSString)shareToken
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__RadioStation_shareToken__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_shareToken;
  }

  return v6;
}

uint64_t __26__RadioStation_shareToken__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) shareToken];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setSeedTracks:(id)tracks
{
  tracksCopy = tracks;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    seedTracks = [(RadioStation *)self managedObject];
    managedObjectContext = [seedTracks managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [seedTracks isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [seedTracks setSeedTracks:tracksCopy];
      }
    }
  }

  else
  {
    v8 = tracksCopy;
    seedTracks = self->_seedTracks;
    self->_seedTracks = v8;
  }
}

- (id)seedTracks
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__RadioStation_seedTracks__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_seedTracks;
  }

  return v6;
}

uint64_t __26__RadioStation_seedTracks__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) seedTracks];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (BOOL)isPreviewOnly
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__RadioStation_isPreviewOnly__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    previewOnly = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    previewOnly = self->_previewOnly;
  }

  return previewOnly & 1;
}

uint64_t __29__RadioStation_isPreviewOnly__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isPreviewOnly];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setPersistentID:(int64_t)d
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [managedObject isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [managedObject setPersistentID:d];
      }
    }
  }

  else
  {
    self->_persistentID = d;
  }
}

- (int64_t)persistentID
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_persistentID;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__RadioStation_persistentID__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __28__RadioStation_persistentID__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) persistentID];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setName:(id)name
{
  nameCopy = name;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __24__RadioStation_setName___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = nameCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_name != nameCopy)
  {
    v8 = [(NSString *)nameCopy copy];
    name = self->_name;
    self->_name = v8;
  }
}

uint64_t __24__RadioStation_setName___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setName:v4];
  }

  return result;
}

- (NSString)name
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __20__RadioStation_name__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_name;
  }

  return v6;
}

uint64_t __20__RadioStation_name__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) name];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (BOOL)requiresSubscription
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__RadioStation_requiresSubscription__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    requiresSubscription = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    requiresSubscription = self->_requiresSubscription;
  }

  return requiresSubscription & 1;
}

uint64_t __36__RadioStation_requiresSubscription__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) requiresSubscription];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)likesEnabled
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__RadioStation_likesEnabled__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    likesEnabled = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    likesEnabled = self->_likesEnabled;
  }

  return likesEnabled & 1;
}

uint64_t __28__RadioStation_likesEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) likesEnabled];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)hasSkipRules
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__RadioStation_hasSkipRules__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    hasSkipRules = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    hasSkipRules = self->_hasSkipRules;
  }

  return hasSkipRules & 1;
}

uint64_t __28__RadioStation_hasSkipRules__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) hasSkipRules];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isSubscribed
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__RadioStation_isSubscribed__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    subscribed = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    subscribed = self->_subscribed;
  }

  return subscribed & 1;
}

uint64_t __28__RadioStation_isSubscribed__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isSubscribed];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isSponsored
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__RadioStation_isSponsored__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    sponsored = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    sponsored = self->_sponsored;
  }

  return sponsored & 1;
}

uint64_t __27__RadioStation_isSponsored__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isSponsored];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isSharingEnabled
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__RadioStation_isSharingEnabled__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    sharingEnabled = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    sharingEnabled = self->_sharingEnabled;
  }

  return sharingEnabled & 1;
}

uint64_t __32__RadioStation_isSharingEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isSharingEnabled];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isShared
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __24__RadioStation_isShared__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    shared = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    shared = self->_shared;
  }

  return shared & 1;
}

uint64_t __24__RadioStation_isShared__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isShared];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isPremiumPlacement
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__RadioStation_isPremiumPlacement__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    premiumPlacement = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    premiumPlacement = self->_premiumPlacement;
  }

  return premiumPlacement & 1;
}

uint64_t __34__RadioStation_isPremiumPlacement__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isPremiumPlacement];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isGatewayVideoAdEnabled
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__RadioStation_isGatewayVideoAdEnabled__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    gatewayVideoAdEnabled = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    gatewayVideoAdEnabled = self->_gatewayVideoAdEnabled;
  }

  return gatewayVideoAdEnabled & 1;
}

uint64_t __39__RadioStation_isGatewayVideoAdEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isGatewayVideoAdEnabled];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isFeatured
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__RadioStation_isFeatured__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    featured = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    featured = self->_featured;
  }

  return featured & 1;
}

uint64_t __26__RadioStation_isFeatured__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isFeatured];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isExplicit
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__RadioStation_isExplicit__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    isExplicit = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    isExplicit = self->_isExplicit;
  }

  return isExplicit & 1;
}

uint64_t __26__RadioStation_isExplicit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isExplicit];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setImpressionThreshold:(unint64_t)threshold
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [managedObject isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [managedObject setImpressionThreshold:threshold];
      }
    }
  }

  else
  {
    self->_impressionThreshold = threshold;
  }
}

- (unint64_t)impressionThreshold
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_impressionThreshold;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__RadioStation_impressionThreshold__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __35__RadioStation_impressionThreshold__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) impressionThreshold];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)editEnabled
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__RadioStation_editEnabled__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    editEnabled = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    editEnabled = self->_editEnabled;
  }

  return editEnabled & 1;
}

uint64_t __27__RadioStation_editEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) editEnabled];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setEditableFields:(id)fields
{
  fieldsCopy = fields;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__RadioStation_setEditableFields___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = fieldsCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_editableFields != fieldsCopy)
  {
    v8 = [(NSArray *)fieldsCopy copy];
    editableFields = self->_editableFields;
    self->_editableFields = v8;
  }
}

uint64_t __34__RadioStation_setEditableFields___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setEditableFields:v4];
  }

  return result;
}

- (NSArray)editableFields
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__RadioStation_editableFields__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_editableFields;
  }

  return v6;
}

uint64_t __30__RadioStation_editableFields__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) editableFields];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setDebugDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__RadioStation_setDebugDictionary___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = dictionaryCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_debugDictionary != dictionaryCopy)
  {
    v8 = [(NSDictionary *)dictionaryCopy copy];
    debugDictionary = self->_debugDictionary;
    self->_debugDictionary = v8;
  }
}

uint64_t __35__RadioStation_setDebugDictionary___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setDebugDictionary:v4];
  }

  return result;
}

- (NSDictionary)debugDictionary
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__RadioStation_debugDictionary__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_debugDictionary;
  }

  return v6;
}

uint64_t __31__RadioStation_debugDictionary__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) debugDictionary];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setCoreSeedName:(id)name
{
  nameCopy = name;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__RadioStation_setCoreSeedName___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = nameCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_coreSeedName != nameCopy)
  {
    v8 = [(NSString *)nameCopy copy];
    coreSeedName = self->_coreSeedName;
    self->_coreSeedName = v8;
  }
}

uint64_t __32__RadioStation_setCoreSeedName___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setCoreSeedName:v4];
  }

  return result;
}

- (NSString)coreSeedName
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__RadioStation_coreSeedName__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_coreSeedName;
  }

  return v6;
}

uint64_t __28__RadioStation_coreSeedName__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) coreSeedName];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setArtworkURLData:(id)data
{
  dataCopy = data;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__RadioStation_setArtworkURLData___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = dataCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_artworkURLData != dataCopy)
  {
    v8 = [(NSData *)dataCopy copy];
    artworkURLData = self->_artworkURLData;
    self->_artworkURLData = v8;
  }
}

uint64_t __34__RadioStation_setArtworkURLData___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setArtworkURLData:v4];
  }

  return result;
}

- (NSData)artworkURLData
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__RadioStation_artworkURLData__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_artworkURLData;
  }

  return v6;
}

uint64_t __30__RadioStation_artworkURLData__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) artworkURLData];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setArtworkURL:(id)l
{
  lCopy = l;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    artworkURL = [(RadioStation *)self managedObject];
    managedObjectContext = [artworkURL managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [artworkURL isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [artworkURL setArtworkURL:lCopy];
      }
    }
  }

  else
  {
    v8 = lCopy;
    artworkURL = self->_artworkURL;
    self->_artworkURL = v8;
  }
}

- (NSURL)artworkURL
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__RadioStation_artworkURL__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_artworkURL;
  }

  return v6;
}

uint64_t __26__RadioStation_artworkURL__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) artworkURL];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setAdData:(id)data
{
  dataCopy = data;
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __26__RadioStation_setAdData___block_invoke;
    v10[3] = &unk_279AEACA0;
    v11 = managedObject;
    v12 = dataCopy;
    v7 = managedObject;
    [managedObjectContext performBlockAndWait:v10];
  }

  else if (self->_adData != dataCopy)
  {
    v8 = [(NSData *)dataCopy copy];
    adData = self->_adData;
    self->_adData = v8;
  }
}

uint64_t __26__RadioStation_setAdData___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setAdData:v4];
  }

  return result;
}

- (NSData)adData
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__377;
    v15 = __Block_byref_object_dispose__378;
    v16 = 0;
    managedObjectContext = [managedObject managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __22__RadioStation_adData__block_invoke;
    v8[3] = &unk_279AEAE88;
    v5 = managedObject;
    v9 = v5;
    v10 = &v11;
    [managedObjectContext performBlockAndWait:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = self->_adData;
  }

  return v6;
}

uint64_t __22__RadioStation_adData__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) adData];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setAdamID:(int64_t)d
{
  if ([(RadioStation *)self isDatabaseBacked])
  {
    managedObject = [(RadioStation *)self managedObject];
    managedObjectContext = [managedObject managedObjectContext];
    if (managedObjectContext)
    {
      v6 = managedObjectContext;
      isDeleted = [managedObject isDeleted];

      if ((isDeleted & 1) == 0)
      {
        [managedObject setAdamID:d];
      }
    }
  }

  else
  {
    self->_adamID = d;
  }
}

- (int64_t)adamID
{
  if (![(RadioStation *)self isDatabaseBacked])
  {
    return self->_adamID;
  }

  managedObject = [(RadioStation *)self managedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managedObjectContext = [managedObject managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__RadioStation_adamID__block_invoke;
  v8[3] = &unk_279AEAE88;
  v5 = managedObject;
  v9 = v5;
  v10 = &v11;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __22__RadioStation_adamID__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) adamID];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)_radioModelWasDeletedNotification:(id)notification
{
  managedObject = self->_managedObject;
  self->_managedObject = 0;
  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!self->_databaseBacked)
  {
    stationHash = [(RadioStation *)self stationHash];
    stationHash2 = [(RadioStation *)equalCopy stationHash];
    if ([stationHash isEqualToString:stationHash2])
    {

LABEL_8:
      stationID = [(RadioStation *)self stationID];
      v8 = stationID == [(RadioStation *)equalCopy stationID];
      goto LABEL_13;
    }

    stationHash3 = [(RadioStation *)self stationHash];
    if (stationHash3)
    {
    }

    else
    {
      stationHash4 = [(RadioStation *)equalCopy stationHash];

      if (!stationHash4)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  objectID = [(NSManagedObject *)self->_managedObject objectID];
  managedObject = [(RadioStation *)equalCopy managedObject];
  objectID2 = [managedObject objectID];
  v8 = [objectID isEqual:objectID2];

LABEL_13:
  return v8;
}

- (unint64_t)hash
{
  if (self->_databaseBacked)
  {
    objectID = [(NSManagedObject *)self->_managedObject objectID];
    v4 = [objectID hash];
  }

  else
  {
    objectID = [(RadioStation *)self stationHash];
    v5 = [objectID hash];
    v4 = [(RadioStation *)self stationID]^ v5;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_databaseBacked)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"RadioModelWasDeletedNotification" object:self->_model];
  }

  v4.receiver = self;
  v4.super_class = RadioStation;
  [(RadioStation *)&v4 dealloc];
}

- (RadioStation)initWithModel:(id)model managedObject:(id)object
{
  modelCopy = model;
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = RadioStation;
  v9 = [(RadioStation *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_databaseBacked = 1;
    objc_storeStrong(&v9->_managedObject, object);
    objc_storeStrong(&v10->_model, model);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__radioModelWasDeletedNotification_ name:@"RadioModelWasDeletedNotification" object:v10->_model];
  }

  return v10;
}

@end