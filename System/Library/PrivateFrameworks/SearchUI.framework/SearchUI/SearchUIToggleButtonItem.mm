@interface SearchUIToggleButtonItem
- (id)offStateImage;
- (id)offStateTitle;
- (id)onStateImage;
- (id)onStateTitle;
- (id)toggledTitle;
- (id)untoggledTitle;
- (void)buttonPressed;
@end

@implementation SearchUIToggleButtonItem

- (void)buttonPressed
{
  [(SearchUIButtonItem *)self setStatus:[(SearchUIButtonItem *)self status]== 0];
  delegate = [(SearchUIButtonItem *)self delegate];
  [delegate stateDidChangeForButtonItem:self];
}

- (id)offStateTitle
{
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  toggleButtonConfiguration = [sfButtonItem toggleButtonConfiguration];
  untoggledTitle = [toggleButtonConfiguration untoggledTitle];
  v6 = untoggledTitle;
  if (untoggledTitle)
  {
    untoggledTitle2 = untoggledTitle;
  }

  else
  {
    untoggledTitle2 = [(SearchUIToggleButtonItem *)self untoggledTitle];
  }

  v8 = untoggledTitle2;

  return v8;
}

- (id)untoggledTitle
{
  v4.receiver = self;
  v4.super_class = SearchUIToggleButtonItem;
  offStateTitle = [(SearchUIButtonItem *)&v4 offStateTitle];

  return offStateTitle;
}

- (id)onStateTitle
{
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  toggleButtonConfiguration = [sfButtonItem toggleButtonConfiguration];
  toggledTitle = [toggleButtonConfiguration toggledTitle];
  v6 = toggledTitle;
  if (toggledTitle)
  {
    toggledTitle2 = toggledTitle;
  }

  else
  {
    toggledTitle2 = [(SearchUIToggleButtonItem *)self toggledTitle];
  }

  v8 = toggledTitle2;

  return v8;
}

- (id)toggledTitle
{
  v4.receiver = self;
  v4.super_class = SearchUIToggleButtonItem;
  onStateTitle = [(SearchUIButtonItem *)&v4 onStateTitle];

  return onStateTitle;
}

- (id)offStateImage
{
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  toggleButtonConfiguration = [sfButtonItem toggleButtonConfiguration];
  untoggledImage = [toggleButtonConfiguration untoggledImage];
  v6 = untoggledImage;
  if (untoggledImage)
  {
    offStateImage = untoggledImage;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SearchUIToggleButtonItem;
    offStateImage = [(SearchUIButtonItem *)&v10 offStateImage];
  }

  v8 = offStateImage;

  return v8;
}

- (id)onStateImage
{
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  toggleButtonConfiguration = [sfButtonItem toggleButtonConfiguration];
  toggledImage = [toggleButtonConfiguration toggledImage];
  v6 = toggledImage;
  if (toggledImage)
  {
    onStateImage = toggledImage;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SearchUIToggleButtonItem;
    onStateImage = [(SearchUIButtonItem *)&v10 onStateImage];
  }

  v8 = onStateImage;

  return v8;
}

@end