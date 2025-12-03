@interface VKCActionInfoContainer
- (void)setCurrentType:(unint64_t)type;
@end

@implementation VKCActionInfoContainer

- (void)setCurrentType:(unint64_t)type
{
  if (self->_currentType != type)
  {
    self->_currentType = type;
    subviews = [(VKCActionInfoContainer *)self subviews];
    [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

    if (type)
    {
      actionInfoView = [(VKCActionInfoContainer *)self actionInfoView];
      [(VKCActionInfoContainer *)self bounds];
      [actionInfoView setFrame:?];
      [actionInfoView setTranslatesAutoresizingMaskIntoConstraints:1];
      [actionInfoView setAutoresizingMask:18];
      [(VKCActionInfoContainer *)self addSubview:actionInfoView];
    }
  }
}

@end