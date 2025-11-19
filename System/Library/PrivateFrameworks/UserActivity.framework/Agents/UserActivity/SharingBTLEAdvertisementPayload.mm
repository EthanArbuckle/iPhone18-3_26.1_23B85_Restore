@interface SharingBTLEAdvertisementPayload
+ (id)dateEpochStart:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualHashedPayloadBytes:(id)a3;
- (BOOL)matchesItem:(id)a3;
- (NSDate)currentUntil;
- (NSDate)epochEnd;
- (NSDate)time;
- (NSDate)validUntil;
- (SharingBTLEAdvertisementPayload)initWithAdvertisedBytes:(id)a3 options:(id)a4;
- (SharingBTLEAdvertisementPayload)initWithItem:(id)a3 isCurrent:(BOOL)a4 when:(id)a5 versionFlags:(unsigned __int8)a6;
- (SharingBTLEAdvertisementPayload)initWithSFActivityAdvertisement:(id)a3;
- (SharingBTLEAdvertisementPayload)initWithType:(unint64_t)a3 string:(id)a4 dynamicType:(id)a5 teamID:(id)a6 webpageURL:(id)a7 options:(id)a8 isCurrent:(BOOL)a9 when:(id)a10;
- (SharingBTLEAdvertisementPayload)initWithType:(unint64_t)a3 string:(id)a4 dynamicType:(id)a5 teamID:(id)a6 webpageURL:(id)a7 options:(id)a8 isCurrent:(BOOL)a9 when:(id)a10 versionFlags:(unsigned __int8)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)now;
- (int)advertisementKind;
- (void)setCurrent:(BOOL)a3;
- (void)setPayloadBytes:(id)a3;
@end

@implementation SharingBTLEAdvertisementPayload

- (SharingBTLEAdvertisementPayload)initWithItem:(id)a3 isCurrent:(BOOL)a4 when:(id)a5 versionFlags:(unsigned __int8)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 type];
  v12 = [v9 activityType];
  v13 = [v9 dynamicActivityType];
  v14 = [v9 teamIdentifier];
  v15 = [v9 webpageURL];
  v16 = [v9 options];
  LOBYTE(v20) = a6;
  LOBYTE(v19) = a4;
  v17 = [(SharingBTLEAdvertisementPayload *)self initWithType:v11 string:v12 dynamicType:v13 teamID:v14 webpageURL:v15 options:v16 isCurrent:v19 when:v10 versionFlags:v20];

  return v17;
}

