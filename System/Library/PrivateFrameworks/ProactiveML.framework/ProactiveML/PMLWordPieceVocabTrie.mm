@interface PMLWordPieceVocabTrie
- (unsigned)payloadForString:(id)string;
@end

@implementation PMLWordPieceVocabTrie

- (unsigned)payloadForString:(id)string
{
  v4.receiver = self;
  v4.super_class = PMLWordPieceVocabTrie;
  return [(_PASCFBurstTrie *)&v4 payloadForString:string]- 1;
}

@end