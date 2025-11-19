@interface WFStaccatoActionTemplate
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActionTemplate:(id)a3;
- (WFStaccatoActionTemplate)initWithCoder:(id)a3;
- (WFStaccatoActionTemplate)initWithIdentifier:(id)a3 sectionIdentifier:(id)a4 actionIdentifier:(id)a5 localizedTitle:(id)a6 localizedDescription:(id)a7 parameters:(id)a8;
- (id)description;
- (id)tintColor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFStaccatoActionTemplate

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFStaccatoActionTemplate *)self identifier];
  v5 = [v3 combine:v4];

  v6 = [(WFStaccatoActionTemplate *)self sectionIdentifier];
  v7 = [v3 combine:v6];

  v8 = [(WFStaccatoActionTemplate *)self actionIdentifier];
  v9 = [v3 combine:v8];

  v10 = [(WFStaccatoActionTemplate *)self localizedTitle];
  v11 = [v3 combine:v10];

  v12 = [(WFStaccatoActionTemplate *)self parameters];
  v13 = [v3 combine:v12];

  v14 = [v3 finalize];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFStaccatoActionTemplate *)self isEqualToActionTemplate:v4];

  return v5;
}

- (BOOL)isEqualToActionTemplate:(id)a3
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
      v6 = [(WFStaccatoActionTemplate *)self identifier];
      v7 = [(WFStaccatoActionTemplate *)v5 identifier];
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

      v15 = [(WFStaccatoActionTemplate *)self sectionIdentifier];
      v16 = [(WFStaccatoActionTemplate *)v5 sectionIdentifier];
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

      v21 = [(WFStaccatoActionTemplate *)self localizedTitle];
      v22 = [(WFStaccatoActionTemplate *)v5 localizedTitle];
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

        v25 = [v19 isEqualToString:v23];

        if (!v25)
        {
          v11 = 0;
LABEL_30:

          goto LABEL_31;
        }
      }

      v26 = [(WFStaccatoActionTemplate *)self parameters];
      v27 = [(WFStaccatoActionTemplate *)v5 parameters];
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
  v12.receiver = self;
  v12.super_class = WFStaccatoActionTemplate;
  v4 = [(WFStaccatoActionTemplate *)&v12 description];
  v5 = [(WFStaccatoActionTemplate *)self identifier];
  v6 = [(WFStaccatoActionTemplate *)self sectionIdentifier];
  v7 = [(WFStaccatoActionTemplate *)self actionIdentifier];
  v8 = [(WFStaccatoActionTemplate *)self localizedTitle];
  v9 = [(WFStaccatoActionTemplate *)self parameters];
  v10 = [v3 stringWithFormat:@"<%@: id: %@ section: %@, action: %@ title: %@, parameters: %@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFStaccatoActionTemplate *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFStaccatoActionTemplate *)self sectionIdentifier];
  [v4 encodeObject:v6 forKey:@"sectionIdentifier"];

  v7 = [(WFStaccatoActionTemplate *)self actionIdentifier];
  [v4 encodeObject:v7 forKey:@"actionIdentifier"];

  v8 = [(WFStaccatoActionTemplate *)self localizedTitle];
  [v4 encodeObject:v8 forKey:@"localizedTitle"];

  v9 = [(WFStaccatoActionTemplate *)self localizedDescription];
  [v4 encodeObject:v9 forKey:@"localizedDescription"];

  v10 = [(WFStaccatoActionTemplate *)self parameters];
  [v4 encodeObject:v10 forKey:@"parameters"];
}

- (WFStaccatoActionTemplate)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
  v10 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"parameters"];

  v14 = 0;
  if (v5 && v6 && v7 && v8 && v13)
  {
    self = [(WFStaccatoActionTemplate *)self initWithIdentifier:v5 sectionIdentifier:v6 actionIdentifier:v7 localizedTitle:v8 localizedDescription:v9 parameters:v13];
    v14 = self;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)tintColor
{
  v2 = [(WFStaccatoActionTemplate *)self sectionIdentifier];
  v3 = WFStaccatoTintColorForSectionIdentifier(v2);

  return v3;
}

- (WFStaccatoActionTemplate)initWithIdentifier:(id)a3 sectionIdentifier:(id)a4 actionIdentifier:(id)a5 localizedTitle:(id)a6 localizedDescription:(id)a7 parameters:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

  if (v17)
  {
LABEL_4:
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_12:
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"localizedTitle"}];

    if (v20)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  v36 = [MEMORY[0x1E696AAA8] currentHandler];
  [v36 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

  if (!v18)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v20)
  {
    goto LABEL_6;
  }

LABEL_13:
  v38 = [MEMORY[0x1E696AAA8] currentHandler];
  [v38 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_6:
  v39.receiver = self;
  v39.super_class = WFStaccatoActionTemplate;
  v21 = [(WFStaccatoActionTemplate *)&v39 init];
  if (v21)
  {
    v22 = [v15 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v16 copy];
    sectionIdentifier = v21->_sectionIdentifier;
    v21->_sectionIdentifier = v24;

    v26 = [v17 copy];
    actionIdentifier = v21->_actionIdentifier;
    v21->_actionIdentifier = v26;

    v28 = [v18 copy];
    localizedTitle = v21->_localizedTitle;
    v21->_localizedTitle = v28;

    v30 = [v19 copy];
    localizedDescription = v21->_localizedDescription;
    v21->_localizedDescription = v30;

    objc_storeStrong(&v21->_parameters, a8);
    v32 = v21;
  }

  return v21;
}

@end