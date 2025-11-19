@interface STSharedCoreDataTransformerComponent
+ (BOOL)managingOrganizationIsFamilyOrganizationForCoreUser:(id)a3 inContext:(id)a4;
+ (id)changedObjectFromCoreDataChange:(id)a3 inContext:(id)a4 error:(id *)a5;
@end

@implementation STSharedCoreDataTransformerComponent

+ (id)changedObjectFromCoreDataChange:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 changeIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a5 = [v7 objectWithID:v8];
  }

  else
  {
    v9 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100120398(v8, v9);
    }

    if (a5)
    {
      v10 = [NSError alloc];
      v11 = STErrorDomain;
      v12 = [NSString stringWithFormat:@"Change Identifier: %@", v8, NSLocalizedDescriptionKey];
      v16 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a5 = [v10 initWithDomain:v11 code:33 userInfo:v13];

      a5 = 0;
    }
  }

  return a5;
}

+ (BOOL)managingOrganizationIsFamilyOrganizationForCoreUser:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008D830;
  v10[3] = &unk_1001A3C98;
  v7 = v5;
  v11 = v7;
  v12 = &v13;
  [v6 performBlockAndWait:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

@end