@interface _UIActivityItemCustomizationPicker
- (BOOL)isEqual:(id)equal;
- (_UIActivityItemCustomizationPicker)initWithCoder:(id)coder;
- (_UIActivityItemCustomizationPicker)initWithIdentifier:(id)identifier optionTitles:(id)titles selectedOptionIndex:(int64_t)index footerText:(id)text;
- (void)_setSelectedOptionIndex:(int64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIActivityItemCustomizationPicker

- (_UIActivityItemCustomizationPicker)initWithIdentifier:(id)identifier optionTitles:(id)titles selectedOptionIndex:(int64_t)index footerText:(id)text
{
  v14.receiver = self;
  v14.super_class = _UIActivityItemCustomizationPicker;
  titlesCopy = titles;
  v10 = [(_UIActivityItemCustomization *)&v14 _initWithTitle:0 identifier:identifier footerText:text];
  v11 = [titlesCopy copy];

  optionTitles = v10->_optionTitles;
  v10->_optionTitles = v11;

  v10->_selectedOptionIndex = index;
  v10->_previousSelectedOptionIndex = index;
  return v10;
}

- (void)_setSelectedOptionIndex:(int64_t)index
{
  selectedOptionIndex = self->_selectedOptionIndex;
  if (selectedOptionIndex != index)
  {
    self->_previousSelectedOptionIndex = selectedOptionIndex;
    self->_selectedOptionIndex = index;
    (*(self->__handler + 2))();
  }
}

- (_UIActivityItemCustomizationPicker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _UIActivityItemCustomizationPicker;
  v5 = [(_UIActivityItemCustomization *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"optionTitles"];
    optionTitles = v5->_optionTitles;
    v5->_optionTitles = v6;

    v5->_previousSelectedOptionIndex = [coderCopy decodeInt64ForKey:@"previousSelectedOptionIndex"];
    v5->_selectedOptionIndex = [coderCopy decodeInt64ForKey:@"selectedOptionIndex"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIActivityItemCustomizationPicker;
  coderCopy = coder;
  [(_UIActivityItemCustomization *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_optionTitles forKey:{@"optionTitles", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_previousSelectedOptionIndex forKey:@"previousSelectedOptionIndex"];
  [coderCopy encodeInt64:self->_selectedOptionIndex forKey:@"selectedOptionIndex"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v15.receiver = self;
      v15.super_class = _UIActivityItemCustomizationPicker;
      if ([(_UIActivityItemCustomization *)&v15 isEqual:v5]&& (v6 = [(_UIActivityItemCustomizationPicker *)v5 previousSelectedOptionIndex], v6 == [(_UIActivityItemCustomizationPicker *)self previousSelectedOptionIndex]) && (v7 = [(_UIActivityItemCustomizationPicker *)v5 selectedOptionIndex], v7 == [(_UIActivityItemCustomizationPicker *)self selectedOptionIndex]))
      {
        _optionTitles = [(_UIActivityItemCustomizationPicker *)v5 _optionTitles];
        _optionTitles2 = [(_UIActivityItemCustomizationPicker *)self _optionTitles];
        v10 = _optionTitles;
        v11 = _optionTitles2;
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