@interface PMLHashingVectorizer
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHashingVectorizer:(id)a3;
- (PMLHashingVectorizer)initWithBucketSize:(int)a3 characterNGramRange:(_NSRange)a4 tokenNGramRange:(_NSRange)a5 shouldNormalizeTokens:(BOOL)a6 shouldNormalizeCharacters:(BOOL)a7 localeForNonwordTokens:(id)a8 tokenizeNewlines:(BOOL)a9 idVectorLength:(unint64_t)a10 extraIdOptions:(unint64_t)a11 vectorizerStrategy:(unint64_t)a12 vectorNormalization:(int64_t)a13 vocab:(id)a14;
- (PMLHashingVectorizer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
- (id)transformBatch:(id)a3;
- (id)transformSequentialNGrams:(id)a3;
- (id)transformWithFrequency:(id)a3 shouldDecrement:(BOOL)a4;
- (id)transformWithWordPiece:(id)a3;
- (unint64_t)hash;
@end

@implementation PMLHashingVectorizer

- (unint64_t)hash
{
  v3 = self->_vectorizerStrategy - self->_buckets + 32 * self->_buckets;
  v4 = self->_characterNGramRange.location - v3 + 32 * v3;
  v5 = self->_characterNGramRange.length - v4 + 32 * v4;
  v6 = self->_tokenNGramRange.location - v5 + 32 * v5;
  v7 = self->_shouldNormalizeTokens - (self->_tokenNGramRange.length - v6 + 32 * v6) + 32 * (self->_tokenNGramRange.length - v6 + 32 * v6);
  v8 = self->_shouldNormalizeCharacters - v7 + 32 * v7;
  v9 = [(NSLocale *)self->_localeForNonwordTokens hash];
  v10 = self->_tokenizeNewlines - (v9 - v8 + 32 * v8) + 32 * (v9 - v8 + 32 * v8);
  v11 = self->_idVectorLength - v10 + 32 * v10;
  v12 = self->_extraIdOptions - v11 + 32 * v11;
  v13 = self->_vectorizerStrategy - v12 + 32 * v12;
  return self->_vectorNormalization - v13 + 32 * v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLHashingVectorizer *)self isEqualToHashingVectorizer:v5];
  }

  return v6;
}

