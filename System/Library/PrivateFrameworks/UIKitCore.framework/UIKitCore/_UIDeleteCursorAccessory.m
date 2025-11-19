@interface _UIDeleteCursorAccessory
- (_UIDeleteCursorAccessory)initWithCoder:(id)a3;
- (id)descriptionBuilder;
- (id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIDeleteCursorAccessory

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIDeleteCursorAccessory;
  [(_UICursorAccessory *)&v3 encodeWithCoder:a3];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIDeleteCursorAccessory;
  return [(_UICursorAccessory *)&v3 hash];
}

- (_UIDeleteCursorAccessory)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIDeleteCursorAccessory;
  return [(_UICursorAccessory *)&v4 initWithCoder:a3];
}

- (id)descriptionBuilder
{
  v4.receiver = self;
  v4.super_class = _UIDeleteCursorAccessory;
  v2 = [(_UICursorAccessory *)&v4 descriptionBuilder];

  return v2;
}

- (id)identifier
{
  v5.receiver = self;
  v5.super_class = _UIDeleteCursorAccessory;
  v3 = [(_UICursorAccessory *)&v5 identifier];
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"del"];
    [(_UICursorAccessory *)self setIdentifier:v3];
  }

  return v3;
}

@end