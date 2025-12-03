@interface RadioManagedStation
- (BOOL)editEnabled;
- (BOOL)hasSkipRules;
- (BOOL)isExplicit;
- (BOOL)isFeatured;
- (BOOL)isGatewayVideoAdEnabled;
- (BOOL)isPremiumPlacement;
- (BOOL)isPreview;
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
- (NSArray)seedTracks;
- (NSArray)skipTimestamps;
- (NSData)adData;
- (NSData)artworkURLData;
- (NSDictionary)debugDictionary;
- (NSDictionary)dictionaryRepresentation;
- (NSString)coreSeedName;
- (NSString)name;
- (NSString)shareToken;
- (NSString)skipIdentifier;
- (NSString)stationDescription;
- (NSString)stationHash;
- (NSString)stationStringID;
- (NSURL)artworkURL;
- (NSURL)streamURL;
- (double)skipInterval;
- (id)additionalReferencedTrackDescriptors;
- (id)feedbackDictionaryRepresentation;
- (id)streamCertificateURL;
- (id)streamKeyURL;
- (int)skipFrequency;
- (int)sortOrder;
- (int)subscriberCount;
- (int64_t)adamID;
- (int64_t)persistentID;
- (int64_t)songMixType;
- (int64_t)stationID;
- (unint64_t)impressionThreshold;
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

@implementation RadioManagedStation

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(RadioManagedStation *)self stationID])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[RadioManagedStation stationID](self, "stationID")}];
    [v3 setObject:v4 forKey:@"station-id"];
  }

  stationHash = [(RadioManagedStation *)self stationHash];

  if (stationHash)
  {
    stationHash2 = [(RadioManagedStation *)self stationHash];
    [v3 setObject:stationHash2 forKey:@"station-hash"];
  }

  stationDescription = [(RadioManagedStation *)self stationDescription];

  if (stationDescription)
  {
    stationDescription2 = [(RadioManagedStation *)self stationDescription];
    [v3 setObject:stationDescription2 forKey:@"description"];
  }

  name = [(RadioManagedStation *)self name];

  if (name)
  {
    name2 = [(RadioManagedStation *)self name];
    [v3 setObject:name2 forKey:@"name"];
  }

  if ([(RadioManagedStation *)self adamID])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[RadioManagedStation adamID](self, "adamID")}];
    [v3 setObject:v11 forKey:@"adam-id"];
  }

  if ([(RadioManagedStation *)self songMixType])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[RadioManagedStation songMixType](self, "songMixType")}];
    [v3 setObject:v12 forKey:@"mix-type"];
  }

  seedTracks = [(RadioManagedStation *)self seedTracks];

  if (seedTracks)
  {
    seedTracks2 = [(RadioManagedStation *)self seedTracks];
    [v3 setObject:seedTracks2 forKey:@"seeds"];
  }

  return v3;
}

- (BOOL)virtualPlayEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"virtual_play_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"virtual_play_enabled"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"virtual_play_enabled"];
  return bOOLValue;
}

- (int)subscriberCount
{
  [(RadioManagedStation *)self willAccessValueForKey:@"listeners"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"listeners"];
  intValue = [v3 intValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"listeners"];
  return intValue;
}

- (id)streamKeyURL
{
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_key_url"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_key_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_key_url"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)streamCertificateURL
{
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_certificate_url"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_sertificate_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_certificate_url"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)streamURL
{
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_url"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_url"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)stationStringID
{
  [(RadioManagedStation *)self willAccessValueForKey:@"station_string_id"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"station_string_id"];
  [(RadioManagedStation *)self didAccessValueForKey:@"station_string_id"];

  return v3;
}

- (int64_t)stationID
{
  [(RadioManagedStation *)self willAccessValueForKey:@"station_id"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"station_id"];
  longLongValue = [v3 longLongValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"station_id"];
  return longLongValue;
}

- (NSString)stationHash
{
  [(RadioManagedStation *)self willAccessValueForKey:@"station_hash"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"station_hash"];
  [(RadioManagedStation *)self didAccessValueForKey:@"station_hash"];

  return v3;
}

- (NSString)stationDescription
{
  [(RadioManagedStation *)self willAccessValueForKey:@"station_description"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"station_description"];
  [(RadioManagedStation *)self didAccessValueForKey:@"station_description"];

  return v3;
}

- (int)sortOrder
{
  [(RadioManagedStation *)self willAccessValueForKey:@"sort_order"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"sort_order"];
  intValue = [v3 intValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"sort_order"];
  return intValue;
}

