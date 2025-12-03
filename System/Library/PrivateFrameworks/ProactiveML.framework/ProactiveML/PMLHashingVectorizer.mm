@interface PMLHashingVectorizer
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHashingVectorizer:(id)vectorizer;
- (PMLHashingVectorizer)initWithBucketSize:(int)size characterNGramRange:(_NSRange)range tokenNGramRange:(_NSRange)gramRange shouldNormalizeTokens:(BOOL)tokens shouldNormalizeCharacters:(BOOL)characters localeForNonwordTokens:(id)nonwordTokens tokenizeNewlines:(BOOL)newlines idVectorLength:(unint64_t)self0 extraIdOptions:(unint64_t)self1 vectorizerStrategy:(unint64_t)self2 vectorNormalization:(int64_t)self3 vocab:(id)self4;
- (PMLHashingVectorizer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
- (id)transformBatch:(id)batch;
- (id)transformSequentialNGrams:(id)grams;
- (id)transformWithFrequency:(id)frequency shouldDecrement:(BOOL)decrement;
- (id)transformWithWordPiece:(id)piece;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLHashingVectorizer *)self isEqualToHashingVectorizer:v5];
  }

  return v6;
}

- (BOOL)isEqualToHashingVectorizer:(id)vectorizer
{
  vectorizerCopy = vectorizer;
  v5 = vectorizerCopy;
  if (!vectorizerCopy || self->_buckets != vectorizerCopy[2] || self->_vectorizerStrategy != *(vectorizerCopy + 11))
  {
    goto LABEL_8;
  }

  if (self->_characterNGramRange.location != *(vectorizerCopy + 2) || self->_characterNGramRange.length != *(vectorizerCopy + 3))
  {
    goto LABEL_8;
  }

  v7 = 0;
  if (self->_tokenNGramRange.location == *(vectorizerCopy + 4) && self->_tokenNGramRange.length == *(vectorizerCopy + 5))
  {
    if (self->_shouldNormalizeTokens == *(vectorizerCopy + 48) && self->_shouldNormalizeCharacters == *(vectorizerCopy + 49))
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

- (PMLHashingVectorizer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  v6 = [plistCopy objectForKeyedSubscript:@"BUCKET_SIZE"];
  intValue = [v6 intValue];

  v7 = [plistCopy objectForKeyedSubscript:@"NGRAM_SIZE"];
  intValue2 = [v7 intValue];

  v9 = [plistCopy objectForKeyedSubscript:@"CHARACTER_NGRAM_LOCATION"];
  v10 = v9;
  if (!v9)
  {
    v9 = &unk_2873581C0;
  }

  intValue3 = [v9 intValue];

  v11 = [plistCopy objectForKeyedSubscript:@"CHARACTER_NGRAM_LENGTH"];
  v12 = v11;
  if (!v11)
  {
    v11 = &unk_2873581C0;
  }

  intValue4 = [v11 intValue];

  v13 = [plistCopy objectForKeyedSubscript:@"TOKEN_NGRAM_LOCATION"];
  v14 = v13;
  if (!v13)
  {
    v13 = &unk_2873581D8;
  }

  intValue5 = [v13 intValue];

  v15 = [plistCopy objectForKeyedSubscript:@"TOKEN_NGRAM_LENGTH"];
  v16 = v15;
  if (v15)
  {
    intValue6 = [v15 intValue];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
    intValue6 = [v17 intValue];
  }

  v18 = [plistCopy objectForKeyedSubscript:@"TOKEN_NORMALIZATION"];
  v19 = v18;
  if (!v18)
  {
    v18 = MEMORY[0x277CBEC38];
  }

  bOOLValue = [v18 BOOLValue];

  v21 = [plistCopy objectForKeyedSubscript:@"CHARACTER_NORMALIZATION"];
  v22 = v21;
  v23 = MEMORY[0x277CBEC28];
  if (!v21)
  {
    v21 = MEMORY[0x277CBEC28];
  }

  bOOLValue2 = [v21 BOOLValue];

  v25 = [plistCopy objectForKeyedSubscript:@"SHOULD_TOKENIZE_NEWLINES"];
  v26 = v25;
  if (!v25)
  {
    v25 = v23;
  }

  bOOLValue3 = [v25 BOOLValue];

  v28 = [plistCopy objectForKeyedSubscript:@"ID_VECTOR_LENGTH"];
  v29 = v28;
  if (!v28)
  {
    v28 = &unk_2873581C0;
  }

  intValue7 = [v28 intValue];

  v31 = [plistCopy objectForKeyedSubscript:@"EXTRA_ID_OPTIONS"];
  v32 = v31;
  if (!v31)
  {
    v31 = &unk_2873581C0;
  }

  intValue8 = [v31 intValue];

  v34 = [plistCopy objectForKeyedSubscript:@"VECTORIZER_STRATEGY"];
  v35 = v34;
  if (!v34)
  {
    v34 = &unk_2873581F0;
  }

  intValue9 = [v34 intValue];

  v37 = [plistCopy objectForKeyedSubscript:@"VECTOR_NORMALIZATION"];
  v38 = v37;
  if (!v37)
  {
    v37 = &unk_287358208;
  }

  intValue10 = [v37 intValue];

  v40 = [plistCopy objectForKeyedSubscript:@"NON_WORD_TOKENS_LOCALE"];
  if (v40)
  {
    v41 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v40];
  }

  else
  {
    v41 = 0;
  }

  LOBYTE(v45) = bOOLValue3;
  LOBYTE(v44) = bOOLValue2;
  v42 = [(PMLHashingVectorizer *)self initWithBucketSize:intValue characterNGramRange:intValue3 tokenNGramRange:intValue4 shouldNormalizeTokens:intValue5 shouldNormalizeCharacters:intValue6 localeForNonwordTokens:bOOLValue tokenizeNewlines:v44 idVectorLength:v41 extraIdOptions:v45 vectorizerStrategy:intValue7 vectorNormalization:intValue8 vocab:intValue9, intValue10, 0];

  return v42;
}

- (id)toPlistWithChunks:(id)chunks
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
    localeIdentifier = [(NSLocale *)localeForNonwordTokens localeIdentifier];
    [v12 setObject:localeIdentifier forKeyedSubscript:@"NON_WORD_TOKENS_LOCALE"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)transformWithWordPiece:(id)piece
{
  pieceCopy = piece;
  v5 = [[PMLWordPieceTokenizer alloc] initWithVocab:self->_vocab];
  v6 = [(PMLWordPieceTokenizer *)v5 tokenize:pieceCopy withLength:self->_idVectorLength];

  if (self->_startId)
  {
    startId = [(PMLWordPieceTokenizer *)v5 startId];
  }

  else
  {
    startId = 0;
  }

  if (self->_endId)
  {
    endId = [(PMLWordPieceTokenizer *)v5 endId];
  }

  else
  {
    endId = 0;
  }

  if (self->_paddingId)
  {
    padId = [(PMLWordPieceTokenizer *)v5 padId];
  }

  else
  {
    padId = 0;
  }

  [v6 addStartId:startId endId:endId paddingId:padId withMaxVectorLength:self->_idVectorLength];

  return v6;
}

- (id)transformBatch:(id)batch
{
  v19 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = batchCopy;
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

- (id)transformSequentialNGrams:(id)grams
{
  gramsCopy = grams;
  v5 = gramsCopy;
  v11 = 0uLL;
  vectorizerStrategy = self->_vectorizerStrategy;
  if (vectorizerStrategy == 3)
  {
    hashingVectorizeCharacters(gramsCopy, &v11, self->_buckets, self->_characterNGramRange.location, LODWORD(self->_characterNGramRange.length) + LODWORD(self->_characterNGramRange.location), self->_shouldNormalizeTokens, 0, 1);
  }

  else if (vectorizerStrategy == 2)
  {
    hashingVectorizeTokens(gramsCopy, &v11, self->_buckets, self->_tokenNGramRange.location, LODWORD(self->_tokenNGramRange.length) + LODWORD(self->_tokenNGramRange.location), self->_localeForNonwordTokens, self->_tokenizeNewlines, self->_shouldNormalizeTokens, 0, 1);
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

- (id)transformWithFrequency:(id)frequency shouldDecrement:(BOOL)decrement
{
  frequencyCopy = frequency;
  v16 = 0uLL;
  hashingVectorizeTokens(frequencyCopy, &v16, self->_buckets, self->_tokenNGramRange.location, LODWORD(self->_tokenNGramRange.length) + LODWORD(self->_tokenNGramRange.location), self->_localeForNonwordTokens, self->_tokenizeNewlines, self->_shouldNormalizeTokens, decrement, 0);
  hashingVectorizeCharacters(frequencyCopy, &v16, self->_buckets, self->_characterNGramRange.location, LODWORD(self->_characterNGramRange.length) + LODWORD(self->_characterNGramRange.location), self->_shouldNormalizeCharacters, decrement, 0);
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

- (id)transform:(id)transform
{
  transformCopy = transform;
  vectorizerStrategy = self->_vectorizerStrategy;
  if (vectorizerStrategy > 3)
  {
    switch(vectorizerStrategy)
    {
      case 4:
        selfCopy2 = self;
        v11 = transformCopy;
        v12 = 1;
        break;
      case 5:
        selfCopy2 = self;
        v11 = transformCopy;
        v12 = 0;
        break;
      case 6:
        v9 = [(PMLHashingVectorizer *)self transformWithWordPiece:transformCopy];
LABEL_19:
        v13 = v9;
        goto LABEL_20;
      default:
        goto LABEL_12;
    }

    v9 = [(PMLHashingVectorizer *)selfCopy2 transformBagOfIds:v11 shouldDecrement:v12];
    goto LABEL_19;
  }

  if ((vectorizerStrategy - 2) < 2)
  {
    v9 = [(PMLHashingVectorizer *)self transformSequentialNGrams:transformCopy];
    goto LABEL_19;
  }

  if (!vectorizerStrategy)
  {
    selfCopy4 = self;
    v7 = transformCopy;
    v8 = 1;
    goto LABEL_16;
  }

  if (vectorizerStrategy == 1)
  {
    selfCopy4 = self;
    v7 = transformCopy;
    v8 = 0;
LABEL_16:
    v9 = [(PMLHashingVectorizer *)selfCopy4 transformWithFrequency:v7 shouldDecrement:v8];
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

- (PMLHashingVectorizer)initWithBucketSize:(int)size characterNGramRange:(_NSRange)range tokenNGramRange:(_NSRange)gramRange shouldNormalizeTokens:(BOOL)tokens shouldNormalizeCharacters:(BOOL)characters localeForNonwordTokens:(id)nonwordTokens tokenizeNewlines:(BOOL)newlines idVectorLength:(unint64_t)self0 extraIdOptions:(unint64_t)self1 vectorizerStrategy:(unint64_t)self2 vectorNormalization:(int64_t)self3 vocab:(id)self4
{
  length = gramRange.length;
  location = gramRange.location;
  v34 = range.length;
  v35 = range.location;
  nonwordTokensCopy = nonwordTokens;
  vocabCopy = vocab;
  if (size <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"buckets > 0"}];
  }

  if (options >= 8)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"extraIdOptions < PMLHashingVectorizerIdOptionLimit"}];
  }

  if (strategy >= 7)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"vectorizerStrategy < PMLHashingVectorizerStrategyLimit"}];
  }

  if ((normalization - 5) <= 0xFFFFFFFFFFFFFFF9)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"vectorNormalization >= PMLVectorNormalizationNone && vectorNormalization < PMLVectorNormalizationLimit"}];
  }

  if ((!v35 || !v34) && (!location || !length))
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"(characterNGramRange.location && characterNGramRange.length) || (tokenNGramRange.location && tokenNGramRange.length)"}];
  }

  if (strategy == 6 && !vocabCopy)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PMLHashingVectorizer.m" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"vectorizerStrategy != PMLHashingVectorizerStrategyWordPiece || vocab != nil"}];
  }

  v36.receiver = self;
  v36.super_class = PMLHashingVectorizer;
  v20 = [(PMLHashingVectorizer *)&v36 init];
  v21 = v20;
  if (v20)
  {
    v20->_buckets = size;
    v20->_characterNGramRange.location = v35;
    v20->_characterNGramRange.length = v34;
    v20->_tokenNGramRange.location = location;
    v20->_tokenNGramRange.length = length;
    v20->_shouldNormalizeTokens = tokens;
    v20->_shouldNormalizeCharacters = characters;
    objc_storeStrong(&v20->_localeForNonwordTokens, nonwordTokens);
    v21->_tokenizeNewlines = newlines;
    if (length)
    {
      sizeCopy = length;
    }

    else
    {
      sizeCopy = size;
    }

    v21->_idVectorLength = sizeCopy;
    v21->_extraIdOptions = options;
    v21->_vectorizerStrategy = strategy;
    v21->_vectorNormalization = normalization;
    v21->_paddingId = ((options << 63) >> 63) & size;
    v23 = vadd_s32(vdup_n_s32(size), 0x200000001);
    v24.i64[0] = v23.i32[0];
    v24.i64[1] = v23.i32[1];
    *&v21->_endId = vbicq_s8(v24, vceqzq_s64(vandq_s8(vdupq_n_s64(options), xmmword_260DB2870)));
    objc_storeStrong(&v21->_vocab, vocab);
  }

  return v21;
}

@end