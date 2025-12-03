@interface SPSentencePieceModel
- (SPSentencePieceModel)initWithModelPath:(id)path;
- (SPSentencePieceModel)initWithModelPath:(id)path error:(id *)error;
- (SPSentencePieceModel)initWithModelURL:(id)l error:(id *)error;
- (id)decodeAsTextFromIDs:(id)ds error:(id *)error;
- (id)decodeAsTextFromTokens:(id)tokens error:(id *)error;
- (id)decodeFromIDs:(id)ds;
- (id)decodeFromIDs:(id)ds error:(id *)error;
- (id)decodeFromTokens:(id)tokens;
- (id)decodeFromTokens:(id)tokens error:(id *)error;
- (id)encodeAsIDsFrom:(id)from;
- (id)encodeAsIDsFrom:(id)from error:(id *)error;
- (id)encodeAsIDsFromText:(id)text error:(id *)error;
- (id)encodeAsTokensFrom:(id)from;
- (id)encodeAsTokensFrom:(id)from error:(id *)error;
- (id)encodeAsTokensFromText:(id)text error:(id *)error;
- (id)normalize:(id)normalize error:(id *)error;
- (id)pieceFrom:(int64_t)from;
- (id)pieces;
- (void)dealloc;
- (void)enumerateEntriesForPredictiveSearch:(id)search shouldMatchAfterDecoding:(BOOL)decoding usingBlock:(id)block;
- (void)enumerateEntriesWithCommonPrefix:(id)prefix shouldMatchAfterDecoding:(BOOL)decoding usingBlock:(id)block;
@end

@implementation SPSentencePieceModel

- (SPSentencePieceModel)initWithModelURL:(id)l error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = SPSentencePieceModel;
  v7 = [(SPSentencePieceModel *)&v12 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v11 = 0;
  processor = SPSentencePieceProcessorCreate(lCopy, &v11);
  v7->_processor = processor;
  if (error)
  {
    *error = v11;
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

- (SPSentencePieceModel)initWithModelPath:(id)path error:(id *)error
{
  v6 = [MEMORY[0x277CBEBC0] URLWithString:path];
  v7 = [(SPSentencePieceModel *)self initWithModelURL:v6 error:error];

  return v7;
}

- (SPSentencePieceModel)initWithModelPath:(id)path
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:path];
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

- (id)encodeAsIDsFromText:(id)text error:(id *)error
{
  v7 = 0;
  EncodedIDs = SPSentencePieceProcessorCreateEncodedIDs(self->_processor, text, &v7);
  if (error)
  {
    *error = v7;
  }

  return EncodedIDs;
}

- (id)encodeAsIDsFrom:(id)from error:(id *)error
{
  v4 = [(SPSentencePieceModel *)self encodeAsIDsFromText:from error:error];
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

- (id)encodeAsIDsFrom:(id)from
{
  v3 = [(SPSentencePieceModel *)self encodeAsIDsFromText:from error:0];
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

- (id)encodeAsTokensFromText:(id)text error:(id *)error
{
  v7 = 0;
  EncodedPieces = SPSentencePieceProcessorCreateEncodedPieces(self->_processor, text, &v7);
  if (error)
  {
    *error = v7;
  }

  return EncodedPieces;
}

- (id)encodeAsTokensFrom:(id)from error:(id *)error
{
  v4 = [(SPSentencePieceModel *)self encodeAsTokensFromText:from error:error];
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

- (id)encodeAsTokensFrom:(id)from
{
  v3 = [(SPSentencePieceModel *)self encodeAsTokensFromText:from error:0];
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

- (id)decodeAsTextFromTokens:(id)tokens error:(id *)error
{
  v7 = 0;
  DecodedStringFromPieces = SPSentencePieceProcessorCreateDecodedStringFromPieces(self->_processor, tokens, &v7);
  if (error)
  {
    *error = v7;
  }

  return DecodedStringFromPieces;
}

- (id)decodeFromTokens:(id)tokens error:(id *)error
{
  v4 = [(SPSentencePieceModel *)self decodeAsTextFromTokens:tokens error:error];
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

- (id)decodeFromTokens:(id)tokens
{
  v3 = [(SPSentencePieceModel *)self decodeAsTextFromTokens:tokens error:0];
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

- (id)decodeAsTextFromIDs:(id)ds error:(id *)error
{
  v7 = 0;
  DecodedStringFromIDs = SPSentencePieceProcessorCreateDecodedStringFromIDs(self->_processor, ds, &v7);
  if (error)
  {
    *error = v7;
  }

  return DecodedStringFromIDs;
}

- (id)decodeFromIDs:(id)ds error:(id *)error
{
  v4 = [(SPSentencePieceModel *)self decodeAsTextFromIDs:ds error:error];
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

- (id)decodeFromIDs:(id)ds
{
  v3 = [(SPSentencePieceModel *)self decodeAsTextFromIDs:ds error:0];
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

- (id)normalize:(id)normalize error:(id *)error
{
  v7 = 0;
  NormalizedString = SPSentencePieceProcessorCreateNormalizedString(self->_processor, normalize, &v7);
  if (error)
  {
    *error = v7;
  }

  return NormalizedString;
}

- (id)pieces
{
  Pieces = SPSentencePieceProcessorCreatePieces(self->_processor);

  return Pieces;
}

- (id)pieceFrom:(int64_t)from
{
  PieceFromId = SPSentencePieceProcessorCreatePieceFromId(self->_processor);

  return PieceFromId;
}

- (void)enumerateEntriesWithCommonPrefix:(id)prefix shouldMatchAfterDecoding:(BOOL)decoding usingBlock:(id)block
{
  decodingCopy = decoding;
  blockCopy = block;
  processor = self->_processor;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__SPSentencePieceModel_enumerateEntriesWithCommonPrefix_shouldMatchAfterDecoding_usingBlock___block_invoke;
  v11[3] = &unk_279B9AD58;
  v12 = blockCopy;
  v10 = blockCopy;
  SPSentencePieceProcessorEnumerateEntriesWithCommonPrefix(processor, prefix, decodingCopy, v11);
}

- (void)enumerateEntriesForPredictiveSearch:(id)search shouldMatchAfterDecoding:(BOOL)decoding usingBlock:(id)block
{
  decodingCopy = decoding;
  blockCopy = block;
  processor = self->_processor;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__SPSentencePieceModel_enumerateEntriesForPredictiveSearch_shouldMatchAfterDecoding_usingBlock___block_invoke;
  v11[3] = &unk_279B9AD58;
  v12 = blockCopy;
  v10 = blockCopy;
  SPSentencePieceProcessorEnumerateEntriesForPredictiveSearch(processor, search, decodingCopy, v11);
}

@end