@interface TRITreatmentContentDescriptor
+ (id)descriptorWithTreatmentId:(id)id container:(id)container;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescriptor:(id)descriptor;
- (TRITreatmentContentDescriptor)initWithTreatmentId:(id)id container:(id)container;
- (id)copyWithReplacementContainer:(id)container;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)description;
@end

@implementation TRITreatmentContentDescriptor

- (TRITreatmentContentDescriptor)initWithTreatmentId:(id)id container:(id)container
{
  idCopy = id;
  containerCopy = container;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2145 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];
  }

  v14.receiver = self;
  v14.super_class = TRITreatmentContentDescriptor;
  v10 = [(TRITreatmentContentDescriptor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_treatmentId, id);
    objc_storeStrong(&v11->_container, container);
  }

  return v11;
}

+ (id)descriptorWithTreatmentId:(id)id container:(id)container
{
  containerCopy = container;
  idCopy = id;
  v8 = [[self alloc] initWithTreatmentId:idCopy container:containerCopy];

  return v8;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithTreatmentId:idCopy container:self->_container];

  return v5;
}

- (id)copyWithReplacementContainer:(id)container
{
  containerCopy = container;
  v5 = [objc_alloc(objc_opt_class()) initWithTreatmentId:self->_treatmentId container:containerCopy];

  return v5;
}

- (BOOL)isEqualToDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (!descriptorCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_treatmentId == 0;
  treatmentId = [descriptorCopy treatmentId];
  v8 = treatmentId != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    treatmentId2 = [v5 treatmentId];
    v11 = [(NSString *)treatmentId isEqual:treatmentId2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_container == 0;
  container = [v5 container];
  v14 = container != 0;

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
      container2 = [v5 container];
      v17 = [(TRIAppContainer *)container isEqual:container2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITreatmentContentDescriptor *)self isEqualToDescriptor:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRITreatmentContentDescriptor | treatmentId:%@ container:%@>", self->_treatmentId, self->_container];

  return v2;
}

@end