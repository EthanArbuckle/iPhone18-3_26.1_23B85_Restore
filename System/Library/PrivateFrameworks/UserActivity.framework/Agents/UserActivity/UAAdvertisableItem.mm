@interface UAAdvertisableItem
- (id)description;
- (id)logString;
- (id)statusString;
@end

@implementation UAAdvertisableItem

- (id)logString
{
  v3 = &MRMediaRemoteGetActiveOrigin_ptr;
  type = [(UAAdvertisableItem *)self type];
  if (type == 1)
  {
    v5 = &stru_1000C67D0;
  }

  else
  {
    v3 = sub_100009EC4([(UAAdvertisableItem *)self type]);
    v5 = [NSString stringWithFormat:@"%@:", v3];
  }

  uuid = [(UAAdvertisableItem *)self uuid];
  uUIDString = [uuid UUIDString];
  activityType = [(UAAdvertisableItem *)self activityType];
  v9 = [(UAAdvertisableItem *)self payloadForIdentifier:UAUserActivityUserInfoPayload];
  v10 = sub_1000021AC(v9, 8uLL);
  payloads = [(UAAdvertisableItem *)self payloads];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@ %@ .userInfo=%@ payloads=%ld", v5, uUIDString, activityType, v10, [payloads count]);

  if (type != 1)
  {
  }

  return v12;
}

- (id)description
{
  v19.receiver = self;
  v19.super_class = UAAdvertisableItem;
  v17 = [(UAAdvertisableItem *)&v19 description];
  v16 = sub_100009EC4([(UAAdvertisableItem *)self type]);
  uuid = [(UAAdvertisableItem *)self uuid];
  uUIDString = [uuid UUIDString];
  activityType = [(UAAdvertisableItem *)self activityType];
  v5 = [(UAAdvertisableItem *)self payloadForIdentifier:UAUserActivityUserInfoPayload];
  v6 = sub_1000021AC(v5, 0x20uLL);
  webpageURL = [(UAAdvertisableItem *)self webpageURL];
  v8 = &stru_1000C67D0;
  if (webpageURL)
  {
    v9 = @" webPageURL=<private>";
  }

  else
  {
    v9 = &stru_1000C67D0;
  }

  referrerURL = [(UAAdvertisableItem *)self referrerURL];
  if (referrerURL)
  {
    v11 = @" referrerURL=<private>";
  }

  else
  {
    v11 = &stru_1000C67D0;
  }

  if (![(UAAdvertisableItem *)self eligibleForHandoff])
  {
    v8 = @"!eligibleForHandoff";
  }

  eligibleToAdvertise = [(UAAdvertisableItem *)self eligibleToAdvertise];
  v13 = @"NO";
  if (eligibleToAdvertise)
  {
    v13 = @"YES";
  }

  v14 = [NSString stringWithFormat:@"%@ { type = %@ uuid = %@;  activityType = %@; userInfo = %@; %@%@ %@ eligible=%@}", v17, v16, uUIDString, activityType, v6, v9, v11, v8, v13];;

  return v14;
}

- (id)statusString
{
  type = [(UAAdvertisableItem *)self type];
  if (type == 1)
  {
    v4 = &stru_1000C67D0;
  }

  else
  {
    v32 = sub_100009EC4([(UAAdvertisableItem *)self type]);
    v4 = [NSString stringWithFormat:@"%@:", v32];
  }

  activityType = [(UAAdvertisableItem *)self activityType];
  dynamicActivityType = [(UAAdvertisableItem *)self dynamicActivityType];
  v6 = &stru_1000C67D0;
  if (dynamicActivityType)
  {
    dynamicActivityType2 = [(UAAdvertisableItem *)self dynamicActivityType];
    v50 = [NSString stringWithFormat:@":%@", dynamicActivityType2];
  }

  else
  {
    v50 = &stru_1000C67D0;
  }

  uuid = [(UAAdvertisableItem *)self uuid];
  uUIDString = [uuid UUIDString];
  isDirty = [(UAAdvertisableItem *)self isDirty];
  v8 = @" dirty*";
  if (!isDirty)
  {
    v8 = &stru_1000C67D0;
  }

  v41 = v8;
  eligibleForHandoff = [(UAAdvertisableItem *)self eligibleForHandoff];
  v10 = @" !handOff";
  if (eligibleForHandoff)
  {
    v10 = &stru_1000C67D0;
  }

  v39 = v10;
  alwaysPick = [(UAAdvertisableItem *)self alwaysPick];
  v49 = v4;
  if (alwaysPick)
  {
    v6 = [NSString stringWithFormat:@" AlwaysPickPriority=%li ", [(UAAdvertisableItem *)self alwaysPickValue]];
  }

  options = [(UAAdvertisableItem *)self options];
  v44 = [options objectForKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
  bOOLValue = [v44 BOOLValue];
  v12 = " cloudDoc";
  if (!bOOLValue)
  {
    v12 = "";
  }

  v36 = v12;
  options2 = [(UAAdvertisableItem *)self options];
  v42 = [options2 objectForKeyedSubscript:_UAUserActivityContainsUnsynchronizedCloudDocsKey];
  bOOLValue2 = [v42 BOOLValue];
  v14 = " unSynchCloudDoc";
  if (!bOOLValue2)
  {
    v14 = "";
  }

  v35 = v14;
  options3 = [(UAAdvertisableItem *)self options];
  v38 = [options3 objectForKeyedSubscript:_UAUserActivityContainsFileProviderURLKey];
  if ([v38 BOOLValue])
  {
    v15 = " fileProv";
  }

  else
  {
    v15 = "";
  }

  v37 = [(UAAdvertisableItem *)self payloadForIdentifier:UAUserActivityUserInfoPayload];
  v16 = sub_1000021AC(v37, 0x18uLL);
  webpageURL = [(UAAdvertisableItem *)self webpageURL];
  if (webpageURL)
  {
    if ((os_trace_get_mode() & 0x1000000) != 0)
    {
      webpageURL2 = [(UAAdvertisableItem *)self webpageURL];
      v18 = [NSString stringWithFormat:@" url=%@", webpageURL2];
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v18 = @"url=<private>";
    }
  }

  else
  {
    v34 = 0;
    v18 = &stru_1000C67D0;
  }

  referrerURL = [(UAAdvertisableItem *)self referrerURL];
  if (!referrerURL)
  {
    v20 = &stru_1000C67D0;
    goto LABEL_29;
  }

  if ((os_trace_get_mode() & 0x1000000) == 0)
  {
    v20 = @"referrer=<private>";
LABEL_29:
    v27 = v15;
    v21 = activityType;
    v22 = v49;
    v23 = [NSString stringWithFormat:@"%@%@%@ %@ %@%@%@%s%s%s %@%@%@", v49, activityType, v50, uUIDString, v41, v39, v6, v36, v35, v27, v16, v18, v20];
    goto LABEL_31;
  }

  [(UAAdvertisableItem *)self referrerURL];
  v24 = v30 = type;
  [NSString stringWithFormat:@" referrer=%@", v24];
  v25 = v29 = dynamicActivityType;
  v28 = v15;
  v21 = activityType;
  v22 = v49;
  v23 = [NSString stringWithFormat:@"%@%@%@ %@ %@%@%@%s%s%s %@%@%@", v49, activityType, v50, uUIDString, v41, v39, v6, v36, v35, v28, v16, v18, v25];

  dynamicActivityType = v29;
  type = v30;
LABEL_31:

  if (v34)
  {
  }

  if (alwaysPick)
  {
  }

  if (dynamicActivityType)
  {
  }

  if (type != 1)
  {
  }

  return v23;
}

@end