@interface SharingBTLEAdvertisementPayload
+ (id)dateEpochStart:(id)start;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualHashedPayloadBytes:(id)bytes;
- (BOOL)matchesItem:(id)item;
- (NSDate)currentUntil;
- (NSDate)epochEnd;
- (NSDate)time;
- (NSDate)validUntil;
- (SharingBTLEAdvertisementPayload)initWithAdvertisedBytes:(id)bytes options:(id)options;
- (SharingBTLEAdvertisementPayload)initWithItem:(id)item isCurrent:(BOOL)current when:(id)when versionFlags:(unsigned __int8)flags;
- (SharingBTLEAdvertisementPayload)initWithSFActivityAdvertisement:(id)advertisement;
- (SharingBTLEAdvertisementPayload)initWithType:(unint64_t)type string:(id)string dynamicType:(id)dynamicType teamID:(id)d webpageURL:(id)l options:(id)options isCurrent:(BOOL)current when:(id)self0;
- (SharingBTLEAdvertisementPayload)initWithType:(unint64_t)type string:(id)string dynamicType:(id)dynamicType teamID:(id)d webpageURL:(id)l options:(id)options isCurrent:(BOOL)current when:(id)self0 versionFlags:(unsigned __int8)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)now;
- (int)advertisementKind;
- (void)setCurrent:(BOOL)current;
- (void)setPayloadBytes:(id)bytes;
@end

@implementation SharingBTLEAdvertisementPayload

- (SharingBTLEAdvertisementPayload)initWithItem:(id)item isCurrent:(BOOL)current when:(id)when versionFlags:(unsigned __int8)flags
{
  itemCopy = item;
  whenCopy = when;
  type = [itemCopy type];
  activityType = [itemCopy activityType];
  dynamicActivityType = [itemCopy dynamicActivityType];
  teamIdentifier = [itemCopy teamIdentifier];
  webpageURL = [itemCopy webpageURL];
  options = [itemCopy options];
  LOBYTE(v20) = flags;
  LOBYTE(v19) = current;
  v17 = [(SharingBTLEAdvertisementPayload *)self initWithType:type string:activityType dynamicType:dynamicActivityType teamID:teamIdentifier webpageURL:webpageURL options:options isCurrent:v19 when:whenCopy versionFlags:v20];

  return v17;
}

