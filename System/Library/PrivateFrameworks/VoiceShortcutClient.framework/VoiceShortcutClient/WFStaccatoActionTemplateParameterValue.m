@interface WFStaccatoActionTemplateParameterValue
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActionTemplateParameterValue:(id)a3;
- (WFStaccatoActionTemplateParameterValue)initWithCoder:(id)a3;
- (WFStaccatoActionTemplateParameterValue)initWithIdentifier:(id)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5 image:(id)a6 serializedState:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFStaccatoActionTemplateParameterValue

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFStaccatoActionTemplateParameterValue *)self identifier];
  v5 = [v3 combine:v4];

  v6 = [(WFStaccatoActionTemplateParameterValue *)self localizedTitle];
  v7 = [v3 combine:v6];

  v8 = [(WFStaccatoActionTemplateParameterValue *)self localizedSubtitle];
  v9 = [v3 combine:v8];

  v10 = [(WFStaccatoActionTemplateParameterValue *)self image];
  v11 = [v3 combine:v10];

  v12 = [(WFStaccatoActionTemplateParameterValue *)self serializedState];
  v13 = [v3 combine:v12];

  v14 = [v3 finalize];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFStaccatoActionTemplateParameterValue *)self isEqualToActionTemplateParameterValue:v4];

  return v5;
}

- (BOOL)isEqualToActionTemplateParameterValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (v4)
    {
      v6 = [(WFStaccatoActionTemplateParameterValue *)self identifier];
      v7 = [(WFStaccatoActionTemplateParameterValue *)v5 identifier];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v12 = v9;
        v13 = v8;
        if (!v8 || !v9)
        {
          goto LABEL_40;
        }

        v14 = [v8 isEqualToString:v9];

        if (!v14)
        {
          LOBYTE(v11) = 0;
LABEL_41:

          goto LABEL_42;
        }
      }

      v15 = [(WFStaccatoActionTemplateParameterValue *)self localizedTitle];
      v16 = [(WFStaccatoActionTemplateParameterValue *)v5 localizedTitle];
      v13 = v15;
      v17 = v16;
      v12 = v17;
      if (v13 == v17)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v18 = v17;
        v19 = v13;
        if (!v13 || !v17)
        {
          goto LABEL_39;
        }

        v20 = [v13 isEqualToString:v17];

        if (!v20)
        {
          LOBYTE(v11) = 0;
LABEL_40:

          goto LABEL_41;
        }
      }

      v21 = [(WFStaccatoActionTemplateParameterValue *)self localizedSubtitle];
      v22 = [(WFStaccatoActionTemplateParameterValue *)v5 localizedSubtitle];
      v19 = v21;
      v23 = v22;
      v18 = v23;
      if (v19 == v23)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v24 = v23;
        v25 = v19;
        if (!v19 || !v23)
        {
          goto LABEL_38;
        }

        v11 = [v19 isEqualToString:v23];

        if (!v11)
        {
          goto LABEL_39;
        }
      }

      v26 = [(WFStaccatoActionTemplateParameterValue *)self image];
      v27 = [(WFStaccatoActionTemplateParameterValue *)v5 image];
      v28 = v26;
      v29 = v27;
      v30 = v28;
      v39 = v28;
      v40 = v29;
      if (v28 != v29)
      {
        LOBYTE(v11) = 0;
        if (v30)
        {
          v31 = v29;
          if (v29)
          {
            v25 = v39;
            v38 = [v39 isEqual:v29];

            if (!v38)
            {
              LOBYTE(v11) = 0;
LABEL_37:
              v24 = v40;
LABEL_38:

LABEL_39:
              goto LABEL_40;
            }

            goto LABEL_29;
          }
        }

        else
        {
          v31 = v29;
        }

LABEL_36:

        v25 = v39;
        goto LABEL_37;
      }

LABEL_29:
      v32 = [(WFStaccatoActionTemplateParameterValue *)self serializedState];
      v33 = [(WFStaccatoActionTemplateParameterValue *)v5 serializedState];
      v34 = v32;
      v35 = v33;
      v36 = v35;
      if (v34 == v35)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = 0;
        if (v34 && v35)
        {
          LOBYTE(v11) = [v34 isEqual:v35];
        }
      }

      v31 = v36;
      v30 = v34;
      goto LABEL_36;
    }

    LOBYTE(v11) = 0;
  }

LABEL_42:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = WFStaccatoActionTemplateParameterValue;
  v4 = [(WFStaccatoActionTemplateParameterValue *)&v12 description];
  v5 = [(WFStaccatoActionTemplateParameterValue *)self identifier];
  v6 = [(WFStaccatoActionTemplateParameterValue *)self localizedTitle];
  v7 = [(WFStaccatoActionTemplateParameterValue *)self localizedSubtitle];
  v8 = [(WFStaccatoActionTemplateParameterValue *)self image];
  v9 = [(WFStaccatoActionTemplateParameterValue *)self serializedState];
  v10 = [v3 stringWithFormat:@"<%@: id: %@, title: %@, subtitle: %@, image: %@, state: %@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFStaccatoActionTemplateParameterValue *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFStaccatoActionTemplateParameterValue *)self localizedTitle];
  [v4 encodeObject:v6 forKey:@"localizedTitle"];

  v7 = [(WFStaccatoActionTemplateParameterValue *)self localizedSubtitle];
  [v4 encodeObject:v7 forKey:@"localizedSubtitle"];

  v8 = [(WFStaccatoActionTemplateParameterValue *)self image];
  [v4 encodeObject:v8 forKey:@"image"];

  v9 = [(WFStaccatoActionTemplateParameterValue *)self serializedState];
  [v4 encodeObject:v9 forKey:@"serializedState"];
}

- (WFStaccatoActionTemplateParameterValue)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"serializedState"];

  v15 = 0;
  if (v4 && v5)
  {
    v17 = v19;
    v16 = self;
    if (v14)
    {
      v16 = [(WFStaccatoActionTemplateParameterValue *)self initWithIdentifier:v4 localizedTitle:v5 localizedSubtitle:v19 image:v6 serializedState:v14];
      v15 = v16;
    }
  }

  else
  {
    v17 = v19;
    v16 = self;
  }

  return v15;
}

- (WFStaccatoActionTemplateParameterValue)initWithIdentifier:(id)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5 image:(id)a6 serializedState:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameterValue.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"localizedTitle"}];

    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameterValue.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v17)
  {
    goto LABEL_4;
  }

LABEL_9:
  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameterValue.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"serializedState"}];

LABEL_4:
  v30.receiver = self;
  v30.super_class = WFStaccatoActionTemplateParameterValue;
  v18 = [(WFStaccatoActionTemplateParameterValue *)&v30 init];
  if (v18)
  {
    v19 = [v13 copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    v21 = [v14 copy];
    localizedTitle = v18->_localizedTitle;
    v18->_localizedTitle = v21;

    v23 = [v15 copy];
    localizedSubtitle = v18->_localizedSubtitle;
    v18->_localizedSubtitle = v23;

    objc_storeStrong(&v18->_image, a6);
    objc_storeStrong(&v18->_serializedState, a7);
    v25 = v18;
  }

  return v18;
}

@end