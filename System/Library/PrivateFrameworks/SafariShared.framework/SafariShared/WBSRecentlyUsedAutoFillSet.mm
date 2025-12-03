@interface WBSRecentlyUsedAutoFillSet
- (WBSRecentlyUsedAutoFillSet)initWithFillMatches:(id)matches skipMatches:(id)skipMatches label:(id)label;
@end

@implementation WBSRecentlyUsedAutoFillSet

- (WBSRecentlyUsedAutoFillSet)initWithFillMatches:(id)matches skipMatches:(id)skipMatches label:(id)label
{
  matchesCopy = matches;
  skipMatchesCopy = skipMatches;
  labelCopy = label;
  v20.receiver = self;
  v20.super_class = WBSRecentlyUsedAutoFillSet;
  v11 = [(WBSRecentlyUsedAutoFillSet *)&v20 init];
  if (v11)
  {
    v12 = [matchesCopy copy];
    fillMatches = v11->_fillMatches;
    v11->_fillMatches = v12;

    v14 = [skipMatchesCopy copy];
    skipMatches = v11->_skipMatches;
    v11->_skipMatches = v14;

    v16 = [labelCopy copy];
    label = v11->_label;
    v11->_label = v16;

    v18 = v11;
  }

  return v11;
}

@end