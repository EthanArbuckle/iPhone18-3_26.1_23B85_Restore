@interface WFToggleFocusModeContextualActionFocusMode
- (BOOL)isEqual:(id)equal;
- (WFColor)color;
- (WFToggleFocusModeContextualActionFocusMode)initWithCoder:(id)coder;
- (WFToggleFocusModeContextualActionFocusMode)initWithIdentifier:(id)identifier name:(id)name symbolName:(id)symbolName colorName:(id)colorName;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFToggleFocusModeContextualActionFocusMode

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_symbolName forKey:@"symbolName"];
  [coderCopy encodeObject:self->_colorName forKey:@"colorName"];
}

- (WFToggleFocusModeContextualActionFocusMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(WFToggleFocusModeContextualActionFocusMode *)self initWithIdentifier:v5 name:v6 symbolName:v7 colorName:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (WFColor)color
{
  colorName = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];

  if (colorName)
  {
    colorName2 = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];
    v5 = [WFColor colorWithFocusColorName:colorName2];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [WFColor colorWithSystemColor:14];
    }

    v8 = v7;
  }

  else
  {
    v8 = [WFColor colorWithSystemColor:14];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_36:

      goto LABEL_37;
    }

    identifier = [(WFToggleFocusModeContextualActionFocusMode *)v6 identifier];
    identifier2 = [(WFToggleFocusModeContextualActionFocusMode *)self identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_34;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    name = [(WFToggleFocusModeContextualActionFocusMode *)v6 name];
    name2 = [(WFToggleFocusModeContextualActionFocusMode *)self name];
    v14 = name;
    v18 = name2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_33;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    symbolName = [(WFToggleFocusModeContextualActionFocusMode *)v6 symbolName];
    symbolName2 = [(WFToggleFocusModeContextualActionFocusMode *)self symbolName];
    v24 = symbolName;
    v25 = symbolName2;
    v32 = v24;
    v33 = v25;
    if (v24 != v25)
    {
      LOBYTE(v12) = 0;
      v26 = v24;
      if (v24)
      {
        v27 = v25;
        if (v25)
        {
          v20 = v32;
          v12 = [v32 isEqualToString:v25];

          if (!v12)
          {
            goto LABEL_32;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v27 = v25;
      }

LABEL_31:

      v20 = v32;
LABEL_32:
      v19 = v33;
LABEL_33:

      goto LABEL_34;
    }

LABEL_24:
    colorName = [(WFToggleFocusModeContextualActionFocusMode *)v6 colorName];
    colorName2 = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];
    v26 = colorName;
    v30 = colorName2;
    v27 = v30;
    if (v26 == v30)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v26 && v30)
      {
        LOBYTE(v12) = [v26 isEqualToString:v30];
      }
    }

    goto LABEL_31;
  }

  LOBYTE(v12) = 1;
LABEL_37:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  identifier = [(WFToggleFocusModeContextualActionFocusMode *)self identifier];
  v5 = [v3 combineContentsOfPropertyListObject:identifier];

  name = [(WFToggleFocusModeContextualActionFocusMode *)self name];
  v7 = [v3 combineContentsOfPropertyListObject:name];

  symbolName = [(WFToggleFocusModeContextualActionFocusMode *)self symbolName];
  v9 = [v3 combineContentsOfPropertyListObject:symbolName];

  colorName = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];
  v11 = [v3 combineContentsOfPropertyListObject:colorName];

  v12 = [v3 finalize];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFToggleFocusModeContextualActionFocusMode *)self identifier];
  name = [(WFToggleFocusModeContextualActionFocusMode *)self name];
  symbolName = [(WFToggleFocusModeContextualActionFocusMode *)self symbolName];
  colorName = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];
  v10 = [v3 stringWithFormat:@"<%@ %p> Identifier: %@, Name: %@, Symbol Name: %@, Color Name: %@", v5, self, identifier, name, symbolName, colorName];

  return v10;
}

- (WFToggleFocusModeContextualActionFocusMode)initWithIdentifier:(id)identifier name:(id)name symbolName:(id)symbolName colorName:(id)colorName
{
  identifierCopy = identifier;
  nameCopy = name;
  symbolNameCopy = symbolName;
  colorNameCopy = colorName;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (symbolNameCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!nameCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (symbolNameCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"symbolName"}];

LABEL_4:
  v29.receiver = self;
  v29.super_class = WFToggleFocusModeContextualActionFocusMode;
  v15 = [(WFToggleFocusModeContextualActionFocusMode *)&v29 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v18;

    v20 = [symbolNameCopy copy];
    symbolName = v15->_symbolName;
    v15->_symbolName = v20;

    v22 = [colorNameCopy copy];
    colorName = v15->_colorName;
    v15->_colorName = v22;

    v24 = v15;
  }

  return v15;
}

@end