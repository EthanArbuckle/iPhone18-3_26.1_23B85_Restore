@interface PKVerificationRequestRecord
+ (id)verificationRequestRecordForPass:(id)a3;
- (BOOL)hasCompletedMethod:(id)a3;
- (BOOL)isMethodInProgress:(id)a3;
- (BOOL)isMethodInProgressMethodExpired;
- (BOOL)isVerificationInProgressWithCompletedMethods;
- (PKVerificationChannel)channel;
- (PKVerificationRequestRecord)init;
- (PKVerificationRequestRecord)initWithCoder:(id)a3;
- (id)description;
- (id)requiredVerificationFields;
- (void)encodeWithCoder:(id)a3;
- (void)recordCompletedMethodForMethodIdentifier:(id)a3;
- (void)recordCompletedMethods:(id)a3;
- (void)recordStartedMethods:(id)a3;
- (void)setActiveMethodGroup:(id)a3;
- (void)setAllChannels:(id)a3;
- (void)setChannel:(id)a3;
- (void)setRequiredFieldData:(id)a3;
@end

@implementation PKVerificationRequestRecord

- (PKVerificationRequestRecord)init
{
  v8.receiver = self;
  v8.super_class = PKVerificationRequestRecord;
  v2 = [(PKVerificationRequestRecord *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    startedMethodIdentifiers = v2->_startedMethodIdentifiers;
    v2->_startedMethodIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    completedMethodIdentifiers = v2->_completedMethodIdentifiers;
    v2->_completedMethodIdentifiers = v5;
  }

  return v2;
}

+ (id)verificationRequestRecordForPass:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 uniqueID];
  v5 = [v4 length];

  if (v5)
  {
    v6 = objc_alloc_init(objc_opt_class());
    v7 = [v3 uniqueID];
    [v6 setPassUniqueID:v7];

    v8 = [MEMORY[0x1E695DF00] date];
    [v6 setDate:v8];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 description];
      v12 = 138543362;
      v13 = v11;
      _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Cannot create verification record without pass unique ID :%{public}@", &v12, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (PKVerificationChannel)channel
{
  v2 = [(PKPassVerificationMethodGroup *)self->_activeMethodGroup methods];
  v3 = [v2 firstObject];
  v4 = [v3 legacyChannelRepresentation];

  return v4;
}

- (void)setChannel:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    methodGroups = self->_methodGroups;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__PKVerificationRequestRecord_setChannel___block_invoke;
    v13[3] = &unk_1E79DFD38;
    v14 = v6;
    v8 = v6;
    v9 = [(NSArray *)methodGroups pk_firstObjectPassingTest:v13];
    if (!v9)
    {
      v10 = PKLogFacilityTypeGetObject(0x26uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Tried to select %@ which does not match possible group", buf, 0xCu);
      }
    }

    activeMethodGroup = self->_activeMethodGroup;
    self->_activeMethodGroup = v9;
  }

  else
  {
    v12 = self->_activeMethodGroup;
    self->_activeMethodGroup = 0;
  }
}

uint64_t __42__PKVerificationRequestRecord_setChannel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 methods];
  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 identifier];
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqualToString:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setAllChannels:(id)a3
{
  v4 = [a3 pk_arrayBySafelyApplyingBlock:&__block_literal_global_57];
  methodGroups = self->_methodGroups;
  self->_methodGroups = v4;
}

- (void)setActiveMethodGroup:(id)a3
{
  objc_storeStrong(&self->_activeMethodGroup, a3);
  v5 = a3;
  [(NSMutableSet *)self->_startedMethodIdentifiers removeAllObjects];
  [(NSMutableSet *)self->_completedMethodIdentifiers removeAllObjects];
}

- (void)recordStartedMethods:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        startedMethodIdentifiers = self->_startedMethodIdentifiers;
        v10 = [*(*(&v13 + 1) + 8 * v8) identifier];
        [(NSMutableSet *)startedMethodIdentifiers addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E695DF00] now];
  inProgressMethodStart = self->_inProgressMethodStart;
  self->_inProgressMethodStart = v11;
}

- (void)recordCompletedMethods:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) identifier];
        [(PKVerificationRequestRecord *)self recordCompletedMethodForMethodIdentifier:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)recordCompletedMethodForMethodIdentifier:(id)a3
{
  completedMethodIdentifiers = self->_completedMethodIdentifiers;
  v5 = a3;
  [(NSMutableSet *)completedMethodIdentifiers addObject:v5];
  [(NSMutableSet *)self->_startedMethodIdentifiers removeObject:v5];

  inProgressMethodStart = self->_inProgressMethodStart;
  self->_inProgressMethodStart = 0;
}

