@interface WFWorkflowDescriptor
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WFColor)backgroundColor;
- (WFWorkflowDescriptor)initWithCoder:(id)a3;
- (WFWorkflowDescriptor)initWithIdentifier:(id)a3 name:(id)a4 color:(int64_t)a5 glyphCharacter:(unsigned __int16)a6 associatedAppBundleIdentifier:(id)a7 searchAttributionAppBundleIdentifier:(id)a8;
- (id)externalURLForViewing;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowDescriptor

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = WFWorkflowDescriptor;
  v3 = [(WFDatabaseObjectDescriptor *)&v15 hash];
  v4 = [(WFWorkflowDescriptor *)self name];
  v5 = [v4 hash];
  v6 = v5 ^ [(WFWorkflowDescriptor *)self color];
  v7 = v6 ^ [(WFWorkflowDescriptor *)self glyphCharacter];
  v8 = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
  v9 = v8;
  if (!v8)
  {
    v8 = &stru_1F28FBBB8;
  }

  v10 = v7 ^ [(__CFString *)v8 hash];
  v11 = [(WFWorkflowDescriptor *)self searchAttributionAppBundleIdentifier];
  v12 = v11;
  if (!v11)
  {
    v11 = &stru_1F28FBBB8;
  }

  v13 = v10 ^ [(__CFString *)v11 hash];

  return v13 ^ v3;
}

- (WFColor)backgroundColor
{
  v2 = [(WFWorkflowDescriptor *)self color];

  return [WFColor colorWithRGBAValue:v2];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDatabaseObjectDescriptor *)self identifier];
  v7 = [(WFWorkflowDescriptor *)self name];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, name: %@>", v5, self, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFWorkflowDescriptor;
  v4 = a3;
  [(WFDatabaseObjectDescriptor *)&v10 encodeWithCoder:v4];
  v5 = [(WFWorkflowDescriptor *)self name:v10.receiver];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFWorkflowDescriptor color](self, "color")}];
  [v4 encodeObject:v6 forKey:@"color"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[WFWorkflowDescriptor glyphCharacter](self, "glyphCharacter")}];
  [v4 encodeObject:v7 forKey:@"glyphCharacter"];

  v8 = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
  [v4 encodeObject:v8 forKey:@"associatedAppBundleIdentifier"];

  v9 = [(WFWorkflowDescriptor *)self searchAttributionAppBundleIdentifier];
  [v4 encodeObject:v9 forKey:@"searchAttributionAppBundleIdentifier"];
}

- (WFWorkflowDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFWorkflowDescriptor;
  v5 = [(WFDatabaseObjectDescriptor *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    v5->_color = [v8 integerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"glyphCharacter"];
    v5->_glyphCharacter = [v9 unsignedLongValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleIdentifier"];
    associatedAppBundleIdentifier = v5->_associatedAppBundleIdentifier;
    v5->_associatedAppBundleIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchAttributionAppBundleIdentifier"];
    searchAttributionAppBundleIdentifier = v5->_searchAttributionAppBundleIdentifier;
    v5->_searchAttributionAppBundleIdentifier = v12;

    v14 = v5;
  }

  return v5;
}

- (void)dealloc
{
  CGImageRelease(self->_iconImage);
  v3.receiver = self;
  v3.super_class = WFWorkflowDescriptor;
  [(WFWorkflowDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25.receiver = self;
      v25.super_class = WFWorkflowDescriptor;
      if ([(WFDatabaseObjectDescriptor *)&v25 isEqual:v4])
      {
        v5 = [(WFWorkflowDescriptor *)self name];
        v6 = [(WFWorkflowDescriptor *)v4 name];
        v7 = v5;
        v8 = v6;
        v9 = v8;
        if (v7 == v8)
        {
        }

        else
        {
          LOBYTE(v10) = 0;
          v11 = v8;
          v12 = v7;
          if (!v7 || !v8)
          {
            goto LABEL_28;
          }

          v13 = [v7 isEqualToString:v8];

          if (!v13)
          {
LABEL_19:
            LOBYTE(v10) = 0;
LABEL_29:

            goto LABEL_30;
          }
        }

        v14 = [(WFWorkflowDescriptor *)self color];
        if (v14 != [(WFWorkflowDescriptor *)v4 color])
        {
          goto LABEL_19;
        }

        v15 = [(WFWorkflowDescriptor *)self glyphCharacter];
        if (v15 != [(WFWorkflowDescriptor *)v4 glyphCharacter])
        {
          goto LABEL_19;
        }

        v16 = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
        v17 = [(WFWorkflowDescriptor *)v4 associatedAppBundleIdentifier];
        v12 = v16;
        v18 = v17;
        v11 = v18;
        if (v12 == v18)
        {
        }

        else
        {
          LOBYTE(v10) = 0;
          v19 = v18;
          v20 = v12;
          if (!v12 || !v18)
          {
LABEL_27:

LABEL_28:
            goto LABEL_29;
          }

          v10 = [v12 isEqualToString:v18];

          if (!v10)
          {
            goto LABEL_28;
          }
        }

        v21 = [(WFWorkflowDescriptor *)self searchAttributionAppBundleIdentifier];
        v22 = [(WFWorkflowDescriptor *)v4 searchAttributionAppBundleIdentifier];
        v20 = v21;
        v23 = v22;
        v19 = v23;
        if (v20 == v23)
        {
          LOBYTE(v10) = 1;
        }

        else
        {
          LOBYTE(v10) = 0;
          if (v20 && v23)
          {
            LOBYTE(v10) = [v20 isEqualToString:v23];
          }
        }

        goto LABEL_27;
      }
    }

    LOBYTE(v10) = 0;
  }

LABEL_30:

  return v10;
}

- (id)externalURLForViewing
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(WFWorkflowDescriptor *)self name];
  v6 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];
  v8 = [(WFDatabaseObjectDescriptor *)self identifier];
  v9 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v9];
  v11 = [v4 stringWithFormat:@"shortcuts://open-shortcut?name=%@&id=%@", v7, v10];
  v12 = [v3 URLWithString:v11];

  return v12;
}

- (WFWorkflowDescriptor)initWithIdentifier:(id)a3 name:(id)a4 color:(int64_t)a5 glyphCharacter:(unsigned __int16)a6 associatedAppBundleIdentifier:(id)a7 searchAttributionAppBundleIdentifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFWorkflowDescriptor.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFWorkflowDescriptor.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v30.receiver = self;
  v30.super_class = WFWorkflowDescriptor;
  v19 = [(WFDatabaseObjectDescriptor *)&v30 initWithIdentifier:v15 objectType:0];
  if (v19)
  {
    v20 = [v16 copy];
    name = v19->_name;
    v19->_name = v20;

    v19->_color = a5;
    v19->_glyphCharacter = a6;
    v22 = [v17 copy];
    associatedAppBundleIdentifier = v19->_associatedAppBundleIdentifier;
    v19->_associatedAppBundleIdentifier = v22;

    v24 = [v18 copy];
    searchAttributionAppBundleIdentifier = v19->_searchAttributionAppBundleIdentifier;
    v19->_searchAttributionAppBundleIdentifier = v24;

    v26 = v19;
  }

  return v19;
}

@end