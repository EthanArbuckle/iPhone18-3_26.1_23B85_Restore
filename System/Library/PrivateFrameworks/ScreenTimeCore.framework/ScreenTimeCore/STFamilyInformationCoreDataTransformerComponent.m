@interface STFamilyInformationCoreDataTransformerComponent
+ (id)_purgeFamilyInformationInContext:(id)a3;
+ (id)_updateLocalUserWithFamilyMembers:(id)a3 inContext:(id)a4;
+ (id)familyMemberTypeForTargetableFamilyMember:(id)a3;
+ (id)persistFamilyInformationFromFamilyMembers:(id)a3 container:(id)a4;
@end

@implementation STFamilyInformationCoreDataTransformerComponent

+ (id)persistFamilyInformationFromFamilyMembers:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = [a4 newBackgroundContext];
  if ([v6 count])
  {
    [a1 _updateLocalUserWithFamilyMembers:v6 inContext:v7];
  }

  else
  {
    [a1 _purgeFamilyInformationInContext:v7];
  }
  v8 = ;

  return v8;
}

+ (id)_updateLocalUserWithFamilyMembers:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "+[STFamilyInformationCoreDataTransformerComponent _updateLocalUserWithFamilyMembers:inContext:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}s: \nUpdating local user with family information", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_10002F560;
  v21 = sub_10002F570;
  v22 = +[STResult success];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F578;
  v13[3] = &unk_1001A36B0;
  v9 = v6;
  v14 = v9;
  p_buf = &buf;
  v10 = v7;
  v15 = v10;
  v17 = a1;
  [v10 performBlockAndWait:v13];
  v11 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v11;
}

+ (id)_purgeFamilyInformationInContext:(id)a3
{
  v3 = a3;
  v4 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Purging family information from local user", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = sub_10002F560;
  v15 = sub_10002F570;
  v16 = +[STResult success];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002FB2C;
  v8[3] = &unk_1001A3C98;
  v5 = v3;
  v9 = v5;
  v10 = buf;
  [v5 performBlockAndWait:v8];
  v6 = *(v12 + 5);

  _Block_object_dispose(buf, 8);

  return v6;
}

+ (id)familyMemberTypeForTargetableFamilyMember:(id)a3
{
  v3 = [a3 memberType];
  if (v3 <= 3)
  {
    v4 = **(&off_1001A3CB8 + v3);
  }

  return v4;
}

@end