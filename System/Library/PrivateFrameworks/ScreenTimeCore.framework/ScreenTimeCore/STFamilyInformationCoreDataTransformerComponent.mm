@interface STFamilyInformationCoreDataTransformerComponent
+ (id)_purgeFamilyInformationInContext:(id)context;
+ (id)_updateLocalUserWithFamilyMembers:(id)members inContext:(id)context;
+ (id)familyMemberTypeForTargetableFamilyMember:(id)member;
+ (id)persistFamilyInformationFromFamilyMembers:(id)members container:(id)container;
@end

@implementation STFamilyInformationCoreDataTransformerComponent

+ (id)persistFamilyInformationFromFamilyMembers:(id)members container:(id)container
{
  membersCopy = members;
  newBackgroundContext = [container newBackgroundContext];
  if ([membersCopy count])
  {
    [self _updateLocalUserWithFamilyMembers:membersCopy inContext:newBackgroundContext];
  }

  else
  {
    [self _purgeFamilyInformationInContext:newBackgroundContext];
  }
  v8 = ;

  return v8;
}

+ (id)_updateLocalUserWithFamilyMembers:(id)members inContext:(id)context
{
  membersCopy = members;
  contextCopy = context;
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
  v9 = membersCopy;
  v14 = v9;
  p_buf = &buf;
  v10 = contextCopy;
  v15 = v10;
  selfCopy = self;
  [v10 performBlockAndWait:v13];
  v11 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v11;
}

+ (id)_purgeFamilyInformationInContext:(id)context
{
  contextCopy = context;
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
  v5 = contextCopy;
  v9 = v5;
  v10 = buf;
  [v5 performBlockAndWait:v8];
  v6 = *(v12 + 5);

  _Block_object_dispose(buf, 8);

  return v6;
}

+ (id)familyMemberTypeForTargetableFamilyMember:(id)member
{
  memberType = [member memberType];
  if (memberType <= 3)
  {
    v4 = **(&off_1001A3CB8 + memberType);
  }

  return v4;
}

@end