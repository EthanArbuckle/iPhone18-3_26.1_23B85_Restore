@interface WBSRecentlyUsedAutoFillSet
- (WBSRecentlyUsedAutoFillSet)initWithFillMatches:(id)a3 skipMatches:(id)a4 label:(id)a5;
@end

@implementation WBSRecentlyUsedAutoFillSet

- (WBSRecentlyUsedAutoFillSet)initWithFillMatches:(id)a3 skipMatches:(id)a4 label:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = WBSRecentlyUsedAutoFillSet;
  v11 = [(WBSRecentlyUsedAutoFillSet *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    fillMatches = v11->_fillMatches;
    v11->_fillMatches = v12;

    v14 = [v9 copy];
    skipMatches = v11->_skipMatches;
    v11->_skipMatches = v14;

    v16 = [v10 copy];
    label = v11->_label;
    v11->_label = v16;

    v18 = v11;
  }

  return v11;
}

@end