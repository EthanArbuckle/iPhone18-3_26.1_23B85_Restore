@interface UMTestArguments
+ (id)_personaAttributes;
+ (id)_userAttributes;
+ (id)getACMNilPasscodeData;
+ (id)getACMPasscodeData;
+ (id)getImagePathAttribute;
+ (id)getLayoutAttributes;
+ (id)getNextArgument;
+ (id)getPasscodeData;
+ (id)getPersonaAttributes;
+ (id)getPersonaStringAttribute;
+ (id)getPersonaTypeAttribute;
+ (id)getProvisionAttributes;
+ (id)getSharedDataVolumePathAttribute;
+ (id)getSystemVolumePathAttribute;
+ (id)getUser;
+ (id)getUserAttributes;
+ (id)getUserIfExists;
+ (id)getUserVolumePathAttribute;
+ (id)getbundleIDAttribute;
+ (id)remainingArguments;
+ (int)getPersonaTestCount;
+ (int)getProvisionNumUsers;
+ (int)getProvisionQuotaSize;
+ (int)getUserGID;
+ (int)getUserUID;
+ (void)applyAttributes:(id)attributes toUser:(id)user;
+ (void)initialize;
@end

@implementation UMTestArguments

+ (void)initialize
{
  v4 = +[NSProcessInfo processInfo];
  arguments = [v4 arguments];
  v3 = qword_100024B78;
  qword_100024B78 = arguments;
}

+ (id)getNextArgument
{
  v2 = qword_100024B68;
  if (v2 >= [qword_100024B78 count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [qword_100024B78 objectAtIndexedSubscript:qword_100024B68];
    ++qword_100024B68;
  }

  return v3;
}

+ (id)remainingArguments
{
  v2 = qword_100024B78;
  v3 = qword_100024B68;
  v4 = [qword_100024B78 count];
  v5 = &v4[-qword_100024B68];

  return [v2 subarrayWithRange:{v3, v5}];
}

+ (id)getUserAttributes
{
  v3 = objc_opt_new();
  _userAttributes = [self _userAttributes];
  v5 = +[UMTestArguments getNextArgument];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      if (![_userAttributes containsObject:v6])
      {
LABEL_6:

        goto LABEL_7;
      }

      v7 = +[UMTestArguments getNextArgument];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      [v3 setObject:v7 forKeyedSubscript:v6];

      v6 = +[UMTestArguments getNextArgument];
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_7:
    +[UMTestArguments goToPreviousArgument];
  }

  v9 = [v3 copy];

  return v9;
}

+ (int)getUserUID
{
  v3 = objc_opt_new();
  getUserAttributes = [self getUserAttributes];
  [self applyAttributes:getUserAttributes toUser:v3];
  if ([v3 uid] < 0x1F5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 uid];
  }

  return v5;
}

+ (int)getUserGID
{
  v3 = objc_opt_new();
  getUserAttributes = [self getUserAttributes];
  [self applyAttributes:getUserAttributes toUser:v3];
  [v3 uid];
  LODWORD(self) = [v3 uid];

  return self;
}

