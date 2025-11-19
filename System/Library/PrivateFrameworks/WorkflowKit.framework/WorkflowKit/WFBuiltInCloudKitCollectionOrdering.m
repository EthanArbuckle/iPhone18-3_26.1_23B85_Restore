@interface WFBuiltInCloudKitCollectionOrdering
+ (BOOL)isOrderingRecordID:(id)a3;
+ (id)recordIDWithZoneID:(id)a3 collectionIdentifier:(id)a4;
@end

@implementation WFBuiltInCloudKitCollectionOrdering

+ (id)recordIDWithZoneID:(id)a3 collectionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"WFBuiltInCloudKitCollectionOrdering.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"WFBuiltInCloudKitCollectionOrdering.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"collectionIdentifier"}];

LABEL_3:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"WFBuiltInCollectionOrdering", v9];
  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v10 zoneID:v7];

  return v11;
}

+ (BOOL)isOrderingRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 hasPrefix:@"WFBuiltInCollectionOrdering"];

  return v4;
}

@end