@interface WFStaccatoActionTemplateParameterValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActionTemplateParameterValue:(id)value;
- (WFStaccatoActionTemplateParameterValue)initWithCoder:(id)coder;
- (WFStaccatoActionTemplateParameterValue)initWithIdentifier:(id)identifier localizedTitle:(id)title localizedSubtitle:(id)subtitle image:(id)image serializedState:(id)state;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFStaccatoActionTemplateParameterValue

- (unint64_t)hash
{
  v3 = objc_opt_new();
  identifier = [(WFStaccatoActionTemplateParameterValue *)self identifier];
  v5 = [v3 combine:identifier];

  localizedTitle = [(WFStaccatoActionTemplateParameterValue *)self localizedTitle];
  v7 = [v3 combine:localizedTitle];

  localizedSubtitle = [(WFStaccatoActionTemplateParameterValue *)self localizedSubtitle];
  v9 = [v3 combine:localizedSubtitle];

  image = [(WFStaccatoActionTemplateParameterValue *)self image];
  v11 = [v3 combine:image];

  serializedState = [(WFStaccatoActionTemplateParameterValue *)self serializedState];
  v13 = [v3 combine:serializedState];

  v14 = [v3 finalize];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFStaccatoActionTemplateParameterValue *)self isEqualToActionTemplateParameterValue:equalCopy];

  return v5;
}

- (BOOL)isEqualToActionTemplateParameterValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (valueCopy)
    {
      identifier = [(WFStaccatoActionTemplateParameterValue *)self identifier];
      identifier2 = [(WFStaccatoActionTemplateParameterValue *)v5 identifier];
      v8 = identifier;
      v9 = identifier2;
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

      localizedTitle = [(WFStaccatoActionTemplateParameterValue *)self localizedTitle];
      localizedTitle2 = [(WFStaccatoActionTemplateParameterValue *)v5 localizedTitle];
      v13 = localizedTitle;
      v17 = localizedTitle2;
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

      localizedSubtitle = [(WFStaccatoActionTemplateParameterValue *)self localizedSubtitle];
      localizedSubtitle2 = [(WFStaccatoActionTemplateParameterValue *)v5 localizedSubtitle];
      v19 = localizedSubtitle;
      v23 = localizedSubtitle2;
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

      image = [(WFStaccatoActionTemplateParameterValue *)self image];
      image2 = [(WFStaccatoActionTemplateParameterValue *)v5 image];
      v28 = image;
      v29 = image2;
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
      serializedState = [(WFStaccatoActionTemplateParameterValue *)self serializedState];
      serializedState2 = [(WFStaccatoActionTemplateParameterValue *)v5 serializedState];
      v34 = serializedState;
      v35 = serializedState2;
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
  identifier = [(WFStaccatoActionTemplateParameterValue *)self identifier];
  localizedTitle = [(WFStaccatoActionTemplateParameterValue *)self localizedTitle];
  localizedSubtitle = [(WFStaccatoActionTemplateParameterValue *)self localizedSubtitle];
  image = [(WFStaccatoActionTemplateParameterValue *)self image];
  serializedState = [(WFStaccatoActionTemplateParameterValue *)self serializedState];
  v10 = [v3 stringWithFormat:@"<%@: id: %@, title: %@, subtitle: %@, image: %@, state: %@>", v4, identifier, localizedTitle, localizedSubtitle, image, serializedState];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFStaccatoActionTemplateParameterValue *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  localizedTitle = [(WFStaccatoActionTemplateParameterValue *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];

  localizedSubtitle = [(WFStaccatoActionTemplateParameterValue *)self localizedSubtitle];
  [coderCopy encodeObject:localizedSubtitle forKey:@"localizedSubtitle"];

  image = [(WFStaccatoActionTemplateParameterValue *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  serializedState = [(WFStaccatoActionTemplateParameterValue *)self serializedState];
  [coderCopy encodeObject:serializedState forKey:@"serializedState"];
}

- (WFStaccatoActionTemplateParameterValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"serializedState"];

  v15 = 0;
  if (v4 && v5)
  {
    v17 = v19;
    selfCopy2 = self;
    if (v14)
    {
      selfCopy2 = [(WFStaccatoActionTemplateParameterValue *)self initWithIdentifier:v4 localizedTitle:v5 localizedSubtitle:v19 image:v6 serializedState:v14];
      v15 = selfCopy2;
    }
  }

  else
  {
    v17 = v19;
    selfCopy2 = self;
  }

  return v15;
}

- (WFStaccatoActionTemplateParameterValue)initWithIdentifier:(id)identifier localizedTitle:(id)title localizedSubtitle:(id)subtitle image:(id)image serializedState:(id)state
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  stateCopy = state;
  if (identifierCopy)
  {
    if (titleCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameterValue.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"localizedTitle"}];

    if (stateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameterValue.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!titleCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (stateCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplateParameterValue.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"serializedState"}];

LABEL_4:
  v30.receiver = self;
  v30.super_class = WFStaccatoActionTemplateParameterValue;
  v18 = [(WFStaccatoActionTemplateParameterValue *)&v30 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    v21 = [titleCopy copy];
    localizedTitle = v18->_localizedTitle;
    v18->_localizedTitle = v21;

    v23 = [subtitleCopy copy];
    localizedSubtitle = v18->_localizedSubtitle;
    v18->_localizedSubtitle = v23;

    objc_storeStrong(&v18->_image, image);
    objc_storeStrong(&v18->_serializedState, state);
    v25 = v18;
  }

  return v18;
}

@end