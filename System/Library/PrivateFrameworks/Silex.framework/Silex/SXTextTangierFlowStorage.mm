@interface SXTextTangierFlowStorage
- (SXTextTangierFlowStorage)initWithContext:(id)context string:(id)string stylesheet:(id)stylesheet kind:(int)kind flowName:(id)name;
@end

@implementation SXTextTangierFlowStorage

- (SXTextTangierFlowStorage)initWithContext:(id)context string:(id)string stylesheet:(id)stylesheet kind:(int)kind flowName:(id)name
{
  v8 = *&kind;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SXTextTangierFlowStorage;
  v14 = [(TSWPStorage *)&v17 initWithContext:context string:string stylesheet:stylesheet kind:v8];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_flowName, name);
  }

  return v15;
}

@end