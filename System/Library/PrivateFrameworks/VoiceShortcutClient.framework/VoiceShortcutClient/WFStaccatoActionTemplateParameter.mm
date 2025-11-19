@interface WFStaccatoActionTemplateParameter
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActionTemplateParameter:(id)a3;
- (WFStaccatoActionTemplateParameter)initWithCoder:(id)a3;
- (WFStaccatoActionTemplateParameter)initWithKey:(id)a3 actionIdentifier:(id)a4 localizedLabel:(id)a5 localizedDescription:(id)a6 defaultValue:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFStaccatoActionTemplateParameter

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFStaccatoActionTemplateParameter *)self key];
  v5 = [v3 combine:v4];

  v6 = [(WFStaccatoActionTemplateParameter *)self actionIdentifier];
  v7 = [v3 combine:v6];

  v8 = [(WFStaccatoActionTemplateParameter *)self localizedLabel];
  v9 = [v3 combine:v8];

  v10 = [(WFStaccatoActionTemplateParameter *)self localizedDescription];
  v11 = [v3 combine:v10];

  v12 = [(WFStaccatoActionTemplateParameter *)self defaultValue];
  v13 = [v3 combine:v12];

  v14 = [v3 finalize];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFStaccatoActionTemplateParameter *)self isEqualToActionTemplateParameter:v4];

  return v5;
}

- (BOOL)isEqualToActionTemplateParameter:(id)a3
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
      v6 = [(WFStaccatoActionTemplateParameter *)self key];
      v7 = [(WFStaccatoActionTemplateParameter *)v5 key];
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

      v15 = [(WFStaccatoActionTemplateParameter *)self actionIdentifier];
      v16 = [(WFStaccatoActionTemplateParameter *)v5 actionIdentifier];
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

      v21 = [(WFStaccatoActionTemplateParameter *)self localizedLabel];
      v22 = [(WFStaccatoActionTemplateParameter *)v5 localizedLabel];
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

      v26 = [(WFStaccatoActionTemplateParameter *)self localizedDescription];
      v27 = [(WFStaccatoActionTemplateParameter *)v5 localizedDescription];
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
            v38 = [v39 isEqualToString:v29];

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
      v32 = [(WFStaccatoActionTemplateParameter *)self defaultValue];
      v33 = [(WFStaccatoActionTemplateParameter *)v5 defaultValue];
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
  v12.super_class = WFStaccatoActionTemplateParameter;
  v4 = [(WFStaccatoActionTemplateParameter *)&v12 description];
  v5 = [(WFStaccatoActionTemplateParameter *)self key];
  v6 = [(WFStaccatoActionTemplateParameter *)self actionIdentifier];
  v7 = [(WFStaccatoActionTemplateParameter *)self localizedLabel];
  v8 = [(WFStaccatoActionTemplateParameter *)self localizedDescription];
  v9 = [(WFStaccatoActionTemplateParameter *)self defaultValue];
  v10 = [v3 stringWithFormat:@"<%@: key: %@, action: %@, label: %@, description: %@, default: %@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFStaccatoActionTemplateParameter *)self key];
  [v4 encodeObject:v5 forKey:@"key"];

  v6 = [(WFStaccatoActionTemplateParameter *)self actionIdentifier];
  [v4 encodeObject:v6 forKey:@"actionIdentifier"];

  v7 = [(WFStaccatoActionTemplateParameter *)self localizedLabel];
  [v4 encodeObject:v7 forKey:@"localizedLabel"];

  v8 = [(WFStaccatoActionTemplateParameter *)self localizedDescription];
  [v4 encodeObject:v8 forKey:@"localizedDescription"];

  v9 = [(WFStaccatoActionTemplateParameter *)self defaultValue];
  [v4 encodeObject:v9 forKey:@"defaultValue"];
}

- (WFStaccatoActionTemplateParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedLabel"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];

  v10 = 0;
  if (v5 && v6 && v7)
  {
    self = [(WFStaccatoActionTemplateParameter *)self initWithKey:v5 actionIdentifier:v6 localizedLabel:v7 localizedDescription:v8 defaultValue:v9];
    v10 = self;
  }

  return v10;
}

- (WFStaccatoActionTemplateParameter)initWithKey:(id)a3 actionIdentifier:(id)a4 localizedLabel:(id)a5 localizedDescription:(id)a6 defaultValue:(id)a7
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
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameter.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameter.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"key"}];

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_9:
  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameter.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"localizedLabel"}];

LABEL_4:
  v32.receiver = self;
  v32.super_class = WFStaccatoActionTemplateParameter;
  v18 = [(WFStaccatoActionTemplateParameter *)&v32 init];
  if (v18)
  {
    v19 = [v13 copy];
    key = v18->_key;
    v18->_key = v19;

    v21 = [v14 copy];
    actionIdentifier = v18->_actionIdentifier;
    v18->_actionIdentifier = v21;

    v23 = [v15 copy];
    localizedLabel = v18->_localizedLabel;
    v18->_localizedLabel = v23;

    v25 = [v16 copy];
    localizedDescription = v18->_localizedDescription;
    v18->_localizedDescription = v25;

    objc_storeStrong(&v18->_defaultValue, a7);
    v27 = v18;
  }

  return v18;
}

@end