@interface BMStreamCRDTLocation
+ (id)dayFromDayString:(id)string;
+ (id)dayFromRecordName:(id)name;
+ (id)locationFromAtomBatchFileName:(id)name;
+ (id)recordNameFromSite:(id)site day:(id)day;
- (BMStreamCRDTLocation)initWithCKMergeableValueID:(id)d streamName:(id)name;
- (BMStreamCRDTLocation)initWithStreamName:(id)name siteIdentifier:(id)identifier day:(id)day;
- (BMStreamCRDTLocation)initWithTriple:(id)triple;
- (BMStreamCRDTLocation)initWithZoneName:(id)name recordName:(id)recordName;
- (BOOL)isEqual:(id)equal;
- (double)secondsUntilExpirationWithStreamConfiguration:(id)configuration;
- (id)atomBatchFileNameWithSuffix:(id)suffix;
- (id)ckMergeableValueIDWithFormatVersion:(unint64_t)version;
- (id)dayString;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (id)locationString;
- (id)triple;
- (unint64_t)hash;
@end

@implementation BMStreamCRDTLocation

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"stream"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"site"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"day"];

  v8 = [(BMStreamCRDTLocation *)self initWithStreamName:v5 siteIdentifier:v6 day:v7];
  return v8;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"stream";
  streamName = [(BMStreamCRDTLocation *)self streamName];
  v9[0] = streamName;
  v8[1] = @"site";
  siteIdentifier = [(BMStreamCRDTLocation *)self siteIdentifier];
  v9[1] = siteIdentifier;
  v8[2] = @"day";
  v5 = [(BMStreamCRDTLocation *)self day];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (BMStreamCRDTLocation)initWithStreamName:(id)name siteIdentifier:(id)identifier day:(id)day
{
  nameCopy = name;
  identifierCopy = identifier;
  dayCopy = day;
  v12 = dayCopy;
  if (nameCopy && identifierCopy && dayCopy)
  {
    v18.receiver = self;
    v18.super_class = BMStreamCRDTLocation;
    v13 = [(BMStreamCRDTLocation *)&v18 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_streamName, name);
      objc_storeStrong(p_isa + 2, identifier);
      objc_storeStrong(p_isa + 3, day);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v20 = nameCopy;
      v21 = 2112;
      v22 = identifierCopy;
      v23 = 2112;
      v24 = v12;
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "nil value encountered in [BMStreamCRDTLocation initWithStreamName:%@ siteIdentifier:%@ day:%@]", buf, 0x20u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    streamName = self->_streamName;
    streamName = [(BMStreamCRDTLocation *)equalCopy streamName];
    if ([(NSString *)streamName isEqualToString:streamName])
    {
      siteIdentifier = self->_siteIdentifier;
      siteIdentifier = [(BMStreamCRDTLocation *)v5 siteIdentifier];
      if ([(NSString *)siteIdentifier isEqualToString:siteIdentifier])
      {
        day = self->_day;
        v11 = [(BMStreamCRDTLocation *)v5 day];
        v12 = [(NSDate *)day isEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_streamName hash];
  v4 = [(NSString *)self->_siteIdentifier hash]^ v3;
  return v4 ^ [(NSDate *)self->_day hash];
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"BMStreamCRDTLocation(stream: %@, site: %@, day: %@)", self->_streamName, self->_siteIdentifier, self->_day];

  return v2;
}

- (id)dayString
{
  v3 = +[BMDateFormatterVendor sharedInstance];
  dayStringFormatter = [v3 dayStringFormatter];

  v5 = [dayStringFormatter stringFromDate:self->_day];

  return v5;
}

- (id)locationString
{
  v3 = [NSString alloc];
  streamName = self->_streamName;
  siteIdentifier = self->_siteIdentifier;
  dayString = [(BMStreamCRDTLocation *)self dayString];
  v7 = [v3 initWithFormat:@"%@_%@_%@", streamName, siteIdentifier, dayString];

  return v7;
}

- (id)atomBatchFileNameWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  v5 = [NSString alloc];
  locationString = [(BMStreamCRDTLocation *)self locationString];
  v7 = objc_opt_new();
  uUIDString = [v7 UUIDString];
  suffixCopy = [v5 initWithFormat:@"atomFile_%@_%@%@", locationString, uUIDString, suffixCopy];

  return suffixCopy;
}

+ (id)locationFromAtomBatchFileName:(id)name
{
  nameCopy = name;
  lastPathComponent = [nameCopy lastPathComponent];
  v5 = [lastPathComponent componentsSeparatedByString:@"_"];

  if ([v5 count] == 5)
  {
    v6 = [BMStreamCRDTLocation alloc];
    v7 = [v5 objectAtIndexedSubscript:1];
    v8 = [v5 objectAtIndexedSubscript:2];
    v9 = [v5 objectAtIndexedSubscript:3];
    v10 = [BMStreamCRDTLocation dayFromDayString:v9];
    v11 = [(BMStreamCRDTLocation *)v6 initWithStreamName:v7 siteIdentifier:v8 day:v10];
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10004D23C(nameCopy, v12);
    }

    v11 = 0;
  }

  return v11;
}

- (id)triple
{
  v3 = +[BMDateFormatterVendor sharedInstance];
  dateFormatter = [v3 dateFormatter];

  v5 = [NSString alloc];
  streamName = self->_streamName;
  siteIdentifier = self->_siteIdentifier;
  v8 = [dateFormatter stringFromDate:self->_day];
  v9 = [v5 initWithFormat:@"(%@, %@, %@)", streamName, siteIdentifier, v8];

  return v9;
}

