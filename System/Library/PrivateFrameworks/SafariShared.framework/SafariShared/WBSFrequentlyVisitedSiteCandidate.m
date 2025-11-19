@interface WBSFrequentlyVisitedSiteCandidate
- (WBSFrequentlyVisitedSiteCandidate)initWithURLString:(id)a3 title:(id)a4 score:(float)a5;
@end

@implementation WBSFrequentlyVisitedSiteCandidate

- (WBSFrequentlyVisitedSiteCandidate)initWithURLString:(id)a3 title:(id)a4 score:(float)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = WBSFrequentlyVisitedSiteCandidate;
  v11 = [(WBSFrequentlyVisitedSiteCandidate *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_urlString, a3);
    v12->_score = a5;
    v13 = [v10 length];
    if (v13)
    {
      v14 = __67__WBSFrequentlyVisitedSiteCandidate_initWithURLString_title_score___block_invoke(v13, v10);
      title = v12->_title;
      v12->_title = v14;
    }

    else
    {
      title = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];
      v16 = [(NSString *)title safari_userVisibleHostWithoutWWWSubdomain];
      v17 = v12->_title;
      v12->_title = v16;
    }

    v18 = v12;
  }

  return v12;
}

id __67__WBSFrequentlyVisitedSiteCandidate_initWithURLString_title_score___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"\\(\\d+\\)" options:0 error:0];
  [v3 replaceMatchesInString:v2 options:0 range:0 withTemplate:{objc_msgSend(v2, "length"), &stru_1F3A5E418}];
  v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v2 stringByTrimmingCharactersInSet:v4];

  return v5;
}

@end