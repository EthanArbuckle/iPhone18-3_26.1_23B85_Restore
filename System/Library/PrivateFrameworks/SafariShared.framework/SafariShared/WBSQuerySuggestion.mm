@interface WBSQuerySuggestion
- (WBSQuerySuggestion)initWithTitle:(id)title identifier:(id)identifier type:(int64_t)type tag:(id)tag;
@end

@implementation WBSQuerySuggestion

- (WBSQuerySuggestion)initWithTitle:(id)title identifier:(id)identifier type:(int64_t)type tag:(id)tag
{
  titleCopy = title;
  identifierCopy = identifier;
  tagCopy = tag;
  v20.receiver = self;
  v20.super_class = WBSQuerySuggestion;
  v13 = [(WBSQuerySuggestion *)&v20 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v13->_type = type;
    objc_storeStrong(&v13->_tag, tag);
    v18 = v13;
  }

  return v13;
}

@end