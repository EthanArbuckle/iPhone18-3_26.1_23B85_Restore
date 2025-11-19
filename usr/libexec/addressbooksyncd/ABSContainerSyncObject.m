@interface ABSContainerSyncObject
+ (id)_getContainer;
+ (int64_t)currentGuardianRestriction;
+ (void)applyChange:(id)a3;
- (id)createProtobufWithOptions:(id)a3;
@end

@implementation ABSContainerSyncObject

+ (int64_t)currentGuardianRestriction
{
  v2 = [a1 _getContainer];
  v3 = v2;
  if (v2)
  {
    if ([v2 isGuardianRestricted])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (id)_getContainer
{
  v2 = +[ABSAccountsManager primaryiCloudCardDAVAccountIdentifier];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100031218;
  v13 = sub_100031228;
  v14 = 0;
  if (v2)
  {
    v3 = +[ABSContactsInterface sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100031230;
    v6[3] = &unk_10005D660;
    v7 = v2;
    v8 = &v9;
    [v3 accessSync:v6];

    v4 = v10[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)createProtobufWithOptions:(id)a3
{
  v3 = [[ABSPBSyncObject alloc] initWithMemo:@"Container"];
  v4 = objc_alloc_init(ABSPBContainerAttributes);
  [(ABSPBSyncObject *)v3 setContainerSyncObject:v4];

  v5 = [objc_opt_class() _getContainer];
  v6 = [v5 accountIdentifier];
  v7 = [(ABSPBSyncObject *)v3 containerSyncObject];
  [v7 setAccountExternalIdentifier:v6];

  v8 = [v5 isGuardianRestricted];
  v9 = [(ABSPBSyncObject *)v3 containerSyncObject];
  [v9 setGuardianRestricted:v8];

  v10 = [v5 type];
  v11 = [(ABSPBSyncObject *)v3 containerSyncObject];
  [v11 setType:v10];

  v12 = [v5 name];
  v13 = [(ABSPBSyncObject *)v3 containerSyncObject];
  [v13 setName:v12];

  v14 = [(ABSPBSyncObject *)v3 data];

  return v14;
}

+ (void)applyChange:(id)a3
{
  v3 = [a3 containerSyncObject];
  v4 = +[ABSContactsInterface sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031848;
  v6[3] = &unk_10005D168;
  v7 = v3;
  v5 = v3;
  [v4 mutateSync:v6];
}

@end