- (BOOL)isMethodInProgress:(id)a3
{
  startedMethodIdentifiers = self->_startedMethodIdentifiers;
  v4 = [a3 identifier];
  LOBYTE(startedMethodIdentifiers) = [(NSMutableSet *)startedMethodIdentifiers containsObject:v4];

  return startedMethodIdentifiers;
}

- (BOOL)isMethodInProgressMethodExpired
{
  v24 = *MEMORY[0x1E69E9840];
  activeMethodGroup = self->_activeMethodGroup;
  if (!activeMethodGroup)
  {
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(PKPassVerificationMethodGroup *)activeMethodGroup methods];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        startedMethodIdentifiers = self->_startedMethodIdentifiers;
        v11 = [v9 identifier];
        LODWORD(startedMethodIdentifiers) = [(NSMutableSet *)startedMethodIdentifiers containsObject:v11];

        if (startedMethodIdentifiers)
        {
          v12 = [v9 type];
          if ((v12 - 2) < 6 || v12 == 0)
          {
            goto LABEL_16;
          }

          if (v12 == 1)
          {
            v16 = v9;
            if ([v16 channel] == 1 && (inProgressMethodStart = self->_inProgressMethodStart) != 0)
            {
              [(NSDate *)inProgressMethodStart timeIntervalSinceNow];
              v14 = fabs(v18) > 1800.0;
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_17;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v14 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

LABEL_17:

  return v14;
}

- (BOOL)isVerificationInProgressWithCompletedMethods
{
  v3 = [(NSMutableSet *)self->_startedMethodIdentifiers count];
  if (v3)
  {
    LOBYTE(v3) = [(NSMutableSet *)self->_completedMethodIdentifiers count]!= 0;
  }

  return v3;
}

- (BOOL)hasCompletedMethod:(id)a3
{
  completedMethodIdentifiers = self->_completedMethodIdentifiers;
  v4 = [a3 identifier];
  LOBYTE(completedMethodIdentifiers) = [(NSMutableSet *)completedMethodIdentifiers containsObject:v4];

  return completedMethodIdentifiers;
}

- (PKVerificationRequestRecord)initWithCoder:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53.receiver = self;
  v53.super_class = PKVerificationRequestRecord;
  v5 = [(PKVerificationRequestRecord *)&v53 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    [(PKVerificationRequestRecord *)v5 setPassUniqueID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(PKVerificationRequestRecord *)v5 setDate:v7];

    -[PKVerificationRequestRecord setVerificationStatus:](v5, "setVerificationStatus:", [v4 decodeIntegerForKey:@"verificationStatus"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeMethodGroup"];
    activeMethodGroup = v5->_activeMethodGroup;
    v5->_activeMethodGroup = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"allMethodGroups"];
    methodGroups = v5->_methodGroups;
    v5->_methodGroups = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v15 setWithObjects:{v16, v17, v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"PKVerificationRequestRecordRequiredFieldData"];
    requiredFieldData = v5->_requiredFieldData;
    v5->_requiredFieldData = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"startedMethodIdentifiers"];
    v27 = [v26 mutableCopy];
    startedMethodIdentifiers = v5->_startedMethodIdentifiers;
    v5->_startedMethodIdentifiers = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"completedMethodIdentifiers"];
    v33 = [v32 mutableCopy];
    completedMethodIdentifiers = v5->_completedMethodIdentifiers;
    v5->_completedMethodIdentifiers = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inProgressDate"];
    inProgressMethodStart = v5->_inProgressMethodStart;
    v5->_inProgressMethodStart = v35;

    if (!v5->_methodGroups)
    {
      v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channel"];
      [(PKVerificationRequestRecord *)v5 setChannel:v37];

      v38 = MEMORY[0x1E695DFD8];
      v39 = objc_opt_class();
      v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
      v41 = [v4 decodeObjectOfClasses:v40 forKey:@"allChannels"];
      [(PKVerificationRequestRecord *)v5 setAllChannels:v41];

      [(PKVerificationRequestRecord *)v5 setRequiredFieldData:v5->_requiredFieldData];
      v42 = [(PKVerificationRequestRecord *)v5 channel];
      v43 = v42;
      if (v42)
      {
        v44 = v5->_startedMethodIdentifiers;
        v45 = [v42 identifier];
        [(NSMutableSet *)v44 addObject:v45];
      }
    }

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentStepIdentifier"];
    [(PKVerificationRequestRecord *)v5 setCurrentStepIdentifier:v46];

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousStepIdentifier"];
    [(PKVerificationRequestRecord *)v5 setPreviousStepIdentifier:v47];

    if (!v5->_startedMethodIdentifiers)
    {
      v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v49 = v5->_startedMethodIdentifiers;
      v5->_startedMethodIdentifiers = v48;
    }

    if (!v5->_completedMethodIdentifiers)
    {
      v50 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v51 = v5->_completedMethodIdentifiers;
      v5->_completedMethodIdentifiers = v50;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(PKVerificationRequestRecord *)self passUniqueID];
  [v10 encodeObject:v4 forKey:@"passUniqueID"];

  v5 = [(PKVerificationRequestRecord *)self date];
  [v10 encodeObject:v5 forKey:@"date"];

  [v10 encodeInteger:-[PKVerificationRequestRecord verificationStatus](self forKey:{"verificationStatus"), @"verificationStatus"}];
  v6 = [(PKVerificationRequestRecord *)self channel];
  [v10 encodeObject:v6 forKey:@"channel"];

  v7 = [(PKVerificationRequestRecord *)self allChannels];
  [v10 encodeObject:v7 forKey:@"allChannels"];

  [v10 encodeObject:self->_activeMethodGroup forKey:@"activeMethodGroup"];
  [v10 encodeObject:self->_methodGroups forKey:@"allMethodGroups"];
  [v10 encodeObject:self->_requiredFieldData forKey:@"PKVerificationRequestRecordRequiredFieldData"];
  v8 = [(PKVerificationRequestRecord *)self currentStepIdentifier];
  [v10 encodeObject:v8 forKey:@"currentStepIdentifier"];

  v9 = [(PKVerificationRequestRecord *)self previousStepIdentifier];
  [v10 encodeObject:v9 forKey:@"previousStepIdentifier"];

  [v10 encodeObject:self->_startedMethodIdentifiers forKey:@"startedMethodIdentifiers"];
  [v10 encodeObject:self->_completedMethodIdentifiers forKey:@"completedMethodIdentifiers"];
  [v10 encodeObject:self->_inProgressMethodStart forKey:@"inProgressDate"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@"status: '%lu'; ", self->_verificationStatus];
  [v6 appendFormat:@"step: (cur: %@, prev: %@); ", self->_currentStepIdentifier, self->_previousStepIdentifier];
  [v6 appendFormat:@"date: '%@'; ", self->_date];
  [v6 appendFormat:@"activeMethodGroup: '%@'; ", self->_activeMethodGroup];
  [v6 appendFormat:@"startedMethodIdentifiers: '%@'; ", self->_startedMethodIdentifiers];
  [v6 appendFormat:@"completedMethodIdentifiers: '%@'; ", self->_completedMethodIdentifiers];
  [v6 appendFormat:@"allMethodGroups: '%@'; ", self->_methodGroups];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (void)setRequiredFieldData:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_requiredFieldData, a3);
  v6 = [v5 PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
  if (v6)
  {
    v7 = [v5 PKDictionaryForKey:@"requiredFieldOptions"];
    v8 = [[PKPassVerificationFieldsMethod alloc] initWithFieldIdentifiers:v6 fieldConfiguration:v7];
    if (v8)
    {
      v9 = [PKPassVerificationMethodGroup alloc];
      v16[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v11 = [(PKPassVerificationMethodGroup *)v9 initWithIdentifier:@"fields-group" methods:v10];

      v12 = [(NSArray *)self->_methodGroups arrayByAddingObject:v11];
      methodGroups = self->_methodGroups;
      self->_methodGroups = v12;
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0x26uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Failed to convert field dict to verification method. Field Dict: %@", &v14, 0xCu);
      }
    }
  }
}

- (id)requiredVerificationFields
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_methodGroups;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 methods];
        v8 = [v7 count];

        if (v8 == 1)
        {
          v9 = [v6 methods];
          v10 = [v9 objectAtIndexedSubscript:0];

          if ([v10 type] == 7)
          {
            v3 = [v10 fields];

            goto LABEL_13;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

@end