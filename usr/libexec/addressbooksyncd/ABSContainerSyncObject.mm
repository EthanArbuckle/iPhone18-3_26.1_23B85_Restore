@interface ABSContainerSyncObject
+ (id)_getContainer;
+ (int64_t)currentGuardianRestriction;
+ (void)applyChange:(id)change;
- (id)createProtobufWithOptions:(id)options;
@end

@implementation ABSContainerSyncObject

+ (int64_t)currentGuardianRestriction
{
  _getContainer = [self _getContainer];
  v3 = _getContainer;
  if (_getContainer)
  {
    if ([_getContainer isGuardianRestricted])
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

- (id)createProtobufWithOptions:(id)options
{
  v3 = [[ABSPBSyncObject alloc] initWithMemo:@"Container"];
  v4 = objc_alloc_init(ABSPBContainerAttributes);
  [(ABSPBSyncObject *)v3 setContainerSyncObject:v4];

  _getContainer = [objc_opt_class() _getContainer];
  accountIdentifier = [_getContainer accountIdentifier];
  containerSyncObject = [(ABSPBSyncObject *)v3 containerSyncObject];
  [containerSyncObject setAccountExternalIdentifier:accountIdentifier];

  isGuardianRestricted = [_getContainer isGuardianRestricted];
  containerSyncObject2 = [(ABSPBSyncObject *)v3 containerSyncObject];
  [containerSyncObject2 setGuardianRestricted:isGuardianRestricted];

  type = [_getContainer type];
  containerSyncObject3 = [(ABSPBSyncObject *)v3 containerSyncObject];
  [containerSyncObject3 setType:type];

  name = [_getContainer name];
  containerSyncObject4 = [(ABSPBSyncObject *)v3 containerSyncObject];
  [containerSyncObject4 setName:name];

  data = [(ABSPBSyncObject *)v3 data];

  return data;
}

+ (void)applyChange:(id)change
{
  containerSyncObject = [change containerSyncObject];
  v4 = +[ABSContactsInterface sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031848;
  v6[3] = &unk_10005D168;
  v7 = containerSyncObject;
  v5 = containerSyncObject;
  [v4 mutateSync:v6];
}

@end