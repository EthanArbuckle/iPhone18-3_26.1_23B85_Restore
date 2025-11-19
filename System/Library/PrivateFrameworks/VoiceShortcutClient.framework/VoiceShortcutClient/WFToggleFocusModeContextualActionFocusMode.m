@interface WFToggleFocusModeContextualActionFocusMode
- (BOOL)isEqual:(id)a3;
- (WFColor)color;
- (WFToggleFocusModeContextualActionFocusMode)initWithCoder:(id)a3;
- (WFToggleFocusModeContextualActionFocusMode)initWithIdentifier:(id)a3 name:(id)a4 symbolName:(id)a5 colorName:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFToggleFocusModeContextualActionFocusMode

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_symbolName forKey:@"symbolName"];
  [v5 encodeObject:self->_colorName forKey:@"colorName"];
}

- (WFToggleFocusModeContextualActionFocusMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];

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
    v11 = 0;
  }

  else
  {
    self = [(WFToggleFocusModeContextualActionFocusMode *)self initWithIdentifier:v5 name:v6 symbolName:v7 colorName:v8];
    v11 = self;
  }

  return v11;
}

- (WFColor)color
{
  v3 = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];

  if (v3)
  {
    v4 = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];
    v5 = [WFColor colorWithFocusColorName:v4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_36:

      goto LABEL_37;
    }

    v7 = [(WFToggleFocusModeContextualActionFocusMode *)v6 identifier];
    v8 = [(WFToggleFocusModeContextualActionFocusMode *)self identifier];
    v9 = v7;
    v10 = v8;
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

    v16 = [(WFToggleFocusModeContextualActionFocusMode *)v6 name];
    v17 = [(WFToggleFocusModeContextualActionFocusMode *)self name];
    v14 = v16;
    v18 = v17;
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

    v22 = [(WFToggleFocusModeContextualActionFocusMode *)v6 symbolName];
    v23 = [(WFToggleFocusModeContextualActionFocusMode *)self symbolName];
    v24 = v22;
    v25 = v23;
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
    v28 = [(WFToggleFocusModeContextualActionFocusMode *)v6 colorName];
    v29 = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];
    v26 = v28;
    v30 = v29;
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
  v4 = [(WFToggleFocusModeContextualActionFocusMode *)self identifier];
  v5 = [v3 combineContentsOfPropertyListObject:v4];

  v6 = [(WFToggleFocusModeContextualActionFocusMode *)self name];
  v7 = [v3 combineContentsOfPropertyListObject:v6];

  v8 = [(WFToggleFocusModeContextualActionFocusMode *)self symbolName];
  v9 = [v3 combineContentsOfPropertyListObject:v8];

  v10 = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];
  v11 = [v3 combineContentsOfPropertyListObject:v10];

  v12 = [v3 finalize];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFToggleFocusModeContextualActionFocusMode *)self identifier];
  v7 = [(WFToggleFocusModeContextualActionFocusMode *)self name];
  v8 = [(WFToggleFocusModeContextualActionFocusMode *)self symbolName];
  v9 = [(WFToggleFocusModeContextualActionFocusMode *)self colorName];
  v10 = [v3 stringWithFormat:@"<%@ %p> Identifier: %@, Name: %@, Symbol Name: %@, Color Name: %@", v5, self, v6, v7, v8, v9];

  return v10;
}

- (WFToggleFocusModeContextualActionFocusMode)initWithIdentifier:(id)a3 name:(id)a4 symbolName:(id)a5 colorName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_9:
  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"symbolName"}];

LABEL_4:
  v29.receiver = self;
  v29.super_class = WFToggleFocusModeContextualActionFocusMode;
  v15 = [(WFToggleFocusModeContextualActionFocusMode *)&v29 init];
  if (v15)
  {
    v16 = [v11 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [v12 copy];
    name = v15->_name;
    v15->_name = v18;

    v20 = [v13 copy];
    symbolName = v15->_symbolName;
    v15->_symbolName = v20;

    v22 = [v14 copy];
    colorName = v15->_colorName;
    v15->_colorName = v22;

    v24 = v15;
  }

  return v15;
}

@end