@interface InvokeMakerInfo
- (InvokeMakerInfo)initWithSel:(SEL)a3 andTarget:(id)a4;
@end

@implementation InvokeMakerInfo

- (InvokeMakerInfo)initWithSel:(SEL)a3 andTarget:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = InvokeMakerInfo;
  v7 = [(InvokeMakerInfo *)&v10 init];
  target = v7->_target;
  v7->_selector = a3;
  v7->_target = v6;

  return v7;
}

@end