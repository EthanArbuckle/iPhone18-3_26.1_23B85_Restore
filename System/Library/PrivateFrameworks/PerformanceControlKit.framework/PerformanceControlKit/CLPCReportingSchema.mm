@interface CLPCReportingSchema
- (CLPCReportingSchema)init;
- (void)finalizeColumns;
- (void)stageColumn:(uint64_t)column;
@end

@implementation CLPCReportingSchema

- (CLPCReportingSchema)init
{
  v10.receiver = self;
  v10.super_class = CLPCReportingSchema;
  v2 = [(CLPCReportingSchema *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_schemaID = 0;
    array = [MEMORY[0x277CBEA60] array];
    columns = v3->_columns;
    v3->_columns = array;

    array2 = [MEMORY[0x277CBEB18] array];
    stagedColumns = v3->stagedColumns;
    v3->stagedColumns = array2;

    v8 = v3;
  }

  return v3;
}

- (void)finalizeColumns
{
  if (self)
  {
    v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(self + 8)];
    v3 = *(self + 24);
    *(self + 24) = v2;

    v4 = *(self + 8);
    *(self + 8) = 0;
  }
}

- (void)stageColumn:(uint64_t)column
{
  v3 = a2;
  if (column)
  {
    [*(column + 8) addObject:v3];
  }
}

@end