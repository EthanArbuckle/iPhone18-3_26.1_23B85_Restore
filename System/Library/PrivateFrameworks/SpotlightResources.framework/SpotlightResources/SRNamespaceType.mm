@interface SRNamespaceType
- (SRNamespaceType)init;
@end

@implementation SRNamespaceType

- (SRNamespaceType)init
{
  v6.receiver = self;
  v6.super_class = SRNamespaceType;
  v2 = [(SRNamespaceType *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    parameterNames = v2->_parameterNames;
    v2->_parameterNames = v3;
  }

  return v2;
}

@end