@interface FTManagedHandle
+ (id)managedHandleForTUHandle:(id)a3 inManagedObjectContext:(id)a4;
+ (id)managedHandlesForTUHandles:(id)a3 inManagedObjectContext:(id)a4;
- (FTManagedHandle)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (TUHandle)tuHandle;
@end

@implementation FTManagedHandle

+ (id)managedHandleForTUHandle:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 persistentStoreCoordinator];
  v8 = [v7 managedObjectModel];

  if (v8)
  {
    v9 = [v8 entitiesByName];
    v10 = [v9 objectForKeyedSubscript:@"Handle"];

    if (v10)
    {
      v11 = [objc_alloc(objc_opt_class()) initWithEntity:v10 insertIntoManagedObjectContext:v6];
    }

    else
    {
      v13 = FTCServiceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = @"Handle";
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %@ in managed object context %@. Falling back to convenience initializer.", &v18, 0x16u);
      }

      v11 = [objc_alloc(objc_opt_class()) initWithContext:v6];
    }

    v12 = v11;
    v14 = [v5 isoCountryCode];
    [v12 setIsoCountryCode:v14];

    v15 = [v5 normalizedValue];
    [v12 setNormalizedValue:v15];

    [v12 setType:{objc_msgSend(v5, "type")}];
    v16 = [v5 value];
    [v12 setValue:v16];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)managedHandlesForTUHandles:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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

        v14 = [a1 managedHandleForTUHandle:*(*(&v17 + 1) + 8 * i) inManagedObjectContext:{v7, v17}];
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
  v3 = [(FTManagedHandle *)self type];
  if (v3 == 1)
  {
    v4 = [(FTManagedHandle *)self value];
    v5 = [TUHandle normalizedGenericHandleForValue:v4];
    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v4 = [(FTManagedHandle *)self value];
    v6 = [(FTManagedHandle *)self isoCountryCode];
    v7 = [TUHandle normalizedPhoneNumberHandleForValue:v4 isoCountryCode:v6];

LABEL_8:
    goto LABEL_10;
  }

  if (v3 == 3)
  {
    v4 = [(FTManagedHandle *)self value];
    v5 = [TUHandle normalizedEmailAddressHandleForValue:v4];
LABEL_7:
    v7 = v5;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (FTManagedHandle)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FTManagedHandle();
  return [(FTManagedHandle *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end