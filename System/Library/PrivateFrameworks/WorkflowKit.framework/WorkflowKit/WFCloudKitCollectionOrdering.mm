@interface WFCloudKitCollectionOrdering
+ (BOOL)isOrderingRecordID:(id)d;
+ (id)recordIDWithZoneID:(id)d collectionIdentifier:(id)identifier;
@end

@implementation WFCloudKitCollectionOrdering

+ (id)recordIDWithZoneID:(id)d collectionIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (dCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitCollectionOrdering.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCloudKitCollectionOrdering.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"collectionIdentifier"}];

LABEL_3:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"WFCollectionOrdering", v9];
  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v10 zoneID:dCopy];

  return v11;
}

+ (BOOL)isOrderingRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName hasPrefix:@"WFCollectionOrdering"];

  return v4;
}

@end