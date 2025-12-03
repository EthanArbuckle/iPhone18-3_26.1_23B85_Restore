@interface RingtonePurchase
+ (id)entityFromContext:(id)context;
- (void)_assignToContact:(id)contact inContactStore:(id)store withSoundIdentifier:(id)identifier;
- (void)_assignToContactWithID:(id)d withIdentifier:(id)identifier;
- (void)_assignToPersonWithID:(int)d withIdentifier:(id)identifier;
- (void)applyUserActionWithToneIdentifier:(id)identifier;
- (void)loadFromPurchase:(id)purchase;
@end

@implementation RingtonePurchase

+ (id)entityFromContext:(id)context
{
  v3 = [objc_msgSend(objc_msgSend(context "persistentStoreCoordinator")];

  return [v3 objectForKey:@"RingtonePurchase"];
}

- (void)applyUserActionWithToneIdentifier:(id)identifier
{
  assignToPersonID = [(RingtonePurchase *)self assignToPersonID];
  if (assignToPersonID)
  {
    v6 = assignToPersonID;
    if ([assignToPersonID integerValue] >= 1)
    {
      -[RingtonePurchase _assignToPersonWithID:withIdentifier:](self, "_assignToPersonWithID:withIdentifier:", [v6 intValue], identifier);
    }
  }

  assignToContactID = [(RingtonePurchase *)self assignToContactID];
  if (assignToContactID)
  {
    [(RingtonePurchase *)self _assignToContactWithID:assignToContactID withIdentifier:identifier];
  }

  v8 = [-[RingtonePurchase shouldMakeDefault](self "shouldMakeDefault")];
  if ([-[RingtonePurchase shouldMakeDefaultTextTone](self "shouldMakeDefaultTextTone")])
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = objc_alloc_init(ISWeakLinkedClassForString());
    [v10 setCurrentToneIdentifier:identifier forAlertType:v9];
  }
}

- (void)loadFromPurchase:(id)purchase
{
  -[RingtonePurchase setAdamID:](self, "setAdamID:", [purchase valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier]);
  -[RingtonePurchase setAssigneeToneStyle:](self, "setAssigneeToneStyle:", [purchase assigneeToneStyle]);
  -[RingtonePurchase setAssignToPersonID:](self, "setAssignToPersonID:", [purchase assigneeIdentifier]);
  -[RingtonePurchase setAssignToContactID:](self, "setAssignToContactID:", [purchase assigneeContactIdentifier]);
  -[RingtonePurchase setShouldMakeDefault:](self, "setShouldMakeDefault:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [purchase shouldMakeDefaultRingtone]));
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [purchase shouldMakeDefaultTextTone]);

  [(RingtonePurchase *)self setShouldMakeDefaultTextTone:v5];
}

- (void)_assignToContactWithID:(id)d withIdentifier:(id)identifier
{
  v7 = objc_alloc_init(ISWeakLinkedClassForString());
  v9[0] = ISWeakLinkedStringConstantForString();
  v9[1] = ISWeakLinkedStringConstantForString();
  v8 = [v7 unifiedContactWithIdentifier:d keysToFetch:+[NSArray arrayWithObjects:count:](NSArray error:{"arrayWithObjects:count:", v9, 2), 0}];
  if (v8)
  {
    [(RingtonePurchase *)self _assignToContact:v8 inContactStore:v7 withSoundIdentifier:identifier];
  }
}

- (void)_assignToPersonWithID:(int)d withIdentifier:(id)identifier
{
  v5 = *&d;
  v7 = objc_alloc_init(ISWeakLinkedClassForString());
  -[RingtonePurchase _assignToContactWithID:withIdentifier:](self, "_assignToContactWithID:withIdentifier:", [v7 contactIdentifierFromPersonID:v5], identifier);
}

- (void)_assignToContact:(id)contact inContactStore:(id)store withSoundIdentifier:(id)identifier
{
  v9 = [contact mutableCopy];
  v10 = [objc_alloc(ISWeakLinkedClassForString()) initWithSound:identifier vibration:0 ignoreMute:0];
  assigneeToneStyle = [(RingtonePurchase *)self assigneeToneStyle];
  if ([assigneeToneStyle isEqualToString:SSItemToneStyleTextTone])
  {
    [v9 setTextAlert:v10];
  }

  else
  {
    [v9 setCallAlert:v10];
  }

  v12 = objc_alloc_init(ISWeakLinkedClassForString());
  [v12 updateContact:v9];
  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = shouldLog | 2;
  }

  else
  {
    v15 = shouldLog;
  }

  if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v28 = 138412802;
    v29 = objc_opt_class();
    v30 = 2112;
    identifierCopy = identifier;
    v32 = 2112;
    identifier = [contact identifier];
    LODWORD(v26) = 32;
    v25 = &v28;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4, &v28, v26];
      free(v17);
      v25 = v18;
      SSFileLog();
    }
  }

  v27 = 0;
  if (([store executeSaveRequest:v12 error:{&v27, v25}] & 1) == 0)
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = shouldLog2 | 2;
    }

    else
    {
      v21 = shouldLog2;
    }

    if (!os_log_type_enabled([v19 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v22 = objc_opt_class();
      v28 = 138412546;
      v29 = v22;
      v30 = 2112;
      identifierCopy = v27;
      LODWORD(v26) = 22;
      v23 = _os_log_send_and_compose_impl();
      if (v23)
      {
        v24 = v23;
        [NSString stringWithCString:v23 encoding:4, &v28, v26];
        free(v24);
        SSFileLog();
      }
    }
  }
}

@end