+ (id)recordNameFromSite:(id)site day:(id)day
{
  dayCopy = day;
  siteCopy = site;
  v7 = +[BMDateFormatterVendor sharedInstance];
  dateFormatter = [v7 dateFormatter];

  v9 = [NSString alloc];
  v10 = [dateFormatter stringFromDate:dayCopy];

  v11 = [v9 initWithFormat:@"%@, %@", siteCopy, v10];

  return v11;
}

- (BMStreamCRDTLocation)initWithTriple:(id)triple
{
  tripleCopy = triple;
  if ([tripleCopy length])
  {
    v5 = [tripleCopy substringWithRange:{1, objc_msgSend(tripleCopy, "length") - 2}];
    v6 = [v5 componentsSeparatedByString:{@", "}];

    if ([v6 count] == 3)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v6 objectAtIndexedSubscript:1];
      v9 = +[BMDateFormatterVendor sharedInstance];
      dateFormatter = [v9 dateFormatter];

      v11 = [v6 objectAtIndexedSubscript:2];
      v12 = [dateFormatter dateFromString:v11];

      v13 = [[BMStreamCRDTLocation alloc] initWithStreamName:v7 siteIdentifier:v8 day:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)dayFromRecordName:(id)name
{
  v3 = [name componentsSeparatedByString:{@", "}];
  v4 = +[BMDateFormatterVendor sharedInstance];
  dateFormatter = [v4 dateFormatter];

  v6 = [v3 objectAtIndexedSubscript:1];
  v7 = [dateFormatter dateFromString:v6];

  return v7;
}

+ (id)dayFromDayString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy substringWithRange:{0, 4}];
  v5 = [stringCopy substringWithRange:{4, 2}];
  v6 = [stringCopy substringWithRange:{6, 2}];

  v7 = [[NSString alloc] initWithFormat:@"%@-%@-%@T00:00:00Z", v4, v5, v6];
  v8 = +[BMDateFormatterVendor sharedInstance];
  dateFormatter = [v8 dateFormatter];

  v10 = [dateFormatter dateFromString:v7];

  return v10;
}

- (BMStreamCRDTLocation)initWithZoneName:(id)name recordName:(id)recordName
{
  recordNameCopy = recordName;
  nameCopy = name;
  recordNameCopy = [[NSString alloc] initWithFormat:@"(%@, %@)", nameCopy, recordNameCopy];

  v9 = [(BMStreamCRDTLocation *)self initWithTriple:recordNameCopy];
  return v9;
}

- (BMStreamCRDTLocation)initWithCKMergeableValueID:(id)d streamName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v8 = [NSString alloc];
  identifier = [dCopy identifier];
  v10 = [v8 initWithData:identifier encoding:4];

  if ([v10 characterAtIndex:0] == 40)
  {
    if (v10 && [v10 length])
    {
      self = [(BMStreamCRDTLocation *)self initWithTriple:v10];
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    if (nameCopy)
    {
      zoneName = nameCopy;
    }

    else
    {
      zoneID = [dCopy zoneID];
      zoneName = [zoneID zoneName];

      if (!zoneName)
      {
        v14 = __biome_log_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_10004D2B4(v14);
        }

        zoneName = 0;
      }
    }

    recordID = [dCopy recordID];
    recordName = [recordID recordName];

    v25 = nameCopy;
    if (recordName)
    {
      v17 = recordName;
    }

    else
    {
      v17 = v10;
    }

    v18 = [v17 componentsSeparatedByString:{@", "}];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = +[BMDateFormatterVendor sharedInstance];
    dateFormatter = [v20 dateFormatter];

    v22 = [v18 objectAtIndexedSubscript:1];
    v23 = [dateFormatter dateFromString:v22];

    self = [(BMStreamCRDTLocation *)self initWithStreamName:zoneName siteIdentifier:v19 day:v23];
    selfCopy2 = self;
    nameCopy = v25;
  }

  return selfCopy2;
}

- (id)ckMergeableValueIDWithFormatVersion:(unint64_t)version
{
  p_streamName = &self->_streamName;
  if ([(NSString *)self->_streamName length])
  {
    v6 = [[CKRecordZoneID alloc] initWithZoneName:*p_streamName ownerName:CKCurrentUserDefaultName];
    if (version == 1)
    {
      v15 = [CKMergeableValueID alloc];
      recordName = [(BMStreamCRDTLocation *)self recordName];
      v14 = [v15 initWithName:recordName zoneID:v6];

      goto LABEL_12;
    }

    if (!version)
    {
      v7 = +[BMDateFormatterVendor sharedInstance];
      dateFormatter = [v7 dateFormatter];

      v9 = [NSString alloc];
      streamName = self->_streamName;
      siteIdentifier = self->_siteIdentifier;
      v12 = [dateFormatter stringFromDate:self->_day];
      v13 = [v9 initWithFormat:@"(%@, %@, %@)", streamName, siteIdentifier, v12];

      v14 = [[CKMergeableValueID alloc] initWithName:v13 zoneID:v6];
      goto LABEL_12;
    }

    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_10004D2F8(version, v17);
    }
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10004D370(p_streamName, self, v6);
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (double)secondsUntilExpirationWithStreamConfiguration:(id)configuration
{
  storeConfig = [configuration storeConfig];
  pruningPolicy = [storeConfig pruningPolicy];
  [pruningPolicy maxAge];
  v7 = v6;

  v8 = 2419200.0;
  if (v7 != 0.0)
  {
    v8 = v7;
  }

  if (v7 == BMPruningPolicyMaxAgeNoLimit)
  {
    v9 = 157680000.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = [(BMStreamCRDTLocation *)self day];
  [v10 timeIntervalSinceNow];
  v12 = v11;

  return v9 + v12;
}

@end