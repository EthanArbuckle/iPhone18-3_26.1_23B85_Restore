@interface _UIStatusBarDataBoolEntry
+ (id)entryWithBoolValue:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataBoolEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromData:(id *)a3 type:(int)a4 BOOLValue:(BOOL)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataBoolEntry

+ (id)entryWithBoolValue:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(a1);
  [v4 setBoolValue:v3];

  return v4;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataBoolEntry;
  return [(_UIStatusBarDataEntry *)&v3 hash]^ *(&self->super._enabled + 1);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataBoolEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:a3];
  [v4 setBoolValue:*(&self->super._enabled + 1)];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBoolEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:*(&self->super._enabled + 1) forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataBoolEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBoolEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeBoolForKey:{@"BOOLValue", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataBoolEntry *)v4 setBoolValue:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataBoolEntry;
  if ([(_UIStatusBarDataEntry *)&v9 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      v6 = *(&self->super._enabled + 1);
      v7 = v6 == [v5 BOOLValue];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_ui_descriptionBuilder
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBoolEntry;
  v2 = [(_UIStatusBarDataEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_BOOLValue);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 appendKeys:v4];

  return v5;
}

- (id)initFromData:(id *)a3 type:(int)a4 BOOLValue:(BOOL)a5
{
  v5 = a5;
  v8.receiver = self;
  v8.super_class = _UIStatusBarDataBoolEntry;
  v6 = [(_UIStatusBarDataEntry *)&v8 initFromData:a3 type:*&a4];
  [v6 setBoolValue:v5];
  return v6;
}

@end