@interface InvokeMakerInfo
- (InvokeMakerInfo)initWithSel:(SEL)sel andTarget:(id)target;
@end

@implementation InvokeMakerInfo

- (InvokeMakerInfo)initWithSel:(SEL)sel andTarget:(id)target
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = InvokeMakerInfo;
  v7 = [(InvokeMakerInfo *)&v10 init];
  target = v7->_target;
  v7->_selector = sel;
  v7->_target = targetCopy;

  return v7;
}

@end