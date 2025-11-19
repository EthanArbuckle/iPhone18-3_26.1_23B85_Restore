@interface _UIActivityItemCustomizationPicker
- (BOOL)isEqual:(id)a3;
- (_UIActivityItemCustomizationPicker)initWithCoder:(id)a3;
- (_UIActivityItemCustomizationPicker)initWithIdentifier:(id)a3 optionTitles:(id)a4 selectedOptionIndex:(int64_t)a5 footerText:(id)a6;
- (void)_setSelectedOptionIndex:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIActivityItemCustomizationPicker

- (_UIActivityItemCustomizationPicker)initWithIdentifier:(id)a3 optionTitles:(id)a4 selectedOptionIndex:(int64_t)a5 footerText:(id)a6
{
  v14.receiver = self;
  v14.super_class = _UIActivityItemCustomizationPicker;
  v9 = a4;
  v10 = [(_UIActivityItemCustomization *)&v14 _initWithTitle:0 identifier:a3 footerText:a6];
  v11 = [v9 copy];

  optionTitles = v10->_optionTitles;
  v10->_optionTitles = v11;

  v10->_selectedOptionIndex = a5;
  v10->_previousSelectedOptionIndex = a5;
  return v10;
}

- (void)_setSelectedOptionIndex:(int64_t)a3
{
  selectedOptionIndex = self->_selectedOptionIndex;
  if (selectedOptionIndex != a3)
  {
    self->_previousSelectedOptionIndex = selectedOptionIndex;
    self->_selectedOptionIndex = a3;
    (*(self->__handler + 2))();
  }
}

- (_UIActivityItemCustomizationPicker)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIActivityItemCustomizationPicker;
  v5 = [(_UIActivityItemCustomization *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"optionTitles"];
    optionTitles = v5->_optionTitles;
    v5->_optionTitles = v6;

    v5->_previousSelectedOptionIndex = [v4 decodeInt64ForKey:@"previousSelectedOptionIndex"];
    v5->_selectedOptionIndex = [v4 decodeInt64ForKey:@"selectedOptionIndex"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIActivityItemCustomizationPicker;
  v4 = a3;
  [(_UIActivityItemCustomization *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_optionTitles forKey:{@"optionTitles", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_previousSelectedOptionIndex forKey:@"previousSelectedOptionIndex"];
  [v4 encodeInt64:self->_selectedOptionIndex forKey:@"selectedOptionIndex"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v15.receiver = self;
      v15.super_class = _UIActivityItemCustomizationPicker;
      if ([(_UIActivityItemCustomization *)&v15 isEqual:v5]&& (v6 = [(_UIActivityItemCustomizationPicker *)v5 previousSelectedOptionIndex], v6 == [(_UIActivityItemCustomizationPicker *)self previousSelectedOptionIndex]) && (v7 = [(_UIActivityItemCustomizationPicker *)v5 selectedOptionIndex], v7 == [(_UIActivityItemCustomizationPicker *)self selectedOptionIndex]))
      {
        v8 = [(_UIActivityItemCustomizationPicker *)v5 _optionTitles];
        v9 = [(_UIActivityItemCustomizationPicker *)self _optionTitles];
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {
          v13 = 1;
        }

        else if ((v10 != 0) == (v11 == 0))
        {
          v13 = 0;
        }

        else
        {
          v13 = [v10 isEqual:v11];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end