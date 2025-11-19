@interface UAAdvertisableItem
- (id)description;
- (id)logString;
- (id)statusString;
@end

@implementation UAAdvertisableItem

- (id)logString
{
  v3 = &MRMediaRemoteGetActiveOrigin_ptr;
  v4 = [(UAAdvertisableItem *)self type];
  if (v4 == 1)
  {
    v5 = &stru_1000C67D0;
  }

  else
  {
    v3 = sub_100009EC4([(UAAdvertisableItem *)self type]);
    v5 = [NSString stringWithFormat:@"%@:", v3];
  }

  v6 = [(UAAdvertisableItem *)self uuid];
  v7 = [v6 UUIDString];
  v8 = [(UAAdvertisableItem *)self activityType];
  v9 = [(UAAdvertisableItem *)self payloadForIdentifier:UAUserActivityUserInfoPayload];
  v10 = sub_1000021AC(v9, 8uLL);
  v11 = [(UAAdvertisableItem *)self payloads];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@ %@ .userInfo=%@ payloads=%ld", v5, v7, v8, v10, [v11 count]);

  if (v4 != 1)
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
  v18 = [(UAAdvertisableItem *)self uuid];
  v3 = [v18 UUIDString];
  v4 = [(UAAdvertisableItem *)self activityType];
  v5 = [(UAAdvertisableItem *)self payloadForIdentifier:UAUserActivityUserInfoPayload];
  v6 = sub_1000021AC(v5, 0x20uLL);
  v7 = [(UAAdvertisableItem *)self webpageURL];
  v8 = &stru_1000C67D0;
  if (v7)
  {
    v9 = @" webPageURL=<private>";
  }

  else
  {
    v9 = &stru_1000C67D0;
  }

  v10 = [(UAAdvertisableItem *)self referrerURL];
  if (v10)
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

  v12 = [(UAAdvertisableItem *)self eligibleToAdvertise];
  v13 = @"NO";
  if (v12)
  {
    v13 = @"YES";
  }

  v14 = [NSString stringWithFormat:@"%@ { type = %@ uuid = %@;  activityType = %@; userInfo = %@; %@%@ %@ eligible=%@}", v17, v16, v3, v4, v6, v9, v11, v8, v13];;

  return v14;
}

- (id)statusString
{
  v3 = [(UAAdvertisableItem *)self type];
  if (v3 == 1)
  {
    v4 = &stru_1000C67D0;
  }

  else
  {
    v32 = sub_100009EC4([(UAAdvertisableItem *)self type]);
    v4 = [NSString stringWithFormat:@"%@:", v32];
  }

  v48 = [(UAAdvertisableItem *)self activityType];
  v5 = [(UAAdvertisableItem *)self dynamicActivityType];
  v6 = &stru_1000C67D0;
  if (v5)
  {
    v33 = [(UAAdvertisableItem *)self dynamicActivityType];
    v50 = [NSString stringWithFormat:@":%@", v33];
  }

  else
  {
    v50 = &stru_1000C67D0;
  }

  v47 = [(UAAdvertisableItem *)self uuid];
  v51 = [v47 UUIDString];
  v7 = [(UAAdvertisableItem *)self isDirty];
  v8 = @" dirty*";
  if (!v7)
  {
    v8 = &stru_1000C67D0;
  }

  v41 = v8;
  v9 = [(UAAdvertisableItem *)self eligibleForHandoff];
  v10 = @" !handOff";
  if (v9)
  {
    v10 = &stru_1000C67D0;
  }

  v39 = v10;
  v46 = [(UAAdvertisableItem *)self alwaysPick];
  v49 = v4;
  if (v46)
  {
    v6 = [NSString stringWithFormat:@" AlwaysPickPriority=%li ", [(UAAdvertisableItem *)self alwaysPickValue]];
  }

  v45 = [(UAAdvertisableItem *)self options];
  v44 = [v45 objectForKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
  v11 = [v44 BOOLValue];
  v12 = " cloudDoc";
  if (!v11)
  {
    v12 = "";
  }

  v36 = v12;
  v43 = [(UAAdvertisableItem *)self options];
  v42 = [v43 objectForKeyedSubscript:_UAUserActivityContainsUnsynchronizedCloudDocsKey];
  v13 = [v42 BOOLValue];
  v14 = " unSynchCloudDoc";
  if (!v13)
  {
    v14 = "";
  }

  v35 = v14;
  v40 = [(UAAdvertisableItem *)self options];
  v38 = [v40 objectForKeyedSubscript:_UAUserActivityContainsFileProviderURLKey];
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
  v17 = [(UAAdvertisableItem *)self webpageURL];
  if (v17)
  {
    if ((os_trace_get_mode() & 0x1000000) != 0)
    {
      v31 = [(UAAdvertisableItem *)self webpageURL];
      v18 = [NSString stringWithFormat:@" url=%@", v31];
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

  v19 = [(UAAdvertisableItem *)self referrerURL];
  if (!v19)
  {
    v20 = &stru_1000C67D0;
    goto LABEL_29;
  }

  if ((os_trace_get_mode() & 0x1000000) == 0)
  {
    v20 = @"referrer=<private>";
LABEL_29:
    v27 = v15;
    v21 = v48;
    v22 = v49;
    v23 = [NSString stringWithFormat:@"%@%@%@ %@ %@%@%@%s%s%s %@%@%@", v49, v48, v50, v51, v41, v39, v6, v36, v35, v27, v16, v18, v20];
    goto LABEL_31;
  }

  [(UAAdvertisableItem *)self referrerURL];
  v24 = v30 = v3;
  [NSString stringWithFormat:@" referrer=%@", v24];
  v25 = v29 = v5;
  v28 = v15;
  v21 = v48;
  v22 = v49;
  v23 = [NSString stringWithFormat:@"%@%@%@ %@ %@%@%@%s%s%s %@%@%@", v49, v48, v50, v51, v41, v39, v6, v36, v35, v28, v16, v18, v25];

  v5 = v29;
  v3 = v30;
LABEL_31:

  if (v34)
  {
  }

  if (v46)
  {
  }

  if (v5)
  {
  }

  if (v3 != 1)
  {
  }

  return v23;
}

@end