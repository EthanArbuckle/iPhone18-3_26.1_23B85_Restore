@interface SXDataRecordStore
- (SXDataRecordStore)initWithJSONObject:(id)a3 andVersion:(id)a4;
- (SXDataRecordStore)initWithRecords:(id)a3 andDescriptors:(id)a4;
- (id)recordsUsingSortDescriptors:(id)a3;
- (unint64_t)numberOfRecords;
@end

@implementation SXDataRecordStore

- (SXDataRecordStore)initWithJSONObject:(id)a3 andVersion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"descriptors"];
  v26 = v5;
  v8 = [v5 objectForKey:@"records"];
  v9 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(SXJSONObject *)[SXDataDescriptor alloc] initWithJSONObject:*(*(&v31 + 1) + 8 * v14) andVersion:v6];
        if ([(SXDataDescriptor *)v15 dataType])
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      v21 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(SXJSONObject *)[SXDataRecord alloc] initWithJSONObject:*(*(&v27 + 1) + 8 * v21) andVersion:v6];
        [v16 addObject:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v23 = [(SXDataRecordStore *)self initWithRecords:v16 andDescriptors:v9];
  return v23;
}

- (SXDataRecordStore)initWithRecords:(id)a3 andDescriptors:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXDataRecordStore;
  v9 = [(SXDataRecordStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_records, a3);
    objc_storeStrong(&v10->_descriptors, a4);
  }

  return v10;
}

- (unint64_t)numberOfRecords
{
  v2 = [(SXDataRecordStore *)self records];
  v3 = [v2 count];

  return v3;
}

- (id)recordsUsingSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(SXDataRecordStore *)self records];
  v6 = [v5 copy];

  if ([v4 count])
  {
    v7 = [v6 sortedArrayUsingDescriptors:v4];

    v6 = v7;
  }

  return v6;
}

@end