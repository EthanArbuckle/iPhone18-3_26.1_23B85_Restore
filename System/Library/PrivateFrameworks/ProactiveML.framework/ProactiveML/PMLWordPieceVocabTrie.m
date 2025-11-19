@interface PMLWordPieceVocabTrie
- (unsigned)payloadForString:(id)a3;
@end

@implementation PMLWordPieceVocabTrie

- (unsigned)payloadForString:(id)a3
{
  v4.receiver = self;
  v4.super_class = PMLWordPieceVocabTrie;
  return [(_PASCFBurstTrie *)&v4 payloadForString:a3]- 1;
}

@end