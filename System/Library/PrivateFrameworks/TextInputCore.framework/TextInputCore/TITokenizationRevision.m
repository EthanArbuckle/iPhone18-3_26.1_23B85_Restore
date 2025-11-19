@interface TITokenizationRevision
- (TITokenizationRevision)initWithTokenIterator:(_TIRevisionHistoryTokenIterator)a3;
- (_NSRange)originalSelectedTokenRange;
- (_TIRevisionHistoryTokenIterator)originalIterator;
@end

@implementation TITokenizationRevision

- (_TIRevisionHistoryTokenIterator)originalIterator
{
  documentLocation = self->_originalIterator.documentLocation;
  tokenIndex = self->_originalIterator.tokenIndex;
  result.documentLocation = documentLocation;
  result.tokenIndex = tokenIndex;
  return result;
}

- (_NSRange)originalSelectedTokenRange
{
  length = self->_originalSelectedTokenRange.length;
  location = self->_originalSelectedTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (TITokenizationRevision)initWithTokenIterator:(_TIRevisionHistoryTokenIterator)a3
{
  documentLocation = a3.documentLocation;
  tokenIndex = a3.tokenIndex;
  v11.receiver = self;
  v11.super_class = TITokenizationRevision;
  v5 = [(TITokenizationRevision *)&v11 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 40) = xmmword_22CC889D0;
    *(v5 + 7) = tokenIndex;
    *(v5 + 8) = documentLocation;
    *(v5 + 1) = documentLocation;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    *(v5 + 1) = vnegq_f64(v7);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    branchTokens = v6->_branchTokens;
    v6->_branchTokens = v8;
  }

  return v6;
}

@end