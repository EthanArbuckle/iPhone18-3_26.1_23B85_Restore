@interface _UIViewPropertyAnimationUpdate
- (_UIViewPropertyAnimationUpdate)init;
- (_UIViewPropertyAnimationUpdate)initWithPropertyName:(id)a3 implicit:(BOOL)a4 additive:(BOOL)a5;
@end

@implementation _UIViewPropertyAnimationUpdate

- (_UIViewPropertyAnimationUpdate)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIViewPropertyAnimationUpdate init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (_UIViewPropertyAnimationUpdate)initWithPropertyName:(id)a3 implicit:(BOOL)a4 additive:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = _UIViewPropertyAnimationUpdate;
  v9 = [(_UIViewPropertyAnimationUpdate *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    propertyName = v9->_propertyName;
    v9->_propertyName = v10;

    v9->_implicit = a4;
    v9->_additive = a5;
    v9->_duration = 0.0;
    v9->_delay = 0.0;
    v9->_startTime = 0.0;
  }

  return v9;
}

@end