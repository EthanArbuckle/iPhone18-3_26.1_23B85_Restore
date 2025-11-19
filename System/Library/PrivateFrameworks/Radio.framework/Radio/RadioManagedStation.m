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
- (void)setAdData:(id)a3;
- (void)setAdamID:(int64_t)a3;
- (void)setArtworkURL:(id)a3;
- (void)setArtworkURLData:(id)a3;
- (void)setCoreSeedName:(id)a3;
- (void)setDebugDictionary:(id)a3;
- (void)setEditableFields:(id)a3;
- (void)setImpressionThreshold:(unint64_t)a3;
- (void)setName:(id)a3;
- (void)setPersistentID:(int64_t)a3;
- (void)setSeedTracks:(id)a3;
- (void)setShareToken:(id)a3;
- (void)setSkipIdentifier:(id)a3;
- (void)setSkipInterval:(double)a3;
- (void)setSkipTimestamps:(id)a3;
- (void)setSongMixType:(int64_t)a3;
- (void)setStationDescription:(id)a3;
- (void)setStationHash:(id)a3;
- (void)setStationID:(int64_t)a3;
- (void)setStationStringID:(id)a3;
- (void)setStreamCertificateURL:(id)a3;
- (void)setStreamKeyURL:(id)a3;
- (void)setStreamURL:(id)a3;
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

  v5 = [(RadioManagedStation *)self stationHash];

  if (v5)
  {
    v6 = [(RadioManagedStation *)self stationHash];
    [v3 setObject:v6 forKey:@"station-hash"];
  }

  v7 = [(RadioManagedStation *)self stationDescription];

  if (v7)
  {
    v8 = [(RadioManagedStation *)self stationDescription];
    [v3 setObject:v8 forKey:@"description"];
  }

  v9 = [(RadioManagedStation *)self name];

  if (v9)
  {
    v10 = [(RadioManagedStation *)self name];
    [v3 setObject:v10 forKey:@"name"];
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

  v13 = [(RadioManagedStation *)self seedTracks];

  if (v13)
  {
    v14 = [(RadioManagedStation *)self seedTracks];
    [v3 setObject:v14 forKey:@"seeds"];
  }

  return v3;
}

- (BOOL)virtualPlayEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"virtual_play_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"virtual_play_enabled"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"virtual_play_enabled"];
  return v4;
}

- (int)subscriberCount
{
  [(RadioManagedStation *)self willAccessValueForKey:@"listeners"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"listeners"];
  v4 = [v3 intValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"listeners"];
  return v4;
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
  v4 = [v3 longLongValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"station_id"];
  return v4;
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
  v4 = [v3 intValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"sort_order"];
  return v4;
}

- (int64_t)songMixType
{
  [(RadioManagedStation *)self willAccessValueForKey:@"song_mix_type"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"song_mix_type"];
  v4 = [v3 intValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"song_mix_type"];
  return v4;
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
  v4 = [v3 intValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"skip_frequency"];
  return v4;
}

- (BOOL)skipEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"skip_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"skip_enabled"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"skip_enabled"];
  return v4;
}

- (NSString)shareToken
{
  [(RadioManagedStation *)self willAccessValueForKey:@"share_token"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"share_token"];
  [(RadioManagedStation *)self didAccessValueForKey:@"share_token"];

  return v3;
}

- (void)setStreamKeyURL:(id)a3
{
  v5 = [a3 absoluteString];
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_key_url"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_key_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_key_url"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"stream_key_url"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"stream_key_url"];
    [(RadioManagedStation *)self didChangeValueForKey:@"stream_key_url"];
  }
}

- (void)setStreamCertificateURL:(id)a3
{
  v5 = [a3 absoluteString];
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_certificate_url"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_sertificate_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_certificate_url"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"stream_certificate_url"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"stream_certificate_url"];
    [(RadioManagedStation *)self didChangeValueForKey:@"stream_certificate_url"];
  }
}

