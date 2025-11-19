@interface WBSScribbleElementAndTarget
- (WBSScribbleElementAndTarget)initWithElement:(id)a3 target:(id)a4;
@end

@implementation WBSScribbleElementAndTarget

- (WBSScribbleElementAndTarget)initWithElement:(id)a3 target:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSScribbleElementAndTarget;
  v9 = [(WBSScribbleElementAndTarget *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_element, a3);
    objc_storeStrong(&v10->_target, a4);
    v11 = v10;
  }

  return v10;
}

@end