- (SharingBTLEAdvertisementPayload)initWithType:(unint64_t)type string:(id)string dynamicType:(id)dynamicType teamID:(id)d webpageURL:(id)l options:(id)options isCurrent:(BOOL)current when:(id)self0 versionFlags:(unsigned __int8)self1
{
  stringCopy = string;
  dynamicTypeCopy = dynamicType;
  dCopy = d;
  lCopy = l;
  optionsCopy = options;
  whenCopy = when;
  v74.receiver = self;
  v74.super_class = SharingBTLEAdvertisementPayload;
  v18 = [(SharingBTLEAdvertisementPayload *)&v74 init];
  if (v18)
  {
    v19 = stringCopy;
    v68 = dynamicTypeCopy;
    v20 = dCopy;
    v21 = lCopy;
    v22 = 0;
    v23 = 1;
    if (type > 2)
    {
      switch(type)
      {
        case 3uLL:
          v22 = v19;
          v23 = 3;
          break;
        case 0x15uLL:
          *&buf[3] = 1196312912;
          *buf = 1342177280;
          v24 = [NSData dataWithBytes:buf length:7];
LABEL_12:
          v26 = v24;
          v22 = 0;
          v23 = 1;
          if (v24)
          {
            goto LABEL_22;
          }

          break;
        case 0x16uLL:
          *&buf[3] = 1196314448;
          *buf = 1342177280;
          v24 = [NSData dataWithBytes:buf length:7];
          goto LABEL_12;
      }

LABEL_21:
      v26 = _LSCreateHashedBytesForAdvertisingFromString();
LABEL_22:
      v29 = sub_100001A30(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = sub_100006EF4(v26);
        *buf = 134218499;
        *&buf[4] = v23;
        v76 = 2113;
        v77 = v22;
        v78 = 2114;
        v79 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Calculated advertisingBytes for %ld / %{private}@, result=%{public}@", buf, 0x20u);
      }

      v31 = [v26 copy];
      v32 = *(v18 + 3);
      *(v18 + 3) = 0;

      if (!v31)
      {
        goto LABEL_58;
      }

      if ([v31 length] != 7)
      {
        __assert_rtn("[SharingBTLEAdvertisementPayload initWithType:string:dynamicType:teamID:webpageURL:options:isCurrent:when:versionFlags:]", "SharingAdvertisementPayload.mm", 217, "[hashedActivityType length] == sizeof( _bytes.hashedAdvertisementBytes)");
      }

      v33 = v31;
      bytes = [v31 bytes];
      v35 = *bytes;
      *(v18 + 11) = *(bytes + 3);
      *(v18 + 2) = v35;
      v18[15] = 0;
      if (v21)
      {
        v36 = v21;
        scheme = [v36 scheme];
        v38 = scheme == 0;

        if (v38)
        {
        }

        else
        {
          scheme2 = [v36 scheme];
          if ([scheme2 compare:@"http" options:1])
          {

LABEL_32:
            v18[15] |= 1u;
            goto LABEL_33;
          }

          scheme3 = [v36 scheme];
          v41 = [scheme3 compare:@"https" options:1] == 0;

          if (!v41)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_33:
      if (optionsCopy)
      {
        v42 = [optionsCopy objectForKeyedSubscript:_LSUserActivityContainsFileProviderURLKey];
        bOOLValue = [v42 BOOLValue];

        if (bOOLValue)
        {
          v18[15] |= 2u;
        }

        v44 = [optionsCopy objectForKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
        bOOLValue2 = [v44 BOOLValue];

        if (bOOLValue2)
        {
          v18[15] |= 4u;
        }

        v46 = [optionsCopy objectForKeyedSubscript:@"UAPasteboardAvailable"];
        bOOLValue3 = [v46 BOOLValue];

        if (bOOLValue3)
        {
          v18[15] |= 8u;
          v48 = [optionsCopy objectForKeyedSubscript:@"UAPasteboardVersionBit"];
          bOOLValue4 = [v48 BOOLValue];

          if (bOOLValue4)
          {
            v18[15] |= 0x10u;
          }
        }

        v50 = [optionsCopy objectForKeyedSubscript:UAUserActivityAutoPullActivitiesListKey];
        bOOLValue5 = [v50 BOOLValue];

        if (bOOLValue5)
        {
          v18[15] |= 0x20u;
        }

        v52 = [optionsCopy objectForKeyedSubscript:@"UAUserActivityAdvertiserHasMoreActivities"];
        bOOLValue6 = [v52 BOOLValue];

        if (bOOLValue6)
        {
          v18[15] |= 0x40u;
        }

        v54 = [optionsCopy objectForKeyedSubscript:@"UAUserActivityItemIsNotActiveKey"];
        bOOLValue7 = [v54 BOOLValue];

        if (bOOLValue7)
        {
          v18[15] |= 0x80u;
        }

        v56 = [optionsCopy copy];
        v57 = *(v18 + 5);
        *(v18 + 5) = v56;
      }

      v58 = whenCopy;
      if (!whenCopy)
      {
        v58 = +[NSDate date];
      }

      [v18 setWhen:v58];
      if (!whenCopy)
      {
      }

      when = [v18 when];
      v60 = [SharingBTLEAdvertisementPayload dateEpochStart:when];
      [when timeIntervalSinceDate:v60];
      v62 = fmax(trunc(v61) * 0.25, 0.0);
      v63 = v62;
      if (v62 > 124.0)
      {
        LOBYTE(v63) = -1;
      }

      if (current)
      {
        v64 = v63 | 0x80;
      }

      else
      {
        v64 = v63;
      }

      v18[16] = v64;
      when2 = [v18 when];
      v66 = [SharingBTLEAdvertisementPayload dateEpochStart:when2];
      [v18 setEpochStart:v66];

LABEL_58:
      goto LABEL_59;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        v25 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
        v22 = [NSString stringWithFormat:@"%@#%@", @"NOTIFICATION", v25];

        v23 = 4;
      }

      goto LABEL_21;
    }

    if ([v19 isEqual:@"NSUserActivityTypeBrowsingWeb"])
    {
      host = [v21 host];
      v23 = 2;
    }

    else
    {
      if (![v19 isEqual:@"com.apple.GameController"] && objc_msgSend(v68, "length"))
      {
        v28 = [NSString stringWithFormat:@"%@:%@", v19, v68];
        v22 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();

        v23 = 1;
        goto LABEL_21;
      }

      host = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
      v23 = 1;
    }

    v22 = host;
    goto LABEL_21;
  }

LABEL_59:

  return v18;
}

- (SharingBTLEAdvertisementPayload)initWithType:(unint64_t)type string:(id)string dynamicType:(id)dynamicType teamID:(id)d webpageURL:(id)l options:(id)options isCurrent:(BOOL)current when:(id)self0
{
  LOBYTE(v12) = 0;
  LOBYTE(v11) = current;
  return [(SharingBTLEAdvertisementPayload *)self initWithType:type string:string dynamicType:dynamicType teamID:d webpageURL:l options:options isCurrent:v11 when:when versionFlags:v12];
}

- (SharingBTLEAdvertisementPayload)initWithSFActivityAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v28.receiver = self;
  v28.super_class = SharingBTLEAdvertisementPayload;
  v5 = [(SharingBTLEAdvertisementPayload *)&v28 init];
  v6 = v5;
  if (v5)
  {
    activityUUID = v5->_activityUUID;
    v5->_activityUUID = 0;

    advertisementPayload = [advertisementCopy advertisementPayload];
    if (advertisementPayload)
    {
      advertisementPayload2 = [advertisementCopy advertisementPayload];
      v10 = [advertisementPayload2 length];

      if (v10 == 9)
      {
        advertisementPayload3 = [advertisementCopy advertisementPayload];
        bytes = [advertisementPayload3 bytes];
        v13 = *bytes;
        v6->_bytes.timeOffset = bytes[8];
        *v6->_bytes.hashedAdvertisementBytes = v13;
      }
    }

    options = [advertisementCopy options];
    if (options)
    {
      options2 = [advertisementCopy options];
      v16 = [NSMutableDictionary dictionaryWithDictionary:options2];
    }

    else
    {
      v16 = +[NSMutableDictionary dictionary];
    }

    options3 = [advertisementCopy options];
    options = v6->_options;
    v6->_options = options3;

    v19 = +[NSDate date];
    v20 = [SharingBTLEAdvertisementPayload dateEpochStart:v19];
    epochStart = v6->_epochStart;
    v6->_epochStart = v20;

    time = [(SharingBTLEAdvertisementPayload *)v6 time];
    when = v6->_when;
    v6->_when = time;

    optionBits = v6->_bytes.optionBits;
    if (optionBits)
    {
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:UAUserActivityHasWebPageURLOptionKey];
      optionBits = v6->_bytes.optionBits;
    }

    if ((optionBits & 2) != 0)
    {
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:_LSUserActivityContainsFileProviderURLKey];
      optionBits = v6->_bytes.optionBits;
    }

    if ((optionBits & 4) != 0)
    {
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
      optionBits = v6->_bytes.optionBits;
    }

    if ((optionBits & 8) != 0)
    {
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UAPasteboardAvailable"];
      optionBits = v6->_bytes.optionBits;
      if ((optionBits & 0x10) != 0)
      {
        [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UAPasteboardVersionBit"];
        optionBits = v6->_bytes.optionBits;
      }
    }

    if ((optionBits & 0x20) != 0)
    {
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:UAUserActivityAutoPullActivitiesListKey];
      optionBits = v6->_bytes.optionBits;
    }

    if ((optionBits & 0x40) != 0)
    {
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UAUserActivityAdvertiserHasMoreActivities"];
      optionBits = v6->_bytes.optionBits;
    }

    if ((optionBits & 0x80) != 0)
    {
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UAUserActivityItemIsNotActiveKey"];
    }

    v25 = [v16 copy];
    v26 = v6->_options;
    v6->_options = v25;
  }

  return v6;
}