- (void)setStreamURL:(id)a3
{
  v5 = [a3 absoluteString];
  [(RadioManagedStation *)self willAccessValueForKey:@"stream_url"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"stream_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"stream_url"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"stream_url"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"stream_url"];
    [(RadioManagedStation *)self didChangeValueForKey:@"stream_url"];
  }
}

- (void)setStationStringID:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self stationStringID];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"station_string_id"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"station_string_id"];
    [(RadioManagedStation *)self didChangeValueForKey:@"station_string_id"];
  }
}

- (void)setStationHash:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self stationHash];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"station_hash"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"station_hash"];
    [(RadioManagedStation *)self didChangeValueForKey:@"station_hash"];
  }
}

- (void)setStationID:(int64_t)a3
{
  if ([(RadioManagedStation *)self stationID]!= a3)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"station_id"];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"station_id"];

    [(RadioManagedStation *)self didChangeValueForKey:@"station_id"];
  }
}

- (void)setStationDescription:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self stationDescription];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"station_description"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"station_description"];
    [(RadioManagedStation *)self didChangeValueForKey:@"station_description"];
  }
}

- (void)setSongMixType:(int64_t)a3
{
  if ([(RadioManagedStation *)self songMixType]!= a3)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"song_mix_type"];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"song_mix_type"];

    [(RadioManagedStation *)self didChangeValueForKey:@"song_mix_type"];
  }
}

- (void)setSkipTimestamps:(id)a3
{
  v7 = a3;
  [(RadioManagedStation *)self willAccessValueForKey:@"skip_timestamps"];
  v4 = [(RadioManagedStation *)self primitiveValueForKey:@"skip_timestamps"];
  [(RadioManagedStation *)self didAccessValueForKey:@"skip_timestamps"];
  if (!v7)
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:200 options:0 error:0];
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

- (void)setSkipInterval:(double)a3
{
  [(RadioManagedStation *)self skipInterval];
  if (vabdd_f64(v5, a3) > 2.22044605e-16)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"skip_interval"];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [(RadioManagedStation *)self setPrimitiveValue:v6 forKey:@"skip_interval"];

    [(RadioManagedStation *)self didChangeValueForKey:@"skip_interval"];
  }
}

- (void)setSkipIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self skipIdentifier];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"skip_identifier"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"skip_identifier"];
    [(RadioManagedStation *)self didChangeValueForKey:@"skip_identifier"];
  }
}

- (void)setShareToken:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self shareToken];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"share_token"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"share_token"];
    [(RadioManagedStation *)self didChangeValueForKey:@"share_token"];
  }
}

- (void)setSeedTracks:(id)a3
{
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:0];
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

- (void)setPersistentID:(int64_t)a3
{
  if ([(RadioManagedStation *)self persistentID]!= a3)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"persistent_id"];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"persistent_id"];

    [(RadioManagedStation *)self didChangeValueForKey:@"persistent_id"];
  }
}

- (void)setName:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self name];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"name"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"name"];
    [(RadioManagedStation *)self didChangeValueForKey:@"name"];
  }
}

- (void)setImpressionThreshold:(unint64_t)a3
{
  if ([(RadioManagedStation *)self impressionThreshold]!= a3)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"impression_threshold"];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"impression_threshold"];

    [(RadioManagedStation *)self didChangeValueForKey:@"impression_threshold"];
  }
}

- (void)setEditableFields:(id)a3
{
  v5 = [a3 componentsJoinedByString:{@", "}];
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

- (void)setDebugDictionary:(id)a3
{
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:0];
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

- (void)setCoreSeedName:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self coreSeedName];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"core_seed_name"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"core_seed_name"];
    [(RadioManagedStation *)self didChangeValueForKey:@"core_seed_name"];
  }
}

- (void)setArtworkURLData:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self artworkURLData];
  if (v4 != v5 && ([v4 isEqualToData:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"artwork_url_data"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"artwork_url_data"];
    [(RadioManagedStation *)self didChangeValueForKey:@"artwork_url_data"];
  }
}

