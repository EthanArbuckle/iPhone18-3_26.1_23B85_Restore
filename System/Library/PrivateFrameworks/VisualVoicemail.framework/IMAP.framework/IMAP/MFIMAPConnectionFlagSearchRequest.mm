@interface MFIMAPConnectionFlagSearchRequest
- (MFIMAPConnectionFlagSearchRequest)initWithMask:(unint64_t)a3 searchTerms:(id)a4 positiveMatch:(BOOL)a5;
- (void)dealloc;
@end

@implementation MFIMAPConnectionFlagSearchRequest

- (MFIMAPConnectionFlagSearchRequest)initWithMask:(unint64_t)a3 searchTerms:(id)a4 positiveMatch:(BOOL)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MFIMAPConnectionFlagSearchRequest;
  v9 = [(MFIMAPConnectionFlagSearchRequest *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_mask = a3;
    v9->_isPositiveMatch = a5;
    v11 = [v8 copy];
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