@interface BRCFPImportReport
- (BRCFPImportReport)init;
@end

@implementation BRCFPImportReport

- (BRCFPImportReport)init
{
  v7.receiver = self;
  v7.super_class = BRCFPImportReport;
  v2 = [(BRCFPImportReport *)&v7 init];
  v3 = v2;
  if (v2)
  {
    importError = v2->_importError;
    v2->_importError = 0;

    fpReport = v3->_fpReport;
    v3->_fpReport = 0;
  }

  return v3;
}

@end