- (int64_t)songMixType
{
  [(RadioManagedStation *)self willAccessValueForKey:@"song_mix_type"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"song_mix_type"];
  intValue = [v3 intValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"song_mix_type"];
  return intValue;
}

- (NSArray)skipTimestamps
{
  [(RadioManagedStation *)self willAccessValueForKey:@"skip_timestamps"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"skip_timestamps"];
  [(RadioManagedStation *)self didAccessValueForKey:@"skip_timestamps"];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)skipInterval
{
  [(RadioManagedStation *)self willAccessValueForKey:@"skip_interval"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"skip_interval"];
  [v3 doubleValue];
  v5 = v4;

  [(RadioManagedStation *)self didAccessValueForKey:@"skip_interval"];
  return v5;
}

- (NSString)skipIdentifier
{
  [(RadioManagedStation *)self willAccessValueForKey:@"skip_identifier"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"skip_identifier"];
  [(RadioManagedStation *)self didAccessValueForKey:@"skip_identifier"];

  return v3;
}

- (int)skipFrequency
{
  [(RadioManagedStation *)self willAccessValueForKey:@"skip_frequency"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"skip_frequency"];
  intValue = [v3 intValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"skip_frequency"];
  return intValue;
}

- (BOOL)skipEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"skip_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"skip_enabled"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"skip_enabled"];
  return bOOLValue;
}

- (NSString)shareToken
{
  [(RadioManagedStation *)self willAccessValueForKey:@"share_token"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"share_token"];
  [(RadioManagedStation *)self didAccessValueForKey:@"share_token"];

  return v3;
}

- (void)setStreamKeyURL:(id)l
{
  absoluteString = [l absoluteString];
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_key_url"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_key_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_key_url"];
  if (v4 != absoluteString && ([v4 isEqualToString:absoluteString] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"stream_key_url"];
    [(RadioManagedStation *)self setPrimitiveValue:absoluteString forKey:@"stream_key_url"];
    [(RadioManagedStation *)self didChangeValueForKey:@"stream_key_url"];
  }
}

- (void)setStreamCertificateURL:(id)l
{
  absoluteString = [l absoluteString];
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_certificate_url"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_sertificate_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_certificate_url"];
  if (v4 != absoluteString && ([v4 isEqualToString:absoluteString] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"stream_certificate_url"];
    [(RadioManagedStation *)self setPrimitiveValue:absoluteString forKey:@"stream_certificate_url"];
    [(RadioManagedStation *)self didChangeValueForKey:@"stream_certificate_url"];
  }
}

- (void)setStreamURL:(id)l
{
  absoluteString = [l absoluteString];
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_url"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_url"];
  if (v4 != absoluteString && ([v4 isEqualToString:absoluteString] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"stream_url"];
    [(RadioManagedStation *)self setPrimitiveValue:absoluteString forKey:@"stream_url"];
    [(RadioManagedStation *)self didChangeValueForKey:@"stream_url"];
  }
}

- (void)setStationStringID:(id)d
{
  dCopy = d;
  stationStringID = [(RadioManagedStation *)self stationStringID];
  if (stationStringID != dCopy && ([stationStringID isEqualToString:dCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"station_string_id"];
    [(RadioManagedStation *)self setPrimitiveValue:dCopy forKey:@"station_string_id"];
    [(RadioManagedStation *)self didChangeValueForKey:@"station_string_id"];
  }
}

- (void)setStationHash:(id)hash
{
  hashCopy = hash;
  stationHash = [(RadioManagedStation *)self stationHash];
  if (stationHash != hashCopy && ([stationHash isEqualToString:hashCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"station_hash"];
    [(RadioManagedStation *)self setPrimitiveValue:hashCopy forKey:@"station_hash"];
    [(RadioManagedStation *)self didChangeValueForKey:@"station_hash"];
  }
}

- (void)setStationID:(int64_t)d
{
  if ([(RadioManagedStation *)self stationID]!= d)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"station_id"];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"station_id"];

    [(RadioManagedStation *)self didChangeValueForKey:@"station_id"];
  }
}

