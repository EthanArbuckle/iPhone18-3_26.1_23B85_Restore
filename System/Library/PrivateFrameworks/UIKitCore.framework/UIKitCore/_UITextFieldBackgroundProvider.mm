@interface _UITextFieldBackgroundProvider
- (BOOL)_isTV;
- (BOOL)isEqual:(id)equal;
- (UITextField)textField;
- (id)description;
- (unint64_t)hash;
- (void)addToTextField:(id)field;
@end

@implementation _UITextFieldBackgroundProvider

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (void)addToTextField:(id)field
{
  obj = field;
  if (!obj)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldBackgroundProvider.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"textField"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_textField);

  if (WeakRetained)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITextFieldBackgroundProvider.m" lineNumber:57 description:@"Adding a background decorator that is already attached to a textfield."];
  }

  objc_storeWeak(&self->_textField, obj);
}

- (BOOL)_isTV
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  traitCollection = [WeakRetained traitCollection];

  if (traitCollection)
  {
    v4 = [traitCollection userInterfaceIdiom] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.isa;
  if (!equalCopy)
  {
    goto LABEL_4;
  }

  if (equalCopy == self)
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

  string = [(UIDescriptionBuilder *)v3 string];

  return string;
}

@end