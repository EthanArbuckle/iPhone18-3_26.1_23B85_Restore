@interface STSharedCoreDataTransformerComponent
+ (BOOL)managingOrganizationIsFamilyOrganizationForCoreUser:(id)user inContext:(id)context;
+ (id)changedObjectFromCoreDataChange:(id)change inContext:(id)context error:(id *)error;
@end

@implementation STSharedCoreDataTransformerComponent

+ (id)changedObjectFromCoreDataChange:(id)change inContext:(id)context error:(id *)error
{
  contextCopy = context;
  changeIdentifier = [change changeIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = [contextCopy objectWithID:changeIdentifier];
  }

  else
  {
    v9 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100120398(changeIdentifier, v9);
    }

    if (error)
    {
      v10 = [NSError alloc];
      v11 = STErrorDomain;
      nSLocalizedDescriptionKey = [NSString stringWithFormat:@"Change Identifier: %@", changeIdentifier, NSLocalizedDescriptionKey];
      v16 = nSLocalizedDescriptionKey;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *error = [v10 initWithDomain:v11 code:33 userInfo:v13];

      error = 0;
    }
  }

  return error;
}

+ (BOOL)managingOrganizationIsFamilyOrganizationForCoreUser:(id)user inContext:(id)context
{
  userCopy = user;
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008D830;
  v10[3] = &unk_1001A3C98;
  v7 = userCopy;
  v11 = v7;
  v12 = &v13;
  [contextCopy performBlockAndWait:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

@end