- (void)setStationDescription:(id)description
{
  descriptionCopy = description;
  stationDescription = [(RadioManagedStation *)self stationDescription];
  if (stationDescription != descriptionCopy && ([stationDescription isEqualToString:descriptionCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"station_description"];
    [(RadioManagedStation *)self setPrimitiveValue:descriptionCopy forKey:@"station_description"];
    [(RadioManagedStation *)self didChangeValueForKey:@"station_description"];
  }
}

- (void)setSongMixType:(int64_t)type
{
  if ([(RadioManagedStation *)self songMixType]!= type)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"song_mix_type"];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:type];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"song_mix_type"];

    [(RadioManagedStation *)self didChangeValueForKey:@"song_mix_type"];
  }
}

- (void)setSkipTimestamps:(id)timestamps
{
  timestampsCopy = timestamps;
  [(RadioManagedStation *)self willAccessValueForKey:@"skip_timestamps"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"skip_timestamps"];
  [(RadioManagedStation *)self didAccessValueForKey:@"skip_timestamps"];
  if (!timestampsCopy)
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:timestampsCopy format:200 options:0 error:0];
  v6 = v5;
  if (v4 && v5 && v4 != v5)
  {
    if ([v4 isEqualToData:v5])
    {
      goto LABEL_9;
    }

LABEL_8:
    [(RadioManagedStation *)self willChangeValueForKey:@"skip_timestamps"];
    [(RadioManagedStation *)self setPrimitiveValue:v6 forKey:@"skip_timestamps"];
    [(RadioManagedStation *)self didChangeValueForKey:@"skip_timestamps"];
    goto LABEL_9;
  }

  if (v4 != v5)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setSkipInterval:(double)interval
{
  [(RadioManagedStation *)self skipInterval];
  if (vabdd_f64(v5, interval) > 2.22044605e-16)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"skip_interval"];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
    [(RadioManagedStation *)self setPrimitiveValue:v6 forKey:@"skip_interval"];

    [(RadioManagedStation *)self didChangeValueForKey:@"skip_interval"];
  }
}

- (void)setSkipIdentifier:(id)identifier
{
  identifierCopy = identifier;
  skipIdentifier = [(RadioManagedStation *)self skipIdentifier];
  if (skipIdentifier != identifierCopy && ([skipIdentifier isEqualToString:identifierCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"skip_identifier"];
    [(RadioManagedStation *)self setPrimitiveValue:identifierCopy forKey:@"skip_identifier"];
    [(RadioManagedStation *)self didChangeValueForKey:@"skip_identifier"];
  }
}

- (void)setShareToken:(id)token
{
  tokenCopy = token;
  shareToken = [(RadioManagedStation *)self shareToken];
  if (shareToken != tokenCopy && ([shareToken isEqualToString:tokenCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"share_token"];
    [(RadioManagedStation *)self setPrimitiveValue:tokenCopy forKey:@"share_token"];
    [(RadioManagedStation *)self didChangeValueForKey:@"share_token"];
  }
}

- (void)setSeedTracks:(id)tracks
{
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:tracks format:200 options:0 error:0];
  if (![v5 length])
  {

    v5 = 0;
  }

  [(RadioManagedStation *)self willAccessValueForKey:@"seed_tracks"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"seed_tracks"];
  [(RadioManagedStation *)self didAccessValueForKey:@"seed_tracks"];
  if (![v4 length])
  {

    v4 = 0;
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v4 && v5 && v4 != v5)
  {
    if ([v4 isEqualToData:v5])
    {
      goto LABEL_11;
    }

LABEL_10:
    [(RadioManagedStation *)self willChangeValueForKey:@"seed_tracks"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"seed_tracks"];
    [(RadioManagedStation *)self didChangeValueForKey:@"seed_tracks"];
    goto LABEL_11;
  }

  if (v4 != v5)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)setPersistentID:(int64_t)d
{
  if ([(RadioManagedStation *)self persistentID]!= d)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"persistent_id"];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"persistent_id"];

    [(RadioManagedStation *)self didChangeValueForKey:@"persistent_id"];
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  name = [(RadioManagedStation *)self name];
  if (name != nameCopy && ([name isEqualToString:nameCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"name"];
    [(RadioManagedStation *)self setPrimitiveValue:nameCopy forKey:@"name"];
    [(RadioManagedStation *)self didChangeValueForKey:@"name"];
  }
}

- (void)setImpressionThreshold:(unint64_t)threshold
{
  if ([(RadioManagedStation *)self impressionThreshold]!= threshold)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"impression_threshold"];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:threshold];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"impression_threshold"];

    [(RadioManagedStation *)self didChangeValueForKey:@"impression_threshold"];
  }
}

