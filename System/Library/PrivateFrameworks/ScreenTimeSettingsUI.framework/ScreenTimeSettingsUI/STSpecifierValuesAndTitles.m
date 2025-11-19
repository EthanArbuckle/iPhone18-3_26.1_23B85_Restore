@interface STSpecifierValuesAndTitles
- (STSpecifierValuesAndTitles)init;
@end

@implementation STSpecifierValuesAndTitles

- (STSpecifierValuesAndTitles)init
{
  v8.receiver = self;
  v8.super_class = STSpecifierValuesAndTitles;
  v2 = [(STSpecifierValuesAndTitles *)&v8 init];
  v3 = v2;
  if (v2)
  {
    titles = v2->_titles;
    v5 = MEMORY[0x277CBEBF8];
    v2->_titles = MEMORY[0x277CBEBF8];

    values = v3->_values;
    v3->_values = v5;
  }

  return v3;
}

@end