- (SharingBTLEAdvertisementPayload)initWithAdvertisedBytes:(id)bytes options:(id)options
{
  bytesCopy = bytes;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = SharingBTLEAdvertisementPayload;
  v8 = [(SharingBTLEAdvertisementPayload *)&v18 init];
  v9 = v8;
  if (v8)
  {
    activityUUID = v8->_activityUUID;
    v8->_activityUUID = 0;

    if (optionsCopy)
    {
      v11 = [optionsCopy copy];
    }

    else
    {
      v11 = 0;
    }

    options = v9->_options;
    v9->_options = v11;

    if (bytesCopy)
    {
      if ([bytesCopy length] == 9)
      {
        bytes = [bytesCopy bytes];
        v14 = *bytes;
        v9->_bytes.timeOffset = bytes[8];
        *v9->_bytes.hashedAdvertisementBytes = v14;
        goto LABEL_11;
      }

      if ([bytesCopy length] == 7)
      {
        bytes2 = [bytesCopy bytes];
        v16 = *bytes2;
        *&v9->_bytes.hashedAdvertisementBytes[3] = *(bytes2 + 3);
        *v9->_bytes.hashedAdvertisementBytes = v16;
        *&v9->_bytes.optionBits = 0;
        goto LABEL_11;
      }
    }

    v9->_bytes.timeOffset = 0;
    *v9->_bytes.hashedAdvertisementBytes = 0;
  }

LABEL_11:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SharingBTLEAdvertisementPayload alloc];
  v5 = [NSData dataWithBytes:&self->_bytes length:9];
  v6 = [(SharingBTLEAdvertisementPayload *)v4 initWithAdvertisedBytes:v5];

  if (v6)
  {
    epochStart = [(SharingBTLEAdvertisementPayload *)self epochStart];
    epochStart = v6->_epochStart;
    v6->_epochStart = epochStart;
  }

  return v6;
}

