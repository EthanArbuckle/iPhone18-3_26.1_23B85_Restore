@interface EmbeddingCacheUtil
+ (id)deserialize:(id)deserialize;
+ (id)serialize:(id)serialize;
@end

@implementation EmbeddingCacheUtil

+ (id)deserialize:(id)deserialize
{
  deserializeCopy = deserialize;
  if ([deserializeCopy length])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__13;
    v36 = __Block_byref_object_dispose__13;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__13;
    v30 = __Block_byref_object_dispose__13;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__13;
    v24 = __Block_byref_object_dispose__13;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__EmbeddingCacheUtil_deserialize___block_invoke;
    v15[3] = &unk_27893E438;
    v17 = &v32;
    v18 = &v26;
    v19 = &v20;
    v16 = deserializeCopy;
    [v16 enumerateByteRangesUsingBlock:v15];
    v4 = [MEMORY[0x277CBEB58] set];
    [v4 addObject:objc_opt_class()];
    [v4 addObject:objc_opt_class()];
    [v4 addObject:objc_opt_class()];
    [v4 addObject:objc_opt_class()];
    [v4 addObject:objc_opt_class()];
    v5 = v21[5];
    v14 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v4 fromData:v5 error:&v14];
    v7 = v14;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CC34B8]);
      v9 = objc_alloc(MEMORY[0x277CC3520]);
      v10 = [v9 initWithEncodedData:v33[5]];
      [v8 setPrimaryTextEmbedding:v10];

      if (v27[5])
      {
        v11 = objc_alloc(MEMORY[0x277CC3520]);
        v12 = [v11 initWithEncodedData:v27[5]];
        [v8 setSecondaryTextEmbedding:v12];
      }

      [v8 addAttributesFromDictionary:v6];
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __34__EmbeddingCacheUtil_deserialize___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3 + 2;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + v6 length:*(a2 + a3)];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = v6 + *(a2 + a3);
  v11 = v10 + 2;
  if (*(a2 + v10))
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + v11 length:?];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v11 += *(a2 + v10);
  }

  v15 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + v11 length:{objc_msgSend(*(a1 + 32), "length") - v11}];
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

+ (id)serialize:(id)serialize
{
  serializeCopy = serialize;
  data = [MEMORY[0x277CBEA90] data];
  primaryTextEmbedding = [serializeCopy primaryTextEmbedding];

  if (primaryTextEmbedding)
  {
    primaryTextEmbedding2 = [serializeCopy primaryTextEmbedding];
    encodedData = [primaryTextEmbedding2 encodedData];

    data = encodedData;
  }

  data2 = [MEMORY[0x277CBEA90] data];
  secondaryTextEmbedding = [serializeCopy secondaryTextEmbedding];

  if (secondaryTextEmbedding)
  {
    secondaryTextEmbedding2 = [serializeCopy secondaryTextEmbedding];
    encodedData2 = [secondaryTextEmbedding2 encodedData];

    data2 = encodedData2;
  }

  if ([data length])
  {
    v12 = MEMORY[0x277CCAAB0];
    serializedAttributes = [serializeCopy serializedAttributes];
    v22 = 0;
    v14 = [v12 archivedDataWithRootObject:serializedAttributes requiringSecureCoding:1 error:&v22];
    v15 = v22;

    v16 = 0;
    if (!v15 && v14)
    {
      v17 = [data length];
      v18 = v17 + [data2 length];
      v19 = [v14 length];
      v16 = [MEMORY[0x277CBEB28] dataWithCapacity:(v18 + v19 + 4)];
      v21 = [data length];
      [v16 appendBytes:&v21 length:2];
      [v16 appendData:data];
      v21 = [data2 length];
      [v16 appendBytes:&v21 length:2];
      if (v21)
      {
        [v16 appendData:data2];
      }

      [v16 appendData:v14];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end