- (void)setEditableFields:(id)fields
{
  v5 = [fields componentsJoinedByString:{@", "}];
  [(RadioManagedStation *)self willAccessValueForKey:@"editable_fields"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"editable_fields"];
  [(RadioManagedStation *)self didAccessValueForKey:@"editable_fields"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"editable_fields"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"editable_fields"];
    [(RadioManagedStation *)self didChangeValueForKey:@"editable_fields"];
  }
}

- (void)setDebugDictionary:(id)dictionary
{
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:0];
  if (![v5 length])
  {

    v5 = 0;
  }

  [(RadioManagedStation *)self willAccessValueForKey:@"debug_dictionary"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"debug_dictionary"];
  [(RadioManagedStation *)self didAccessValueForKey:@"debug_dictionary"];
  if (![v4 length])
  {

    v4 = 0;
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v4 && v5 && v4 != v5)
  {
    if ([v4 isEqualToData:v5])
    {
      goto LABEL_11;
    }

LABEL_10:
    [(RadioManagedStation *)self willChangeValueForKey:@"debug_dictionary"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"debug_dictionary"];
    [(RadioManagedStation *)self didChangeValueForKey:@"debug_dictionary"];
    goto LABEL_11;
  }

  if (v4 != v5)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)setCoreSeedName:(id)name
{
  nameCopy = name;
  coreSeedName = [(RadioManagedStation *)self coreSeedName];
  if (coreSeedName != nameCopy && ([coreSeedName isEqualToString:nameCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"core_seed_name"];
    [(RadioManagedStation *)self setPrimitiveValue:nameCopy forKey:@"core_seed_name"];
    [(RadioManagedStation *)self didChangeValueForKey:@"core_seed_name"];
  }
}

- (void)setArtworkURLData:(id)data
{
  dataCopy = data;
  artworkURLData = [(RadioManagedStation *)self artworkURLData];
  if (artworkURLData != dataCopy && ([artworkURLData isEqualToData:dataCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"artwork_url_data"];
    [(RadioManagedStation *)self setPrimitiveValue:dataCopy forKey:@"artwork_url_data"];
    [(RadioManagedStation *)self didChangeValueForKey:@"artwork_url_data"];
  }
}

- (void)setArtworkURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  [(RadioManagedStation *)self willAccessValueForKey:@"artwork_url"];
  v5 = [(RadioManagedStation *)self primitiveValueForKey:@"artwork_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"artwork_url"];
  if (v5 != absoluteString && ([v5 isEqualToString:absoluteString] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"artwork_url"];
    absoluteString2 = [lCopy absoluteString];
    [(RadioManagedStation *)self setPrimitiveValue:absoluteString2 forKey:@"artwork_url"];

    [(RadioManagedStation *)self didChangeValueForKey:@"artwork_url"];
  }
}

- (void)setAdData:(id)data
{
  dataCopy = data;
  adData = [(RadioManagedStation *)self adData];
  if (adData != dataCopy && ([adData isEqualToData:dataCopy] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"ad_data"];
    [(RadioManagedStation *)self setPrimitiveValue:dataCopy forKey:@"ad_data"];
    [(RadioManagedStation *)self didChangeValueForKey:@"ad_data"];
  }
}

- (void)setAdamID:(int64_t)d
{
  if ([(RadioManagedStation *)self adamID]!= d)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"adam_id"];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"adam_id"];

    [(RadioManagedStation *)self didChangeValueForKey:@"adam_id"];
  }
}

- (NSArray)seedTracks
{
  [(RadioManagedStation *)self willAccessValueForKey:@"seed_tracks"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"seed_tracks"];
  [(RadioManagedStation *)self didAccessValueForKey:@"seed_tracks"];
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)requiresSubscription
{
  [(RadioManagedStation *)self willAccessValueForKey:@"requires_subscription"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"requires_subscription"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"requires_subscription"];
  return bOOLValue;
}

- (int64_t)persistentID
{
  [(RadioManagedStation *)self willAccessValueForKey:@"persistent_id"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"persistent_id"];
  longLongValue = [v3 longLongValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"persistent_id"];
  return longLongValue;
}

- (NSString)name
{
  [(RadioManagedStation *)self willAccessValueForKey:@"name"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"name"];
  [(RadioManagedStation *)self didAccessValueForKey:@"name"];

  return v3;
}

- (BOOL)likesEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"likes_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"likes_enabled"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"likes_enabled"];
  return bOOLValue;
}

