@interface WBSHistoryTag
- (BOOL)isEqual:(id)equal;
- (WBSHistoryTag)initWithTitle:(id)title identifier:(id)identifier databaseID:(int64_t)d modificationTimestamp:(double)timestamp level:(int64_t)level;
@end

@implementation WBSHistoryTag

- (WBSHistoryTag)initWithTitle:(id)title identifier:(id)identifier databaseID:(int64_t)d modificationTimestamp:(double)timestamp level:(int64_t)level
{
  titleCopy = title;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = WBSHistoryTag;
  v14 = [(WBSHistoryTag *)&v21 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v15;

    v17 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v14->_databaseID = d;
    v14->_modificationTimestamp = timestamp;
    v14->_level = level;
    v19 = v14;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(WBSHistoryTag *)equalCopy identifier];
      v6 = [identifier isEqualToString:self->_identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end