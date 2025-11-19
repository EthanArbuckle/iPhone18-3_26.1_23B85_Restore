@interface CNVCardFilteredPersonScope
- (BOOL)isEmpty;
- (CNVCardFilteredPersonScope)initWithExcludedFields:(id)a3 options:(unint64_t)a4;
@end

@implementation CNVCardFilteredPersonScope

- (CNVCardFilteredPersonScope)initWithExcludedFields:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CNVCardFilteredPersonScope;
  v7 = [(CNVCardFilteredPersonScope *)&v12 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v6];
    excludedFields = v7->_excludedFields;
    v7->_excludedFields = v8;

    v7->_filterOptions = a4;
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
  v5 = [(CNVCardFilteredPersonScope *)self excludedFields];
  LOBYTE(v4) = (*(v4 + 16))(v4, v5);

  return v4;
}

@end