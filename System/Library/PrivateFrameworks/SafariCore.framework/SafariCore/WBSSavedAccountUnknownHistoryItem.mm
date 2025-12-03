@interface WBSSavedAccountUnknownHistoryItem
- (BOOL)isEqual:(id)equal;
- (WBSSavedAccountUnknownHistoryItem)initWithDictionaryRepresentation:(id)representation;
- (unint64_t)hash;
@end

@implementation WBSSavedAccountUnknownHistoryItem

- (WBSSavedAccountUnknownHistoryItem)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v16.receiver = self;
  v16.super_class = WBSSavedAccountUnknownHistoryItem;
  v5 = [(WBSSavedAccountUnknownHistoryItem *)&v16 init];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [representationCopy objectForKeyedSubscript:@"d"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"t"];
    type = v5->_type;
    v5->_type = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [representationCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      date = self->_date;
      date = [(WBSSavedAccountUnknownHistoryItem *)equalCopy date];
      v7 = WBSIsEqual(date, date);
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