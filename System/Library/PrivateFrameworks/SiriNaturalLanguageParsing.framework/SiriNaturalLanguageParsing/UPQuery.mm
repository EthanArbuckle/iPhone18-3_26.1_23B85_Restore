@interface UPQuery
+ (id)tokenDescription:(id)description;
- (UPQuery)initWithProtobufQuery:(id)query error:(id *)error;
- (UPQuery)initWithUtterance:(id)utterance tokens:(id)tokens embeddingsByToken:(id)token spans:(id)spans dialogAct:(id)act;
- (id)_buildEmbeddingsDictionaryWithNonWhitespaceTokens:(id)tokens nonWhitespaceTokenIndexes:(id)indexes embeddings:(id)embeddings error:(id *)error;
- (id)_buildTokenListWithTokenChain:(id)chain nonWhitespaceTokenIndexes:(id)indexes;
- (id)_createDialogActWithProtobufQuery:(id)query;
- (id)_getNonWhitespaceTokenIndexes:(id)indexes;
- (id)buildSpansListWithProtobufQuery:(id)query nonWhitespaceTokenIndexes:(id)indexes error:(id *)error;
- (id)description;
@end

@implementation UPQuery

- (id)description
{
  v32 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
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
        [array addObject:v5];
        embeddingsByToken = [(UPQuery *)self embeddingsByToken];
        v7 = [embeddingsByToken objectForKeyedSubscript:v4];

        v8 = NSStringFromSelector(sel_description);
        v9 = [v7 valueForKey:v8];
        v10 = MEMORY[0x277CCACA8];
        v11 = [v9 componentsJoinedByString:{@", "}];
        v12 = [v10 stringWithFormat:@"[%@]", v11];

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ => %@", v5, v12];
        [array2 addObject:v13];
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  v14 = MEMORY[0x277CCACA8];
  utterance = [(UPQuery *)self utterance];
  v16 = [array componentsJoinedByString:{@", "}];
  v17 = [array2 componentsJoinedByString:@"\n"];
  spans = [(UPQuery *)self spans];
  v19 = [v14 stringWithFormat:@"{UPQuery\n  utterance: %@\n  tokens: %@\n  embeddingsByToken:\n%@\n  spans:\n%@\n}", utterance, v16, v17, spans];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_createDialogActWithProtobufQuery:(id)query
{
  queryCopy = query;
  if (![queryCopy hasTurnInput])
  {
    goto LABEL_12;
  }

  turnInput = [queryCopy turnInput];
  if (([turnInput hasTurnContext] & 1) == 0)
  {
    goto LABEL_11;
  }

  turnInput2 = [queryCopy turnInput];
  turnContext = [turnInput2 turnContext];
  if (([turnContext hasNlContext] & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  turnInput3 = [queryCopy turnInput];
  turnContext2 = [turnInput3 turnContext];
  nlContext = [turnContext2 nlContext];
  systemDialogActs = [nlContext systemDialogActs];
  v11 = [systemDialogActs count];

  if (!v11)
  {
LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  turnInput4 = [queryCopy turnInput];
  turnContext3 = [turnInput4 turnContext];
  nlContext2 = [turnContext3 nlContext];
  systemDialogActsCount = [nlContext2 systemDialogActsCount];

  if (systemDialogActsCount >= 2)
  {
    v16 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, "Multiple SystemDialogActs specified in context but UaaP can only handle one - using the first one", v24, 2u);
    }
  }

  turnInput5 = [queryCopy turnInput];
  turnContext4 = [turnInput5 turnContext];
  nlContext3 = [turnContext4 nlContext];
  systemDialogActs2 = [nlContext3 systemDialogActs];
  firstObject = [systemDialogActs2 firstObject];

  v22 = [MEMORY[0x277D5DF08] convertSystemDialogAct:firstObject];

LABEL_13:

  return v22;
}

- (id)buildSpansListWithProtobufQuery:(id)query nonWhitespaceTokenIndexes:(id)indexes error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  indexesCopy = indexes;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(queryCopy, "matchingSpansCount")}];
  if ([queryCopy matchingSpansCount])
  {
    v10 = 0;
    while (1)
    {
      v11 = [UPSpan alloc];
      v12 = [queryCopy matchingSpansAtIndex:v10];
      v21 = 0;
      v13 = [(UPSpan *)v11 initWithProtobufSpan:v12 nonWhitespaceTokenIndexes:indexesCopy error:&v21];
      v14 = v21;

      if (!v13)
      {
        break;
      }

      [v9 addObject:v13];

      if ([queryCopy matchingSpansCount] <= ++v10)
      {
        goto LABEL_5;
      }
    }

    v16 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v14 localizedDescription];
      *buf = 138412290;
      v23 = localizedDescription;
      _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, "Hit error when converting protobuf span to UPSpan: %@", buf, 0xCu);
    }

    if (error)
    {
      v18 = v14;
      *error = v14;
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

- (id)_buildEmbeddingsDictionaryWithNonWhitespaceTokens:(id)tokens nonWhitespaceTokenIndexes:(id)indexes embeddings:(id)embeddings error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  indexesCopy = indexes;
  embeddingsCopy = embeddings;
  v12 = [tokensCopy count];
  if (v12 == [indexesCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
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
    v20 = tokensCopy;
    v23 = v36;
    v21 = embeddingsCopy;
    v24 = &v26;
    v25 = &v32;
    v14 = dictionary;
    v22 = v14;
    [indexesCopy enumerateIndexesUsingBlock:v19];
    if (*(v33 + 24) == 1)
    {
      v15 = 0;
      if (error)
      {
        *error = v27[5];
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
    if (!error)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v16 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"Count of nonWhitespaceTokens does not match nonWhitespaceTokenIndexes";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v16 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v14];
    *error = v15 = 0;
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

- (id)_buildTokenListWithTokenChain:(id)chain nonWhitespaceTokenIndexes:(id)indexes
{
  chainCopy = chain;
  indexesCopy = indexes;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__UPQuery__buildTokenListWithTokenChain_nonWhitespaceTokenIndexes___block_invoke;
  v13 = &unk_2784B6D98;
  v7 = chainCopy;
  v14 = v7;
  v15 = &v16;
  [indexesCopy enumerateIndexesUsingBlock:&v10];
  v8 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __67__UPQuery__buildTokenListWithTokenChain_nonWhitespaceTokenIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) tokensAtIndex:a2];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

- (id)_getNonWhitespaceTokenIndexes:(id)indexes
{
  indexesCopy = indexes;
  tokensCount = [indexesCopy tokensCount];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  if (tokensCount)
  {
    for (i = 0; i != tokensCount; ++i)
    {
      v7 = [indexesCopy tokensAtIndex:i];
      if (([v7 isWhitespace] & 1) == 0)
      {
        [indexSet addIndex:i];
      }
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:indexSet];

  return v8;
}

- (UPQuery)initWithProtobufQuery:(id)query error:(id *)error
{
  v41[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  if ([queryCopy hasTokenChain])
  {
    tokenChain = [queryCopy tokenChain];
    v29 = [(UPQuery *)self _getNonWhitespaceTokenIndexes:tokenChain];
    v30 = [(UPQuery *)self _buildTokenListWithTokenChain:tokenChain nonWhitespaceTokenIndexes:?];
    string = [MEMORY[0x277CCAB68] string];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    tokens = [tokenChain tokens];
    v10 = [tokens countByEnumeratingWithState:&v33 objects:v39 count:16];
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
            objc_enumerationMutation(tokens);
          }

          value = [*(*(&v33 + 1) + 8 * i) value];
          [string appendString:value];
        }

        v11 = [tokens countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v11);
    }

    if ([queryCopy hasEmbeddings])
    {
      embeddings = [queryCopy embeddings];
      v32 = 0;
      v16 = v29;
      v17 = [(UPQuery *)self _buildEmbeddingsDictionaryWithNonWhitespaceTokens:v30 nonWhitespaceTokenIndexes:v29 embeddings:embeddings error:&v32];
      v18 = v32;

      if (v17)
      {
        v31 = 0;
        v19 = [(UPQuery *)self buildSpansListWithProtobufQuery:queryCopy nonWhitespaceTokenIndexes:v29 error:&v31];
        v20 = v31;
        v28 = v20;
        if (v19)
        {
          v21 = [(UPQuery *)self _createDialogActWithProtobufQuery:queryCopy];
          self = [(UPQuery *)self initWithUtterance:string tokens:v30 embeddingsByToken:v17 spans:v19 dialogAct:v21];

          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
          if (v20)
          {
            *error = v20;
          }
        }
      }

      else if (error)
      {
        v25 = v18;
        selfCopy = 0;
        *error = v18;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      v16 = v29;
      if (!error)
      {
        selfCopy = 0;
LABEL_27:

        goto LABEL_28;
      }

      v24 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"Request has no embeddings";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [v24 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v18];
      *error = selfCopy = 0;
    }

    goto LABEL_27;
  }

  if (error)
  {
    v23 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"Request has no token chain";
    tokenChain = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [v23 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:tokenChain];
    *error = selfCopy = 0;
LABEL_28:

    goto LABEL_29;
  }

  selfCopy = 0;
LABEL_29:

  v26 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (UPQuery)initWithUtterance:(id)utterance tokens:(id)tokens embeddingsByToken:(id)token spans:(id)spans dialogAct:(id)act
{
  utteranceCopy = utterance;
  tokensCopy = tokens;
  tokenCopy = token;
  spansCopy = spans;
  actCopy = act;
  v23.receiver = self;
  v23.super_class = UPQuery;
  v17 = [(UPQuery *)&v23 init];
  if (v17)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v17->_uuid;
    v17->_uuid = uUID;

    v20 = [utteranceCopy copy];
    utterance = v17->_utterance;
    v17->_utterance = v20;

    objc_storeStrong(&v17->_tokens, tokens);
    objc_storeStrong(&v17->_embeddingsByToken, token);
    objc_storeStrong(&v17->_dialogAct, act);
    objc_storeStrong(&v17->_spans, spans);
  }

  return v17;
}

+ (id)tokenDescription:(id)description
{
  descriptionCopy = description;
  if ([descriptionCopy hasBegin])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(descriptionCopy, "begin")];
  }

  else
  {
    v4 = @"(missing)";
  }

  if ([descriptionCopy hasEnd])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(descriptionCopy, "end")];
  }

  else
  {
    v5 = @"(missing)";
  }

  if ([descriptionCopy hasValue])
  {
    value = [descriptionCopy value];
  }

  else
  {
    value = @"(missing)";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"{Token begin=%@, end=%@, value='%@'}", v4, v5, value];

  return v7;
}

@end