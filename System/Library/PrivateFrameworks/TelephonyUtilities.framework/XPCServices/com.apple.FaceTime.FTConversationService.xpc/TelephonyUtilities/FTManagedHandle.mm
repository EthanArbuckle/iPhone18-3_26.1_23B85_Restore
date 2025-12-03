@interface FTManagedHandle
+ (id)managedHandleForTUHandle:(id)handle inManagedObjectContext:(id)context;
+ (id)managedHandlesForTUHandles:(id)handles inManagedObjectContext:(id)context;
- (FTManagedHandle)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (TUHandle)tuHandle;
@end

@implementation FTManagedHandle

+ (id)managedHandleForTUHandle:(id)handle inManagedObjectContext:(id)context
{
  handleCopy = handle;
  contextCopy = context;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  if (managedObjectModel)
  {
    entitiesByName = [managedObjectModel entitiesByName];
    v10 = [entitiesByName objectForKeyedSubscript:@"Handle"];

    if (v10)
    {
      v11 = [objc_alloc(objc_opt_class()) initWithEntity:v10 insertIntoManagedObjectContext:contextCopy];
    }

    else
    {
      v13 = FTCServiceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = @"Handle";
        v20 = 2112;
        v21 = contextCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %@ in managed object context %@. Falling back to convenience initializer.", &v18, 0x16u);
      }

      v11 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy];
    }

    v12 = v11;
    isoCountryCode = [handleCopy isoCountryCode];
    [v12 setIsoCountryCode:isoCountryCode];

    normalizedValue = [handleCopy normalizedValue];
    [v12 setNormalizedValue:normalizedValue];

    [v12 setType:{objc_msgSend(handleCopy, "type")}];
    value = [handleCopy value];
    [v12 setValue:value];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)managedHandlesForTUHandles:(id)handles inManagedObjectContext:(id)context
{
  handlesCopy = handles;
  contextCopy = context;
  v8 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [handlesCopy count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = handlesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [self managedHandleForTUHandle:*(*(&v17 + 1) + 8 * i) inManagedObjectContext:{contextCopy, v17}];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (TUHandle)tuHandle
{
  type = [(FTManagedHandle *)self type];
  if (type == 1)
  {
    value = [(FTManagedHandle *)self value];
    v5 = [TUHandle normalizedGenericHandleForValue:value];
    goto LABEL_7;
  }

  if (type == 2)
  {
    value = [(FTManagedHandle *)self value];
    isoCountryCode = [(FTManagedHandle *)self isoCountryCode];
    v7 = [TUHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:isoCountryCode];

LABEL_8:
    goto LABEL_10;
  }

  if (type == 3)
  {
    value = [(FTManagedHandle *)self value];
    v5 = [TUHandle normalizedEmailAddressHandleForValue:value];
LABEL_7:
    v7 = v5;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (FTManagedHandle)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FTManagedHandle();
  return [(FTManagedHandle *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end