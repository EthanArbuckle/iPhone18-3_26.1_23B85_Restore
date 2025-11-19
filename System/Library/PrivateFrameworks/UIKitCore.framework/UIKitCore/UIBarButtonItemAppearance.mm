@interface UIBarButtonItemAppearance
- (BOOL)isEqual:(id)a3;
- (UIBarButtonItemAppearance)copy;
- (UIBarButtonItemAppearance)initWithBarButtonItemAppearance:(id)a3;
- (UIBarButtonItemAppearance)initWithCoder:(NSCoder *)coder;
- (UIBarButtonItemAppearance)initWithStyle:(UIBarButtonItemStyle)style;
- (_UIBarButtonItemAppearanceChangeObserver)_changeObserver;
- (id)_proxyForState:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_resetBackIndicatorImages;
- (void)_setBackIndicatorImage:(id)a3 transitionMaskImage:(id)a4;
- (void)_setFallback:(id)a3;
- (void)_updateDataTo:(id)a3 signal:(BOOL)a4;
- (void)_updateToSupportBackIndicatorsCopyingIndicatorsAndFallbackFrom:(id)a3;
- (void)_writeToStorage:(id)a3;
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

- (UIBarButtonItemAppearance)initWithBarButtonItemAppearance:(id)a3
{
  v4 = a3;
  v5 = -[UIBarButtonItemAppearance initWithStyle:](self, "initWithStyle:", [v4[2] style]);
  if (v5)
  {
    v6 = [v4[2] copy];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && [(UIBarButtonItemAppearance *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = [p_isa[2] isEqual:self->_data];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDataTo:(id)a3 signal:(BOOL)a4
{
  v7 = a3;
  data = self->_data;
  if (data != v7)
  {
    v12 = v7;
    v9 = data;
    objc_storeStrong(&self->_data, a3);
    for (i = 24; i != 56; i += 8)
    {
      [*(&self->super.isa + i) setData:self->_data];
    }

    if (a4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
      [WeakRetained _barButtonItemAppearanceChangedItemData:self toItemData:self->_data fromItemData:v9];
    }

    v7 = v12;
  }
}

- (void)_setFallback:(id)a3
{
  v4 = [(_UIBarButtonItemData *)self->_data dataWithNewFallback:a3];
  [(UIBarButtonItemAppearance *)self _updateDataTo:v4 signal:0];
}

- (void)_writeToStorage:(id)a3
{
  data = self->_data;
  v5 = a3;
  v6 = [(_UIBarAppearanceData *)data writableInstance];
  [(UIBarButtonItemAppearance *)self _updateDataTo:v6 signal:1];

  v5[2](v5);
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  [WeakRetained _barButtonItemDataChanged:self];
}

- (id)_proxyForState:(int64_t)a3
{
  states = self->_states;
  v5 = self->_states[a3];
  if (!v5)
  {
    v7 = [[UIBarButtonItemStateAppearance alloc] _initWithOwner:self data:self->_data state:a3];
    v8 = states[a3];
    states[a3] = v7;

    v5 = states[a3];
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

- (void)_updateToSupportBackIndicatorsCopyingIndicatorsAndFallbackFrom:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  if (WeakRetained)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIBarButtonItemAppearance.m" lineNumber:311 description:@"This method must be called before a change observer is attached"];
  }

  v6 = [(_UIBarButtonItemData *)self->_data copyAsBackButtonDataWithIndicatorsAndFallbackFrom:v8];
  [(UIBarButtonItemAppearance *)self _updateDataTo:v6 signal:0];
}

- (void)_setBackIndicatorImage:(id)a3 transitionMaskImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__UIBarButtonItemAppearance__setBackIndicatorImage_transitionMaskImage___block_invoke;
  v10[3] = &unk_1E70F6228;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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