@interface CLPCReportingRows
- (CLPCReportingRows)init;
@end

@implementation CLPCReportingRows

- (CLPCReportingRows)init
{
  v9.receiver = self;
  v9.super_class = CLPCReportingRows;
  v2 = [(CLPCReportingRows *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    schema = v2->_schema;
    v2->_schema = v3;

    v5 = [MEMORY[0x277CBEA60] array];
    rows = v2->_rows;
    v2->_rows = v5;

    v7 = v2;
  }

  return v2;
}

@end