+ (void)applyAttributes:(id)attributes toUser:(id)user
{
  attributesCopy = attributes;
  userCopy = user;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [attributesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [attributesCopy objectForKeyedSubscript:v11];
        if ([v11 isEqualToString:@"uid"])
        {
          [userCopy setUid:{objc_msgSend(v12, "intValue")}];
        }

        else if ([v11 isEqualToString:@"alternateDSID"])
        {
          [userCopy setAlternateDSID:v12];
        }

        else if ([v11 isEqualToString:@"username"])
        {
          [userCopy setUsername:v12];
        }

        else if ([v11 isEqualToString:@"givenName"])
        {
          [userCopy setGivenName:v12];
        }

        else if ([v11 isEqualToString:@"familyName"])
        {
          [userCopy setFamilyName:v12];
        }

        else if ([v11 isEqualToString:@"displayName"])
        {
          [userCopy setDisplayName:v12];
        }

        else if ([v11 isEqualToString:@"photoURL"])
        {
          v13 = [NSURL URLWithString:v12];
          [userCopy setPhotoURL:v13];
        }

        else if ([v11 isEqualToString:@"userAuxiliaryString"])
        {
          [userCopy setUserAuxiliaryString:v12];
        }
      }

      v8 = [attributesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (id)getUser
{
  v3 = objc_opt_new();
  getUserAttributes = [self getUserAttributes];
  [self applyAttributes:getUserAttributes toUser:v3];

  return v3;
}

+ (id)getUserIfExists
{
  getUser = [self getUser];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = +[UMUserManager sharedManager];
  allUsers = [v3 allUsers];

  v5 = [allUsers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allUsers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isEqualToUser:getUser])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [allUsers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)_userAttributes
{
  if (qword_100024B88 != -1)
  {
    sub_10000CCC8();
  }

  v3 = qword_100024B80;

  return v3;
}

+ (id)getPasscodeData
{
  _passcodeIndex = [self _passcodeIndex];
  if (_passcodeIndex == 0x7FFFFFFFFFFFFFFFLL || (v3 = _passcodeIndex, _passcodeIndex >= [qword_100024B78 count]))
  {
    v5 = 0;
  }

  else
  {
    v4 = [qword_100024B78 objectAtIndexedSubscript:v3 + 1];
    v5 = [v4 dataUsingEncoding:4];
  }

  return v5;
}

+ (id)getACMPasscodeData
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100001D24;
  v14 = sub_100001D34;
  v15 = 0;
  _passcodeIndex = [self _passcodeIndex];
  v9 = 0;
  if (_passcodeIndex == 0x7FFFFFFFFFFFFFFFLL || _passcodeIndex >= [qword_100024B78 count])
  {
LABEL_8:
    v3 = v11[5];
    goto LABEL_9;
  }

  v3 = 0;
  if (!ACMContextCreate(&v9) && v9)
  {
    v4 = [qword_100024B78 objectAtIndexedSubscript:_passcodeIndex + 1];
    uTF8String = [v4 UTF8String];

    v6 = strlen(uTF8String);
    if (ACMContextSetData(v9, 5, uTF8String, v6))
    {
      v3 = 0;
      goto LABEL_9;
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001D3C;
    v8[3] = &unk_1000203A8;
    v8[4] = &v10;
    ACMContextGetExternalForm(v9, v8);
    goto LABEL_8;
  }

LABEL_9:
  _Block_object_dispose(&v10, 8);

  return v3;
}

+ (id)getACMNilPasscodeData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100001D24;
  v10 = sub_100001D34;
  v11 = 0;
  v5 = 0;
  v2 = 0;
  if (!ACMContextCreate(&v5) && v5)
  {
    if (ACMContextSetData(v5, 5, "", 0))
    {
      v2 = 0;
    }

    else
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100001F04;
      v4[3] = &unk_1000203A8;
      v4[4] = &v6;
      ACMContextGetExternalForm(v5, v4);
      v2 = v7[5];
    }
  }

  _Block_object_dispose(&v6, 8);

  return v2;
}

+ (id)_personaAttributes
{
  if (qword_100024B98 != -1)
  {
    sub_10000CCDC();
  }

  v3 = qword_100024B90;

  return v3;
}

+ (id)getPersonaAttributes
{
  v3 = objc_opt_new();
  _personaAttributes = [self _personaAttributes];
  v5 = +[UMTestArguments getNextArgument];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      if (![_personaAttributes containsObject:v6])
      {
LABEL_6:

        goto LABEL_7;
      }

      v7 = +[UMTestArguments getNextArgument];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      [v3 setObject:v7 forKeyedSubscript:v6];

      v6 = +[UMTestArguments getNextArgument];
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_7:
    +[UMTestArguments goToPreviousArgument];
  }

  v9 = [v3 copy];

  return v9;
}

+ (id)getProvisionAttributes
{
  v2 = objc_opt_new();
  v10[0] = @"quotasize";
  v10[1] = @"numusers";
  v3 = [NSArray arrayWithObjects:v10 count:2];
  v4 = +[UMTestArguments getNextArgument];
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      if (![v3 containsObject:v5])
      {
LABEL_6:

        goto LABEL_7;
      }

      v6 = +[UMTestArguments getNextArgument];
      if (!v6)
      {
        break;
      }

      v7 = v6;
      [v2 setObject:v6 forKeyedSubscript:v5];

      v5 = +[UMTestArguments getNextArgument];
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_7:
    +[UMTestArguments goToPreviousArgument];
  }

  v8 = [v2 copy];

  return v8;
}

