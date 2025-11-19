@interface _UITextFieldBackgroundProvider
- (BOOL)_isTV;
- (BOOL)isEqual:(id)a3;
- (UITextField)textField;
- (id)description;
- (unint64_t)hash;
- (void)addToTextField:(id)a3;
@end

@implementation _UITextFieldBackgroundProvider

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (void)addToTextField:(id)a3
{
  obj = a3;
  if (!obj)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UITextFieldBackgroundProvider.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"textField"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_textField);

  if (WeakRetained)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UITextFieldBackgroundProvider.m" lineNumber:57 description:@"Adding a background decorator that is already attached to a textfield."];
  }

  objc_storeWeak(&self->_textField, obj);
}

- (BOOL)_isTV
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained traitCollection];

  if (v3)
  {
    v4 = [v3 userInterfaceIdiom] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 == self)
  {
    v7 = 1;
    goto LABEL_16;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    WeakRetained = objc_loadWeakRetained(p_isa + 1);
    v9 = objc_loadWeakRetained(&self->_textField);
    if (WeakRetained)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    v7 = v10 || WeakRetained == v9;
  }

  else
  {
LABEL_4:
    v7 = 0;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _UITextFieldBackgroundProvider;
  v3 = [(_UITextFieldBackgroundProvider *)&v7 hash];
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v5 = [WeakRetained hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = [[UIDescriptionBuilder alloc] initWithObject:self];
  [(_UITextFieldBackgroundProvider *)self _buildDescription:v3];
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v5 = [(UIDescriptionBuilder *)v3 appendName:@"textfield" object:WeakRetained usingLightweightDescription:1];

  v6 = [(UIDescriptionBuilder *)v3 string];

  return v6;
}

@end