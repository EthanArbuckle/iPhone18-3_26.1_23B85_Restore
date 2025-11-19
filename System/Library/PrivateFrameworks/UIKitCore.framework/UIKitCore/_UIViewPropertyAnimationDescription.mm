@interface _UIViewPropertyAnimationDescription
- (UIView)view;
- (_UIViewPropertyAnimationDescription)init;
- (_UIViewPropertyAnimationDescription)initWithView:(id)a3;
- (void)_addUpdate:(id)a3;
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

- (_UIViewPropertyAnimationDescription)initWithView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIViewPropertyAnimationDescription;
  v5 = [(_UIViewPropertyAnimationDescription *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, v4);
    v7 = [MEMORY[0x1E695DF90] dictionary];
    updates = v6->_updates;
    v6->_updates = v7;
  }

  return v6;
}

- (void)_addUpdate:(id)a3
{
  v4 = a3;
  updates = self->_updates;
  v10 = v4;
  v6 = [v4 propertyName];
  v7 = [(NSMutableDictionary *)updates objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = self->_updates;
    v9 = [v10 propertyName];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  [v7 addObject:v10];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end