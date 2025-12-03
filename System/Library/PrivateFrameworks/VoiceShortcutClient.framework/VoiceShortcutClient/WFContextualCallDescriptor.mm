@interface WFContextualCallDescriptor
- (BOOL)isEqual:(id)equal;
- (WFContextualCallDescriptor)initWithCoder:(id)coder;
- (WFContextualCallDescriptor)initWithHandle:(id)handle callType:(unint64_t)type person:(id)person callTypeSerializedRepresentation:(id)representation personSerializedRepresentation:(id)serializedRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualCallDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  handle = [(WFContextualCallDescriptor *)self handle];
  callType = [(WFContextualCallDescriptor *)self callType];
  person = [(WFContextualCallDescriptor *)self person];
  callTypeSerializedRepresentation = [(WFContextualCallDescriptor *)self callTypeSerializedRepresentation];
  personSerializedRepresentation = [(WFContextualCallDescriptor *)self personSerializedRepresentation];
  v10 = [v4 initWithHandle:handle callType:callType person:person callTypeSerializedRepresentation:callTypeSerializedRepresentation personSerializedRepresentation:personSerializedRepresentation];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(WFContextualCallDescriptor *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  [coderCopy encodeInteger:-[WFContextualCallDescriptor callType](self forKey:{"callType"), @"callType"}];
  callTypeSerializedRepresentation = [(WFContextualCallDescriptor *)self callTypeSerializedRepresentation];
  [coderCopy encodeObject:callTypeSerializedRepresentation forKey:@"callTypeSerializedRepresentation"];

  person = [(WFContextualCallDescriptor *)self person];
  [coderCopy encodeObject:person forKey:@"person"];

  personSerializedRepresentation = [(WFContextualCallDescriptor *)self personSerializedRepresentation];
  [coderCopy encodeObject:personSerializedRepresentation forKey:@"personSerializedRepresentation"];
}

- (WFContextualCallDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  if (v5)
  {
    v25 = [coderCopy decodeIntegerForKey:@"callType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v12 forKey:@"callTypeSerializedRepresentation"];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"person"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v14 setWithObjects:{v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"personSerializedRepresentation"];

    self = [(WFContextualCallDescriptor *)self initWithHandle:v5 callType:v25 person:v13 callTypeSerializedRepresentation:v24 personSerializedRepresentation:v21];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  handle = [(WFContextualCallDescriptor *)self handle];
  v5 = [v3 combineContentsOfPropertyListObject:handle];

  v6 = [v3 combineInteger:{-[WFContextualCallDescriptor callType](self, "callType")}];
  callTypeSerializedRepresentation = [(WFContextualCallDescriptor *)self callTypeSerializedRepresentation];
  v8 = [v3 combineContentsOfPropertyListObject:callTypeSerializedRepresentation];

  person = [(WFContextualCallDescriptor *)self person];
  v10 = [v3 combineContentsOfPropertyListObject:person];

  personSerializedRepresentation = [(WFContextualCallDescriptor *)self personSerializedRepresentation];
  v12 = [v3 combineContentsOfPropertyListObject:personSerializedRepresentation];

  v13 = [v3 finalize];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      handle = [(WFContextualCallDescriptor *)self handle];
      handle2 = [(WFContextualCallDescriptor *)equalCopy handle];
      v7 = handle;
      v8 = handle2;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = 0;
        v11 = v8;
        v12 = v7;
        if (!v7 || !v8)
        {
          goto LABEL_33;
        }

        v13 = [v7 isEqualToString:v8];

        if (!v13)
        {
          goto LABEL_17;
        }
      }

      callType = [(WFContextualCallDescriptor *)self callType];
      if (callType != [(WFContextualCallDescriptor *)equalCopy callType])
      {
LABEL_17:
        v10 = 0;
LABEL_34:

        goto LABEL_35;
      }

      callTypeSerializedRepresentation = [(WFContextualCallDescriptor *)self callTypeSerializedRepresentation];
      callTypeSerializedRepresentation2 = [(WFContextualCallDescriptor *)equalCopy callTypeSerializedRepresentation];
      v12 = callTypeSerializedRepresentation;
      v17 = callTypeSerializedRepresentation2;
      v11 = v17;
      if (v12 == v17)
      {
      }

      else
      {
        v10 = 0;
        v18 = v17;
        v19 = v12;
        if (!v12 || !v17)
        {
          goto LABEL_32;
        }

        v20 = [v12 isEqual:v17];

        if (!v20)
        {
          v10 = 0;
LABEL_33:

          goto LABEL_34;
        }
      }

      person = [(WFContextualCallDescriptor *)self person];
      person2 = [(WFContextualCallDescriptor *)equalCopy person];
      v19 = person;
      v23 = person2;
      v18 = v23;
      v30 = v19;
      if (v19 == v23)
      {
      }

      else
      {
        v10 = 0;
        v24 = v23;
        if (!v19 || !v23)
        {
LABEL_31:

          v19 = v30;
          goto LABEL_32;
        }

        v25 = [v19 isEqual:v23];

        if (!v25)
        {
          v10 = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      personSerializedRepresentation = [(WFContextualCallDescriptor *)self personSerializedRepresentation];
      personSerializedRepresentation2 = [(WFContextualCallDescriptor *)equalCopy personSerializedRepresentation];
      v19 = personSerializedRepresentation;
      v28 = personSerializedRepresentation2;
      v24 = v28;
      if (v19 == v28)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v19 && v28)
        {
          v10 = [v19 isEqual:v28];
        }
      }

      goto LABEL_31;
    }

    v10 = 0;
  }

LABEL_35:

  return v10;
}

- (WFContextualCallDescriptor)initWithHandle:(id)handle callType:(unint64_t)type person:(id)person callTypeSerializedRepresentation:(id)representation personSerializedRepresentation:(id)serializedRepresentation
{
  handleCopy = handle;
  personCopy = person;
  representationCopy = representation;
  serializedRepresentationCopy = serializedRepresentation;
  if (!handleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualCallDescriptor.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"handle"}];
  }

  v25.receiver = self;
  v25.super_class = WFContextualCallDescriptor;
  v17 = [(WFContextualCallDescriptor *)&v25 init];
  if (v17)
  {
    v18 = [handleCopy copy];
    handle = v17->_handle;
    v17->_handle = v18;

    v17->_callType = type;
    objc_storeStrong(&v17->_callTypeSerializedRepresentation, representation);
    v20 = [personCopy copy];
    person = v17->_person;
    v17->_person = v20;

    objc_storeStrong(&v17->_personSerializedRepresentation, serializedRepresentation);
    v22 = v17;
  }

  return v17;
}

@end