- (BOOL)isSubscribed
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_subscribed"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_subscribed"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_subscribed"];
  return bOOLValue;
}

- (BOOL)isSponsored
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_sponsored"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_sponsored"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_sponsored"];
  return bOOLValue;
}

- (BOOL)isSharingEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"sharing_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"sharing_enabled"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"sharing_enabled"];
  return bOOLValue;
}

- (BOOL)isShared
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_shared"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_shared"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_shared"];
  return bOOLValue;
}

- (BOOL)isPreviewOnly
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_preview_only"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_preview_only"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_preview_only"];
  return bOOLValue;
}

- (BOOL)isPreview
{
  if ([(RadioManagedStation *)self stationID]|| [(RadioManagedStation *)self isFeatured])
  {
    return 0;
  }

  else
  {
    return ![(RadioManagedStation *)self isSponsored];
  }
}

- (BOOL)isPremiumPlacement
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_premium_placement"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_premium_placement"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_premium_placement"];
  return bOOLValue;
}

- (BOOL)isGatewayVideoAdEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_gateway_video_ad_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_gateway_video_ad_enabled"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_gateway_video_ad_enabled"];
  return bOOLValue;
}

- (BOOL)isFeatured
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_featured"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_featured"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_featured"];
  return bOOLValue;
}

- (BOOL)isExplicit
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_explicit"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_explicit"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_explicit"];
  return bOOLValue;
}

- (unint64_t)impressionThreshold
{
  [(RadioManagedStation *)self willAccessValueForKey:@"impression_threshold"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"impression_threshold"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"impression_threshold"];
  return unsignedIntegerValue;
}

- (BOOL)hasSkipRules
{
  [(RadioManagedStation *)self willAccessValueForKey:@"has_skip_rules"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"has_skip_rules"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"has_skip_rules"];
  return bOOLValue;
}

- (id)feedbackDictionaryRepresentation
{
  dictionaryRepresentation = [(RadioManagedStation *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  debugDictionary = [(RadioManagedStation *)self debugDictionary];
  if (debugDictionary)
  {
    [v4 setObject:debugDictionary forKey:@"debug-dict"];
  }

  v6 = [v4 copy];

  return v6;
}

- (BOOL)editEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"edit_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"edit_enabled"];
  bOOLValue = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"edit_enabled"];
  return bOOLValue;
}

- (NSArray)editableFields
{
  [(RadioManagedStation *)self willAccessValueForKey:@"editable_fields"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"editable_fields"];
  v4 = [v3 componentsSeparatedByString:{@", "}];

  [(RadioManagedStation *)self didAccessValueForKey:@"editable_fields"];

  return v4;
}

- (NSDictionary)debugDictionary
{
  [(RadioManagedStation *)self willAccessValueForKey:@"debug_dictionary"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"debug_dictionary"];
  [(RadioManagedStation *)self didAccessValueForKey:@"debug_dictionary"];
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)coreSeedName
{
  [(RadioManagedStation *)self willAccessValueForKey:@"core_seed_name"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"core_seed_name"];
  [(RadioManagedStation *)self didAccessValueForKey:@"core_seed_name"];

  return v3;
}

- (NSData)artworkURLData
{
  [(RadioManagedStation *)self willAccessValueForKey:@"artwork_url_data"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"artwork_url_data"];
  [(RadioManagedStation *)self didAccessValueForKey:@"artwork_url_data"];

  return v3;
}

- (NSURL)artworkURL
{
  [(RadioManagedStation *)self willAccessValueForKey:@"artwork_url"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"artwork_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"artwork_url"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
    v5 = v4;
    if (v4)
    {
      scheme = [v4 scheme];

      if (!scheme)
      {
        v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];

        v5 = v7;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)additionalReferencedTrackDescriptors
{
  [(RadioManagedStation *)self willAccessValueForKey:@"additional_referenced_track_descriptors_data"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"additional_referenced_track_descriptors_data"];
  [(RadioManagedStation *)self didAccessValueForKey:@"additional_referenced_track_descriptors_data"];

  return v3;
}

- (NSData)adData
{
  [(RadioManagedStation *)self willAccessValueForKey:@"ad_data"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"ad_data"];
  [(RadioManagedStation *)self didAccessValueForKey:@"ad_data"];

  return v3;
}

- (int64_t)adamID
{
  [(RadioManagedStation *)self willAccessValueForKey:@"adam_id"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"adam_id"];
  longLongValue = [v3 longLongValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"adam_id"];
  return longLongValue;
}

@end