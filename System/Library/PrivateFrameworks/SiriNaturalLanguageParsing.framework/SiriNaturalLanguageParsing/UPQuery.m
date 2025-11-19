@interface UPQuery
+ (id)tokenDescription:(id)a3;
- (UPQuery)initWithProtobufQuery:(id)a3 error:(id *)a4;
- (UPQuery)initWithUtterance:(id)a3 tokens:(id)a4 embeddingsByToken:(id)a5 spans:(id)a6 dialogAct:(id)a7;
- (id)_buildEmbeddingsDictionaryWithNonWhitespaceTokens:(id)a3 nonWhitespaceTokenIndexes:(id)a4 embeddings:(id)a5 error:(id *)a6;
- (id)_buildTokenListWithTokenChain:(id)a3 nonWhitespaceTokenIndexes:(id)a4;
- (id)_createDialogActWithProtobufQuery:(id)a3;
- (id)_getNonWhitespaceTokenIndexes:(id)a3;
- (id)buildSpansListWithProtobufQuery:(id)a3 nonWhitespaceTokenIndexes:(id)a4 error:(id *)a5;
- (id)description;
@end

@implementation UPQuery

- (id)description
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277CBEB18] array];
  v24 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(UPQuery *)self tokens];
  v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    v23 = *v28;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v27 + 1) + 8 * i);
        v5 = [objc_opt_class() tokenDescription:v4];
        [v25 addObject:v5];
        v6 = [(UPQuery *)self embeddingsByToken];
        v7 = [v6 objectForKeyedSubscript:v4];

        v8 = NSStringFromSelector(sel_description);
        v9 = [v7 valueForKey:v8];
        v10 = MEMORY[0x277CCACA8];
        v11 = [v9 componentsJoinedByString:{@", "}];
        v12 = [v10 stringWithFormat:@"[%@]", v11];

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ => %@", v5, v12];
        [v24 addObject:v13];
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [(UPQuery *)self utterance];
  v16 = [v25 componentsJoinedByString:{@", "}];
  v17 = [v24 componentsJoinedByString:@"\n"];
  v18 = [(UPQuery *)self spans];
  v19 = [v14 stringWithFormat:@"{UPQuery\n  utterance: %@\n  tokens: %@\n  embeddingsByToken:\n%@\n  spans:\n%@\n}", v15, v16, v17, v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_createDialogActWithProtobufQuery:(id)a3
{
  v3 = a3;
  if (![v3 hasTurnInput])
  {
    goto LABEL_12;
  }

  v4 = [v3 turnInput];
  if (([v4 hasTurnContext] & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = [v3 turnInput];
  v6 = [v5 turnContext];
  if (([v6 hasNlContext] & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  v7 = [v3 turnInput];
  v8 = [v7 turnContext];
  v9 = [v8 nlContext];
  v10 = [v9 systemDialogActs];
  v11 = [v10 count];

  if (!v11)
  {
LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v12 = [v3 turnInput];
  v13 = [v12 turnContext];
  v14 = [v13 nlContext];
  v15 = [v14 systemDialogActsCount];

  if (v15 >= 2)
  {
    v16 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, "Multiple SystemDialogActs specified in context but UaaP can only handle one - using the first one", v24, 2u);
    }
  }

  v17 = [v3 turnInput];
  v18 = [v17 turnContext];
  v19 = [v18 nlContext];
  v20 = [v19 systemDialogActs];
  v21 = [v20 firstObject];

  v22 = [MEMORY[0x277D5DF08] convertSystemDialogAct:v21];

LABEL_13:

  return v22;
}

- (id)buildSpansListWithProtobufQuery:(id)a3 nonWhitespaceTokenIndexes:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "matchingSpansCount")}];
  if ([v7 matchingSpansCount])
  {
    v10 = 0;
    while (1)
    {
      v11 = [UPSpan alloc];
      v12 = [v7 matchingSpansAtIndex:v10];
      v21 = 0;
      v13 = [(UPSpan *)v11 initWithProtobufSpan:v12 nonWhitespaceTokenIndexes:v8 error:&v21];
      v14 = v21;

      if (!v13)
      {
        break;
      }

      [v9 addObject:v13];

      if ([v7 matchingSpansCount] <= ++v10)
      {
        goto LABEL_5;
      }
    }

    v16 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v14 localizedDescription];
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, "Hit error when converting protobuf span to UPSpan: %@", buf, 0xCu);
    }

    if (a5)
    {
      v18 = v14;
      *a5 = v14;
    }

    v15 = 0;
  }

  else
  {
LABEL_5:
    v15 = v9;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_buildEmbeddingsDictionaryWithNonWhitespaceTokens:(id)a3 nonWhitespaceTokenIndexes:(id)a4 embeddings:(id)a5 error:(id *)a6
{
  v39[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 count];
  if (v12 == [v10 count])
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __104__UPQuery__buildEmbeddingsDictionaryWithNonWhitespaceTokens_nonWhitespaceTokenIndexes_embeddings_error___block_invoke;
    v19[3] = &unk_2784B6DC0;
    v20 = v9;
    v23 = v36;
    v21 = v11;
    v24 = &v26;
    v25 = &v32;
    v14 = v13;
    v22 = v14;
    [v10 enumerateIndexesUsingBlock:v19];
    if (*(v33 + 24) == 1)
    {
      v15 = 0;
      if (a6)
      {
        *a6 = v27[5];
      }
    }

    else
    {
      v15 = v14;
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(v36, 8);
  }

  else
  {
    if (!a6)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v16 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"Count of nonWhitespaceTokens does not match nonWhitespaceTokenIndexes";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v16 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v14];
    *a6 = v15 = 0;
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

void __104__UPQuery__buildEmbeddingsDictionaryWithNonWhitespaceTokens_nonWhitespaceTokenIndexes_embeddings_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
  v6 = [UPEmbedding alloc];
  v7 = *(a1 + 40);
  v8 = *(*(*(a1 + 56) + 8) + 24);
  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  v10 = [(UPEmbedding *)v6 initWithProtobufEmbeddings:v7 forTokenAt:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
    [*(a1 + 48) setObject:v11 forKeyedSubscript:v5];
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)_buildTokenListWithTokenChain:(id)a3 nonWhitespaceTokenIndexes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__UPQuery__buildTokenListWithTokenChain_nonWhitespaceTokenIndexes___block_invoke;
  v13 = &unk_2784B6D98;
  v7 = v5;
  v14 = v7;
  v15 = &v16;
  [v6 enumerateIndexesUsingBlock:&v10];
  v8 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __67__UPQuery__buildTokenListWithTokenChain_nonWhitespaceTokenIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) tokensAtIndex:a2];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

