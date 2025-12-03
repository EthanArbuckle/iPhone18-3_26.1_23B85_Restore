@interface STConfigurationReactorCoreComponent
+ (id)targetableFamilyMemberForUser:(id)user inTargetableFamilyMembers:(id)members;
@end

@implementation STConfigurationReactorCoreComponent

+ (id)targetableFamilyMemberForUser:(id)user inTargetableFamilyMembers:(id)members
{
  userCopy = user;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  membersCopy = members;
  v7 = [membersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(membersCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        dsid = [userCopy dsid];
        dsid2 = [v10 dsid];
        v13 = [dsid isEqualToNumber:dsid2];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [membersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end