+ (id)getLayoutAttributes
{
  v2 = objc_opt_new();
  v10[0] = @"sdvpath";
  v10[1] = @"userpath";
  v10[2] = @"systempath";
  v10[3] = @"disknode";
  v10[4] = @"volumeuuid";
  v10[5] = @"volumename";
  v3 = [NSArray arrayWithObjects:v10 count:6];
  v4 = +[UMTestArguments getNextArgument];
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      if (![v3 containsObject:v5])
      {
LABEL_6:

        goto LABEL_7;
      }

      v6 = +[UMTestArguments getNextArgument];
      if (!v6)
      {
        break;
      }

      v7 = v6;
      [v2 setObject:v6 forKeyedSubscript:v5];

      v5 = +[UMTestArguments getNextArgument];
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_7:
    +[UMTestArguments goToPreviousArgument];
  }

  v8 = [v2 copy];

  return v8;
}

+ (id)getPersonaStringAttribute
{
  getPersonaAttributes = [self getPersonaAttributes];
  v3 = getPersonaAttributes;
  if (getPersonaAttributes && ([getPersonaAttributes objectForKey:@"personastring"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getbundleIDAttribute
{
  getPersonaAttributes = [self getPersonaAttributes];
  v3 = getPersonaAttributes;
  if (getPersonaAttributes && ([getPersonaAttributes objectForKey:@"bundleid"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getPersonaTypeAttribute
{
  getPersonaAttributes = [self getPersonaAttributes];
  v3 = getPersonaAttributes;
  if (getPersonaAttributes)
  {
    v4 = [getPersonaAttributes objectForKey:@"personatype"];
    if ([v4 isEqualToString:@"personal"])
    {
      v5 = [NSNumber numberWithInt:0];
      [UMTestPrint println:@"getPersonaTypeAttribute validated Personal type"];
    }

    else if ([v4 isEqualToString:@"enterprise"])
    {
      [UMTestPrint println:@"getPersonaTypeAttribute validated Enterprise type"];
      v5 = [NSNumber numberWithInt:2];
    }

    else
    {
      [UMTestPrint println:@"getPersonaTypeAttribute invalid string is %@", v4];
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)getImagePathAttribute
{
  getPersonaAttributes = [self getPersonaAttributes];
  v3 = getPersonaAttributes;
  if (getPersonaAttributes && ([getPersonaAttributes objectForKey:@"imagepath"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)getPersonaTestCount
{
  getPersonaAttributes = [self getPersonaAttributes];
  v3 = getPersonaAttributes;
  if (getPersonaAttributes && ([getPersonaAttributes objectForKey:@"ptestcount"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

+ (int)getProvisionQuotaSize
{
  getProvisionAttributes = [self getProvisionAttributes];
  v3 = getProvisionAttributes;
  if (getProvisionAttributes && ([getProvisionAttributes objectForKey:@"quotasize"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 10;
  }

  return intValue;
}

+ (int)getProvisionNumUsers
{
  getProvisionAttributes = [self getProvisionAttributes];
  v3 = getProvisionAttributes;
  if (getProvisionAttributes && ([getProvisionAttributes objectForKey:@"numusers"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 10;
  }

  return intValue;
}

+ (id)getSharedDataVolumePathAttribute
{
  getLayoutAttributes = [self getLayoutAttributes];
  v3 = getLayoutAttributes;
  if (getLayoutAttributes && ([getLayoutAttributes objectForKey:@"sdvpath"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getUserVolumePathAttribute
{
  getLayoutAttributes = [self getLayoutAttributes];
  v3 = getLayoutAttributes;
  if (getLayoutAttributes && ([getLayoutAttributes objectForKey:@"userpath"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getSystemVolumePathAttribute
{
  getLayoutAttributes = [self getLayoutAttributes];
  v3 = getLayoutAttributes;
  if (getLayoutAttributes && ([getLayoutAttributes objectForKey:@"systempath"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end