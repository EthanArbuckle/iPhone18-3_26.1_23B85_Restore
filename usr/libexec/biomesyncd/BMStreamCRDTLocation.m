@interface BMStreamCRDTLocation
+ (id)dayFromDayString:(id)a3;
+ (id)dayFromRecordName:(id)a3;
+ (id)locationFromAtomBatchFileName:(id)a3;
+ (id)recordNameFromSite:(id)a3 day:(id)a4;
- (BMStreamCRDTLocation)initWithCKMergeableValueID:(id)a3 streamName:(id)a4;
- (BMStreamCRDTLocation)initWithStreamName:(id)a3 siteIdentifier:(id)a4 day:(id)a5;
- (BMStreamCRDTLocation)initWithTriple:(id)a3;
- (BMStreamCRDTLocation)initWithZoneName:(id)a3 recordName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (double)secondsUntilExpirationWithStreamConfiguration:(id)a3;
- (id)atomBatchFileNameWithSuffix:(id)a3;
- (id)ckMergeableValueIDWithFormatVersion:(unint64_t)a3;
- (id)dayString;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (id)locationString;
- (id)triple;
- (unint64_t)hash;
@end

@implementation BMStreamCRDTLocation

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"stream"];
  v6 = [v4 objectForKeyedSubscript:@"site"];
  v7 = [v4 objectForKeyedSubscript:@"day"];

  v8 = [(BMStreamCRDTLocation *)self initWithStreamName:v5 siteIdentifier:v6 day:v7];
  return v8;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"stream";
  v3 = [(BMStreamCRDTLocation *)self streamName];
  v9[0] = v3;
  v8[1] = @"site";
  v4 = [(BMStreamCRDTLocation *)self siteIdentifier];
  v9[1] = v4;
  v8[2] = @"day";
  v5 = [(BMStreamCRDTLocation *)self day];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (BMStreamCRDTLocation)initWithStreamName:(id)a3 siteIdentifier:(id)a4 day:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9 && v10 && v11)
  {
    v18.receiver = self;
    v18.super_class = BMStreamCRDTLocation;
    v13 = [(BMStreamCRDTLocation *)&v18 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_streamName, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v15 = self;
  }

  else
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "nil value encountered in [BMStreamCRDTLocation initWithStreamName:%@ siteIdentifier:%@ day:%@]", buf, 0x20u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    streamName = self->_streamName;
    v7 = [(BMStreamCRDTLocation *)v4 streamName];
    if ([(NSString *)streamName isEqualToString:v7])
    {
      siteIdentifier = self->_siteIdentifier;
      v9 = [(BMStreamCRDTLocation *)v5 siteIdentifier];
      if ([(NSString *)siteIdentifier isEqualToString:v9])
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
  v4 = [v3 dayStringFormatter];

  v5 = [v4 stringFromDate:self->_day];

  return v5;
}

- (id)locationString
{
  v3 = [NSString alloc];
  streamName = self->_streamName;
  siteIdentifier = self->_siteIdentifier;
  v6 = [(BMStreamCRDTLocation *)self dayString];
  v7 = [v3 initWithFormat:@"%@_%@_%@", streamName, siteIdentifier, v6];

  return v7;
}

- (id)atomBatchFileNameWithSuffix:(id)a3
{
  v4 = a3;
  v5 = [NSString alloc];
  v6 = [(BMStreamCRDTLocation *)self locationString];
  v7 = objc_opt_new();
  v8 = [v7 UUIDString];
  v9 = [v5 initWithFormat:@"atomFile_%@_%@%@", v6, v8, v4];

  return v9;
}

+ (id)locationFromAtomBatchFileName:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v5 = [v4 componentsSeparatedByString:@"_"];

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
      sub_10004D23C(v3, v12);
    }

    v11 = 0;
  }

  return v11;
}

- (id)triple
{
  v3 = +[BMDateFormatterVendor sharedInstance];
  v4 = [v3 dateFormatter];

  v5 = [NSString alloc];
  streamName = self->_streamName;
  siteIdentifier = self->_siteIdentifier;
  v8 = [v4 stringFromDate:self->_day];
  v9 = [v5 initWithFormat:@"(%@, %@, %@)", streamName, siteIdentifier, v8];

  return v9;
}

+ (id)recordNameFromSite:(id)a3 day:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BMDateFormatterVendor sharedInstance];
  v8 = [v7 dateFormatter];

  v9 = [NSString alloc];
  v10 = [v8 stringFromDate:v5];

  v11 = [v9 initWithFormat:@"%@, %@", v6, v10];

  return v11;
}

