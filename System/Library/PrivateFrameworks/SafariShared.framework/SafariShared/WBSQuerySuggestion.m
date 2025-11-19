@interface WBSQuerySuggestion
- (WBSQuerySuggestion)initWithTitle:(id)a3 identifier:(id)a4 type:(int64_t)a5 tag:(id)a6;
@end

@implementation WBSQuerySuggestion

- (WBSQuerySuggestion)initWithTitle:(id)a3 identifier:(id)a4 type:(int64_t)a5 tag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = WBSQuerySuggestion;
  v13 = [(WBSQuerySuggestion *)&v20 init];
  if (v13)
  {
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v13->_type = a5;
    objc_storeStrong(&v13->_tag, a6);
    v18 = v13;
  }

  return v13;
}

@end