- (id)_getNonWhitespaceTokenIndexes:(id)a3
{
  v3 = a3;
  v4 = [v3 tokensCount];
  v5 = [MEMORY[0x277CCAB58] indexSet];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [v3 tokensAtIndex:i];
      if (([v7 isWhitespace] & 1) == 0)
      {
        [v5 addIndex:i];
      }
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v5];

  return v8;
}

- (UPQuery)initWithProtobufQuery:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 hasTokenChain])
  {
    v7 = [v6 tokenChain];
    v29 = [(UPQuery *)self _getNonWhitespaceTokenIndexes:v7];
    v30 = [(UPQuery *)self _buildTokenListWithTokenChain:v7 nonWhitespaceTokenIndexes:?];
    v8 = [MEMORY[0x277CCAB68] string];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [v7 tokens];
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v33 + 1) + 8 * i) value];
          [v8 appendString:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v11);
    }

    if ([v6 hasEmbeddings])
    {
      v15 = [v6 embeddings];
      v32 = 0;
      v16 = v29;
      v17 = [(UPQuery *)self _buildEmbeddingsDictionaryWithNonWhitespaceTokens:v30 nonWhitespaceTokenIndexes:v29 embeddings:v15 error:&v32];
      v18 = v32;

      if (v17)
      {
        v31 = 0;
        v19 = [(UPQuery *)self buildSpansListWithProtobufQuery:v6 nonWhitespaceTokenIndexes:v29 error:&v31];
        v20 = v31;
        v28 = v20;
        if (v19)
        {
          v21 = [(UPQuery *)self _createDialogActWithProtobufQuery:v6];
          self = [(UPQuery *)self initWithUtterance:v8 tokens:v30 embeddingsByToken:v17 spans:v19 dialogAct:v21];

          v22 = self;
        }

        else
        {
          v22 = 0;
          if (v20)
          {
            *a4 = v20;
          }
        }
      }

      else if (a4)
      {
        v25 = v18;
        v22 = 0;
        *a4 = v18;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v16 = v29;
      if (!a4)
      {
        v22 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v24 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"Request has no embeddings";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [v24 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v18];
      *a4 = v22 = 0;
    }

    goto LABEL_27;
  }

  if (a4)
  {
    v23 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"Request has no token chain";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [v23 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v7];
    *a4 = v22 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v22 = 0;
LABEL_29:

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

- (UPQuery)initWithUtterance:(id)a3 tokens:(id)a4 embeddingsByToken:(id)a5 spans:(id)a6 dialogAct:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = UPQuery;
  v17 = [(UPQuery *)&v23 init];
  if (v17)
  {
    v18 = [MEMORY[0x277CCAD78] UUID];
    uuid = v17->_uuid;
    v17->_uuid = v18;

    v20 = [v12 copy];
    utterance = v17->_utterance;
    v17->_utterance = v20;

    objc_storeStrong(&v17->_tokens, a4);
    objc_storeStrong(&v17->_embeddingsByToken, a5);
    objc_storeStrong(&v17->_dialogAct, a7);
    objc_storeStrong(&v17->_spans, a6);
  }

  return v17;
}

+ (id)tokenDescription:(id)a3
{
  v3 = a3;
  if ([v3 hasBegin])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v3, "begin")];
  }

  else
  {
    v4 = @"(missing)";
  }

  if ([v3 hasEnd])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v3, "end")];
  }

  else
  {
    v5 = @"(missing)";
  }

  if ([v3 hasValue])
  {
    v6 = [v3 value];
  }

  else
  {
    v6 = @"(missing)";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"{Token begin=%@, end=%@, value='%@'}", v4, v5, v6];

  return v7;
}

@end