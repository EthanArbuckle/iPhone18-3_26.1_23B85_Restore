@interface UIBarButtonItemAppearance
- (BOOL)isEqual:(id)equal;
- (UIBarButtonItemAppearance)copy;
- (UIBarButtonItemAppearance)initWithBarButtonItemAppearance:(id)appearance;
- (UIBarButtonItemAppearance)initWithCoder:(NSCoder *)coder;
- (UIBarButtonItemAppearance)initWithStyle:(UIBarButtonItemStyle)style;
- (_UIBarButtonItemAppearanceChangeObserver)_changeObserver;
- (id)_proxyForState:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_resetBackIndicatorImages;
- (void)_setBackIndicatorImage:(id)image transitionMaskImage:(id)maskImage;
- (void)_setFallback:(id)fallback;
- (void)_updateDataTo:(id)to signal:(BOOL)signal;
- (void)_updateToSupportBackIndicatorsCopyingIndicatorsAndFallbackFrom:(id)from;
- (void)_writeToStorage:(id)storage;
- (void)configureWithDefaultForStyle:(UIBarButtonItemStyle)style;
- (void)dealloc;
@end

@implementation UIBarButtonItemAppearance

- (void)dealloc
{
  for (i = 24; i != 56; i += 8)
  {
    [*(&self->super.isa + i) _clearOwner];
  }

  v4.receiver = self;
  v4.super_class = UIBarButtonItemAppearance;
  [(UIBarButtonItemAppearance *)&v4 dealloc];
}

- (UIBarButtonItemAppearance)copy
{
  v3.receiver = self;
  v3.super_class = UIBarButtonItemAppearance;
  return [(UIBarButtonItemAppearance *)&v3 copy];
}

- (UIBarButtonItemAppearance)initWithStyle:(UIBarButtonItemStyle)style
{
  v8.receiver = self;
  v8.super_class = UIBarButtonItemAppearance;
  v4 = [(UIBarButtonItemAppearance *)&v8 init];
  if (v4)
  {
    v5 = [_UIBarButtonItemData standardItemDataForStyle:style];
    data = v4->_data;
    v4->_data = v5;
  }

  return v4;
}

- (UIBarButtonItemAppearance)initWithBarButtonItemAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v5 = -[UIBarButtonItemAppearance initWithStyle:](self, "initWithStyle:", [appearanceCopy[2] style]);
  if (v5)
  {
    v6 = [appearanceCopy[2] copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (UIBarButtonItemAppearance)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v11.receiver = self;
  v11.super_class = UIBarButtonItemAppearance;
  v5 = [(UIBarButtonItemAppearance *)&v11 init];
  if (v5)
  {
    v6 = [_UIBarButtonItemData decodeFromCoder:v4 prefix:0];
    data = v5->_data;
    v5->_data = v6;

    if (!v5->_data)
    {
      v8 = [_UIBarButtonItemData standardItemDataForStyle:0];
      v9 = v5->_data;
      v5->_data = v8;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithBarButtonItemAppearance:self];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = UIBarButtonItemAppearance;
  v3 = [(UIBarButtonItemAppearance *)&v6 description];
  v4 = [v3 mutableCopy];

  [(UIBarButtonItemAppearance *)self _describeInto:v4];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.isa;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && [(UIBarButtonItemAppearance *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v6 = [p_isa[2] isEqual:self->_data];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDataTo:(id)to signal:(BOOL)signal
{
  toCopy = to;
  data = self->_data;
  if (data != toCopy)
  {
    v12 = toCopy;
    v9 = data;
    objc_storeStrong(&self->_data, to);
    for (i = 24; i != 56; i += 8)
    {
      [*(&self->super.isa + i) setData:self->_data];
    }

    if (signal)
    {
      WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
      [WeakRetained _barButtonItemAppearanceChangedItemData:self toItemData:self->_data fromItemData:v9];
    }

    toCopy = v12;
  }
}

- (void)_setFallback:(id)fallback
{
  v4 = [(_UIBarButtonItemData *)self->_data dataWithNewFallback:fallback];
  [(UIBarButtonItemAppearance *)self _updateDataTo:v4 signal:0];
}

- (void)_writeToStorage:(id)storage
{
  data = self->_data;
  storageCopy = storage;
  writableInstance = [(_UIBarAppearanceData *)data writableInstance];
  [(UIBarButtonItemAppearance *)self _updateDataTo:writableInstance signal:1];

  storageCopy[2](storageCopy);
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  [WeakRetained _barButtonItemDataChanged:self];
}

- (id)_proxyForState:(int64_t)state
{
  states = self->_states;
  v5 = self->_states[state];
  if (!v5)
  {
    v7 = [[UIBarButtonItemStateAppearance alloc] _initWithOwner:self data:self->_data state:state];
    v8 = states[state];
    states[state] = v7;

    v5 = states[state];
  }

  return v5;
}

- (void)configureWithDefaultForStyle:(UIBarButtonItemStyle)style
{
  if ([(_UIBarButtonItemData *)self->_data isBackButtonData])
  {
    v5 = +[_UIBarButtonItemData standardBackButtonData];
    v7 = [v5 copyAsBackButtonDataWithIndicatorsAndFallbackFrom:self->_data];
  }

  else
  {
    v7 = [_UIBarButtonItemData standardItemDataForStyle:style];
  }

  [(UIBarButtonItemAppearance *)self _updateDataTo:v7 signal:1];
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  [WeakRetained _barButtonItemDataChanged:self];
}

- (void)_updateToSupportBackIndicatorsCopyingIndicatorsAndFallbackFrom:(id)from
{
  fromCopy = from;
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIBarButtonItemAppearance.m" lineNumber:311 description:@"This method must be called before a change observer is attached"];
  }

  v6 = [(_UIBarButtonItemData *)self->_data copyAsBackButtonDataWithIndicatorsAndFallbackFrom:fromCopy];
  [(UIBarButtonItemAppearance *)self _updateDataTo:v6 signal:0];
}

- (void)_setBackIndicatorImage:(id)image transitionMaskImage:(id)maskImage
{
  imageCopy = image;
  maskImageCopy = maskImage;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__UIBarButtonItemAppearance__setBackIndicatorImage_transitionMaskImage___block_invoke;
  v10[3] = &unk_1E70F6228;
  v10[4] = self;
  v11 = imageCopy;
  v12 = maskImageCopy;
  v8 = maskImageCopy;
  v9 = imageCopy;
  [(UIBarButtonItemAppearance *)self _writeToStorage:v10];
}

- (void)_resetBackIndicatorImages
{
  [(_UIBarButtonItemData *)self->_data resetBackIndicatorImages];
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  [WeakRetained _barButtonItemDataChanged:self];
}

- (_UIBarButtonItemAppearanceChangeObserver)_changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

@end