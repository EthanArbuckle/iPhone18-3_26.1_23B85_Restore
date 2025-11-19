@interface STLocalOrganization
+ (id)fetchOrCreateLocalOrganizationWithContext:(id)a3 error:(id *)a4;
+ (id)fetchRequest;
@end

@implementation STLocalOrganization

+ (id)fetchOrCreateLocalOrganizationWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 fetchRequest];
  v8 = [v6 executeFetchRequest:v7 error:a4];
  v9 = v8;
  if (v8)
  {
    if ([v8 count] >= 2)
    {
      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        +[STLocalOrganization fetchOrCreateLocalOrganizationWithContext:error:];
      }
    }

    v11 = [v9 firstObject];
    if (!v11)
    {
      v11 = [[STLocalOrganization alloc] initWithContext:v6];
    }

    v12 = [(STLocalOrganization *)v11 settings];
    if (!v12)
    {
      v12 = [[STLocalOrganizationSettings alloc] initWithContext:v6];
      [(STLocalOrganizationSettings *)v12 setOrganization:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STLocalOrganization;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (void)fetchOrCreateLocalOrganizationWithContext:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end