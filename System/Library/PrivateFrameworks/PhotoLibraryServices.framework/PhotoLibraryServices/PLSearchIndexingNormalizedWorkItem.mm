@interface PLSearchIndexingNormalizedWorkItem
+ (id)coalesceWorkItemA:(id)a itemB:(id)b;
- (PLSearchIndexingNormalizedWorkItem)initWithIdentifier:(id)identifier jobType:(signed __int16)type jobFlags:(int64_t)flags entityToIndex:(unint64_t)index timestamp:(id)timestamp;
@end

@implementation PLSearchIndexingNormalizedWorkItem

- (PLSearchIndexingNormalizedWorkItem)initWithIdentifier:(id)identifier jobType:(signed __int16)type jobFlags:(int64_t)flags entityToIndex:(unint64_t)index timestamp:(id)timestamp
{
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v20.receiver = self;
  v20.super_class = PLSearchIndexingNormalizedWorkItem;
  v14 = [(PLSearchIndexingNormalizedWorkItem *)&v20 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v14->_jobType = type;
    v14->_jobFlags = flags;
    v14->_entityToIndex = index;
    v17 = [timestampCopy copy];
    timestamp = v14->_timestamp;
    v14->_timestamp = v17;
  }

  return v14;
}

+ (id)coalesceWorkItemA:(id)a itemB:(id)b
{
  aCopy = a;
  bCopy = b;
  identifier = [aCopy identifier];
  identifier2 = [bCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    entityToIndex = [aCopy entityToIndex];
    entityToIndex2 = [bCopy entityToIndex];

    if (entityToIndex != entityToIndex2)
    {
      v27 = 0;
      goto LABEL_18;
    }

    timestamp = [aCopy timestamp];
    timestamp2 = [bCopy timestamp];
    v14 = [timestamp compare:timestamp2];

    if (v14 == -1)
    {
      v15 = aCopy;
    }

    else
    {
      v15 = bCopy;
    }

    if (v14 == -1)
    {
      v16 = bCopy;
    }

    else
    {
      v16 = aCopy;
    }

    identifier = v15;
    identifier2 = v16;
    if (([identifier2 isRemoval] & 1) != 0 || objc_msgSend(identifier, "isRemoval") && (objc_msgSend(identifier2, "isInsert") & 1) == 0)
    {
      v17 = [self alloc];
      v8Identifier = [identifier identifier];
      jobType = [aCopy jobType];
      entityToIndex3 = [identifier entityToIndex];
      timestamp3 = [identifier timestamp];
      v22 = v17;
      v23 = v8Identifier;
      v24 = jobType;
      v25 = 1;
      v26 = entityToIndex3;
    }

    else
    {
      v33 = [self alloc];
      v8Identifier = [identifier identifier];
      jobType2 = [aCopy jobType];
      jobFlags = [identifier2 jobFlags];
      jobFlags2 = [identifier jobFlags];
      entityToIndex4 = [identifier entityToIndex];
      timestamp3 = [identifier timestamp];
      v25 = jobFlags2 | jobFlags;
      v22 = v33;
      v23 = v8Identifier;
      v24 = jobType2;
      v26 = entityToIndex4;
    }

    v27 = [v22 initWithIdentifier:v23 jobType:v24 jobFlags:v25 entityToIndex:v26 timestamp:timestamp3];
  }

  else
  {
    v27 = 0;
  }

LABEL_18:

  return v27;
}

@end