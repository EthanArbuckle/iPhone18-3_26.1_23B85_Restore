@interface STLocalOrganization
+ (id)fetchOrCreateLocalOrganizationWithContext:(id)context error:(id *)error;
+ (id)fetchRequest;
@end

@implementation STLocalOrganization

+ (id)fetchOrCreateLocalOrganizationWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v8 = [contextCopy executeFetchRequest:fetchRequest error:error];
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

    firstObject = [v9 firstObject];
    if (!firstObject)
    {
      firstObject = [[STLocalOrganization alloc] initWithContext:contextCopy];
    }

    settings = [(STLocalOrganization *)firstObject settings];
    if (!settings)
    {
      settings = [[STLocalOrganizationSettings alloc] initWithContext:contextCopy];
      [(STLocalOrganizationSettings *)settings setOrganization:firstObject];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)fetchRequest
{
  v4.receiver = self;
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