- (void)setArtworkURL:(id)a3
{
  v7 = a3;
  v4 = [v7 absoluteString];
  [(RadioManagedStation *)self willAccessValueForKey:@"artwork_url"];
  v5 = [(RadioManagedStation *)self primitiveValueForKey:@"artwork_url"];
  [(RadioManagedStation *)self didAccessValueForKey:@"artwork_url"];
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"artwork_url"];
    v6 = [v7 absoluteString];
    [(RadioManagedStation *)self setPrimitiveValue:v6 forKey:@"artwork_url"];

    [(RadioManagedStation *)self didChangeValueForKey:@"artwork_url"];
  }
}

- (void)setAdData:(id)a3
{
  v5 = a3;
  v4 = [(RadioManagedStation *)self adData];
  if (v4 != v5 && ([v4 isEqualToData:v5] & 1) == 0)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"ad_data"];
    [(RadioManagedStation *)self setPrimitiveValue:v5 forKey:@"ad_data"];
    [(RadioManagedStation *)self didChangeValueForKey:@"ad_data"];
  }
}

- (void)setAdamID:(int64_t)a3
{
  if ([(RadioManagedStation *)self adamID]!= a3)
  {
    [(RadioManagedStation *)self willChangeValueForKey:@"adam_id"];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
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
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"requires_subscription"];
  return v4;
}

- (int64_t)persistentID
{
  [(RadioManagedStation *)self willAccessValueForKey:@"persistent_id"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"persistent_id"];
  v4 = [v3 longLongValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"persistent_id"];
  return v4;
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
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"likes_enabled"];
  return v4;
}

- (BOOL)isSubscribed
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_subscribed"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_subscribed"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_subscribed"];
  return v4;
}

- (BOOL)isSponsored
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_sponsored"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_sponsored"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_sponsored"];
  return v4;
}

- (BOOL)isSharingEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"sharing_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"sharing_enabled"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"sharing_enabled"];
  return v4;
}

- (BOOL)isShared
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_shared"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_shared"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_shared"];
  return v4;
}

- (BOOL)isPreviewOnly
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_preview_only"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_preview_only"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_preview_only"];
  return v4;
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
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_premium_placement"];
  return v4;
}

- (BOOL)isGatewayVideoAdEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_gateway_video_ad_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_gateway_video_ad_enabled"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_gateway_video_ad_enabled"];
  return v4;
}

- (BOOL)isFeatured
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_featured"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_featured"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_featured"];
  return v4;
}

- (BOOL)isExplicit
{
  [(RadioManagedStation *)self willAccessValueForKey:@"is_explicit"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"is_explicit"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"is_explicit"];
  return v4;
}

- (unint64_t)impressionThreshold
{
  [(RadioManagedStation *)self willAccessValueForKey:@"impression_threshold"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"impression_threshold"];
  v4 = [v3 unsignedIntegerValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"impression_threshold"];
  return v4;
}

- (BOOL)hasSkipRules
{
  [(RadioManagedStation *)self willAccessValueForKey:@"has_skip_rules"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"has_skip_rules"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"has_skip_rules"];
  return v4;
}

- (id)feedbackDictionaryRepresentation
{
  v3 = [(RadioManagedStation *)self dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(RadioManagedStation *)self debugDictionary];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"debug-dict"];
  }

  v6 = [v4 copy];

  return v6;
}

- (BOOL)editEnabled
{
  [(RadioManagedStation *)self willAccessValueForKey:@"edit_enabled"];
  v3 = [(RadioManagedStation *)self primitiveValueForKey:@"edit_enabled"];
  v4 = [v3 BOOLValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"edit_enabled"];
  return v4;
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
      v6 = [v4 scheme];

      if (!v6)
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
  v4 = [v3 longLongValue];

  [(RadioManagedStation *)self didAccessValueForKey:@"adam_id"];
  return v4;
}

@end