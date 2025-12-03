@interface _UIDeleteCursorAccessory
- (_UIDeleteCursorAccessory)initWithCoder:(id)coder;
- (id)descriptionBuilder;
- (id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIDeleteCursorAccessory

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = _UIDeleteCursorAccessory;
  [(_UICursorAccessory *)&v3 encodeWithCoder:coder];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIDeleteCursorAccessory;
  return [(_UICursorAccessory *)&v3 hash];
}

- (_UIDeleteCursorAccessory)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIDeleteCursorAccessory;
  return [(_UICursorAccessory *)&v4 initWithCoder:coder];
}

- (id)descriptionBuilder
{
  v4.receiver = self;
  v4.super_class = _UIDeleteCursorAccessory;
  descriptionBuilder = [(_UICursorAccessory *)&v4 descriptionBuilder];

  return descriptionBuilder;
}

- (id)identifier
{
  v5.receiver = self;
  v5.super_class = _UIDeleteCursorAccessory;
  identifier = [(_UICursorAccessory *)&v5 identifier];
  if (!identifier)
  {
    identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"del"];
    [(_UICursorAccessory *)self setIdentifier:identifier];
  }

  return identifier;
}

@end