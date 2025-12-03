@interface UIInterfaceActionVisualStyleViewState
- (BOOL)_stateEqualToVisualStyleViewState:(id)state;
- (BOOL)isEqual:(id)equal;
- (UIInterfaceActionVisualStyleViewState)initWithPropertiesFromTopLevelView:(id)view;
- (id)copyWithScreen:(id)screen;
- (id)copyWithTraitCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_collectStateFromScreen:(id)screen;
- (void)_collectStateFromView:(id)view;
- (void)_collectStateFromVisualStyleViewState:(id)state;
@end

@implementation UIInterfaceActionVisualStyleViewState

- (UIInterfaceActionVisualStyleViewState)initWithPropertiesFromTopLevelView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = UIInterfaceActionVisualStyleViewState;
  v5 = [(UIInterfaceActionVisualStyleViewState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (viewCopy)
    {
      [(UIInterfaceActionVisualStyleViewState *)v5 _collectStateFromView:viewCopy];
    }

    else
    {
      mainScreen = [objc_opt_self() mainScreen];
      [(UIInterfaceActionVisualStyleViewState *)v6 _collectStateFromScreen:mainScreen];
    }
  }

  return v6;
}

- (id)copyWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(UIInterfaceActionVisualStyleViewState *)self copy];
  v6 = v5[1];
  v5[1] = collectionCopy;

  return v5;
}

- (id)copyWithScreen:(id)screen
{
  screenCopy = screen;
  v5 = [(UIInterfaceActionVisualStyleViewState *)self copy];
  v6 = v5[2];
  v5[2] = screenCopy;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = UIInterfaceActionVisualStyleViewState;
  v4 = [(UIInterfaceActionVisualStyleViewState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ traitCollection = %@, screen = %@", v4, self->_traitCollection, self->_screen];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 _collectStateFromVisualStyleViewState:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(UIInterfaceActionVisualStyleViewState *)self _stateEqualToVisualStyleViewState:equalCopy];

  return v5;
}

- (void)_collectStateFromView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  screen = [window screen];
  v7 = screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  screen = self->_screen;
  self->_screen = mainScreen;

  traitCollection = [viewCopy traitCollection];
  traitCollection = self->_traitCollection;
  self->_traitCollection = traitCollection;

  tintColor = [viewCopy tintColor];

  tintColor = self->_tintColor;
  self->_tintColor = tintColor;
}

- (void)_collectStateFromScreen:(id)screen
{
  mainScreen = [objc_opt_self() mainScreen];
  screen = self->_screen;
  self->_screen = mainScreen;

  traitCollection = [(UIScreen *)self->_screen traitCollection];
  traitCollection = self->_traitCollection;
  self->_traitCollection = traitCollection;

  v8 = +[UIColor systemBlueColor];
  tintColor = self->_tintColor;
  self->_tintColor = v8;
}

- (void)_collectStateFromVisualStyleViewState:(id)state
{
  stateCopy = state;
  screen = [stateCopy screen];
  screen = self->_screen;
  self->_screen = screen;

  traitCollection = [stateCopy traitCollection];
  traitCollection = self->_traitCollection;
  self->_traitCollection = traitCollection;

  tintColor = [stateCopy tintColor];

  tintColor = self->_tintColor;
  self->_tintColor = tintColor;
}

- (BOOL)_stateEqualToVisualStyleViewState:(id)state
{
  stateCopy = state;
  screen = self->_screen;
  screen = [stateCopy screen];
  if ([(UIScreen *)screen isEqual:screen])
  {
    traitCollection = self->_traitCollection;
    traitCollection = [stateCopy traitCollection];
    if ([(UITraitCollection *)traitCollection isEqual:traitCollection])
    {
      tintColor = self->_tintColor;
      tintColor = [stateCopy tintColor];
      v11 = [(UIColor *)tintColor isEqual:tintColor];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end