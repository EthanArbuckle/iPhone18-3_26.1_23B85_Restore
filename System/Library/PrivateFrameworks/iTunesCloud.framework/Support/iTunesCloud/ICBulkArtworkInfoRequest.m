@interface ICBulkArtworkInfoRequest
- (id)_bodyDataForCloudIDs:(id)a3 itemKind:(unsigned __int8)a4 useLongIDs:(BOOL)a5;
- (id)_queryFilterString;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICBulkArtworkInfoRequest

- (id)_queryFilterString
{
  v2 = [@"com.apple.itunes.extended-media-kind" stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [&off_1001EE320 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&off_1001EE320 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&off_1001EE320);
        }

        v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"'%@:%d'", v2, [*(*(&v12 + 1) + 8 * i) intValue]);
        [v3 addObject:v8];
      }

      v5 = [&off_1001EE320 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [NSString stringWithFormat:@"(%@)", v9];

  return v10;
}

- (id)_bodyDataForCloudIDs:(id)a3 itemKind:(unsigned __int8)a4 useLongIDs:(BOOL)a5
{
  v8 = a3;
  v5 = v8;
  v6 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v6;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICBulkArtworkInfoResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:v4];

  [v3 setArtworkInfoDictionaries:v5];

  return v3;
}

@end