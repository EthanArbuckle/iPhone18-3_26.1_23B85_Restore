@interface _UIViewPropertyAnimationDescription
- (UIView)view;
- (_UIViewPropertyAnimationDescription)init;
- (_UIViewPropertyAnimationDescription)initWithView:(id)view;
- (void)_addUpdate:(id)update;
@end

@implementation _UIViewPropertyAnimationDescription

- (_UIViewPropertyAnimationDescription)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIViewPropertyAnimationDescription init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (_UIViewPropertyAnimationDescription)initWithView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _UIViewPropertyAnimationDescription;
  v5 = [(_UIViewPropertyAnimationDescription *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, viewCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    updates = v6->_updates;
    v6->_updates = dictionary;
  }

  return v6;
}

- (void)_addUpdate:(id)update
{
  updateCopy = update;
  updates = self->_updates;
  v10 = updateCopy;
  propertyName = [updateCopy propertyName];
  array = [(NSMutableDictionary *)updates objectForKeyedSubscript:propertyName];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    v8 = self->_updates;
    propertyName2 = [v10 propertyName];
    [(NSMutableDictionary *)v8 setObject:array forKeyedSubscript:propertyName2];
  }

  [array addObject:v10];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end