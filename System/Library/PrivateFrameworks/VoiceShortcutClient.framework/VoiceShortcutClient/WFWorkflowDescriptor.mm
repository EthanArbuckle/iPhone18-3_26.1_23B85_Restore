@interface WFWorkflowDescriptor
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WFColor)backgroundColor;
- (WFWorkflowDescriptor)initWithCoder:(id)coder;
- (WFWorkflowDescriptor)initWithIdentifier:(id)identifier name:(id)name color:(int64_t)color glyphCharacter:(unsigned __int16)character associatedAppBundleIdentifier:(id)bundleIdentifier searchAttributionAppBundleIdentifier:(id)appBundleIdentifier;
- (id)externalURLForViewing;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowDescriptor

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = WFWorkflowDescriptor;
  v3 = [(WFDatabaseObjectDescriptor *)&v15 hash];
  name = [(WFWorkflowDescriptor *)self name];
  v5 = [name hash];
  v6 = v5 ^ [(WFWorkflowDescriptor *)self color];
  v7 = v6 ^ [(WFWorkflowDescriptor *)self glyphCharacter];
  associatedAppBundleIdentifier = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
  v9 = associatedAppBundleIdentifier;
  if (!associatedAppBundleIdentifier)
  {
    associatedAppBundleIdentifier = &stru_1F28FBBB8;
  }

  v10 = v7 ^ [(__CFString *)associatedAppBundleIdentifier hash];
  searchAttributionAppBundleIdentifier = [(WFWorkflowDescriptor *)self searchAttributionAppBundleIdentifier];
  v12 = searchAttributionAppBundleIdentifier;
  if (!searchAttributionAppBundleIdentifier)
  {
    searchAttributionAppBundleIdentifier = &stru_1F28FBBB8;
  }

  v13 = v10 ^ [(__CFString *)searchAttributionAppBundleIdentifier hash];

  return v13 ^ v3;
}

- (WFColor)backgroundColor
{
  color = [(WFWorkflowDescriptor *)self color];

  return [WFColor colorWithRGBAValue:color];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFDatabaseObjectDescriptor *)self identifier];
  name = [(WFWorkflowDescriptor *)self name];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, name: %@>", v5, self, identifier, name];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WFWorkflowDescriptor;
  coderCopy = coder;
  [(WFDatabaseObjectDescriptor *)&v10 encodeWithCoder:coderCopy];
  v5 = [(WFWorkflowDescriptor *)self name:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"name"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFWorkflowDescriptor color](self, "color")}];
  [coderCopy encodeObject:v6 forKey:@"color"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[WFWorkflowDescriptor glyphCharacter](self, "glyphCharacter")}];
  [coderCopy encodeObject:v7 forKey:@"glyphCharacter"];

  associatedAppBundleIdentifier = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
  [coderCopy encodeObject:associatedAppBundleIdentifier forKey:@"associatedAppBundleIdentifier"];

  searchAttributionAppBundleIdentifier = [(WFWorkflowDescriptor *)self searchAttributionAppBundleIdentifier];
  [coderCopy encodeObject:searchAttributionAppBundleIdentifier forKey:@"searchAttributionAppBundleIdentifier"];
}

- (WFWorkflowDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WFWorkflowDescriptor;
  v5 = [(WFDatabaseObjectDescriptor *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    v5->_color = [v8 integerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"glyphCharacter"];
    v5->_glyphCharacter = [v9 unsignedLongValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleIdentifier"];
    associatedAppBundleIdentifier = v5->_associatedAppBundleIdentifier;
    v5->_associatedAppBundleIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchAttributionAppBundleIdentifier"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
      if ([(WFDatabaseObjectDescriptor *)&v25 isEqual:equalCopy])
      {
        name = [(WFWorkflowDescriptor *)self name];
        name2 = [(WFWorkflowDescriptor *)equalCopy name];
        v7 = name;
        v8 = name2;
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

        color = [(WFWorkflowDescriptor *)self color];
        if (color != [(WFWorkflowDescriptor *)equalCopy color])
        {
          goto LABEL_19;
        }

        glyphCharacter = [(WFWorkflowDescriptor *)self glyphCharacter];
        if (glyphCharacter != [(WFWorkflowDescriptor *)equalCopy glyphCharacter])
        {
          goto LABEL_19;
        }

        associatedAppBundleIdentifier = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
        associatedAppBundleIdentifier2 = [(WFWorkflowDescriptor *)equalCopy associatedAppBundleIdentifier];
        v12 = associatedAppBundleIdentifier;
        v18 = associatedAppBundleIdentifier2;
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

        searchAttributionAppBundleIdentifier = [(WFWorkflowDescriptor *)self searchAttributionAppBundleIdentifier];
        searchAttributionAppBundleIdentifier2 = [(WFWorkflowDescriptor *)equalCopy searchAttributionAppBundleIdentifier];
        v20 = searchAttributionAppBundleIdentifier;
        v23 = searchAttributionAppBundleIdentifier2;
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
  name = [(WFWorkflowDescriptor *)self name];
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v7 = [name stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  identifier = [(WFDatabaseObjectDescriptor *)self identifier];
  uRLPathAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v10 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];
  v11 = [v4 stringWithFormat:@"shortcuts://open-shortcut?name=%@&id=%@", v7, v10];
  v12 = [v3 URLWithString:v11];

  return v12;
}

- (WFWorkflowDescriptor)initWithIdentifier:(id)identifier name:(id)name color:(int64_t)color glyphCharacter:(unsigned __int16)character associatedAppBundleIdentifier:(id)bundleIdentifier searchAttributionAppBundleIdentifier:(id)appBundleIdentifier
{
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  appBundleIdentifierCopy = appBundleIdentifier;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowDescriptor.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowDescriptor.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v30.receiver = self;
  v30.super_class = WFWorkflowDescriptor;
  v19 = [(WFDatabaseObjectDescriptor *)&v30 initWithIdentifier:identifierCopy objectType:0];
  if (v19)
  {
    v20 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v20;

    v19->_color = color;
    v19->_glyphCharacter = character;
    v22 = [bundleIdentifierCopy copy];
    associatedAppBundleIdentifier = v19->_associatedAppBundleIdentifier;
    v19->_associatedAppBundleIdentifier = v22;

    v24 = [appBundleIdentifierCopy copy];
    searchAttributionAppBundleIdentifier = v19->_searchAttributionAppBundleIdentifier;
    v19->_searchAttributionAppBundleIdentifier = v24;

    v26 = v19;
  }

  return v19;
}

@end