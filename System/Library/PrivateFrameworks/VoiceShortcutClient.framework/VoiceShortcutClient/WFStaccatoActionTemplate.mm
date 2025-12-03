@interface WFStaccatoActionTemplate
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActionTemplate:(id)template;
- (WFStaccatoActionTemplate)initWithCoder:(id)coder;
- (WFStaccatoActionTemplate)initWithIdentifier:(id)identifier sectionIdentifier:(id)sectionIdentifier actionIdentifier:(id)actionIdentifier localizedTitle:(id)title localizedDescription:(id)description parameters:(id)parameters;
- (id)description;
- (id)tintColor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFStaccatoActionTemplate

- (unint64_t)hash
{
  v3 = objc_opt_new();
  identifier = [(WFStaccatoActionTemplate *)self identifier];
  v5 = [v3 combine:identifier];

  sectionIdentifier = [(WFStaccatoActionTemplate *)self sectionIdentifier];
  v7 = [v3 combine:sectionIdentifier];

  actionIdentifier = [(WFStaccatoActionTemplate *)self actionIdentifier];
  v9 = [v3 combine:actionIdentifier];

  localizedTitle = [(WFStaccatoActionTemplate *)self localizedTitle];
  v11 = [v3 combine:localizedTitle];

  parameters = [(WFStaccatoActionTemplate *)self parameters];
  v13 = [v3 combine:parameters];

  v14 = [v3 finalize];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFStaccatoActionTemplate *)self isEqualToActionTemplate:equalCopy];

  return v5;
}

- (BOOL)isEqualToActionTemplate:(id)template
{
  templateCopy = template;
  v5 = templateCopy;
  if (templateCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if (templateCopy)
    {
      identifier = [(WFStaccatoActionTemplate *)self identifier];
      identifier2 = [(WFStaccatoActionTemplate *)v5 identifier];
      v8 = identifier;
      v9 = identifier2;
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

      sectionIdentifier = [(WFStaccatoActionTemplate *)self sectionIdentifier];
      sectionIdentifier2 = [(WFStaccatoActionTemplate *)v5 sectionIdentifier];
      v13 = sectionIdentifier;
      v17 = sectionIdentifier2;
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

      localizedTitle = [(WFStaccatoActionTemplate *)self localizedTitle];
      localizedTitle2 = [(WFStaccatoActionTemplate *)v5 localizedTitle];
      v19 = localizedTitle;
      v23 = localizedTitle2;
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

      parameters = [(WFStaccatoActionTemplate *)self parameters];
      parameters2 = [(WFStaccatoActionTemplate *)v5 parameters];
      v19 = parameters;
      v28 = parameters2;
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
  identifier = [(WFStaccatoActionTemplate *)self identifier];
  sectionIdentifier = [(WFStaccatoActionTemplate *)self sectionIdentifier];
  actionIdentifier = [(WFStaccatoActionTemplate *)self actionIdentifier];
  localizedTitle = [(WFStaccatoActionTemplate *)self localizedTitle];
  parameters = [(WFStaccatoActionTemplate *)self parameters];
  v10 = [v3 stringWithFormat:@"<%@: id: %@ section: %@, action: %@ title: %@, parameters: %@>", v4, identifier, sectionIdentifier, actionIdentifier, localizedTitle, parameters];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFStaccatoActionTemplate *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  sectionIdentifier = [(WFStaccatoActionTemplate *)self sectionIdentifier];
  [coderCopy encodeObject:sectionIdentifier forKey:@"sectionIdentifier"];

  actionIdentifier = [(WFStaccatoActionTemplate *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  localizedTitle = [(WFStaccatoActionTemplate *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];

  localizedDescription = [(WFStaccatoActionTemplate *)self localizedDescription];
  [coderCopy encodeObject:localizedDescription forKey:@"localizedDescription"];

  parameters = [(WFStaccatoActionTemplate *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];
}

- (WFStaccatoActionTemplate)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
  v10 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"parameters"];

  selfCopy = 0;
  if (v5 && v6 && v7 && v8 && v13)
  {
    self = [(WFStaccatoActionTemplate *)self initWithIdentifier:v5 sectionIdentifier:v6 actionIdentifier:v7 localizedTitle:v8 localizedDescription:v9 parameters:v13];
    selfCopy = self;
  }

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)tintColor
{
  sectionIdentifier = [(WFStaccatoActionTemplate *)self sectionIdentifier];
  v3 = WFStaccatoTintColorForSectionIdentifier(sectionIdentifier);

  return v3;
}

- (WFStaccatoActionTemplate)initWithIdentifier:(id)identifier sectionIdentifier:(id)sectionIdentifier actionIdentifier:(id)actionIdentifier localizedTitle:(id)title localizedDescription:(id)description parameters:(id)parameters
{
  identifierCopy = identifier;
  sectionIdentifierCopy = sectionIdentifier;
  actionIdentifierCopy = actionIdentifier;
  titleCopy = title;
  descriptionCopy = description;
  parametersCopy = parameters;
  if (identifierCopy)
  {
    if (sectionIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (sectionIdentifierCopy)
    {
LABEL_3:
      if (actionIdentifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

  if (actionIdentifierCopy)
  {
LABEL_4:
    if (titleCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"localizedTitle"}];

    if (parametersCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

  if (!titleCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (parametersCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_6:
  v39.receiver = self;
  v39.super_class = WFStaccatoActionTemplate;
  v21 = [(WFStaccatoActionTemplate *)&v39 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [sectionIdentifierCopy copy];
    sectionIdentifier = v21->_sectionIdentifier;
    v21->_sectionIdentifier = v24;

    v26 = [actionIdentifierCopy copy];
    actionIdentifier = v21->_actionIdentifier;
    v21->_actionIdentifier = v26;

    v28 = [titleCopy copy];
    localizedTitle = v21->_localizedTitle;
    v21->_localizedTitle = v28;

    v30 = [descriptionCopy copy];
    localizedDescription = v21->_localizedDescription;
    v21->_localizedDescription = v30;

    objc_storeStrong(&v21->_parameters, parameters);
    v32 = v21;
  }

  return v21;
}

@end