@interface WFStaccatoActionTemplateParameterValueSection
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActionTemplateParameterValueSection:(id)section;
- (WFStaccatoActionTemplateParameterValueSection)initWithCoder:(id)coder;
- (WFStaccatoActionTemplateParameterValueSection)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image values:(id)values;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFStaccatoActionTemplateParameterValueSection

- (unint64_t)hash
{
  v3 = objc_opt_new();
  title = [(WFStaccatoActionTemplateParameterValueSection *)self title];
  v5 = [v3 combine:title];

  subtitle = [(WFStaccatoActionTemplateParameterValueSection *)self subtitle];
  v7 = [v3 combine:subtitle];

  image = [(WFStaccatoActionTemplateParameterValueSection *)self image];
  v9 = [v3 combine:image];

  values = [(WFStaccatoActionTemplateParameterValueSection *)self values];
  v11 = [v3 combine:values];

  v12 = [v3 finalize];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFStaccatoActionTemplateParameterValueSection *)self isEqualToActionTemplateParameterValueSection:equalCopy];

  return v5;
}

- (BOOL)isEqualToActionTemplateParameterValueSection:(id)section
{
  sectionCopy = section;
  v5 = sectionCopy;
  if (sectionCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if (sectionCopy)
    {
      title = [(WFStaccatoActionTemplateParameterValueSection *)self title];
      title2 = [(WFStaccatoActionTemplateParameterValueSection *)v5 title];
      v8 = title;
      v9 = title2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        v11 = 0;
        v12 = v9;
        v13 = v8;
        if (!v8 || !v9)
        {
          goto LABEL_31;
        }

        v14 = [v8 isEqualToString:v9];

        if (!v14)
        {
          v11 = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      subtitle = [(WFStaccatoActionTemplateParameterValueSection *)self subtitle];
      subtitle2 = [(WFStaccatoActionTemplateParameterValueSection *)v5 subtitle];
      v13 = subtitle;
      v17 = subtitle2;
      v12 = v17;
      if (v13 == v17)
      {
      }

      else
      {
        v11 = 0;
        v18 = v17;
        v19 = v13;
        if (!v13 || !v17)
        {
          goto LABEL_30;
        }

        v20 = [v13 isEqualToString:v17];

        if (!v20)
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }
      }

      image = [(WFStaccatoActionTemplateParameterValueSection *)self image];
      image2 = [(WFStaccatoActionTemplateParameterValueSection *)v5 image];
      v19 = image;
      v23 = image2;
      v18 = v23;
      v30 = v19;
      if (v19 == v23)
      {
      }

      else
      {
        v11 = 0;
        v24 = v23;
        if (!v19 || !v23)
        {
LABEL_29:

          v19 = v30;
          goto LABEL_30;
        }

        v25 = [v19 isEqual:v23];

        if (!v25)
        {
          v11 = 0;
LABEL_30:

          goto LABEL_31;
        }
      }

      values = [(WFStaccatoActionTemplateParameterValueSection *)self values];
      values2 = [(WFStaccatoActionTemplateParameterValueSection *)v5 values];
      v19 = values;
      v28 = values2;
      v24 = v28;
      if (v19 == v28)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0;
        if (v19 && v28)
        {
          v11 = [v19 isEqualToArray:v28];
        }
      }

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_33:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = WFStaccatoActionTemplateParameterValueSection;
  v4 = [(WFStaccatoActionTemplateParameterValueSection *)&v9 description];
  title = [(WFStaccatoActionTemplateParameterValueSection *)self title];
  values = [(WFStaccatoActionTemplateParameterValueSection *)self values];
  v7 = [v3 stringWithFormat:@"<%@: %@ [%lu values]>", v4, title, objc_msgSend(values, "count")];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(WFStaccatoActionTemplateParameterValueSection *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(WFStaccatoActionTemplateParameterValueSection *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  image = [(WFStaccatoActionTemplateParameterValueSection *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  values = [(WFStaccatoActionTemplateParameterValueSection *)self values];
  [coderCopy encodeObject:values forKey:@"values"];
}

- (WFStaccatoActionTemplateParameterValueSection)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v8 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"values"];

  if (v11)
  {
    self = [(WFStaccatoActionTemplateParameterValueSection *)self initWithTitle:v5 subtitle:v6 image:v7 values:v11];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFStaccatoActionTemplateParameterValueSection)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image values:(id)values
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  valuesCopy = values;
  if (!valuesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameterValueSection.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"values"}];
  }

  v25.receiver = self;
  v25.super_class = WFStaccatoActionTemplateParameterValueSection;
  v15 = [(WFStaccatoActionTemplateParameterValueSection *)&v25 init];
  if (v15)
  {
    v16 = [titleCopy copy];
    title = v15->_title;
    v15->_title = v16;

    v18 = [subtitleCopy copy];
    subtitle = v15->_subtitle;
    v15->_subtitle = v18;

    objc_storeStrong(&v15->_image, image);
    v20 = [valuesCopy copy];
    values = v15->_values;
    v15->_values = v20;

    v22 = v15;
  }

  return v15;
}

@end