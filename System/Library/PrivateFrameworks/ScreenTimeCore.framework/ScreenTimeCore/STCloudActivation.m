@interface STCloudActivation
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)computeUniqueIdentifier;
- (void)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)a3;
@end

@implementation STCloudActivation

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"activationPlist"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  v5.receiver = self;
  v5.super_class = STCloudActivation;
  [(STCloudActivation *)&v5 didChangeValueForKey:v4];
}

- (id)computeUniqueIdentifier
{
  v3 = [(STCloudActivation *)self activationPlist];

  if (v3)
  {
    v4 = MEMORY[0x1E696AE40];
    v5 = [(STCloudActivation *)self activationPlist];
    v13 = 0;
    v6 = [v4 propertyListWithData:v5 options:0 format:0 error:&v13];
    v7 = v13;

    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"uniqueIdentifier"];
    }

    else
    {
      v11 = +[STLog cloudkit];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [STCloudActivation computeUniqueIdentifier];
      }

      v8 = [(STCloudActivation *)self identifier];
    }

    v10 = v8;
  }

  else
  {
    v9 = +[STLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [STCloudActivation computeUniqueIdentifier];
    }

    v10 = [(STCloudActivation *)self identifier];
  }

  return v10;
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v9];
  v6 = v9;
  if (v5)
  {
    [(STCloudActivation *)self setActivationPlist:v5];
  }

  else
  {
    v7 = +[STLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(STCloudActivation *)v4 updateWithDictionaryRepresentation:v6, v7];
    }
  }

  return v5 != 0;
}

- (id)dictionaryRepresentation
{
  v3 = [(STCloudActivation *)self activationPlist];
  if (v3)
  {
    v4 = MEMORY[0x1E696AE40];
    v5 = [(STCloudActivation *)self activationPlist];
    v11 = 0;
    v6 = [v4 propertyListWithData:v5 options:0 format:0 error:&v11];
    v7 = v11;

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = +[STLog cloudkit];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [STCloudActivation dictionaryRepresentation];
      }

      v8 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v7 = +[STLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [STCloudActivation dictionaryRepresentation];
    }

    v8 = MEMORY[0x1E695E0F8];
  }

  return v8;
}

- (void)computeUniqueIdentifier
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_1B831F000, log, OS_LOG_TYPE_FAULT, "Unable to update cloud activation with dictionary: %{public}@\n%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)dictionaryRepresentation
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end