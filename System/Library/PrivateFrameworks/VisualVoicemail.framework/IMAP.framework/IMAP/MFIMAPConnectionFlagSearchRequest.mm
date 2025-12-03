@interface MFIMAPConnectionFlagSearchRequest
- (MFIMAPConnectionFlagSearchRequest)initWithMask:(unint64_t)mask searchTerms:(id)terms positiveMatch:(BOOL)match;
- (void)dealloc;
@end

@implementation MFIMAPConnectionFlagSearchRequest

- (MFIMAPConnectionFlagSearchRequest)initWithMask:(unint64_t)mask searchTerms:(id)terms positiveMatch:(BOOL)match
{
  termsCopy = terms;
  v15.receiver = self;
  v15.super_class = MFIMAPConnectionFlagSearchRequest;
  v9 = [(MFIMAPConnectionFlagSearchRequest *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_mask = mask;
    v9->_isPositiveMatch = match;
    v11 = [termsCopy copy];
    searchTerms = v10->_searchTerms;
    v10->_searchTerms = v11;

    v13 = v10;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPConnectionFlagSearchRequest;
  [(MFIMAPConnectionFlagSearchRequest *)&v2 dealloc];
}

@end