- (BMStreamCRDTLocation)initWithTriple:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 substringWithRange:{1, objc_msgSend(v4, "length") - 2}];
    v6 = [v5 componentsSeparatedByString:{@", "}];

    if ([v6 count] == 3)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v6 objectAtIndexedSubscript:1];
      v9 = +[BMDateFormatterVendor sharedInstance];
      v10 = [v9 dateFormatter];

      v11 = [v6 objectAtIndexedSubscript:2];
      v12 = [v10 dateFromString:v11];

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

+ (id)dayFromRecordName:(id)a3
{
  v3 = [a3 componentsSeparatedByString:{@", "}];
  v4 = +[BMDateFormatterVendor sharedInstance];
  v5 = [v4 dateFormatter];

  v6 = [v3 objectAtIndexedSubscript:1];
  v7 = [v5 dateFromString:v6];

  return v7;
}

+ (id)dayFromDayString:(id)a3
{
  v3 = a3;
  v4 = [v3 substringWithRange:{0, 4}];
  v5 = [v3 substringWithRange:{4, 2}];
  v6 = [v3 substringWithRange:{6, 2}];

  v7 = [[NSString alloc] initWithFormat:@"%@-%@-%@T00:00:00Z", v4, v5, v6];
  v8 = +[BMDateFormatterVendor sharedInstance];
  v9 = [v8 dateFormatter];

  v10 = [v9 dateFromString:v7];

  return v10;
}

- (BMStreamCRDTLocation)initWithZoneName:(id)a3 recordName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NSString alloc] initWithFormat:@"(%@, %@)", v7, v6];

  v9 = [(BMStreamCRDTLocation *)self initWithTriple:v8];
  return v9;
}

- (BMStreamCRDTLocation)initWithCKMergeableValueID:(id)a3 streamName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString alloc];
  v9 = [v6 identifier];
  v10 = [v8 initWithData:v9 encoding:4];

  if ([v10 characterAtIndex:0] == 40)
  {
    if (v10 && [v10 length])
    {
      self = [(BMStreamCRDTLocation *)self initWithTriple:v10];
      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v13 = [v6 zoneID];
      v12 = [v13 zoneName];

      if (!v12)
      {
        v14 = __biome_log_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_10004D2B4(v14);
        }

        v12 = 0;
      }
    }

    v15 = [v6 recordID];
    v16 = [v15 recordName];

    v25 = v7;
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v10;
    }

    v18 = [v17 componentsSeparatedByString:{@", "}];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = +[BMDateFormatterVendor sharedInstance];
    v21 = [v20 dateFormatter];

    v22 = [v18 objectAtIndexedSubscript:1];
    v23 = [v21 dateFromString:v22];

    self = [(BMStreamCRDTLocation *)self initWithStreamName:v12 siteIdentifier:v19 day:v23];
    v11 = self;
    v7 = v25;
  }

  return v11;
}

- (id)ckMergeableValueIDWithFormatVersion:(unint64_t)a3
{
  p_streamName = &self->_streamName;
  if ([(NSString *)self->_streamName length])
  {
    v6 = [[CKRecordZoneID alloc] initWithZoneName:*p_streamName ownerName:CKCurrentUserDefaultName];
    if (a3 == 1)
    {
      v15 = [CKMergeableValueID alloc];
      v16 = [(BMStreamCRDTLocation *)self recordName];
      v14 = [v15 initWithName:v16 zoneID:v6];

      goto LABEL_12;
    }

    if (!a3)
    {
      v7 = +[BMDateFormatterVendor sharedInstance];
      v8 = [v7 dateFormatter];

      v9 = [NSString alloc];
      streamName = self->_streamName;
      siteIdentifier = self->_siteIdentifier;
      v12 = [v8 stringFromDate:self->_day];
      v13 = [v9 initWithFormat:@"(%@, %@, %@)", streamName, siteIdentifier, v12];

      v14 = [[CKMergeableValueID alloc] initWithName:v13 zoneID:v6];
      goto LABEL_12;
    }

    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_10004D2F8(a3, v17);
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

- (double)secondsUntilExpirationWithStreamConfiguration:(id)a3
{
  v4 = [a3 storeConfig];
  v5 = [v4 pruningPolicy];
  [v5 maxAge];
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