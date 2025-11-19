@interface PLSearchIndexingNormalizedWorkItem
+ (id)coalesceWorkItemA:(id)a3 itemB:(id)a4;
- (PLSearchIndexingNormalizedWorkItem)initWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5 entityToIndex:(unint64_t)a6 timestamp:(id)a7;
@end

@implementation PLSearchIndexingNormalizedWorkItem

- (PLSearchIndexingNormalizedWorkItem)initWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5 entityToIndex:(unint64_t)a6 timestamp:(id)a7
{
  v12 = a3;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = PLSearchIndexingNormalizedWorkItem;
  v14 = [(PLSearchIndexingNormalizedWorkItem *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v14->_jobType = a4;
    v14->_jobFlags = a5;
    v14->_entityToIndex = a6;
    v17 = [v13 copy];
    timestamp = v14->_timestamp;
    v14->_timestamp = v17;
  }

  return v14;
}

+ (id)coalesceWorkItemA:(id)a3 itemB:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v7 identifier];
  if ([v8 isEqualToString:v9])
  {
    v10 = [v6 entityToIndex];
    v11 = [v7 entityToIndex];

    if (v10 != v11)
    {
      v27 = 0;
      goto LABEL_18;
    }

    v12 = [v6 timestamp];
    v13 = [v7 timestamp];
    v14 = [v12 compare:v13];

    if (v14 == -1)
    {
      v15 = v6;
    }

    else
    {
      v15 = v7;
    }

    if (v14 == -1)
    {
      v16 = v7;
    }

    else
    {
      v16 = v6;
    }

    v8 = v15;
    v9 = v16;
    if (([v9 isRemoval] & 1) != 0 || objc_msgSend(v8, "isRemoval") && (objc_msgSend(v9, "isInsert") & 1) == 0)
    {
      v17 = [a1 alloc];
      v18 = [v8 identifier];
      v19 = [v6 jobType];
      v20 = [v8 entityToIndex];
      v21 = [v8 timestamp];
      v22 = v17;
      v23 = v18;
      v24 = v19;
      v25 = 1;
      v26 = v20;
    }

    else
    {
      v33 = [a1 alloc];
      v18 = [v8 identifier];
      v28 = [v6 jobType];
      v29 = [v9 jobFlags];
      v30 = [v8 jobFlags];
      v31 = [v8 entityToIndex];
      v21 = [v8 timestamp];
      v25 = v30 | v29;
      v22 = v33;
      v23 = v18;
      v24 = v28;
      v26 = v31;
    }

    v27 = [v22 initWithIdentifier:v23 jobType:v24 jobFlags:v25 entityToIndex:v26 timestamp:v21];
  }

  else
  {
    v27 = 0;
  }

LABEL_18:

  return v27;
}

@end