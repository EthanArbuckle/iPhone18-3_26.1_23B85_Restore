@interface CNVCardFilteredPersonScope
- (BOOL)isEmpty;
- (CNVCardFilteredPersonScope)initWithExcludedFields:(id)fields options:(unint64_t)options;
@end

@implementation CNVCardFilteredPersonScope

- (CNVCardFilteredPersonScope)initWithExcludedFields:(id)fields options:(unint64_t)options
{
  fieldsCopy = fields;
  v12.receiver = self;
  v12.super_class = CNVCardFilteredPersonScope;
  v7 = [(CNVCardFilteredPersonScope *)&v12 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:fieldsCopy];
    excludedFields = v7->_excludedFields;
    v7->_excludedFields = v8;

    v7->_filterOptions = options;
    v10 = v7;
  }

  return v7;
}

- (BOOL)isEmpty
{
  if ([(CNVCardFilteredPersonScope *)self filterOptions])
  {
    return 0;
  }

  v4 = *MEMORY[0x277CFBD28];
  excludedFields = [(CNVCardFilteredPersonScope *)self excludedFields];
  LOBYTE(v4) = (*(v4 + 16))(v4, excludedFields);

  return v4;
}

@end