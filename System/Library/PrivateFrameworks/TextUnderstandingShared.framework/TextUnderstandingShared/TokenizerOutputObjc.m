@interface TokenizerOutputObjc
- (TokenizerOutputObjc)initWithTokenIds:(id)a3 tokenRanges:(id)a4 wordIndexes:(id)a5;
@end

@implementation TokenizerOutputObjc

- (TokenizerOutputObjc)initWithTokenIds:(id)a3 tokenRanges:(id)a4 wordIndexes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TokenizerOutputObjc;
  v12 = [(TokenizerOutputObjc *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tokenIds, a3);
    objc_storeStrong(&v13->_tokenRanges, a4);
    objc_storeStrong(&v13->_wordIndexes, a5);
  }

  return v13;
}

@end