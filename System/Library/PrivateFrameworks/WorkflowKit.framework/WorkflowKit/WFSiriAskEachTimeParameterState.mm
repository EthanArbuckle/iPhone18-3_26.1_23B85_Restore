@interface WFSiriAskEachTimeParameterState
- (BOOL)isEqual:(id)a3;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFSiriAskEachTimeParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v6 = a5;
  v7 = objc_opt_new();
  (*(a5 + 2))(v6, v7, 0);
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end