- (SharingBTLEAdvertisementPayload)initWithType:(unint64_t)a3 string:(id)a4 dynamicType:(id)a5 teamID:(id)a6 webpageURL:(id)a7 options:(id)a8 isCurrent:(BOOL)a9 when:(id)a10 versionFlags:(unsigned __int8)a11
{
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v72 = a7;
  v17 = a8;
  v73 = a10;
  v74.receiver = self;
  v74.super_class = SharingBTLEAdvertisementPayload;
  v18 = [(SharingBTLEAdvertisementPayload *)&v74 init];
  if (v18)
  {
    v19 = v69;
    v68 = v70;
    v20 = v71;
    v21 = v72;
    v22 = 0;
    v23 = 1;
    if (a3 > 2)
    {
      switch(a3)
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
      v34 = [v31 bytes];
      v35 = *v34;
      *(v18 + 11) = *(v34 + 3);
      *(v18 + 2) = v35;
      v18[15] = 0;
      if (v21)
      {
        v36 = v21;
        v37 = [v36 scheme];
        v38 = v37 == 0;

        if (v38)
        {
        }

        else
        {
          v39 = [v36 scheme];
          if ([v39 compare:@"http" options:1])
          {

LABEL_32:
            v18[15] |= 1u;
            goto LABEL_33;
          }

          v40 = [v36 scheme];
          v41 = [v40 compare:@"https" options:1] == 0;

          if (!v41)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_33:
      if (v17)
      {
        v42 = [v17 objectForKeyedSubscript:_LSUserActivityContainsFileProviderURLKey];
        v43 = [v42 BOOLValue];

        if (v43)
        {
          v18[15] |= 2u;
        }

        v44 = [v17 objectForKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
        v45 = [v44 BOOLValue];

        if (v45)
        {
          v18[15] |= 4u;
        }

        v46 = [v17 objectForKeyedSubscript:@"UAPasteboardAvailable"];
        v47 = [v46 BOOLValue];

        if (v47)
        {
          v18[15] |= 8u;
          v48 = [v17 objectForKeyedSubscript:@"UAPasteboardVersionBit"];
          v49 = [v48 BOOLValue];

          if (v49)
          {
            v18[15] |= 0x10u;
          }
        }

        v50 = [v17 objectForKeyedSubscript:UAUserActivityAutoPullActivitiesListKey];
        v51 = [v50 BOOLValue];

        if (v51)
        {
          v18[15] |= 0x20u;
        }

        v52 = [v17 objectForKeyedSubscript:@"UAUserActivityAdvertiserHasMoreActivities"];
        v53 = [v52 BOOLValue];

        if (v53)
        {
          v18[15] |= 0x40u;
        }

        v54 = [v17 objectForKeyedSubscript:@"UAUserActivityItemIsNotActiveKey"];
        v55 = [v54 BOOLValue];

        if (v55)
        {
          v18[15] |= 0x80u;
        }

        v56 = [v17 copy];
        v57 = *(v18 + 5);
        *(v18 + 5) = v56;
      }

      v58 = v73;
      if (!v73)
      {
        v58 = +[NSDate date];
      }

      [v18 setWhen:v58];
      if (!v73)
      {
      }

      v59 = [v18 when];
      v60 = [SharingBTLEAdvertisementPayload dateEpochStart:v59];
      [v59 timeIntervalSinceDate:v60];
      v62 = fmax(trunc(v61) * 0.25, 0.0);
      v63 = v62;
      if (v62 > 124.0)
      {
        LOBYTE(v63) = -1;
      }

      if (a9)
      {
        v64 = v63 | 0x80;
      }

      else
      {
        v64 = v63;
      }

      v18[16] = v64;
      v65 = [v18 when];
      v66 = [SharingBTLEAdvertisementPayload dateEpochStart:v65];
      [v18 setEpochStart:v66];

LABEL_58:
      goto LABEL_59;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v25 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
        v22 = [NSString stringWithFormat:@"%@#%@", @"NOTIFICATION", v25];

        v23 = 4;
      }

      goto LABEL_21;
    }

    if ([v19 isEqual:@"NSUserActivityTypeBrowsingWeb"])
    {
      v27 = [v21 host];
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

      v27 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
      v23 = 1;
    }

    v22 = v27;
    goto LABEL_21;
  }

LABEL_59:

  return v18;
}

- (SharingBTLEAdvertisementPayload)initWithType:(unint64_t)a3 string:(id)a4 dynamicType:(id)a5 teamID:(id)a6 webpageURL:(id)a7 options:(id)a8 isCurrent:(BOOL)a9 when:(id)a10
{
  LOBYTE(v12) = 0;
  LOBYTE(v11) = a9;
  return [(SharingBTLEAdvertisementPayload *)self initWithType:a3 string:a4 dynamicType:a5 teamID:a6 webpageURL:a7 options:a8 isCurrent:v11 when:a10 versionFlags:v12];
}

- (SharingBTLEAdvertisementPayload)initWithSFActivityAdvertisement:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SharingBTLEAdvertisementPayload;
  v5 = [(SharingBTLEAdvertisementPayload *)&v28 init];
  v6 = v5;
  if (v5)
  {
    activityUUID = v5->_activityUUID;
    v5->_activityUUID = 0;

    v8 = [v4 advertisementPayload];
    if (v8)
    {
      v9 = [v4 advertisementPayload];
      v10 = [v9 length];

      if (v10 == 9)
      {
        v11 = [v4 advertisementPayload];
        v12 = [v11 bytes];
        v13 = *v12;
        v6->_bytes.timeOffset = v12[8];
        *v6->_bytes.hashedAdvertisementBytes = v13;
      }
    }

    v14 = [v4 options];
    if (v14)
    {
      v15 = [v4 options];
      v16 = [NSMutableDictionary dictionaryWithDictionary:v15];
    }

    else
    {
      v16 = +[NSMutableDictionary dictionary];
    }

    v17 = [v4 options];
    options = v6->_options;
    v6->_options = v17;

    v19 = +[NSDate date];
    v20 = [SharingBTLEAdvertisementPayload dateEpochStart:v19];
    epochStart = v6->_epochStart;
    v6->_epochStart = v20;

    v22 = [(SharingBTLEAdvertisementPayload *)v6 time];
    when = v6->_when;
    v6->_when = v22;

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

- (SharingBTLEAdvertisementPayload)initWithAdvertisedBytes:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SharingBTLEAdvertisementPayload;
  v8 = [(SharingBTLEAdvertisementPayload *)&v18 init];
  v9 = v8;
  if (v8)
  {
    activityUUID = v8->_activityUUID;
    v8->_activityUUID = 0;

    if (v7)
    {
      v11 = [v7 copy];
    }

    else
    {
      v11 = 0;
    }

    options = v9->_options;
    v9->_options = v11;

    if (v6)
    {
      if ([v6 length] == 9)
      {
        v13 = [v6 bytes];
        v14 = *v13;
        v9->_bytes.timeOffset = v13[8];
        *v9->_bytes.hashedAdvertisementBytes = v14;
        goto LABEL_11;
      }

      if ([v6 length] == 7)
      {
        v15 = [v6 bytes];
        v16 = *v15;
        *&v9->_bytes.hashedAdvertisementBytes[3] = *(v15 + 3);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SharingBTLEAdvertisementPayload alloc];
  v5 = [NSData dataWithBytes:&self->_bytes length:9];
  v6 = [(SharingBTLEAdvertisementPayload *)v4 initWithAdvertisedBytes:v5];

  if (v6)
  {
    v7 = [(SharingBTLEAdvertisementPayload *)self epochStart];
    epochStart = v6->_epochStart;
    v6->_epochStart = v7;
  }

  return v6;
}

- (void)setPayloadBytes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 length] != 8)
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

- (void)setCurrent:(BOOL)a3
{
  if (a3)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(SharingBTLEAdvertisementPayload *)self optionBits];
    if (v5 == [(SharingBTLEAdvertisementPayload *)v4 optionBits]&& ((v6 = [(SharingBTLEAdvertisementPayload *)self isCurrent], v6 == [(SharingBTLEAdvertisementPayload *)v4 isCurrent]) || (v7 = [(SharingBTLEAdvertisementPayload *)self timeOffset], v7 == [(SharingBTLEAdvertisementPayload *)v4 timeOffset])))
    {
      v8 = [(SharingBTLEAdvertisementPayload *)self payloadBytes];
      v9 = [(SharingBTLEAdvertisementPayload *)v4 payloadBytes];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)isEqualHashedPayloadBytes:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  return *self->_bytes.hashedAdvertisementBytes == *(a3 + 2) && *&self->_bytes.hashedAdvertisementBytes[3] == *(a3 + 11);
}

- (BOOL)matchesItem:(id)a3
{
  v4 = a3;
  v5 = [[SharingBTLEAdvertisementPayload alloc] initWithItem:v4 isCurrent:0 when:0];
  v6 = [(SharingBTLEAdvertisementPayload *)self payloadBytes];
  v7 = [v6 bytes];
  v8 = [(SharingBTLEAdvertisementPayload *)v5 payloadBytes];
  v9 = [v8 bytes];
  v11 = *v7 == *v9 && *(v7 + 3) == *(v9 + 3);

  return v11;
}

- (id)description
{
  v3 = [(SharingBTLEAdvertisementPayload *)self payloadBytes];
  v4 = sub_100006EF4(v3);
  v5 = &stru_1000C67D0;
  if ([(SharingBTLEAdvertisementPayload *)self isCurrent])
  {
    v6 = @"*";
  }

  else
  {
    v6 = &stru_1000C67D0;
  }

  v7 = [(SharingBTLEAdvertisementPayload *)self timeOffset];
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

  v11 = [(SharingBTLEAdvertisementPayload *)self optionBits];
  v12 = " ap";
  if ((v11 & 0x20) == 0)
  {
    v12 = "";
  }

  v13 = [NSString stringWithFormat:@"$%@/%@%d%@%@%s%s%s", v4, v6, v7, v8, v5, v9, v10, v12];

  return v13;
}

+ (id)dateEpochStart:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 timeIntervalSinceReferenceDate];
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
  v2 = [(SharingBTLEAdvertisementPayload *)self timeOffset];
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

  if (v2 == 255)
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
    v12 = (v2 & 0x7F);
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
    v3 = [(SharingBTLEAdvertisementPayload *)self when];
    if (v3)
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
    v3 = [(SharingBTLEAdvertisementPayload *)self currentUntil];
  }

  else
  {
    v4 = [(SharingBTLEAdvertisementPayload *)self time];
    v3 = [NSDate dateWithTimeInterval:v4 sinceDate:256.0];
  }

  return v3;
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
  v2 = [(SharingBTLEAdvertisementPayload *)self when];
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceReferenceDate];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:trunc(v4 / 496.0) * 496.0 + 496.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end