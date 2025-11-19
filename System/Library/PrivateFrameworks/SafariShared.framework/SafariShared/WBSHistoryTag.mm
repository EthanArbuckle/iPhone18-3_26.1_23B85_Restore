@interface WBSHistoryTag
- (BOOL)isEqual:(id)a3;
- (WBSHistoryTag)initWithTitle:(id)a3 identifier:(id)a4 databaseID:(int64_t)a5 modificationTimestamp:(double)a6 level:(int64_t)a7;
@end

@implementation WBSHistoryTag

- (WBSHistoryTag)initWithTitle:(id)a3 identifier:(id)a4 databaseID:(int64_t)a5 modificationTimestamp:(double)a6 level:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v21.receiver = self;
  v21.super_class = WBSHistoryTag;
  v14 = [(WBSHistoryTag *)&v21 init];
  if (v14)
  {
    v15 = [v12 copy];
    title = v14->_title;
    v14->_title = v15;

    v17 = [v13 copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v14->_databaseID = a5;
    v14->_modificationTimestamp = a6;
    v14->_level = a7;
    v19 = v14;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WBSHistoryTag *)v4 identifier];
      v6 = [v5 isEqualToString:self->_identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end