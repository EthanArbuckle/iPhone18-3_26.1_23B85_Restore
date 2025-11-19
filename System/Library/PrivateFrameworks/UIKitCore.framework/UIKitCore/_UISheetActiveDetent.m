@interface _UISheetActiveDetent
- (_UISheetActiveDetent)initWithIdentifier:(id)a3 value:(double)a4;
- (id)description;
@end

@implementation _UISheetActiveDetent

- (_UISheetActiveDetent)initWithIdentifier:(id)a3 value:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _UISheetActiveDetent;
  v7 = [(_UISheetActiveDetent *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->__identifier;
    v7->__identifier = v8;

    v7->__value = a4;
  }

  return v7;
}

- (id)description
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel__identifier);
  v8[0] = v3;
  v4 = NSStringFromSelector(sel__value);
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [UIDescriptionBuilder descriptionForObject:self keys:v5];

  return v6;
}

@end