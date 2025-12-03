@interface _UIStatusBarDataEntry
+ (id)disabledEntry;
+ (id)entry;
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataEntry)init;
- (_UIStatusBarDataEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromData:(id *)data type:(int)type;
@end

@implementation _UIStatusBarDataEntry

+ (id)entry
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)disabledEntry
{
  v2 = objc_alloc_init(self);
  [v2 setEnabled:0];

  return v2;
}

- (_UIStatusBarDataEntry)init
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarDataEntry;
  v2 = [(_UIStatusBarDataEntry *)&v4 init];
  [(_UIStatusBarDataEntry *)v2 setEnabled:1];
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setEnabled:self->_enabled];
  return v4;
}

- (_UIStatusBarDataEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 init];
  v5 = [coderCopy decodeBoolForKey:{@"enabled", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataEntry *)v4 setEnabled:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    enabled = self->_enabled;
    v6 = enabled == [equalCopy isEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_ui_descriptionBuilder
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataEntry;
  _ui_descriptionBuilder = [&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_isEnabled);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [_ui_descriptionBuilder appendKeys:v4];

  return v5;
}

- (id)description
{
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)self _ui_descriptionBuilder];
  string = [_ui_descriptionBuilder string];

  return string;
}

- (id)initFromData:(id *)data type:(int)type
{
  v8.receiver = self;
  v8.super_class = _UIStatusBarDataEntry;
  v6 = [(_UIStatusBarDataEntry *)&v8 init];
  [(_UIStatusBarDataEntry *)v6 setEnabled:data->var0[type]];
  return v6;
}

@end