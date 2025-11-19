@interface WBSSavedAccountUnknownHistoryItem
- (BOOL)isEqual:(id)a3;
- (WBSSavedAccountUnknownHistoryItem)initWithDictionaryRepresentation:(id)a3;
- (unint64_t)hash;
@end

@implementation WBSSavedAccountUnknownHistoryItem

- (WBSSavedAccountUnknownHistoryItem)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WBSSavedAccountUnknownHistoryItem;
  v5 = [(WBSSavedAccountUnknownHistoryItem *)&v16 init];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v4 objectForKeyedSubscript:@"d"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 objectForKeyedSubscript:@"t"];
    type = v5->_type;
    v5->_type = v8;

    v10 = [v4 objectForKeyedSubscript:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v12;

    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      date = self->_date;
      v6 = [(WBSSavedAccountUnknownHistoryItem *)v4 date];
      v7 = WBSIsEqual(date, v6);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [(NSString *)self->_type hash]^ v3;
  return v4 ^ [(NSString *)self->_identifier hash];
}

@end