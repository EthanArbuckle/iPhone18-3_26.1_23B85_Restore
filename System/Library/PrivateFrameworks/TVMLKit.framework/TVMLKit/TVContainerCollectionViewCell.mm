@interface TVContainerCollectionViewCell
- (BOOL)canBecomeFocused;
- (TVContainerCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setFocused:(BOOL)focused animated:(BOOL)animated context:(id)context coordinator:(id)coordinator;
@end

@implementation TVContainerCollectionViewCell

- (TVContainerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TVContainerCollectionViewCell;
  result = [(TVContainerCollectionViewCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_selectSubviews = 1;
    result->_allowsFocus = 1;
  }

  return result;
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = TVContainerCollectionViewCell;
  return [(TVContainerCollectionViewCell *)&v5 canBecomeFocused]&& self->_allowsFocus;
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  contextCopy = context;
  selectingView = [(TVContainerCollectionViewCell *)self selectingView];
  v8 = selectingView;
  if (selectingView)
  {
    v9 = [selectingView _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TVContainerCollectionViewCell;
    v9 = [(TVContainerCollectionViewCell *)&v12 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  v10 = v9;

  return v10;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  [(TVContainerCollectionViewCell *)self setFocused:[(TVContainerCollectionViewCell *)self isFocused] animated:1 context:contextCopy coordinator:coordinatorCopy];
}

- (void)setFocused:(BOOL)focused animated:(BOOL)animated context:(id)context coordinator:(id)coordinator
{
  animatedCopy = animated;
  focusedCopy = focused;
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  coordinatorCopy = coordinator;
  selectingView = [(TVContainerCollectionViewCell *)self selectingView];
  v13 = selectingView;
  if (self->_selectSubviews)
  {
    if (selectingView)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 setSelected:focusedCopy animated:animatedCopy focusUpdateContext:contextCopy withAnimationCoordinator:coordinatorCopy];
      }

      else
      {
        [v13 setSelected:focusedCopy animated:1 withAnimationCoordinator:coordinatorCopy];
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      contentView = [(TVContainerCollectionViewCell *)self contentView];
      subviews = [contentView subviews];

      v16 = [subviews countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v21;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(subviews);
            }

            [*(*(&v20 + 1) + 8 * i) setSelected:focusedCopy animated:1 withAnimationCoordinator:coordinatorCopy];
          }

          v17 = [subviews countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v17);
      }
    }
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v9.receiver = self;
  v9.super_class = TVContainerCollectionViewCell;
  [(TVContainerCollectionViewCell *)&v9 pressesBegan:beganCopy withEvent:event];
  if ([beganCopy count] == 1)
  {
    anyObject = [beganCopy anyObject];
    type = [anyObject type];

    if (type == 4)
    {
      [(TVContainerCollectionViewCell *)self _showPressState];
    }
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v9.receiver = self;
  v9.super_class = TVContainerCollectionViewCell;
  [(TVContainerCollectionViewCell *)&v9 pressesEnded:endedCopy withEvent:event];
  if ([endedCopy count] == 1)
  {
    anyObject = [endedCopy anyObject];
    type = [anyObject type];

    if (type == 4)
    {
      [(TVContainerCollectionViewCell *)self _clearPressState];
    }
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  v9.receiver = self;
  v9.super_class = TVContainerCollectionViewCell;
  [(TVContainerCollectionViewCell *)&v9 pressesCancelled:cancelledCopy withEvent:event];
  if ([cancelledCopy count] == 1)
  {
    anyObject = [cancelledCopy anyObject];
    type = [anyObject type];

    if (type == 4)
    {
      [(TVContainerCollectionViewCell *)self _clearPressState];
    }
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TVContainerCollectionViewCell;
  [(TVContainerCollectionViewCell *)&v3 prepareForReuse];
  self->_allowsFocus = 1;
}

@end