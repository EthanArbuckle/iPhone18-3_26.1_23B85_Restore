@interface TRITreatmentContentDescriptor
+ (id)descriptorWithTreatmentId:(id)a3 container:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDescriptor:(id)a3;
- (TRITreatmentContentDescriptor)initWithTreatmentId:(id)a3 container:(id)a4;
- (id)copyWithReplacementContainer:(id)a3;
- (id)copyWithReplacementTreatmentId:(id)a3;
- (id)description;
@end

@implementation TRITreatmentContentDescriptor

- (TRITreatmentContentDescriptor)initWithTreatmentId:(id)a3 container:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2145 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];
  }

  v14.receiver = self;
  v14.super_class = TRITreatmentContentDescriptor;
  v10 = [(TRITreatmentContentDescriptor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_treatmentId, a3);
    objc_storeStrong(&v11->_container, a4);
  }

  return v11;
}

+ (id)descriptorWithTreatmentId:(id)a3 container:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTreatmentId:v7 container:v6];

  return v8;
}

- (id)copyWithReplacementTreatmentId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTreatmentId:v4 container:self->_container];

  return v5;
}

- (id)copyWithReplacementContainer:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTreatmentId:self->_treatmentId container:v4];

  return v5;
}

- (BOOL)isEqualToDescriptor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_treatmentId == 0;
  v7 = [v4 treatmentId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    v10 = [v5 treatmentId];
    v11 = [(NSString *)treatmentId isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_container == 0;
  v13 = [v5 container];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    container = self->_container;
    if (container)
    {
      v16 = [v5 container];
      v17 = [(TRIAppContainer *)container isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITreatmentContentDescriptor *)self isEqualToDescriptor:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRITreatmentContentDescriptor | treatmentId:%@ container:%@>", self->_treatmentId, self->_container];

  return v2;
}

@end