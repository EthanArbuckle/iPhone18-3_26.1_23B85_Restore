@interface WFContextualCallDescriptor
- (BOOL)isEqual:(id)a3;
- (WFContextualCallDescriptor)initWithCoder:(id)a3;
- (WFContextualCallDescriptor)initWithHandle:(id)a3 callType:(unint64_t)a4 person:(id)a5 callTypeSerializedRepresentation:(id)a6 personSerializedRepresentation:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContextualCallDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(WFContextualCallDescriptor *)self handle];
  v6 = [(WFContextualCallDescriptor *)self callType];
  v7 = [(WFContextualCallDescriptor *)self person];
  v8 = [(WFContextualCallDescriptor *)self callTypeSerializedRepresentation];
  v9 = [(WFContextualCallDescriptor *)self personSerializedRepresentation];
  v10 = [v4 initWithHandle:v5 callType:v6 person:v7 callTypeSerializedRepresentation:v8 personSerializedRepresentation:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFContextualCallDescriptor *)self handle];
  [v4 encodeObject:v5 forKey:@"handle"];

  [v4 encodeInteger:-[WFContextualCallDescriptor callType](self forKey:{"callType"), @"callType"}];
  v6 = [(WFContextualCallDescriptor *)self callTypeSerializedRepresentation];
  [v4 encodeObject:v6 forKey:@"callTypeSerializedRepresentation"];

  v7 = [(WFContextualCallDescriptor *)self person];
  [v4 encodeObject:v7 forKey:@"person"];

  v8 = [(WFContextualCallDescriptor *)self personSerializedRepresentation];
  [v4 encodeObject:v8 forKey:@"personSerializedRepresentation"];
}

- (WFContextualCallDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  if (v5)
  {
    v25 = [v4 decodeIntegerForKey:@"callType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v12 forKey:@"callTypeSerializedRepresentation"];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"person"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v14 setWithObjects:{v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"personSerializedRepresentation"];

    self = [(WFContextualCallDescriptor *)self initWithHandle:v5 callType:v25 person:v13 callTypeSerializedRepresentation:v24 personSerializedRepresentation:v21];
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFContextualCallDescriptor *)self handle];
  v5 = [v3 combineContentsOfPropertyListObject:v4];

  v6 = [v3 combineInteger:{-[WFContextualCallDescriptor callType](self, "callType")}];
  v7 = [(WFContextualCallDescriptor *)self callTypeSerializedRepresentation];
  v8 = [v3 combineContentsOfPropertyListObject:v7];

  v9 = [(WFContextualCallDescriptor *)self person];
  v10 = [v3 combineContentsOfPropertyListObject:v9];

  v11 = [(WFContextualCallDescriptor *)self personSerializedRepresentation];
  v12 = [v3 combineContentsOfPropertyListObject:v11];

  v13 = [v3 finalize];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFContextualCallDescriptor *)self handle];
      v6 = [(WFContextualCallDescriptor *)v4 handle];
      v7 = v5;
      v8 = v6;
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

      v14 = [(WFContextualCallDescriptor *)self callType];
      if (v14 != [(WFContextualCallDescriptor *)v4 callType])
      {
LABEL_17:
        v10 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v15 = [(WFContextualCallDescriptor *)self callTypeSerializedRepresentation];
      v16 = [(WFContextualCallDescriptor *)v4 callTypeSerializedRepresentation];
      v12 = v15;
      v17 = v16;
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

      v21 = [(WFContextualCallDescriptor *)self person];
      v22 = [(WFContextualCallDescriptor *)v4 person];
      v19 = v21;
      v23 = v22;
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

      v26 = [(WFContextualCallDescriptor *)self personSerializedRepresentation];
      v27 = [(WFContextualCallDescriptor *)v4 personSerializedRepresentation];
      v19 = v26;
      v28 = v27;
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

- (WFContextualCallDescriptor)initWithHandle:(id)a3 callType:(unint64_t)a4 person:(id)a5 callTypeSerializedRepresentation:(id)a6 personSerializedRepresentation:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFContextualCallDescriptor.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"handle"}];
  }

  v25.receiver = self;
  v25.super_class = WFContextualCallDescriptor;
  v17 = [(WFContextualCallDescriptor *)&v25 init];
  if (v17)
  {
    v18 = [v13 copy];
    handle = v17->_handle;
    v17->_handle = v18;

    v17->_callType = a4;
    objc_storeStrong(&v17->_callTypeSerializedRepresentation, a6);
    v20 = [v14 copy];
    person = v17->_person;
    v17->_person = v20;

    objc_storeStrong(&v17->_personSerializedRepresentation, a7);
    v22 = v17;
  }

  return v17;
}

@end