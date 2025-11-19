@interface TSCEParseOptionsContext
- (TSCEParseOptionsContext)init;
@end

@implementation TSCEParseOptionsContext

- (TSCEParseOptionsContext)init
{
  v6.receiver = self;
  v6.super_class = TSCEParseOptionsContext;
  v2 = [(TSCEParseOptionsContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    error = v2->_error;
    v2->_error = 0;

    *&v3->_isChartFormula = 0;
    v3->_needsSageImportRewrite = 0;
  }

  return v3;
}

@end