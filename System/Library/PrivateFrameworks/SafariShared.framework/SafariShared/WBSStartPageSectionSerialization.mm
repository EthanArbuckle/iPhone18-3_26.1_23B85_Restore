@interface WBSStartPageSectionSerialization
+ (id)decodeSectionsFromData:(id)data expectedFormat:(int64_t)format allowingFallbackFormats:(BOOL)formats error:(id *)error;
+ (id)decodeSectionsWithData:(id)data format:(int64_t)format error:(id *)error;
+ (id)encodeSectionsAsSyncableData:(id)data existingSyncableData:(id)syncableData error:(id *)error;
@end

@implementation WBSStartPageSectionSerialization

+ (id)decodeSectionsFromData:(id)data expectedFormat:(int64_t)format allowingFallbackFormats:(BOOL)formats error:(id *)error
{
  formatsCopy = formats;
  dataCopy = data;
  if (dataCopy)
  {
    v15 = 0;
    v11 = [self decodeSectionsWithData:dataCopy format:format error:&v15];
    v12 = v15;
    if (!v11 && formatsCopy)
    {
      v11 = [self decodeSectionsWithData:dataCopy format:format == 0 error:0];
    }

    if (error && !v11)
    {
      v13 = v12;
      *error = v12;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)decodeSectionsWithData:(id)data format:(int64_t)format error:(id *)error
{
  dataCopy = data;
  if (format == 1)
  {
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:error];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKeyedSubscript:@"Sections"];
      v5 = [v10 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_106];
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3840 userInfo:0];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else if (!format)
  {
    v5 = [MEMORY[0x1E696ACD0] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:dataCopy error:error];
  }

  return v5;
}

WBSStartPageSectionDescriptor *__72__WBSStartPageSectionSerialization_decodeSectionsWithData_format_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[WBSStartPageSectionDescriptor alloc] initWithDictionaryRepresentation:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)encodeSectionsAsSyncableData:(id)data existingSyncableData:(id)syncableData error:(id *)error
{
  syncableDataCopy = syncableData;
  dataCopy = data;
  if ([syncableDataCopy length])
  {
    dictionary = [MEMORY[0x1E696ACB0] JSONObjectWithData:syncableDataCopy options:1 error:error];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (dictionary)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
LABEL_7:
  v10 = [dictionary objectForKeyedSubscript:@"Sections"];
  v11 = [dataCopy valueForKey:@"identifier"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__WBSStartPageSectionSerialization_encodeSectionsAsSyncableData_existingSyncableData_error___block_invoke;
  v24[3] = &unk_1E7FCACF0;
  v25 = v10;
  v12 = v10;
  v13 = [dataCopy safari_mapObjectsUsingBlock:v24];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __92__WBSStartPageSectionSerialization_encodeSectionsAsSyncableData_existingSyncableData_error___block_invoke_3;
  v22 = &unk_1E7FCAD18;
  v23 = v11;
  v14 = v11;
  v15 = [v12 safari_mapAndFilterObjectsUsingBlock:&v19];
  v16 = [v13 arrayByAddingObjectsFromArray:{v15, v19, v20, v21, v22}];
  [dictionary setObject:v16 forKeyedSubscript:@"Sections"];

  v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:error];

  return v17;
}

id __92__WBSStartPageSectionSerialization_encodeSectionsAsSyncableData_existingSyncableData_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 dictionaryRepresentation];

  v6 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__WBSStartPageSectionSerialization_encodeSectionsAsSyncableData_existingSyncableData_error___block_invoke_2;
  v12[3] = &unk_1E7FCACC8;
  v13 = v4;
  v7 = v4;
  v8 = [v6 safari_firstObjectPassingTest:v12];
  if (v8)
  {
    v9 = [v5 safari_dictionaryByMergingWithDictionary:v8];
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  return v10;
}

uint64_t __92__WBSStartPageSectionSerialization_encodeSectionsAsSyncableData_existingSyncableData_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safari_stringForKey:@"Identifier"];
    v4 = WBSIsEqual();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __92__WBSStartPageSectionSerialization_encodeSectionsAsSyncableData_existingSyncableData_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safari_stringForKey:@"Identifier"];
    if ([*(a1 + 32) containsObject:v4])
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end