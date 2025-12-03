@interface WFStaccatoActionTemplateParameter
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActionTemplateParameter:(id)parameter;
- (WFStaccatoActionTemplateParameter)initWithCoder:(id)coder;
- (WFStaccatoActionTemplateParameter)initWithKey:(id)key actionIdentifier:(id)identifier localizedLabel:(id)label localizedDescription:(id)description defaultValue:(id)value;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFStaccatoActionTemplateParameter

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFStaccatoActionTemplateParameter *)self key];
  v5 = [v3 combine:v4];

  actionIdentifier = [(WFStaccatoActionTemplateParameter *)self actionIdentifier];
  v7 = [v3 combine:actionIdentifier];

  localizedLabel = [(WFStaccatoActionTemplateParameter *)self localizedLabel];
  v9 = [v3 combine:localizedLabel];

  localizedDescription = [(WFStaccatoActionTemplateParameter *)self localizedDescription];
  v11 = [v3 combine:localizedDescription];

  defaultValue = [(WFStaccatoActionTemplateParameter *)self defaultValue];
  v13 = [v3 combine:defaultValue];

  v14 = [v3 finalize];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFStaccatoActionTemplateParameter *)self isEqualToActionTemplateParameter:equalCopy];

  return v5;
}

- (BOOL)isEqualToActionTemplateParameter:(id)parameter
{
  parameterCopy = parameter;
  v5 = parameterCopy;
  if (parameterCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (parameterCopy)
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

      actionIdentifier = [(WFStaccatoActionTemplateParameter *)self actionIdentifier];
      actionIdentifier2 = [(WFStaccatoActionTemplateParameter *)v5 actionIdentifier];
      v13 = actionIdentifier;
      v17 = actionIdentifier2;
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

      localizedLabel = [(WFStaccatoActionTemplateParameter *)self localizedLabel];
      localizedLabel2 = [(WFStaccatoActionTemplateParameter *)v5 localizedLabel];
      v19 = localizedLabel;
      v23 = localizedLabel2;
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

      localizedDescription = [(WFStaccatoActionTemplateParameter *)self localizedDescription];
      localizedDescription2 = [(WFStaccatoActionTemplateParameter *)v5 localizedDescription];
      v28 = localizedDescription;
      v29 = localizedDescription2;
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
      defaultValue = [(WFStaccatoActionTemplateParameter *)self defaultValue];
      defaultValue2 = [(WFStaccatoActionTemplateParameter *)v5 defaultValue];
      v34 = defaultValue;
      v35 = defaultValue2;
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
  actionIdentifier = [(WFStaccatoActionTemplateParameter *)self actionIdentifier];
  localizedLabel = [(WFStaccatoActionTemplateParameter *)self localizedLabel];
  localizedDescription = [(WFStaccatoActionTemplateParameter *)self localizedDescription];
  defaultValue = [(WFStaccatoActionTemplateParameter *)self defaultValue];
  v10 = [v3 stringWithFormat:@"<%@: key: %@, action: %@, label: %@, description: %@, default: %@>", v4, v5, actionIdentifier, localizedLabel, localizedDescription, defaultValue];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFStaccatoActionTemplateParameter *)self key];
  [coderCopy encodeObject:v5 forKey:@"key"];

  actionIdentifier = [(WFStaccatoActionTemplateParameter *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  localizedLabel = [(WFStaccatoActionTemplateParameter *)self localizedLabel];
  [coderCopy encodeObject:localizedLabel forKey:@"localizedLabel"];

  localizedDescription = [(WFStaccatoActionTemplateParameter *)self localizedDescription];
  [coderCopy encodeObject:localizedDescription forKey:@"localizedDescription"];

  defaultValue = [(WFStaccatoActionTemplateParameter *)self defaultValue];
  [coderCopy encodeObject:defaultValue forKey:@"defaultValue"];
}

- (WFStaccatoActionTemplateParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedLabel"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];

  selfCopy = 0;
  if (v5 && v6 && v7)
  {
    self = [(WFStaccatoActionTemplateParameter *)self initWithKey:v5 actionIdentifier:v6 localizedLabel:v7 localizedDescription:v8 defaultValue:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (WFStaccatoActionTemplateParameter)initWithKey:(id)key actionIdentifier:(id)identifier localizedLabel:(id)label localizedDescription:(id)description defaultValue:(id)value
{
  keyCopy = key;
  identifierCopy = identifier;
  labelCopy = label;
  descriptionCopy = description;
  valueCopy = value;
  if (keyCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameter.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (labelCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameter.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"key"}];

  if (!identifierCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (labelCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameter.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"localizedLabel"}];

LABEL_4:
  v32.receiver = self;
  v32.super_class = WFStaccatoActionTemplateParameter;
  v18 = [(WFStaccatoActionTemplateParameter *)&v32 init];
  if (v18)
  {
    v19 = [keyCopy copy];
    key = v18->_key;
    v18->_key = v19;

    v21 = [identifierCopy copy];
    actionIdentifier = v18->_actionIdentifier;
    v18->_actionIdentifier = v21;

    v23 = [labelCopy copy];
    localizedLabel = v18->_localizedLabel;
    v18->_localizedLabel = v23;

    v25 = [descriptionCopy copy];
    localizedDescription = v18->_localizedDescription;
    v18->_localizedDescription = v25;

    objc_storeStrong(&v18->_defaultValue, value);
    v27 = v18;
  }

  return v18;
}

@end