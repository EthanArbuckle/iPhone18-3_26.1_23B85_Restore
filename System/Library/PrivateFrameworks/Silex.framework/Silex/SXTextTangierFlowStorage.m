@interface SXTextTangierFlowStorage
- (SXTextTangierFlowStorage)initWithContext:(id)a3 string:(id)a4 stylesheet:(id)a5 kind:(int)a6 flowName:(id)a7;
@end

@implementation SXTextTangierFlowStorage

- (SXTextTangierFlowStorage)initWithContext:(id)a3 string:(id)a4 stylesheet:(id)a5 kind:(int)a6 flowName:(id)a7
{
  v8 = *&a6;
  v13 = a7;
  v17.receiver = self;
  v17.super_class = SXTextTangierFlowStorage;
  v14 = [(TSWPStorage *)&v17 initWithContext:a3 string:a4 stylesheet:a5 kind:v8];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_flowName, a7);
  }

  return v15;
}

@end