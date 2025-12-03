@interface REExportedTable
- (REExportedTable)init;
@end

@implementation REExportedTable

- (REExportedTable)init
{
  v8.receiver = self;
  v8.super_class = REExportedTable;
  v2 = [(REExportedTable *)&v8 init];
  v3 = v2;
  if (v2)
  {
    header = v2->_header;
    v2->_header = MEMORY[0x277CBEBF8];

    array = [MEMORY[0x277CBEB18] array];
    data = v3->_data;
    v3->_data = array;

    v3->_sortable = 1;
  }

  return v3;
}

@end