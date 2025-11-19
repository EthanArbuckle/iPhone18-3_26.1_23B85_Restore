@interface RingtonePurchase
+ (id)entityFromContext:(id)a3;
- (void)_assignToContact:(id)a3 inContactStore:(id)a4 withSoundIdentifier:(id)a5;
- (void)_assignToContactWithID:(id)a3 withIdentifier:(id)a4;
- (void)_assignToPersonWithID:(int)a3 withIdentifier:(id)a4;
- (void)applyUserActionWithToneIdentifier:(id)a3;
- (void)loadFromPurchase:(id)a3;
@end

@implementation RingtonePurchase

+ (id)entityFromContext:(id)a3
{
  v3 = [objc_msgSend(objc_msgSend(a3 "persistentStoreCoordinator")];

  return [v3 objectForKey:@"RingtonePurchase"];
}

- (void)applyUserActionWithToneIdentifier:(id)a3
{
  v5 = [(RingtonePurchase *)self assignToPersonID];
  if (v5)
  {
    v6 = v5;
    if ([v5 integerValue] >= 1)
    {
      -[RingtonePurchase _assignToPersonWithID:withIdentifier:](self, "_assignToPersonWithID:withIdentifier:", [v6 intValue], a3);
    }
  }

  v7 = [(RingtonePurchase *)self assignToContactID];
  if (v7)
  {
    [(RingtonePurchase *)self _assignToContactWithID:v7 withIdentifier:a3];
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
    [v10 setCurrentToneIdentifier:a3 forAlertType:v9];
  }
}

- (void)loadFromPurchase:(id)a3
{
  -[RingtonePurchase setAdamID:](self, "setAdamID:", [a3 valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier]);
  -[RingtonePurchase setAssigneeToneStyle:](self, "setAssigneeToneStyle:", [a3 assigneeToneStyle]);
  -[RingtonePurchase setAssignToPersonID:](self, "setAssignToPersonID:", [a3 assigneeIdentifier]);
  -[RingtonePurchase setAssignToContactID:](self, "setAssignToContactID:", [a3 assigneeContactIdentifier]);
  -[RingtonePurchase setShouldMakeDefault:](self, "setShouldMakeDefault:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 shouldMakeDefaultRingtone]));
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 shouldMakeDefaultTextTone]);

  [(RingtonePurchase *)self setShouldMakeDefaultTextTone:v5];
}

- (void)_assignToContactWithID:(id)a3 withIdentifier:(id)a4
{
  v7 = objc_alloc_init(ISWeakLinkedClassForString());
  v9[0] = ISWeakLinkedStringConstantForString();
  v9[1] = ISWeakLinkedStringConstantForString();
  v8 = [v7 unifiedContactWithIdentifier:a3 keysToFetch:+[NSArray arrayWithObjects:count:](NSArray error:{"arrayWithObjects:count:", v9, 2), 0}];
  if (v8)
  {
    [(RingtonePurchase *)self _assignToContact:v8 inContactStore:v7 withSoundIdentifier:a4];
  }
}

- (void)_assignToPersonWithID:(int)a3 withIdentifier:(id)a4
{
  v5 = *&a3;
  v7 = objc_alloc_init(ISWeakLinkedClassForString());
  -[RingtonePurchase _assignToContactWithID:withIdentifier:](self, "_assignToContactWithID:withIdentifier:", [v7 contactIdentifierFromPersonID:v5], a4);
}

- (void)_assignToContact:(id)a3 inContactStore:(id)a4 withSoundIdentifier:(id)a5
{
  v9 = [a3 mutableCopy];
  v10 = [objc_alloc(ISWeakLinkedClassForString()) initWithSound:a5 vibration:0 ignoreMute:0];
  v11 = [(RingtonePurchase *)self assigneeToneStyle];
  if ([v11 isEqualToString:SSItemToneStyleTextTone])
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

  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
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
    v31 = a5;
    v32 = 2112;
    v33 = [a3 identifier];
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
  if (([a4 executeSaveRequest:v12 error:{&v27, v25}] & 1) == 0)
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
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
      v31 = v27;
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