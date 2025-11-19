@interface CLPCReportingSchema
- (CLPCReportingSchema)init;
- (void)finalizeColumns;
- (void)stageColumn:(uint64_t)a1;
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
    v4 = [MEMORY[0x277CBEA60] array];
    columns = v3->_columns;
    v3->_columns = v4;

    v6 = [MEMORY[0x277CBEB18] array];
    stagedColumns = v3->stagedColumns;
    v3->stagedColumns = v6;

    v8 = v3;
  }

  return v3;
}

- (void)finalizeColumns
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(a1 + 8)];
    v3 = *(a1 + 24);
    *(a1 + 24) = v2;

    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
  }
}

- (void)stageColumn:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 8) addObject:v3];
  }
}

@end