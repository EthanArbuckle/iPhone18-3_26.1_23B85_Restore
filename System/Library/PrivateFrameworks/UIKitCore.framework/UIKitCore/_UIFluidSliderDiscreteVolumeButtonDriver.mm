@interface _UIFluidSliderDiscreteVolumeButtonDriver
- (void)_end;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)cancel;
- (void)setEnabled:(BOOL)enabled;
- (void)setView:(id)view;
@end

@implementation _UIFluidSliderDiscreteVolumeButtonDriver

- (void)setView:(id)view
{
  v14.receiver = self;
  v14.super_class = _UIFluidSliderDiscreteVolumeButtonDriver;
  [(_UIFluidSliderDiscreteButtonDriver *)&v14 setView:?];
  physicalButtonInteraction = [(_UIFluidSliderDiscreteVolumeButtonDriver *)self physicalButtonInteraction];
  view = physicalButtonInteraction;
  if (view)
  {

    if (!view)
    {
      v7 = +[_UIPhysicalButtonConfiguration _volumeConfigurations];
      v8 = [[_UIPhysicalButtonInteraction alloc] initWithConfigurations:v7 delegate:self];
      physicalButtonInteraction = self->_physicalButtonInteraction;
      self->_physicalButtonInteraction = v8;

      enabled = [(_UIFluidSliderDiscreteButtonDriver *)self enabled];
      physicalButtonInteraction2 = [(_UIFluidSliderDiscreteVolumeButtonDriver *)self physicalButtonInteraction];
      [physicalButtonInteraction2 _setEnabled:enabled];
    }

    view = [(_UIFluidSliderDiscreteButtonDriver *)self view];
    physicalButtonInteraction3 = [(_UIFluidSliderDiscreteVolumeButtonDriver *)self physicalButtonInteraction];
    [view addInteraction:physicalButtonInteraction3];
  }

  else
  {
    physicalButtonInteraction3 = [physicalButtonInteraction view];
    physicalButtonInteraction4 = [(_UIFluidSliderDiscreteVolumeButtonDriver *)self physicalButtonInteraction];
    [physicalButtonInteraction3 removeInteraction:physicalButtonInteraction4];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = _UIFluidSliderDiscreteVolumeButtonDriver;
  [(_UIFluidSliderDiscreteButtonDriver *)&v7 setEnabled:?];
  enabled = [(_UIFluidSliderDiscreteButtonDriver *)self enabled];
  physicalButtonInteraction = [(_UIFluidSliderDiscreteVolumeButtonDriver *)self physicalButtonInteraction];
  [physicalButtonInteraction _setEnabled:enabled];

  if (!enabled)
  {
    [(_UIFluidSliderDiscreteVolumeButtonDriver *)self cancel];
  }
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = _UIFluidSliderDiscreteVolumeButtonDriver;
  [(_UIFluidSliderDiscreteButtonDriver *)&v3 cancel];
  [(_UIFluidSliderDiscreteVolumeButtonDriver *)self _end];
}

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  actionCopy = action;
  _state = [actionCopy _state];
  if ((_state - 2) < 2)
  {
    [(_UIFluidSliderDiscreteVolumeButtonDriver *)self _end];
  }

  else
  {
    if (_state != 1)
    {
      if (_state)
      {
        goto LABEL_8;
      }

      -[_UIFluidSliderDiscreteVolumeButtonDriver _beginWithButton:](self, "_beginWithButton:", [actionCopy _button]);
    }

    if ([(_UIFluidSliderDiscreteVolumeButtonDriver *)self _pressedButton]== 1)
    {
      [(_UIFluidSliderDiscreteButtonDriver *)self pressUp];
    }

    else if ([(_UIFluidSliderDiscreteVolumeButtonDriver *)self _pressedButton]== 2)
    {
      [(_UIFluidSliderDiscreteButtonDriver *)self pressDown];
    }
  }

LABEL_8:
}

- (void)_end
{
  if ([(_UIFluidSliderDiscreteVolumeButtonDriver *)self _pressedButton])
  {
    if ([(_UIFluidSliderDiscreteVolumeButtonDriver *)self _pressedButton]== 1)
    {
      [(_UIFluidSliderDiscreteButtonDriver *)self releaseUp];
    }

    else if ([(_UIFluidSliderDiscreteVolumeButtonDriver *)self _pressedButton]== 2)
    {
      [(_UIFluidSliderDiscreteButtonDriver *)self releaseDown];
    }

    [(_UIFluidSliderDiscreteVolumeButtonDriver *)self set_pressedButton:0];
  }
}

@end