- (BOOL)isEqualToHashingVectorizer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_buckets != v4[2] || self->_vectorizerStrategy != *(v4 + 11))
  {
    goto LABEL_8;
  }

  if (self->_characterNGramRange.location != *(v4 + 2) || self->_characterNGramRange.length != *(v4 + 3))
  {
    goto LABEL_8;
  }

  v7 = 0;
  if (self->_tokenNGramRange.location == *(v4 + 4) && self->_tokenNGramRange.length == *(v4 + 5))
  {
    if (self->_shouldNormalizeTokens == *(v4 + 48) && self->_shouldNormalizeCharacters == *(v4 + 49))
    {
      v9 = self->_localeForNonwordTokens;
      v10 = v9;
      if (v9 == v5[7])
      {

LABEL_18:
        if (self->_tokenizeNewlines == *(v5 + 64) && self->_idVectorLength == v5[9] && self->_extraIdOptions == v5[10] && self->_vectorizerStrategy == v5[11])
        {
          v7 = self->_vectorNormalization == v5[12];
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v11 = [(NSLocale *)v9 isEqual:?];

      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_8:
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (PMLHashingVectorizer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"BUCKET_SIZE"];
  v50 = [v6 intValue];

  v7 = [v5 objectForKeyedSubscript:@"NGRAM_SIZE"];
  v8 = [v7 intValue];

  v9 = [v5 objectForKeyedSubscript:@"CHARACTER_NGRAM_LOCATION"];
  v10 = v9;
  if (!v9)
  {
    v9 = &unk_2873581C0;
  }

  v49 = [v9 intValue];

  v11 = [v5 objectForKeyedSubscript:@"CHARACTER_NGRAM_LENGTH"];
  v12 = v11;
  if (!v11)
  {
    v11 = &unk_2873581C0;
  }

  v48 = [v11 intValue];

  v13 = [v5 objectForKeyedSubscript:@"TOKEN_NGRAM_LOCATION"];
  v14 = v13;
  if (!v13)
  {
    v13 = &unk_2873581D8;
  }

  v47 = [v13 intValue];

  v15 = [v5 objectForKeyedSubscript:@"TOKEN_NGRAM_LENGTH"];
  v16 = v15;
  if (v15)
  {
    v46 = [v15 intValue];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    v46 = [v17 intValue];
  }

  v18 = [v5 objectForKeyedSubscript:@"TOKEN_NORMALIZATION"];
  v19 = v18;
  if (!v18)
  {
    v18 = MEMORY[0x277CBEC38];
  }

  v20 = [v18 BOOLValue];

  v21 = [v5 objectForKeyedSubscript:@"CHARACTER_NORMALIZATION"];
  v22 = v21;
  v23 = MEMORY[0x277CBEC28];
  if (!v21)
  {
    v21 = MEMORY[0x277CBEC28];
  }

  v24 = [v21 BOOLValue];

  v25 = [v5 objectForKeyedSubscript:@"SHOULD_TOKENIZE_NEWLINES"];
  v26 = v25;
  if (!v25)
  {
    v25 = v23;
  }

  v27 = [v25 BOOLValue];

  v28 = [v5 objectForKeyedSubscript:@"ID_VECTOR_LENGTH"];
  v29 = v28;
  if (!v28)
  {
    v28 = &unk_2873581C0;
  }

  v30 = [v28 intValue];

  v31 = [v5 objectForKeyedSubscript:@"EXTRA_ID_OPTIONS"];
  v32 = v31;
  if (!v31)
  {
    v31 = &unk_2873581C0;
  }

  v33 = [v31 intValue];

  v34 = [v5 objectForKeyedSubscript:@"VECTORIZER_STRATEGY"];
  v35 = v34;
  if (!v34)
  {
    v34 = &unk_2873581F0;
  }

  v36 = [v34 intValue];

  v37 = [v5 objectForKeyedSubscript:@"VECTOR_NORMALIZATION"];
  v38 = v37;
  if (!v37)
  {
    v37 = &unk_287358208;
  }

  v39 = [v37 intValue];

  v40 = [v5 objectForKeyedSubscript:@"NON_WORD_TOKENS_LOCALE"];
  if (v40)
  {
    v41 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v40];
  }

  else
  {
    v41 = 0;
  }

  LOBYTE(v45) = v27;
  LOBYTE(v44) = v24;
  v42 = [(PMLHashingVectorizer *)self initWithBucketSize:v50 characterNGramRange:v49 tokenNGramRange:v48 shouldNormalizeTokens:v47 shouldNormalizeCharacters:v46 localeForNonwordTokens:v20 tokenizeNewlines:v44 idVectorLength:v41 extraIdOptions:v45 vectorizerStrategy:v30 vectorNormalization:v33 vocab:v36, v39, 0];

  return v42;
}

- (id)toPlistWithChunks:(id)a3
{
  v24[13] = *MEMORY[0x277D85DE8];
  v23[0] = @"BUCKET_SIZE";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_buckets];
  v24[0] = v22;
  v23[1] = @"NGRAM_SIZE";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tokenNGramRange.length];
  v24[1] = v21;
  v23[2] = @"CHARACTER_NGRAM_LOCATION";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_characterNGramRange.location];
  v24[2] = v20;
  v23[3] = @"CHARACTER_NGRAM_LENGTH";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_characterNGramRange.length];
  v24[3] = v19;
  v23[4] = @"CHARACTER_NORMALIZATION";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldNormalizeCharacters];
  v24[4] = v18;
  v23[5] = @"TOKEN_NGRAM_LOCATION";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tokenNGramRange.location];
  v24[5] = v17;
  v23[6] = @"TOKEN_NGRAM_LENGTH";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tokenNGramRange.length];
  v24[6] = v4;
  v23[7] = @"TOKEN_NORMALIZATION";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldNormalizeTokens];
  v24[7] = v5;
  v23[8] = @"SHOULD_TOKENIZE_NEWLINES";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_tokenizeNewlines];
  v24[8] = v6;
  v23[9] = @"ID_VECTOR_LENGTH";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_idVectorLength];
  v24[9] = v7;
  v23[10] = @"EXTRA_ID_OPTIONS";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_extraIdOptions];
  v24[10] = v8;
  v23[11] = @"VECTORIZER_STRATEGY";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_vectorizerStrategy];
  v24[11] = v9;
  v23[12] = @"VECTOR_NORMALIZATION";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_vectorNormalization];
  v24[12] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:13];
  v12 = [v11 mutableCopy];

  localeForNonwordTokens = self->_localeForNonwordTokens;
  if (localeForNonwordTokens)
  {
    v14 = [(NSLocale *)localeForNonwordTokens localeIdentifier];
    [v12 setObject:v14 forKeyedSubscript:@"NON_WORD_TOKENS_LOCALE"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)transformWithWordPiece:(id)a3
{
  v4 = a3;
  v5 = [[PMLWordPieceTokenizer alloc] initWithVocab:self->_vocab];
  v6 = [(PMLWordPieceTokenizer *)v5 tokenize:v4 withLength:self->_idVectorLength];

  if (self->_startId)
  {
    v7 = [(PMLWordPieceTokenizer *)v5 startId];
  }

  else
  {
    v7 = 0;
  }

  if (self->_endId)
  {
    v8 = [(PMLWordPieceTokenizer *)v5 endId];
  }

  else
  {
    v8 = 0;
  }

  if (self->_paddingId)
  {
    v9 = [(PMLWordPieceTokenizer *)v5 padId];
  }

  else
  {
    v9 = 0;
  }

  [v6 addStartId:v7 endId:v8 paddingId:v9 withMaxVectorLength:self->_idVectorLength];

  return v6;
}

- (id)transformBatch:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PMLHashingVectorizer *)self transform:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)transformSequentialNGrams:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0uLL;
  vectorizerStrategy = self->_vectorizerStrategy;
  if (vectorizerStrategy == 3)
  {
    hashingVectorizeCharacters(v4, &v11, self->_buckets, self->_characterNGramRange.location, LODWORD(self->_characterNGramRange.length) + LODWORD(self->_characterNGramRange.location), self->_shouldNormalizeTokens, 0, 1);
  }

  else if (vectorizerStrategy == 2)
  {
    hashingVectorizeTokens(v4, &v11, self->_buckets, self->_tokenNGramRange.location, LODWORD(self->_tokenNGramRange.length) + LODWORD(self->_tokenNGramRange.location), self->_localeForNonwordTokens, self->_tokenizeNewlines, self->_shouldNormalizeTokens, 0, 1);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PMLHashingVectorizer_transformSequentialNGrams___block_invoke;
  v9[3] = &__block_descriptor_56_e13_v24__0_q8_f16l;
  v9[4] = v11;
  v10 = v11;
  v7 = [PMLSparseVector sparseVectorWithLength:v11 numberOfNonZeroValues:v11 block:v9];
  free(*(&v11 + 1));
  [v7 addStartId:self->_startId endId:self->_endId paddingId:self->_paddingId withMaxVectorLength:self->_idVectorLength];

  return v7;
}

