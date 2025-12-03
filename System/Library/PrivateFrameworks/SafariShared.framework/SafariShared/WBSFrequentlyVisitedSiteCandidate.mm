@interface WBSFrequentlyVisitedSiteCandidate
- (WBSFrequentlyVisitedSiteCandidate)initWithURLString:(id)string title:(id)title score:(float)score;
@end

@implementation WBSFrequentlyVisitedSiteCandidate

- (WBSFrequentlyVisitedSiteCandidate)initWithURLString:(id)string title:(id)title score:(float)score
{
  stringCopy = string;
  titleCopy = title;
  v20.receiver = self;
  v20.super_class = WBSFrequentlyVisitedSiteCandidate;
  v11 = [(WBSFrequentlyVisitedSiteCandidate *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_urlString, string);
    v12->_score = score;
    v13 = [titleCopy length];
    if (v13)
    {
      v14 = __67__WBSFrequentlyVisitedSiteCandidate_initWithURLString_title_score___block_invoke(v13, titleCopy);
      title = v12->_title;
      v12->_title = v14;
    }

    else
    {
      title = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:stringCopy];
      safari_userVisibleHostWithoutWWWSubdomain = [(NSString *)title safari_userVisibleHostWithoutWWWSubdomain];
      v17 = v12->_title;
      v12->_title = safari_userVisibleHostWithoutWWWSubdomain;
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