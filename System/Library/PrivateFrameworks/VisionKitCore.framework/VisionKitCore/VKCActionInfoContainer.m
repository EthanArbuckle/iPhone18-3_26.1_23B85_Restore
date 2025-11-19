@interface VKCActionInfoContainer
- (void)setCurrentType:(unint64_t)a3;
@end

@implementation VKCActionInfoContainer

- (void)setCurrentType:(unint64_t)a3
{
  if (self->_currentType != a3)
  {
    self->_currentType = a3;
    v5 = [(VKCActionInfoContainer *)self subviews];
    [v5 makeObjectsPerformSelector:sel_removeFromSuperview];

    if (a3)
    {
      v6 = [(VKCActionInfoContainer *)self actionInfoView];
      [(VKCActionInfoContainer *)self bounds];
      [v6 setFrame:?];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
      [v6 setAutoresizingMask:18];
      [(VKCActionInfoContainer *)self addSubview:v6];
    }
  }
}

@end