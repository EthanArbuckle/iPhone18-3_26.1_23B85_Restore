@interface UIToolbarAppearance
- (BOOL)_checkEqualTo:(id)to;
- (unint64_t)_hashInto:(unint64_t)into;
- (void)_barButtonItemDataChanged:(id)changed;
- (void)_completeInit;
- (void)_copyFromAppearance:(id)appearance;
- (void)_decodeFromCoder:(id)coder;
- (void)_describeInto:(id)into;
- (void)_setupDefaults;
- (void)encodeWithCoder:(id)coder;
- (void)setButtonAppearance:(UIBarButtonItemAppearance *)buttonAppearance;
- (void)setProminentButtonAppearance:(id)appearance;
@end

@implementation UIToolbarAppearance

- (void)_completeInit
{
  v3.receiver = self;
  v3.super_class = UIToolbarAppearance;
  [(UIBarAppearance *)&v3 _completeInit];
  [(UIBarButtonItemAppearance *)self->_buttonAppearance _setChangeObserver:self];
  [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _setChangeObserver:self];
}

- (void)_setupDefaults
{
  v7.receiver = self;
  v7.super_class = UIToolbarAppearance;
  [(UIBarAppearance *)&v7 _setupDefaults];
  if (!self->_buttonAppearance)
  {
    v3 = [[UIBarButtonItemAppearance alloc] initWithStyle:0];
    buttonAppearance = self->_buttonAppearance;
    self->_buttonAppearance = v3;
  }

  if (!self->_prominentButtonAppearance)
  {
    v5 = [[UIBarButtonItemAppearance alloc] initWithStyle:2];
    prominentButtonAppearance = self->_prominentButtonAppearance;
    self->_prominentButtonAppearance = v5;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIToolbarAppearance;
  coderCopy = coder;
  [(UIBarAppearance *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_buttonAppearance forKey:{@"PlainButtons", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_prominentButtonAppearance forKey:@"DoneButtons"];
}

- (void)_copyFromAppearance:(id)appearance
{
  v11.receiver = self;
  v11.super_class = UIToolbarAppearance;
  appearanceCopy = appearance;
  [(UIBarAppearance *)&v11 _copyFromAppearance:appearanceCopy];
  _plainButtonAppearance = [appearanceCopy _plainButtonAppearance];
  v6 = [_plainButtonAppearance copy];
  buttonAppearance = self->_buttonAppearance;
  self->_buttonAppearance = v6;

  _prominentButtonAppearance = [appearanceCopy _prominentButtonAppearance];

  v9 = [_prominentButtonAppearance copy];
  prominentButtonAppearance = self->_prominentButtonAppearance;
  self->_prominentButtonAppearance = v9;
}

- (void)_decodeFromCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = UIToolbarAppearance;
  coderCopy = coder;
  [(UIBarAppearance *)&v9 _decodeFromCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"PlainButtons", v9.receiver, v9.super_class}];
  buttonAppearance = self->_buttonAppearance;
  self->_buttonAppearance = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DoneButtons"];

  prominentButtonAppearance = self->_prominentButtonAppearance;
  self->_prominentButtonAppearance = v7;
}

- (void)_describeInto:(id)into
{
  v5.receiver = self;
  v5.super_class = UIToolbarAppearance;
  intoCopy = into;
  [(UIBarAppearance *)&v5 _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tPlain BarButtonItems(%p):", self->_buttonAppearance];
  [(UIBarButtonItemAppearance *)self->_buttonAppearance _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tProminent BarButtonItems(%p):", self->_prominentButtonAppearance];
  [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _describeInto:intoCopy];
}

- (unint64_t)_hashInto:(unint64_t)into
{
  v10.receiver = self;
  v10.super_class = UIToolbarAppearance;
  v4 = 3 * [(UIBarAppearance *)&v10 _hashInto:into];
  _data = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
  v6 = [_data hash] + v4;

  _data2 = [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _data];
  v8 = [_data2 hash];

  return v8 + 3 * v6;
}

- (BOOL)_checkEqualTo:(id)to
{
  toCopy = to;
  v18.receiver = self;
  v18.super_class = UIToolbarAppearance;
  if (![(UIBarAppearance *)&v18 _checkEqualTo:toCopy])
  {
    goto LABEL_8;
  }

  _data = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
  _data2 = [toCopy[7] _data];
  v7 = _data;
  v8 = _data2;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_16;
  }

  v11 = [v7 isEqual:v8];

  if (v11)
  {
LABEL_10:
    _data3 = [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _data];
    _data4 = [toCopy[8] _data];
    v7 = _data3;
    v15 = _data4;
    v9 = v15;
    if (v7 == v15)
    {
      v12 = 1;
      goto LABEL_18;
    }

    if (v7)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v12 = [v7 isEqual:v15];
LABEL_18:

      goto LABEL_19;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_18;
  }

LABEL_8:
  v12 = 0;
LABEL_19:

  return v12;
}

- (void)setButtonAppearance:(UIBarButtonItemAppearance *)buttonAppearance
{
  v5 = buttonAppearance;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIToolbarAppearance.m" lineNumber:114 description:@"use -[UIBarButtonItemAppearance setupDefaultAppearanceForStyle:] to reset appearance values"];
  }

  v6 = self->_buttonAppearance;
  v7 = v5;
  v12 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v8 = [(UIBarButtonItemAppearance *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_10:
    [(UIBarButtonItemAppearance *)self->_buttonAppearance _setChangeObserver:0];
    v9 = [(UIBarButtonItemAppearance *)v12 copy];
    v10 = self->_buttonAppearance;
    self->_buttonAppearance = v9;

    [(UIBarButtonItemAppearance *)self->_buttonAppearance _setChangeObserver:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_11:
}

- (void)setProminentButtonAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (!appearanceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIToolbarAppearance.m" lineNumber:125 description:@"use -[UIBarButtonItemAppearance setupDefaultAppearanceForStyle:] to reset appearance values"];
  }

  v6 = self->_prominentButtonAppearance;
  v7 = appearanceCopy;
  v12 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v8 = [(UIBarButtonItemAppearance *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_10:
    [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _setChangeObserver:0];
    v9 = [(UIBarButtonItemAppearance *)v12 copy];
    prominentButtonAppearance = self->_prominentButtonAppearance;
    self->_prominentButtonAppearance = v9;

    [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _setChangeObserver:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_11:
}

- (void)_barButtonItemDataChanged:(id)changed
{
  v12 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = changedCopy;
  if (self->_buttonAppearance == changedCopy)
  {
    selfCopy2 = self;
    v8 = 8;
LABEL_8:
    [(UIBarAppearance *)selfCopy2 _signalCategoryChanges:v8];
    goto LABEL_9;
  }

  if (self->_prominentButtonAppearance == changedCopy)
  {
    selfCopy2 = self;
    v8 = 16;
    goto LABEL_8;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Signal from unknown apperance object %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_barButtonItemDataChanged____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Signal from unknown apperance object %@", &v10, 0xCu);
    }
  }

LABEL_9:
}

@end