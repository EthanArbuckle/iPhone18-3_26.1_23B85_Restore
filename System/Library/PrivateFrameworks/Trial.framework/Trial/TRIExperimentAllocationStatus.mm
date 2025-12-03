@interface TRIExperimentAllocationStatus
- (BOOL)isEqualToStatus:(id)status;
- (TRIExperimentAllocationStatus)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIExperimentAllocationStatus

- (BOOL)isEqualToStatus:(id)status
{
  statusCopy = status;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13.receiver = self;
    v13.super_class = TRIExperimentAllocationStatus;
    if ([(TRIAllocationStatus *)&v13 isEqualToStatus:statusCopy])
    {
      v5 = statusCopy;
      if ([(NSString *)self->_experimentId isEqualToString:v5[4]]&& self->_deploymentId == *(v5 + 6))
      {
        v6 = self->_treatmentId;
        v7 = v5[5];
        v8 = v7;
        if (v6 == v7)
        {

LABEL_15:
          v10 = [(NSArray *)self->_namespaces isEqualToArray:v5[6]];
LABEL_17:

          goto LABEL_18;
        }

        if (v6)
        {
          v9 = v7 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
        }

        else
        {
          v11 = [(NSString *)v6 isEqualToString:v7];

          if (v11)
          {
            goto LABEL_15;
          }
        }
      }

      v10 = 0;
      goto LABEL_17;
    }
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TRIExperimentAllocationStatus;
  v3 = [(TRIAllocationStatus *)&v7 hash];
  v4 = self->_deploymentId + 37 * ([(NSString *)self->_experimentId hash]+ 37 * v3);
  v5 = [(NSString *)self->_treatmentId hash]+ 37 * v4;
  return [(NSArray *)self->_namespaces hash]+ 37 * v5;
}

- (TRIExperimentAllocationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v5)
  {
    v29 = 0;
    v6 = [(TRIPBMessage *)TRIPersistedExperimentAllocationStatus parseFromData:v5 error:&v29];
    v7 = v29;
    if (!v6)
    {
      [coderCopy failWithError:v7];
      goto LABEL_15;
    }

    if ([v6 hasCommon])
    {
      common = [v6 common];
      if ([common hasType])
      {
        common2 = [v6 common];
        if ([common2 hasTimestamp] && objc_msgSend(v6, "hasExperimentId") && (objc_msgSend(v6, "hasDeploymentId") & 1) != 0)
        {
          hasTreatmentId = [v6 hasTreatmentId];

          if (hasTreatmentId)
          {
            v23 = 0;
            v24 = &v23;
            v25 = 0x3032000000;
            v26 = __Block_byref_object_copy__7;
            v27 = __Block_byref_object_dispose__7;
            v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "namespaceArray_Count")}];
            namespaceArray = [v6 namespaceArray];
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __47__TRIExperimentAllocationStatus_initWithCoder___block_invoke;
            v22[3] = &unk_27885EF88;
            v22[4] = &v23;
            [namespaceArray enumerateObjectsUsingBlock:v22];

            if (v24[5])
            {
              common3 = [v6 common];
              type = [common3 type];
              common4 = [v6 common];
              timestamp = [common4 timestamp];
              date = [timestamp date];
              experimentId = [v6 experimentId];
              deploymentId = [v6 deploymentId];
              treatmentId = [v6 treatmentId];
              self = [(TRIExperimentAllocationStatus *)self initWithType:type date:date experimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId namespaces:v24[5]];

              selfCopy = self;
            }

            else
            {
              selfCopy = 0;
            }

            _Block_object_dispose(&v23, 8);

            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }
    }

LABEL_15:
    selfCopy = 0;
LABEL_16:

    goto LABEL_17;
  }

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

void __47__TRIExperimentAllocationStatus_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([v11 hasName] && (objc_msgSend(v11, "hasCompatibilityVersion") & 1) != 0)
  {
    v6 = [TRIVersionedNamespace alloc];
    v7 = [v11 name];
    v8 = -[TRIVersionedNamespace initWithName:compatibilityVersion:](v6, "initWithName:compatibilityVersion:", v7, [v11 compatibilityVersion]);

    [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    *a4 = 1;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v4 = objc_opt_new();
  type = [(TRIAllocationStatus *)self type];
  common = [v4 common];
  [common setType:type];

  v7 = objc_alloc(MEMORY[0x277D73B88]);
  date = [(TRIAllocationStatus *)self date];
  v9 = [v7 initWithDate:date];
  common2 = [v4 common];
  [common2 setTimestamp:v9];

  [v4 setExperimentId:self->_experimentId];
  [v4 setDeploymentId:self->_deploymentId];
  [v4 setTreatmentId:self->_treatmentId];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_namespaces;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = objc_opt_new();
        name = [v16 name];
        [v17 setName:name];

        [v17 setCompatibilityVersion:{objc_msgSend(v16, "compatibilityVersion")}];
        namespaceArray = [v4 namespaceArray];
        [namespaceArray addObject:v17];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  data = [v4 data];
  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:926 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  [coderCopy encodeObject:data forKey:@"data"];

  v21 = *MEMORY[0x277D85DE8];
}

@end