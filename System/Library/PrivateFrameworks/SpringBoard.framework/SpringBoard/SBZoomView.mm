@interface SBZoomView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (SBZoomView)initWithFrame:(CGRect)frame;
- (id)_initWithFrame:(CGRect)frame;
@end

@implementation SBZoomView

- (SBZoomView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBZoomView.m" lineNumber:41 description:@"call to abstract base class initializer"];

  return 0;
}

- (id)_initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SBZoomView;
  v3 = [(SBZoomView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBZoomView *)v3 setUserInteractionEnabled:0];
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    [(SBZoomView *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    contentView = v4->_contentView;
    v4->_contentView = v6;

    [(SBZoomView *)v4 addSubview:v4->_contentView];
  }

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBZoomView;
    v5 = [(SBZoomView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end