- (void)setPayloadBytes:(id)bytes
{
  bytesCopy = bytes;
  v5 = bytesCopy;
  if (bytesCopy)
  {
    if ([bytesCopy length] != 8)
    {
      __assert_rtn("[SharingBTLEAdvertisementPayload setPayloadBytes:]", "SharingAdvertisementPayload.mm", 376, "[payloadBytes length] == sizeof( sizeof( _bytes.hashedAdvertisementBytes))");
    }

    [v5 getBytes:&self->_bytes length:7];
  }

  else
  {
    self->_bytes.timeOffset = 0;
    *self->_bytes.hashedAdvertisementBytes = 0;
  }
}

- (void)setCurrent:(BOOL)current
{
  if (current)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  self->_bytes.timeOffset = v3 & 0x80 | self->_bytes.timeOffset & 0x7F;
}

- (int)advertisementKind
{
  v2 = [NSData dataWithBytes:&self->_bytes length:9];
  v3 = _LSAdvertisementBytesKind();
  if ((v3 - 1) < 5)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    optionBits = [(SharingBTLEAdvertisementPayload *)self optionBits];
    if (optionBits == [(SharingBTLEAdvertisementPayload *)equalCopy optionBits]&& ((v6 = [(SharingBTLEAdvertisementPayload *)self isCurrent], v6 == [(SharingBTLEAdvertisementPayload *)equalCopy isCurrent]) || (v7 = [(SharingBTLEAdvertisementPayload *)self timeOffset], v7 == [(SharingBTLEAdvertisementPayload *)equalCopy timeOffset])))
    {
      payloadBytes = [(SharingBTLEAdvertisementPayload *)self payloadBytes];
      payloadBytes2 = [(SharingBTLEAdvertisementPayload *)equalCopy payloadBytes];
      v10 = [payloadBytes isEqual:payloadBytes2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)isEqualHashedPayloadBytes:(id)bytes
{
  if (!bytes)
  {
    return 0;
  }

  return *self->_bytes.hashedAdvertisementBytes == *(bytes + 2) && *&self->_bytes.hashedAdvertisementBytes[3] == *(bytes + 11);
}

- (BOOL)matchesItem:(id)item
{
  itemCopy = item;
  v5 = [[SharingBTLEAdvertisementPayload alloc] initWithItem:itemCopy isCurrent:0 when:0];
  payloadBytes = [(SharingBTLEAdvertisementPayload *)self payloadBytes];
  bytes = [payloadBytes bytes];
  payloadBytes2 = [(SharingBTLEAdvertisementPayload *)v5 payloadBytes];
  bytes2 = [payloadBytes2 bytes];
  v11 = *bytes == *bytes2 && *(bytes + 3) == *(bytes2 + 3);

  return v11;
}

- (id)description
{
  payloadBytes = [(SharingBTLEAdvertisementPayload *)self payloadBytes];
  v4 = sub_100006EF4(payloadBytes);
  v5 = &stru_1000C67D0;
  if ([(SharingBTLEAdvertisementPayload *)self isCurrent])
  {
    v6 = @"*";
  }

  else
  {
    v6 = &stru_1000C67D0;
  }

  timeOffset = [(SharingBTLEAdvertisementPayload *)self timeOffset];
  if (([(SharingBTLEAdvertisementPayload *)self optionBits]& 1) != 0)
  {
    v8 = @" u";
  }

  else
  {
    v8 = &stru_1000C67D0;
  }

  if (([(SharingBTLEAdvertisementPayload *)self optionBits]& 2) != 0)
  {
    v5 = @" fp";
  }

  if (([(SharingBTLEAdvertisementPayload *)self optionBits]& 4) != 0)
  {
    v9 = " cloud";
  }

  else
  {
    v9 = "";
  }

  v10 = "";
  if (([(SharingBTLEAdvertisementPayload *)self optionBits]& 8) != 0)
  {
    if (([(SharingBTLEAdvertisementPayload *)self optionBits]& 0x10) != 0)
    {
      v10 = " pb-1";
    }

    else
    {
      v10 = " pb-0";
    }
  }

  optionBits = [(SharingBTLEAdvertisementPayload *)self optionBits];
  v12 = " ap";
  if ((optionBits & 0x20) == 0)
  {
    v12 = "";
  }

  v13 = [NSString stringWithFormat:@"$%@/%@%d%@%@%s%s%s", v4, v6, timeOffset, v8, v5, v9, v10, v12];

  return v13;
}

+ (id)dateEpochStart:(id)start
{
  startCopy = start;
  v4 = startCopy;
  if (startCopy)
  {
    [startCopy timeIntervalSinceReferenceDate];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:trunc(v5 / 496.0) * 496.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDate)time
{
  timeOffset = [(SharingBTLEAdvertisementPayload *)self timeOffset];
  v3 = +[NSDate date];
  v4 = [SharingBTLEAdvertisementPayload dateEpochStart:v3];
  [v3 timeIntervalSinceReferenceDate];
  v6 = v5;
  [v4 timeIntervalSinceReferenceDate];
  v8 = v6 - v7;
  v9 = v8;
  v10 = v8 + 3;
  if (v8 >= 0)
  {
    v10 = v8;
  }

  if (timeOffset == 255)
  {
    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "TIME: -- since timeOffsetByteInTicks == 0xff, storing maximum age time.", &v28, 2u);
    }

    v17 = [NSDate dateWithTimeIntervalSinceNow:-500.0];
  }

  else
  {
    v11 = v10 >> 2;
    v12 = (timeOffset & 0x7F);
    v13 = 4 * ((v10 >> 2) - v12);
    v14 = -496 - v13;
    if (v13 + 496 > 247)
    {
      v14 = v13;
    }

    if (v11 >= v12)
    {
      v15 = 4 * (v12 - v11);
    }

    else
    {
      v15 = v14;
    }

    if (v15 < 248)
    {
      if (v15 < 1)
      {
        v22 = v15 + v9;
        v17 = [NSDate dateWithTimeInterval:v4 sinceDate:(v15 + v9)];
        v18 = sub_100001A30(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v23 = sub_100009AC0(v17);
          v28 = 134219266;
          v29 = v11;
          v30 = 2048;
          v31 = v12;
          v32 = 2048;
          v33 = v15;
          v34 = 2048;
          v35 = v22;
          v36 = 2114;
          v37 = v17;
          v38 = 2114;
          v39 = v23;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "TIME: --- Guessing that their clock is the same or behind of our clock, and in the same epoch, ourOffset=%ld, theirs %ld, so setting result to delta (%ld) + %ld seconds from epoch, result=%{public}@/%{public}@", &v28, 0x3Eu);
        }
      }

      else
      {
        v17 = v3;
        v18 = sub_100001A30(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v21 = sub_100009AC0(v17);
          v28 = 134218754;
          v29 = v11;
          v30 = 2048;
          v31 = v12;
          v32 = 2114;
          v33 = v17;
          v34 = 2114;
          v35 = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "TIME: --- Guessing that their clock is somewhat ahead of our clock, and in the same epoch, ourOffset=%ld, theirs %ld, so setting result == no, result=%{public}@=%{public}@", &v28, 0x2Au);
        }
      }
    }

    else
    {
      v16 = v15 - 496;
      v17 = [NSDate dateWithTimeInterval:v4 sinceDate:(v16 + v9)];
      v18 = sub_100001A30(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = sub_100009AC0(v17);
        v28 = 134219266;
        v29 = v11;
        v30 = 2048;
        v31 = v12;
        v32 = 2048;
        v33 = -496;
        v34 = 2048;
        v35 = v16;
        v36 = 2114;
        v37 = v17;
        v38 = 2114;
        v39 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "TIME: --- Guessing that their clock and our clock are in different epochs, ourOffset=%ld, theirs %ld, so falling back %ld seconds and setting delta to %ld. result=%{public}@/%{public}@", &v28, 0x3Eu);
      }
    }
  }

  v24 = sub_100001A30(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = sub_100009AC0(v17);
    v28 = 138543618;
    v29 = v17;
    v30 = 2114;
    v31 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "TIME: result time = %{public}@ %{public}@", &v28, 0x16u);
  }

  v26 = v17;
  return v17;
}

