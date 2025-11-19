@interface WFStaccatoActionTemplateParameterValueSection
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActionTemplateParameterValueSection:(id)a3;
- (WFStaccatoActionTemplateParameterValueSection)initWithCoder:(id)a3;
- (WFStaccatoActionTemplateParameterValueSection)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 values:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFStaccatoActionTemplateParameterValueSection

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFStaccatoActionTemplateParameterValueSection *)self title];
  v5 = [v3 combine:v4];

  v6 = [(WFStaccatoActionTemplateParameterValueSection *)self subtitle];
  v7 = [v3 combine:v6];

  v8 = [(WFStaccatoActionTemplateParameterValueSection *)self image];
  v9 = [v3 combine:v8];

  v10 = [(WFStaccatoActionTemplateParameterValueSection *)self values];
  v11 = [v3 combine:v10];

  v12 = [v3 finalize];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFStaccatoActionTemplateParameterValueSection *)self isEqualToActionTemplateParameterValueSection:v4];

  return v5;
}

- (BOOL)isEqualToActionTemplateParameterValueSection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    if (v4)
    {
      v6 = [(WFStaccatoActionTemplateParameterValueSection *)self title];
      v7 = [(WFStaccatoActionTemplateParameterValueSection *)v5 title];
      v8 = v6;
      v9 = v7;
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

      v15 = [(WFStaccatoActionTemplateParameterValueSection *)self subtitle];
      v16 = [(WFStaccatoActionTemplateParameterValueSection *)v5 subtitle];
      v13 = v15;
      v17 = v16;
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

      v21 = [(WFStaccatoActionTemplateParameterValueSection *)self image];
      v22 = [(WFStaccatoActionTemplateParameterValueSection *)v5 image];
      v19 = v21;
      v23 = v22;
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

      v26 = [(WFStaccatoActionTemplateParameterValueSection *)self values];
      v27 = [(WFStaccatoActionTemplateParameterValueSection *)v5 values];
      v19 = v26;
      v28 = v27;
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
  v5 = [(WFStaccatoActionTemplateParameterValueSection *)self title];
  v6 = [(WFStaccatoActionTemplateParameterValueSection *)self values];
  v7 = [v3 stringWithFormat:@"<%@: %@ [%lu values]>", v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFStaccatoActionTemplateParameterValueSection *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(WFStaccatoActionTemplateParameterValueSection *)self subtitle];
  [v4 encodeObject:v6 forKey:@"subtitle"];

  v7 = [(WFStaccatoActionTemplateParameterValueSection *)self image];
  [v4 encodeObject:v7 forKey:@"image"];

  v8 = [(WFStaccatoActionTemplateParameterValueSection *)self values];
  [v4 encodeObject:v8 forKey:@"values"];
}

- (WFStaccatoActionTemplateParameterValueSection)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v8 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"values"];

  if (v11)
  {
    self = [(WFStaccatoActionTemplateParameterValueSection *)self initWithTitle:v5 subtitle:v6 image:v7 values:v11];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (WFStaccatoActionTemplateParameterValueSection)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 values:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameterValueSection.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"values"}];
  }

  v25.receiver = self;
  v25.super_class = WFStaccatoActionTemplateParameterValueSection;
  v15 = [(WFStaccatoActionTemplateParameterValueSection *)&v25 init];
  if (v15)
  {
    v16 = [v11 copy];
    title = v15->_title;
    v15->_title = v16;

    v18 = [v12 copy];
    subtitle = v15->_subtitle;
    v15->_subtitle = v18;

    objc_storeStrong(&v15->_image, a5);
    v20 = [v14 copy];
    values = v15->_values;
    v15->_values = v20;

    v22 = v15;
  }

  return v15;
}

@end