float __50__PMLHashingVectorizer_transformSequentialNGrams___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 48);
    do
    {
      *(a2 + 8 * v4) = v4;
      v6 = *v5;
      v5 += 2;
      result = v6;
      *(a3 + 4 * v4++) = v6;
    }

    while (v3 != v4);
  }

  return result;
}

- (id)transformWithFrequency:(id)a3 shouldDecrement:(BOOL)a4
{
  v6 = a3;
  v16 = 0uLL;
  hashingVectorizeTokens(v6, &v16, self->_buckets, self->_tokenNGramRange.location, LODWORD(self->_tokenNGramRange.length) + LODWORD(self->_tokenNGramRange.location), self->_localeForNonwordTokens, self->_tokenizeNewlines, self->_shouldNormalizeTokens, a4, 0);
  hashingVectorizeCharacters(v6, &v16, self->_buckets, self->_characterNGramRange.location, LODWORD(self->_characterNGramRange.length) + LODWORD(self->_characterNGramRange.location), self->_shouldNormalizeCharacters, a4, 0);
  qsort(*(&v16 + 1), v16, 8uLL, compareHashAndCounts);
  v7 = v16;
  if (v16)
  {
    v8 = 0;
    v9 = (*(&v16 + 1) + 4);
    do
    {
      v10 = *v9;
      v9 += 2;
      if (v10)
      {
        ++v8;
      }

      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  buckets = self->_buckets;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__PMLHashingVectorizer_transformWithFrequency_shouldDecrement___block_invoke;
  v14[3] = &__block_descriptor_48_e13_v24__0_q8_f16l;
  v15 = v16;
  v12 = [PMLSparseVector sparseVectorWithLength:buckets numberOfNonZeroValues:v8 block:v14];
  free(*(&v16 + 1));
  [v12 scaleWithVectorNormalization:self->_vectorNormalization];

  return v12;
}

uint64_t __63__PMLHashingVectorizer_transformWithFrequency_shouldDecrement___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = 0;
    v5 = (*(result + 40) + 4);
    do
    {
      v6 = *v5;
      if (*v5)
      {
        *(a2 + 8 * v4) = *(v5 - 1);
        *(a3 + 4 * v4++) = v6;
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

- (id)transform:(id)a3
{
  v4 = a3;
  vectorizerStrategy = self->_vectorizerStrategy;
  if (vectorizerStrategy > 3)
  {
    switch(vectorizerStrategy)
    {
      case 4:
        v10 = self;
        v11 = v4;
        v12 = 1;
        break;
      case 5:
        v10 = self;
        v11 = v4;
        v12 = 0;
        break;
      case 6:
        v9 = [(PMLHashingVectorizer *)self transformWithWordPiece:v4];
LABEL_19:
        v13 = v9;
        goto LABEL_20;
      default:
        goto LABEL_12;
    }

    v9 = [(PMLHashingVectorizer *)v10 transformBagOfIds:v11 shouldDecrement:v12];
    goto LABEL_19;
  }

  if ((vectorizerStrategy - 2) < 2)
  {
    v9 = [(PMLHashingVectorizer *)self transformSequentialNGrams:v4];
    goto LABEL_19;
  }

  if (!vectorizerStrategy)
  {
    v6 = self;
    v7 = v4;
    v8 = 1;
    goto LABEL_16;
  }

  if (vectorizerStrategy == 1)
  {
    v6 = self;
    v7 = v4;
    v8 = 0;
LABEL_16:
    v9 = [(PMLHashingVectorizer *)v6 transformWithFrequency:v7 shouldDecrement:v8];
    goto LABEL_19;
  }

LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v15 = 0;
    _os_log_fault_impl(&dword_260D68000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PMLHashingVectorizer: unknown vectorizer strategy", v15, 2u);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (PMLHashingVectorizer)initWithBucketSize:(int)a3 characterNGramRange:(_NSRange)a4 tokenNGramRange:(_NSRange)a5 shouldNormalizeTokens:(BOOL)a6 shouldNormalizeCharacters:(BOOL)a7 localeForNonwordTokens:(id)a8 tokenizeNewlines:(BOOL)a9 idVectorLength:(unint64_t)a10 extraIdOptions:(unint64_t)a11 vectorizerStrategy:(unint64_t)a12 vectorNormalization:(int64_t)a13 vocab:(id)a14
{
  length = a5.length;
  location = a5.location;
  v34 = a4.length;
  v35 = a4.location;
  v18 = a8;
  v19 = a14;
  if (a3 <= 0)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"buckets > 0"}];
  }

  if (a11 >= 8)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"extraIdOptions < PMLHashingVectorizerIdOptionLimit"}];
  }

  if (a12 >= 7)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"vectorizerStrategy < PMLHashingVectorizerStrategyLimit"}];
  }

  if ((a13 - 5) <= 0xFFFFFFFFFFFFFFF9)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"vectorNormalization >= PMLVectorNormalizationNone && vectorNormalization < PMLVectorNormalizationLimit"}];
  }

  if ((!v35 || !v34) && (!location || !length))
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"(characterNGramRange.location && characterNGramRange.length) || (tokenNGramRange.location && tokenNGramRange.length)"}];
  }

  if (a12 == 6 && !v19)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"vectorizerStrategy != PMLHashingVectorizerStrategyWordPiece || vocab != nil"}];
  }

  v36.receiver = self;
  v36.super_class = PMLHashingVectorizer;
  v20 = [(PMLHashingVectorizer *)&v36 init];
  v21 = v20;
  if (v20)
  {
    v20->_buckets = a3;
    v20->_characterNGramRange.location = v35;
    v20->_characterNGramRange.length = v34;
    v20->_tokenNGramRange.location = location;
    v20->_tokenNGramRange.length = length;
    v20->_shouldNormalizeTokens = a6;
    v20->_shouldNormalizeCharacters = a7;
    objc_storeStrong(&v20->_localeForNonwordTokens, a8);
    v21->_tokenizeNewlines = a9;
    if (a10)
    {
      v22 = a10;
    }

    else
    {
      v22 = a3;
    }

    v21->_idVectorLength = v22;
    v21->_extraIdOptions = a11;
    v21->_vectorizerStrategy = a12;
    v21->_vectorNormalization = a13;
    v21->_paddingId = ((a11 << 63) >> 63) & a3;
    v23 = vadd_s32(vdup_n_s32(a3), 0x200000001);
    v24.i64[0] = v23.i32[0];
    v24.i64[1] = v23.i32[1];
    *&v21->_endId = vbicq_s8(v24, vceqzq_s64(vandq_s8(vdupq_n_s64(a11), xmmword_260DB2870)));
    objc_storeStrong(&v21->_vocab, a14);
  }

  return v21;
}

@end