- (NSDate)currentUntil
{
  if ([(SharingBTLEAdvertisementPayload *)self isCurrent])
  {
    when = [(SharingBTLEAdvertisementPayload *)self when];
    if (when)
    {
      [(SharingBTLEAdvertisementPayload *)self when];
    }

    else
    {
      +[NSDate date];
    }
    v5 = ;
    v4 = [NSDate dateWithTimeInterval:v5 sinceDate:248.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)validUntil
{
  if ([(SharingBTLEAdvertisementPayload *)self isCurrent])
  {
    currentUntil = [(SharingBTLEAdvertisementPayload *)self currentUntil];
  }

  else
  {
    time = [(SharingBTLEAdvertisementPayload *)self time];
    currentUntil = [NSDate dateWithTimeInterval:time sinceDate:256.0];
  }

  return currentUntil;
}

- (id)now
{
  v2 = +[NSDate date];
  v3 = [SharingBTLEAdvertisementPayload dateEpochStart:v2];
  [v2 timeIntervalSinceDate:v3];
  v5 = [NSDate dateWithTimeInterval:v3 sinceDate:trunc(v4 * 0.25) * 4.0];

  return v5;
}

- (NSDate)epochEnd
{
  when = [(SharingBTLEAdvertisementPayload *)self when];
  v3 = when;
  if (when)
  {
    [when timeIntervalSinceReferenceDate];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:trunc(v4 / 496.0) * 496.0 + 496.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end