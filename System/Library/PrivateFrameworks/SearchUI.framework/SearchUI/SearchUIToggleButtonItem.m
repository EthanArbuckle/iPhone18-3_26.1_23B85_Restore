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
  v3 = [(SearchUIButtonItem *)self delegate];
  [v3 stateDidChangeForButtonItem:self];
}

- (id)offStateTitle
{
  v3 = [(SearchUIButtonItem *)self sfButtonItem];
  v4 = [v3 toggleButtonConfiguration];
  v5 = [v4 untoggledTitle];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SearchUIToggleButtonItem *)self untoggledTitle];
  }

  v8 = v7;

  return v8;
}

- (id)untoggledTitle
{
  v4.receiver = self;
  v4.super_class = SearchUIToggleButtonItem;
  v2 = [(SearchUIButtonItem *)&v4 offStateTitle];

  return v2;
}

- (id)onStateTitle
{
  v3 = [(SearchUIButtonItem *)self sfButtonItem];
  v4 = [v3 toggleButtonConfiguration];
  v5 = [v4 toggledTitle];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SearchUIToggleButtonItem *)self toggledTitle];
  }

  v8 = v7;

  return v8;
}

- (id)toggledTitle
{
  v4.receiver = self;
  v4.super_class = SearchUIToggleButtonItem;
  v2 = [(SearchUIButtonItem *)&v4 onStateTitle];

  return v2;
}

- (id)offStateImage
{
  v3 = [(SearchUIButtonItem *)self sfButtonItem];
  v4 = [v3 toggleButtonConfiguration];
  v5 = [v4 untoggledImage];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SearchUIToggleButtonItem;
    v7 = [(SearchUIButtonItem *)&v10 offStateImage];
  }

  v8 = v7;

  return v8;
}

- (id)onStateImage
{
  v3 = [(SearchUIButtonItem *)self sfButtonItem];
  v4 = [v3 toggleButtonConfiguration];
  v5 = [v4 toggledImage];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SearchUIToggleButtonItem;
    v7 = [(SearchUIButtonItem *)&v10 onStateImage];
  }

  v8 = v7;

  return v8;
}

@end