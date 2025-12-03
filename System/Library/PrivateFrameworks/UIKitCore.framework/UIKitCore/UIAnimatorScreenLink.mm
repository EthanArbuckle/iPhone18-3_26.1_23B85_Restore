@interface UIAnimatorScreenLink
+ (id)startTimerWithScreen:(id)screen action:(id)action;
- (void)dealloc;
- (void)invalidate;
- (void)onDisplayLink:(id)link;
@end

@implementation UIAnimatorScreenLink

- (void)invalidate
{
  self->_animationCount = 0;
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }

  if (_UIUpdateCycleEnabled())
  {
    updateSequenceItem = self->_updateSequenceItem;
    if (updateSequenceItem)
    {
      v6 = *(updateSequenceItem + 6);
      if (v6)
      {
        *(updateSequenceItem + 6) = v6 | 2;
      }

      else
      {
        _removeItem(updateSequenceItem);
      }

      self->_updateSequenceItem = 0;

      _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, _animatorUpdateRequest, 0x10002Au);
    }
  }
}

- (void)dealloc
{
  [(UIAnimatorScreenLink *)self invalidate];
  v3.receiver = self;
  v3.super_class = UIAnimatorScreenLink;
  [(UIAnimatorScreenLink *)&v3 dealloc];
}

+ (id)startTimerWithScreen:(id)screen action:(id)action
{
  screenCopy = screen;
  actionCopy = action;
  v7 = objc_alloc_init(UIAnimatorScreenLink);
  v8 = _Block_copy(actionCopy);

  updateAction = v7->_updateAction;
  v7->_updateAction = v8;

  v7->_animationCount = 1;
  if (_UIUpdateCycleEnabled() && [screenCopy _isEmbeddedScreen])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__UIAnimatorScreenLink_startTimerWithScreen_action___block_invoke;
    v16[3] = &unk_1E70F5B90;
    v17 = v7;
    v17->_updateSequenceItem = _UIUpdateSequenceInsertItem(_UIUpdateSequenceCADisplayLinksItemInternal, 1, "UIAnimation", 0, 0, v16);
    _UIUpdateRequestRegistryAddRecord(&mainRegistry, _animatorUpdateRequest, 0x10002Au);
    displayLink = v17;
  }

  else
  {
    if (screenCopy)
    {
      v11 = screenCopy;
    }

    else
    {
      v11 = MEMORY[0x1E6979330];
    }

    v12 = [v11 displayLinkWithTarget:v7 selector:sel_onDisplayLink_];
    displayLink = v7->_displayLink;
    v7->_displayLink = v12;
  }

  v13 = v7->_displayLink;
  if (v13)
  {
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v13 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
  }

  return v7;
}

uint64_t __52__UIAnimatorScreenLink_startTimerWithScreen_action___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  currentAnimationTime();
  v2 = *(v1 + 16);

  return v2(v1);
}

- (void)onDisplayLink:(id)link
{
  updateAction = self->_updateAction;
  [link timestamp];
  v4 = updateAction[2];

  v4(updateAction);
}

@end