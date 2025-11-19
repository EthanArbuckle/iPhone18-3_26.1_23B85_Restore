@interface ICStoreDialogResponseButtonAction
- (ICStoreDialogResponseButtonAction)initWithResponseButtonActionDictionary:(id)a3;
- (NSString)URLString;
- (NSString)buyParams;
- (NSString)itemName;
- (NSString)kind;
- (NSString)subtarget;
- (int64_t)type;
@end

@implementation ICStoreDialogResponseButtonAction

- (NSString)kind
{
  v2 = [(NSDictionary *)self->_actionDictionary objectForKey:@"kind"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)URLString
{
  v2 = [(NSDictionary *)self->_actionDictionary objectForKey:@"url"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)subtarget
{
  v2 = [(NSDictionary *)self->_actionDictionary objectForKey:@"subtarget"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)itemName
{
  v2 = [(NSDictionary *)self->_actionDictionary objectForKey:@"itemName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)buyParams
{
  v2 = [(NSDictionary *)self->_actionDictionary objectForKey:@"buyParams"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int64_t)type
{
  v2 = [(NSDictionary *)self->_actionDictionary objectForKey:@"kind"];
  if (_NSIsNSString())
  {
    if ([v2 isEqualToString:@"Buy"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"Goto"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"GotoFinance"])
    {
      v3 = 3;
    }

    else if ([v2 isEqualToString:@"OpenURL"])
    {
      v3 = 4;
    }

    else if ([v2 caseInsensitiveCompare:@"GoBack"])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"QRCode"])
    {
      v3 = 6;
    }

    else if ([v2 isEqualToString:@"redeem-code"])
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"Review"])
    {
      v3 = 8;
    }

    else if ([v2 isEqualToString:@"RetryRestoreAll"])
    {
      v3 = 9;
    }

    else if ([v2 isEqualToString:@"ServiceAction"])
    {
      v3 = 10;
    }

    else if ([v2 isEqualToString:@"FamilyPermissionAction"])
    {
      v3 = 11;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICStoreDialogResponseButtonAction)initWithResponseButtonActionDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICStoreDialogResponseButtonAction;
  v5 = [(ICStoreDialogResponseButtonAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    actionDictionary = v5->_actionDictionary;
    v5->_actionDictionary = v6;
  }

  return v5;
}

@end