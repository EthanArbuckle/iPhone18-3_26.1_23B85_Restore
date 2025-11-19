@interface SPSentencePieceModel
- (SPSentencePieceModel)initWithModelPath:(id)a3;
- (SPSentencePieceModel)initWithModelPath:(id)a3 error:(id *)a4;
- (SPSentencePieceModel)initWithModelURL:(id)a3 error:(id *)a4;
- (id)decodeAsTextFromIDs:(id)a3 error:(id *)a4;
- (id)decodeAsTextFromTokens:(id)a3 error:(id *)a4;
- (id)decodeFromIDs:(id)a3;
- (id)decodeFromIDs:(id)a3 error:(id *)a4;
- (id)decodeFromTokens:(id)a3;
- (id)decodeFromTokens:(id)a3 error:(id *)a4;
- (id)encodeAsIDsFrom:(id)a3;
- (id)encodeAsIDsFrom:(id)a3 error:(id *)a4;
- (id)encodeAsIDsFromText:(id)a3 error:(id *)a4;
- (id)encodeAsTokensFrom:(id)a3;
- (id)encodeAsTokensFrom:(id)a3 error:(id *)a4;
- (id)encodeAsTokensFromText:(id)a3 error:(id *)a4;
- (id)normalize:(id)a3 error:(id *)a4;
- (id)pieceFrom:(int64_t)a3;
- (id)pieces;
- (void)dealloc;
- (void)enumerateEntriesForPredictiveSearch:(id)a3 shouldMatchAfterDecoding:(BOOL)a4 usingBlock:(id)a5;
- (void)enumerateEntriesWithCommonPrefix:(id)a3 shouldMatchAfterDecoding:(BOOL)a4 usingBlock:(id)a5;
@end

@implementation SPSentencePieceModel

- (SPSentencePieceModel)initWithModelURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SPSentencePieceModel;
  v7 = [(SPSentencePieceModel *)&v12 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v11 = 0;
  processor = SPSentencePieceProcessorCreate(v6, &v11);
  v7->_processor = processor;
  if (a4)
  {
    *a4 = v11;
    processor = v7->_processor;
  }

  if (!processor)
  {
    v9 = 0;
  }

  else
  {
LABEL_5:
    v9 = v7;
  }

  return v9;
}

- (SPSentencePieceModel)initWithModelPath:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEBC0] URLWithString:a3];
  v7 = [(SPSentencePieceModel *)self initWithModelURL:v6 error:a4];

  return v7;
}

- (SPSentencePieceModel)initWithModelPath:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:a3];
  v5 = [(SPSentencePieceModel *)self initWithModelURL:v4 error:0];

  return v5;
}

- (void)dealloc
{
  processor = self->_processor;
  if (processor)
  {
    CFRelease(processor);
  }

  v4.receiver = self;
  v4.super_class = SPSentencePieceModel;
  [(SPSentencePieceModel *)&v4 dealloc];
}

- (id)encodeAsIDsFromText:(id)a3 error:(id *)a4
{
  v7 = 0;
  EncodedIDs = SPSentencePieceProcessorCreateEncodedIDs(self->_processor, a3, &v7);
  if (a4)
  {
    *a4 = v7;
  }

  return EncodedIDs;
}

- (id)encodeAsIDsFrom:(id)a3 error:(id *)a4
{
  v4 = [(SPSentencePieceModel *)self encodeAsIDsFromText:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

- (id)encodeAsIDsFrom:(id)a3
{
  v3 = [(SPSentencePieceModel *)self encodeAsIDsFromText:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)encodeAsTokensFromText:(id)a3 error:(id *)a4
{
  v7 = 0;
  EncodedPieces = SPSentencePieceProcessorCreateEncodedPieces(self->_processor, a3, &v7);
  if (a4)
  {
    *a4 = v7;
  }

  return EncodedPieces;
}

- (id)encodeAsTokensFrom:(id)a3 error:(id *)a4
{
  v4 = [(SPSentencePieceModel *)self encodeAsTokensFromText:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

- (id)encodeAsTokensFrom:(id)a3
{
  v3 = [(SPSentencePieceModel *)self encodeAsTokensFromText:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)decodeAsTextFromTokens:(id)a3 error:(id *)a4
{
  v7 = 0;
  DecodedStringFromPieces = SPSentencePieceProcessorCreateDecodedStringFromPieces(self->_processor, a3, &v7);
  if (a4)
  {
    *a4 = v7;
  }

  return DecodedStringFromPieces;
}

- (id)decodeFromTokens:(id)a3 error:(id *)a4
{
  v4 = [(SPSentencePieceModel *)self decodeAsTextFromTokens:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_287705580;
  }

  v7 = v6;

  return v6;
}

- (id)decodeFromTokens:(id)a3
{
  v3 = [(SPSentencePieceModel *)self decodeAsTextFromTokens:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_287705580;
  }

  v6 = v5;

  return v5;
}

- (id)decodeAsTextFromIDs:(id)a3 error:(id *)a4
{
  v7 = 0;
  DecodedStringFromIDs = SPSentencePieceProcessorCreateDecodedStringFromIDs(self->_processor, a3, &v7);
  if (a4)
  {
    *a4 = v7;
  }

  return DecodedStringFromIDs;
}

- (id)decodeFromIDs:(id)a3 error:(id *)a4
{
  v4 = [(SPSentencePieceModel *)self decodeAsTextFromIDs:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_287705580;
  }

  v7 = v6;

  return v6;
}

- (id)decodeFromIDs:(id)a3
{
  v3 = [(SPSentencePieceModel *)self decodeAsTextFromIDs:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_287705580;
  }

  v6 = v5;

  return v5;
}

- (id)normalize:(id)a3 error:(id *)a4
{
  v7 = 0;
  NormalizedString = SPSentencePieceProcessorCreateNormalizedString(self->_processor, a3, &v7);
  if (a4)
  {
    *a4 = v7;
  }

  return NormalizedString;
}

- (id)pieces
{
  Pieces = SPSentencePieceProcessorCreatePieces(self->_processor);

  return Pieces;
}

- (id)pieceFrom:(int64_t)a3
{
  PieceFromId = SPSentencePieceProcessorCreatePieceFromId(self->_processor);

  return PieceFromId;
}

- (void)enumerateEntriesWithCommonPrefix:(id)a3 shouldMatchAfterDecoding:(BOOL)a4 usingBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  processor = self->_processor;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__SPSentencePieceModel_enumerateEntriesWithCommonPrefix_shouldMatchAfterDecoding_usingBlock___block_invoke;
  v11[3] = &unk_279B9AD58;
  v12 = v8;
  v10 = v8;
  SPSentencePieceProcessorEnumerateEntriesWithCommonPrefix(processor, a3, v5, v11);
}

- (void)enumerateEntriesForPredictiveSearch:(id)a3 shouldMatchAfterDecoding:(BOOL)a4 usingBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  processor = self->_processor;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__SPSentencePieceModel_enumerateEntriesForPredictiveSearch_shouldMatchAfterDecoding_usingBlock___block_invoke;
  v11[3] = &unk_279B9AD58;
  v12 = v8;
  v10 = v8;
  SPSentencePieceProcessorEnumerateEntriesForPredictiveSearch(processor, a3, v5, v11);
}

@end