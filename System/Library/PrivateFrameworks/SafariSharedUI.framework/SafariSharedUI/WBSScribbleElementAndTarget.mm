@interface WBSScribbleElementAndTarget
- (WBSScribbleElementAndTarget)initWithElement:(id)element target:(id)target;
@end

@implementation WBSScribbleElementAndTarget

- (WBSScribbleElementAndTarget)initWithElement:(id)element target:(id)target
{
  elementCopy = element;
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = WBSScribbleElementAndTarget;
  v9 = [(WBSScribbleElementAndTarget *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_element, element);
    objc_storeStrong(&v10->_target, target);
    v11 = v10;
  }

  return v10;
}

@end