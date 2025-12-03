@interface TokenizerOutputObjc
- (TokenizerOutputObjc)initWithTokenIds:(id)ids tokenRanges:(id)ranges wordIndexes:(id)indexes;
@end

@implementation TokenizerOutputObjc

- (TokenizerOutputObjc)initWithTokenIds:(id)ids tokenRanges:(id)ranges wordIndexes:(id)indexes
{
  idsCopy = ids;
  rangesCopy = ranges;
  indexesCopy = indexes;
  v15.receiver = self;
  v15.super_class = TokenizerOutputObjc;
  v12 = [(TokenizerOutputObjc *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tokenIds, ids);
    objc_storeStrong(&v13->_tokenRanges, ranges);
    objc_storeStrong(&v13->_wordIndexes, indexes);
  }

  return v13;
}

@end