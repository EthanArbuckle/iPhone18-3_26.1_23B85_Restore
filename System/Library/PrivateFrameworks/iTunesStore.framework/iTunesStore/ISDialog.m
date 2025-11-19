@interface ISDialog
+ (__CFString)buttonTitleKeyForCFUserNotificationButtonTag:(unint64_t)a3;
+ (int64_t)displayCountForKey:(id)a3;
+ (unint64_t)buttonTagForCFUserNotificationButtonTitleKey:(__CFString *)a3;
+ (void)_initializeStaticButtonTitleKeyAndTagMapping;
- (BOOL)isDisplayable;
- (BOOL)isEqual:(id)a3;
- (ISDialog)init;
- (ISDialog)initWithAuthenticationChallege:(id)a3;
- (ISDialog)initWithDialogDictionary:(id)a3 authenticationContext:(id)a4;
- (ISDialog)initWithError:(id)a3;
- (ISDialog)initWithOfferDeviceError:(id)a3;
- (ISDialog)initWithTitle:(id)a3 message:(id)a4;
- (ISDialog)initWithXPCEncoding:(id)a3;
- (NSString)displayCountKey;
- (id)buyParams;
- (id)copyUserNotification;
- (id)copyXPCEncoding;
- (id)orderedButtonTitleKeysForCFUserNotification;
- (id)valueForUserInfoKey:(id)a3;
- (int64_t)_kindForString:(id)a3;
- (int64_t)maximumDisplayCount;
- (void)copyValueForCFUserNotificationKey:(__CFString *)a3;
- (void)dealloc;
- (void)incrementDisplayCount;
- (void)setButtonsWithTitles:(id)a3;
- (void)setDisplayCountKey:(id)a3;
- (void)setMaximumDisplayCount:(int64_t)a3;
- (void)setValue:(id)a3 forUserInfoKey:(id)a4;
- (void)setValue:(void *)a3 forCFUserNotificationKey:(__CFString *)a4;
@end

@implementation ISDialog

- (ISDialog)initWithAuthenticationChallege:(id)a3
{
  v4 = [(ISDialog *)self init];
  if (v4)
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = +[ISDialogButton buttonWithTitle:](ISDialogButton, "buttonWithTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"CANCEL", &stru_2884BCFD0, 0}]);
    -[ISDialog setButtons:](v4, "setButtons:", [v5 arrayWithObjects:{v6, +[ISDialogButton buttonWithTitle:](ISDialogButton, "buttonWithTitle:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"OK", &stru_2884BCFD0, 0)), 0}]);
    [(ISDialog *)v4 setDefaultButtonIndex:1];
    [(ISDialog *)v4 setExpectsResponse:1];
    [(ISDialog *)v4 setGroupsTextFields:1];
    -[ISDialog setTitle:](v4, "setTitle:", [a3 localizedTitle]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([a3 userNameIsEditable])
    {
      v8 = objc_alloc_init(ISDialogTextField);
      v9 = [a3 userNameIsEmail];
      if (v9)
      {
        v10 = 7;
      }

      else
      {
        v10 = 0;
      }

      if (v9)
      {
        v11 = @"EMAIL";
      }

      else
      {
        v11 = @"USERNAME";
      }

      [(ISDialogTextField *)v8 setKeyboardType:v10];
      -[ISDialogTextField setTitle:](v8, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v11, &stru_2884BCFD0, 0}]);
      -[ISDialogTextField setValue:](v8, "setValue:", [a3 user]);
      [v7 addObject:v8];
    }

    else
    {
      v12 = [a3 user];
      if (v12)
      {
LABEL_12:
        [(ISDialog *)v4 setMessage:v12];
        v13 = objc_alloc_init(ISDialogTextField);
        [(ISDialogTextField *)v13 setKeyboardType:0];
        [(ISDialogTextField *)v13 setSecure:1];
        -[ISDialogTextField setTitle:](v13, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PASSWORD", &stru_2884BCFD0, 0}]);
        [v7 addObject:v13];

        [(ISDialog *)v4 setTextFields:v7];
        return v4;
      }
    }

    v12 = [a3 localizedMessage];
    goto LABEL_12;
  }

  return v4;
}

- (ISDialog)init
{
  __ISRecordSPIClassUsage(self);
  v8.receiver = self;
  v8.super_class = ISDialog;
  v3 = [(ISDialog *)&v8 init];
  v4 = v3;
  if (v3)
  {
    v3->_authorizationIsForced = 1;
    v3->_defaultButtonIndex = -1;
    v3->_dismissOnHomeButton = 1;
    v3->_shouldDismissAfterUnlock = 1;
    v3->_unlockActionButtonIndex = -1;
    v3->_displaysOnLockscreen = 0;
    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v4->_lock;
    v4->_lock = v5;
  }

  return v4;
}

- (ISDialog)initWithDialogDictionary:(id)a3 authenticationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISDialog *)self init];
  if (!v8)
  {
    v11 = v6;
    goto LABEL_64;
  }

  v9 = [v7 copy];
  authenticationContext = v8->_authenticationContext;
  v8->_authenticationContext = v9;

  v43 = [objc_alloc(MEMORY[0x277D69C08]) initWithDictionary:v6];
  v11 = [v43 dictionaryByEvaluatingConditions];

  v12 = [v11 objectForKey:@"force-authentication"];
  if (objc_opt_respondsToSelector())
  {
    -[ISDialog setAuthorizationIsForced:](v8, "setAuthorizationIsForced:", [v12 BOOLValue]);
  }

  v13 = [v11 objectForKey:@"explanation"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialog *)v8 setMessage:v13];
  }

  v14 = [v11 objectForKey:@"message"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialog *)v8 setTitle:v14];
  }

  v15 = [v11 objectForKey:@"kind"];

  [(ISDialog *)v8 setKind:[(ISDialog *)v8 _kindForString:v15]];
  v16 = [v11 objectForKey:@"display-count-key"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v8->_displayCountKey, v16);
  }

  v17 = [v11 objectForKey:@"max-display-count"];

  if (objc_opt_respondsToSelector())
  {
    v8->_maxDisplayCount = [v17 intValue];
  }

  v18 = [v11 objectForKey:@"noDefaultButton"];

  if (objc_opt_respondsToSelector())
  {
    v8->_noDefaultButton = [v18 BOOLValue];
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = [v11 objectForKey:@"cancelButtonString"];

  objc_opt_class();
  v44 = v7;
  if (objc_opt_isKindOfClass())
  {
    v21 = 1;
    v22 = @"cancelButtonAction";
  }

  else
  {
    v23 = [v11 objectForKey:@"cancelButton"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 1;
      v22 = @"cancelButtonAction";
      v20 = v23;
    }

    else
    {
      v20 = [v11 objectForKey:@"otherButtonString"];

      v21 = 0;
      v22 = @"otherButtonAction";
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = objc_alloc_init(ISDialogButton);
    [(ISDialogButton *)v24 setTitle:v20];
    v25 = [v11 objectForKey:v22];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialogButton *)v24 loadFromDictionary:v25];
      v26 = [(ISDialogButton *)v24 actionType]== 3;
      v27 = [(ISDialogButton *)v24 actionType]!= 0;
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    [v19 addObject:v24];
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v25 = v20;
  }

  v28 = [v11 objectForKey:@"okButtonString"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = [v11 objectForKey:@"okButton"];

    v28 = v29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = v28;
    if (!v21)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  v30 = objc_alloc_init(ISDialogButton);
  [(ISDialogButton *)v30 setTitle:v28];
  v31 = [v11 objectForKey:@"okButtonAction"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)v30 loadFromDictionary:v31];
    if (v26)
    {
      v26 = 1;
      if (!v27)
      {
LABEL_32:
        v27 = [(ISDialogButton *)v30 actionType]!= 0;
        goto LABEL_37;
      }
    }

    else
    {
      v26 = [(ISDialogButton *)v30 actionType]== 3;
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    v27 = 1;
  }

LABEL_37:
  [v19 addObject:v30];

  if (!v21)
  {
LABEL_44:
    v7 = v44;
    goto LABEL_48;
  }

LABEL_38:
  v32 = [v11 objectForKey:@"otherButtonString"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = v32;
    goto LABEL_44;
  }

  v33 = objc_alloc_init(ISDialogButton);
  [(ISDialogButton *)v33 setTitle:v32];
  v31 = [v11 objectForKey:@"otherButtonAction"];

  objc_opt_class();
  v7 = v44;
  if (objc_opt_isKindOfClass())
  {
    [(ISDialogButton *)v33 loadFromDictionary:v31];
    if (v26)
    {
      v26 = 1;
      if (!v27)
      {
LABEL_42:
        v27 = [(ISDialogButton *)v33 actionType]!= 0;
        goto LABEL_47;
      }
    }

    else
    {
      v26 = [(ISDialogButton *)v33 actionType]== 3;
      if (!v27)
      {
        goto LABEL_42;
      }
    }

    v27 = 1;
  }

LABEL_47:
  [v19 addObject:v33];

LABEL_48:
  if ([v19 count])
  {
    [(ISDialog *)v8 setButtons:v19];
  }

  [(ISDialog *)v8 setExpectsResponse:v27];
  [(ISDialog *)v8 setAllowDuplicates:v26];
  if (SSDebugShouldUseFileBasedPaymentSheetProxy())
  {
    v34 = +[ISBiometricStore diskBasedPaymentSheet];
    paymentSheet = v8->_paymentSheet;
    v8->_paymentSheet = v34;
  }

  else
  {
    v36 = [v11 objectForKey:@"paymentSheetInfo"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_59;
    }

    v31 = v36;
    paymentSheet = [(ISDialog *)v8 buyParams];
    v37 = [objc_alloc(MEMORY[0x277D69BE8]) initWithServerResponse:v31 buyParams:paymentSheet];

    v38 = [(SSAuthenticationContext *)v8->_authenticationContext accountName];
    [v37 setAccountName:v38];

    v39 = [(ISDialog *)v8 message];
    if (v39)
    {
      [v37 setExplanation:v39];
    }

    v40 = [(ISDialog *)v8 title];
    if (v40)
    {
      [v37 setMessage:v40];
    }

    v41 = v8->_paymentSheet;
    v8->_paymentSheet = v37;
  }

  v36 = v31;
LABEL_59:
  if (!v8->_title && !v8->_message && ![(NSArray *)v8->_buttons count])
  {

    v8 = 0;
  }

LABEL_64:
  return v8;
}

- (ISDialog)initWithError:(id)a3
{
  v4 = a3;
  if (ISErrorIsEqual(v4, @"SSErrorDomain", 16))
  {
    v5 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v5 = [(ISDialog *)self init];
  if (v5)
  {
    v6 = [v4 localizedFailureReason];
    [(ISDialog *)v5 setMessage:v6];

    v7 = [v4 localizedDescription];
    [(ISDialog *)v5 setTitle:v7];

    self = [v4 userInfo];
    v8 = [(ISDialog *)self objectForKey:*MEMORY[0x277D69E40]];
    v9 = [(ISDialog *)self objectForKey:*MEMORY[0x277D69E30]];
    v10 = [(ISDialog *)self objectForKey:*MEMORY[0x277D69E38]];
    if (v8 && v9)
    {
      v11 = objc_alloc(MEMORY[0x277CBEB18]);
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_2884BCFD0 table:0];
      v14 = [ISDialogButton buttonWithTitle:v13];
      v15 = [v11 initWithObjects:{v14, 0}];

      v16 = objc_alloc_init(ISDialogButton);
      [(ISDialogButton *)v16 setActionTypeWithString:v9];
      [(ISDialogButton *)v16 setParameter:v10];
      [(ISDialogButton *)v16 setTitle:v8];
      [v15 addObject:v16];
      [(ISDialog *)v5 setButtons:v15];
    }

    else
    {
      v17 = MEMORY[0x277CBEA60];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"OK" value:&stru_2884BCFD0 table:0];
      v18 = [ISDialogButton buttonWithTitle:v16];
      v19 = [v17 arrayWithObjects:{v18, 0}];
      [(ISDialog *)v5 setButtons:v19];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (ISDialog)initWithOfferDeviceError:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ISDialog;
  v5 = [(ISDialog *)&v20 init];
  if (v5)
  {
    v6 = [v4 localizedMessage];
    v7 = [v4 localizedTitle];
    v8 = v7;
    if (v6 && v7)
    {
      [(ISDialog *)v5 setMessage:v6];
      v9 = v8;
    }

    else
    {
      if (v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      if (!(v6 | v7))
      {
        v10 = v5;
        v5 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    [(ISDialog *)v5 setTitle:v9];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [v4 localizedURLTitle];
    v12 = [v4 URL];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = v13;
    if (v11 && v12)
    {
      v15 = [(ISDialogButton *)v13 localizedStringForKey:@"CANCEL" value:&stru_2884BCFD0 table:0];
      v16 = [ISDialogButton buttonWithTitle:v15];
      [(ISDialog *)v10 addObject:v16];

      v14 = objc_alloc_init(ISDialogButton);
      [(ISDialogButton *)v14 setActionType:4];
      [(ISDialogButton *)v14 setParameter:v12];
      [(ISDialogButton *)v14 setTitle:v11];
      [(ISDialog *)v10 addObject:v14];
    }

    else
    {
      v17 = [(ISDialogButton *)v13 localizedStringForKey:@"OK" value:&stru_2884BCFD0 table:0];
      v18 = [ISDialogButton buttonWithTitle:v17];
      [(ISDialog *)v10 addObject:v18];
    }

    [(ISDialog *)v5 setButtons:v10];
    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (ISDialog)initWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISDialog *)self init];
  if (v8)
  {
    v9 = MEMORY[0x277CBEA60];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_2884BCFD0 table:0];
    v12 = [ISDialogButton buttonWithTitle:v11];
    v13 = [v9 arrayWithObjects:{v12, 0}];
    [(ISDialog *)v8 setButtons:v13];

    [(ISDialog *)v8 setMessage:v7];
    [(ISDialog *)v8 setTitle:v6];
  }

  return v8;
}

- (void)dealloc
{
  [(ISDialog *)self setButtons:0];
  [(ISDialog *)self setMessage:0];
  [(ISDialog *)self setTextFields:0];
  [(ISDialog *)self setTitle:0];
  userNotificationValues = self->_userNotificationValues;
  if (userNotificationValues)
  {
    CFRelease(userNotificationValues);
  }

  v4.receiver = self;
  v4.super_class = ISDialog;
  [(ISDialog *)&v4 dealloc];
}

+ (int64_t)displayCountForKey:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"ISDialogDisplayCount-%@", a3];
  v4 = *MEMORY[0x277CBF028];
  CFPreferencesAppSynchronize(*MEMORY[0x277CBF028]);

  return CFPreferencesGetAppIntegerValue(v3, v4, 0);
}

- (id)copyUserNotification
{
  v2 = self;
  [(NSLock *)self->_lock lock];
  userNotificationValues = v2->_userNotificationValues;
  if (userNotificationValues)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, userNotificationValues);
    [(NSLock *)v2->_lock unlock];
    if (MutableCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [(NSLock *)v2->_lock unlock];
  }

  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!result)
  {
    return result;
  }

  MutableCopy = result;
LABEL_7:
  v6 = [(ISDialog *)v2 title];
  if ([v6 length])
  {
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CBF188], v6);
  }

  v7 = [(ISDialog *)v2 message];

  if (v7)
  {
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CBF198], v7);
  }

  v8 = [(ISDialog *)v2 buttons];
  v9 = [v8 count];
  v63 = v2;
  if (v9 == 1)
  {
    v10 = [v8 objectAtIndex:0];
    v11 = *MEMORY[0x277CBF1E8];
    v12 = [v10 title];
    CFDictionarySetValue(MutableCopy, v11, v12);
  }

  else
  {
    v13 = v9;
    v10 = [(ISDialog *)v2 orderedButtonTitleKeysForCFUserNotification];
    v67 = [v10 count];
    v14 = MutableCopy;
    if (v13 >= 1)
    {
      for (i = 0; i != v13; ++i)
      {
        v16 = [v8 objectAtIndex:i];
        if (i >= (v67 - 1))
        {
          v17 = v67 - 1;
        }

        else
        {
          v17 = i;
        }

        v18 = [v10 objectAtIndex:v17];
        v19 = [v16 title];
        CFDictionarySetValue(v14, v18, v19);
      }
    }

    v20 = [(ISDialog *)v2 defaultButtonIndex];
    MutableCopy = v14;
    if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = v20;
      if (v20 < v67)
      {
        v22 = [objc_opt_class() buttonTagForCFUserNotificationButtonTitleKey:{objc_msgSend(v10, "objectAtIndex:", v21)}];
        CFDictionarySetValue(v14, *MEMORY[0x277D67300], [MEMORY[0x277CCABB0] numberWithInt:v22]);
      }
    }

    v23 = [(ISDialog *)v2 unlockActionButtonIndex];
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = v23;
      if (v23 < v67)
      {
        v25 = [objc_opt_class() buttonTagForCFUserNotificationButtonTitleKey:{objc_msgSend(v10, "objectAtIndex:", v24)}];
        CFDictionarySetValue(v14, *MEMORY[0x277D672E0], [MEMORY[0x277CCABB0] numberWithInt:v25]);
      }
    }
  }

  v26 = [(ISDialog *)v2 textFields];
  v27 = [v26 count];
  if (v27 < 1)
  {
    v32 = 3;
  }

  else
  {
    v28 = v27;
    v62 = v8;
    v29 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v68 = CFArrayCreateMutable(0, 0, v29);
    v66 = CFArrayCreateMutable(0, 0, v29);
    theArray = CFArrayCreateMutable(0, 0, v29);
    v64 = CFArrayCreateMutable(0, 0, v29);
    v31 = 0;
    v32 = 3;
    do
    {
      v33 = [v26 objectAtIndex:v31];
      [v33 title];
      v35 = v34 = v26;

      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = &stru_2884BCFD0;
      }

      CFArrayAppendValue(theArray, v36);
      v7 = [v33 value];

      if (v7)
      {
        v37 = v7;
      }

      else
      {
        v37 = &stru_2884BCFD0;
      }

      CFArrayAppendValue(v64, v37);
      CFArrayAppendValue(Mutable, [MEMORY[0x277CCABB0] numberWithInt:0]);
      CFArrayAppendValue(v68, [MEMORY[0x277CCABB0] numberWithInt:1]);
      v38 = MEMORY[0x277CCABB0];
      v39 = [v33 keyboardType];
      v40 = v38;
      v26 = v34;
      CFArrayAppendValue(v66, [v40 numberWithInteger:v39]);
      v41 = [v33 isSecure];
      v42 = 0x10000 << v31;
      if (!v41)
      {
        v42 = 0;
      }

      v32 |= v42;

      ++v31;
    }

    while (v28 != v31);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277D67438], Mutable);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277D67440], v68);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CBF1F8], v66);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CBF230], theArray);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CBF238], v64);
    CFRelease(Mutable);
    CFRelease(v68);
    CFRelease(v66);
    CFRelease(theArray);
    CFRelease(v64);
    v2 = v63;
    v8 = v62;
  }

  v43 = *MEMORY[0x277D67338];
  v44 = [(ISDialog *)v2 displaysOnLockscreen];
  v45 = *MEMORY[0x277CBED28];
  v46 = *MEMORY[0x277CBED10];
  if (v44)
  {
    v47 = *MEMORY[0x277CBED28];
  }

  else
  {
    v47 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(MutableCopy, v43, v47);
  v48 = *MEMORY[0x277D67360];
  if ([(ISDialog *)v2 displaysOnLockscreen])
  {
    v49 = v45;
  }

  else
  {
    v49 = v46;
  }

  CFDictionarySetValue(MutableCopy, v48, v49);
  v50 = *MEMORY[0x277D67298];
  if ([(ISDialog *)v2 dismissOnHomeButton])
  {
    v51 = v45;
  }

  else
  {
    v51 = v46;
  }

  CFDictionarySetValue(MutableCopy, v50, v51);
  v52 = *MEMORY[0x277D67320];
  if ([(ISDialog *)v2 dismissOnLock])
  {
    v53 = v45;
  }

  else
  {
    v53 = v46;
  }

  CFDictionarySetValue(MutableCopy, v52, v53);
  v54 = *MEMORY[0x277CBF1B0];
  if ([(ISDialog *)v2 shouldDisplayAsTopMost])
  {
    v55 = v45;
  }

  else
  {
    v55 = v46;
  }

  CFDictionarySetValue(MutableCopy, v54, v55);
  v56 = *MEMORY[0x277D67340];
  if ([(ISDialog *)v2 shouldDismissAfterUnlock])
  {
    v57 = v46;
  }

  else
  {
    v57 = v45;
  }

  CFDictionarySetValue(MutableCopy, v56, v57);
  v58 = *MEMORY[0x277D673D8];
  if ([(ISDialog *)v2 shouldPendInSetupIfNotAllowed])
  {
    v59 = v45;
  }

  else
  {
    v59 = v46;
  }

  CFDictionarySetValue(MutableCopy, v58, v59);
  if (v2->_noDefaultButton)
  {
    v60 = v32 | 0x20;
  }

  else
  {
    v60 = v32;
  }

  v61 = [[ISUserNotification alloc] initWithDictionary:MutableCopy options:v60];
  CFRelease(MutableCopy);

  return v61;
}

- (void)copyValueForCFUserNotificationKey:(__CFString *)a3
{
  [(NSLock *)self->_lock lock];
  userNotificationValues = self->_userNotificationValues;
  if (userNotificationValues && (Value = CFDictionaryGetValue(userNotificationValues, a3)) != 0)
  {
    v7 = CFRetain(Value);
  }

  else
  {
    v7 = 0;
  }

  [(NSLock *)self->_lock unlock];
  return v7;
}

- (NSString)displayCountKey
{
  [(NSLock *)self->_lock lock];
  v3 = self->_displayCountKey;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)incrementDisplayCount
{
  [(NSLock *)self->_lock lock];
  if (self->_displayCountKey)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"ISDialogDisplayCount-%@", self->_displayCountKey];
    v4 = *MEMORY[0x277CBF028];
    CFPreferencesAppSynchronize(*MEMORY[0x277CBF028]);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{CFPreferencesGetAppIntegerValue(v3, v4, 0) + 1}];
    CFPreferencesSetAppValue(v3, v5, v4);

    CFPreferencesAppSynchronize(v4);
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (BOOL)isDisplayable
{
  [(NSLock *)self->_lock lock];
  if (self->_displayCountKey && self->_maxDisplayCount >= 1)
  {
    v3 = *MEMORY[0x277CBF028];
    CFPreferencesAppSynchronize(*MEMORY[0x277CBF028]);
    v4 = CFPreferencesGetAppIntegerValue([MEMORY[0x277CCACA8] stringWithFormat:@"ISDialogDisplayCount-%@", self->_displayCountKey], v3, 0) < self->_maxDisplayCount;
  }

  else
  {
    v4 = 1;
  }

  [(NSLock *)self->_lock unlock];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ISDialog *)self message];
    v6 = [v4 message];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isEqual:v6];
    }

    v9 = [(ISDialog *)self title];

    v10 = [v4 title];

    if (v7)
    {
      if (v9 == v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [(ISDialog *)self buttons];

    v13 = [v4 buttons];

    if (v11)
    {
      if (v12 == v13)
      {
        v8 = 1;
      }

      else
      {
        v14 = [v12 count];
        v8 = v14 == [v13 count];
      }

      v16 = [v12 count];
      if (v16 >= 1 && v8)
      {
        v17 = v16;
        v18 = 1;
        do
        {
          v19 = [v12 objectAtIndex:v18 - 1];
          v20 = [v13 objectAtIndex:v18 - 1];
          LOBYTE(v8) = [v19 isEqual:v20 superficial:0];

          if (v18 >= v17)
          {
            break;
          }

          ++v18;
        }

        while ((v8 & 1) != 0);
      }
    }

    else
    {
      [v12 count];
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (int64_t)maximumDisplayCount
{
  [(NSLock *)self->_lock lock];
  maxDisplayCount = self->_maxDisplayCount;
  [(NSLock *)self->_lock unlock];
  return maxDisplayCount;
}

- (void)setButtonsWithTitles:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = objc_alloc_init(ISDialogButton);
          [(ISDialogButton *)v12 setTitle:v11, v14];
          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(ISDialog *)self setButtons:v5];
  }

  else
  {
    [(ISDialog *)self setButtons:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setDisplayCountKey:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_displayCountKey != v6)
  {
    v4 = [(NSString *)v6 copy];
    displayCountKey = self->_displayCountKey;
    self->_displayCountKey = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setMaximumDisplayCount:(int64_t)a3
{
  [(NSLock *)self->_lock lock];
  self->_maxDisplayCount = a3;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setValue:(id)a3 forUserInfoKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(NSLock *)self->_lock lock];
  if (!self->_userInfo)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    userInfo = self->_userInfo;
    self->_userInfo = v7;
  }

  v9 = self->_userInfo;
  if (v10)
  {
    [(NSMutableDictionary *)v9 setObject:v10 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:v6];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setValue:(void *)a3 forCFUserNotificationKey:(__CFString *)a4
{
  [(NSLock *)self->_lock lock];
  userNotificationValues = self->_userNotificationValues;
  if (a3)
  {
    if (!userNotificationValues)
    {
      userNotificationValues = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      self->_userNotificationValues = userNotificationValues;
    }

    CFDictionarySetValue(userNotificationValues, a4, a3);
  }

  else if (userNotificationValues)
  {
    CFDictionaryRemoveValue(userNotificationValues, a4);
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)valueForUserInfoKey:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  v6 = [(NSMutableDictionary *)self->_userInfo objectForKey:v5];

  [(NSLock *)self->_lock unlock];

  return v6;
}

- (id)orderedButtonTitleKeysForCFUserNotification
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF1E8];
  v13[0] = *MEMORY[0x277CBF1C0];
  v13[1] = v3;
  v14 = *MEMORY[0x277CBF218];
  v12[0] = v13[0];
  v12[1] = v14;
  v12[2] = v3;
  [(NSLock *)self->_lock lock];
  noDefaultButton = self->_noDefaultButton;
  v5 = [(NSArray *)self->_buttons count];
  [(NSLock *)self->_lock unlock];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA60]);
    if (noDefaultButton)
    {
      v7 = v12;
    }

    else
    {
      v7 = v13;
    }

    if (v5 >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = v5;
    }

    v9 = [v6 initWithObjects:v7 count:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)_initializeStaticButtonTitleKeyAndTagMapping
{
  if (_initializeStaticButtonTitleKeyAndTagMapping_sButtonTitleKeyAndTagMappingOnceToken != -1)
  {
    +[ISDialog _initializeStaticButtonTitleKeyAndTagMapping];
  }
}

void *__56__ISDialog__initializeStaticButtonTitleKeyAndTagMapping__block_invoke()
{
  v0 = *MEMORY[0x277CBF1E8];
  v1 = *MEMORY[0x277CBF1C0];
  v2 = *MEMORY[0x277CBF218];
  sButtonTitleKeyAndTagMappingCount = 1;
  result = malloc_type_malloc(0x30uLL, 0x2D6588CBuLL);
  sButtonTitleKeyAndTagMapping = result;
  *result = v0;
  result[1] = 0;
  result[2] = v1;
  result[3] = 1;
  result[4] = v2;
  result[5] = 2;
  return result;
}

+ (unint64_t)buttonTagForCFUserNotificationButtonTitleKey:(__CFString *)a3
{
  [a1 _initializeStaticButtonTitleKeyAndTagMapping];
  if (!a3 || sButtonTitleKeyAndTagMappingCount != 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (!CFEqual(a3, *(sButtonTitleKeyAndTagMapping + v4)))
  {
    v6 = sButtonTitleKeyAndTagMappingCount != 1 || v5++ >= 2;
    v4 += 16;
    if (v6)
    {
      return 0;
    }
  }

  return *(sButtonTitleKeyAndTagMapping + v4 + 8);
}

+ (__CFString)buttonTitleKeyForCFUserNotificationButtonTag:(unint64_t)a3
{
  [a1 _initializeStaticButtonTitleKeyAndTagMapping];
  if (sButtonTitleKeyAndTagMappingCount != 1)
  {
    return 0;
  }

  v4 = (sButtonTitleKeyAndTagMapping + 8);
  v5 = -1;
  while (*v4 != a3)
  {
    ++v5;
    v4 += 2;
    if (v5 > 1)
    {
      return 0;
    }
  }

  return *(v4 - 1);
}

- (id)buyParams
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  v2 = [(ISDialog *)self buttons];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__ISDialog_buyParams__block_invoke;
  v5[3] = &unk_27A6711A8;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __21__ISDialog_buyParams__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = [a2 parameter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    *a4 = 1;
  }
}

- (int64_t)_kindForString:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isEqualToString:@"authorization"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ISDialog)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x277C8C570](v4) == MEMORY[0x277D86468])
  {
    v6 = [(ISDialog *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    v6->_allowDuplicates = xpc_dictionary_get_BOOL(v5, "1");
    v8 = objc_alloc(MEMORY[0x277D69A58]);
    v9 = xpc_dictionary_get_value(v5, "2");
    v10 = [v8 initWithXPCEncoding:v9];
    authenticationContext = v6->_authenticationContext;
    v6->_authenticationContext = v10;

    v6->_authorizationIsForced = xpc_dictionary_get_BOOL(v5, "3");
    v12 = xpc_dictionary_get_value(v5, "4");
    self = v12;
    v13 = MEMORY[0x277D86440];
    if (v12 && MEMORY[0x277C8C570](v12) == v13)
    {
      objc_opt_class();
      v14 = SSXPCCreateNSArrayFromXPCEncodedArray();
      buttons = v6->_buttons;
      v6->_buttons = v14;
    }

    v6->_defaultButtonIndex = xpc_dictionary_get_int64(v5, "5");
    v6->_dismissOnHomeButton = xpc_dictionary_get_BOOL(v5, "6");
    v6->_dismissOnLock = xpc_dictionary_get_BOOL(v5, "7");
    objc_opt_class();
    v16 = SSXPCDictionaryCopyCFObjectWithClass();
    displayCountKey = v6->_displayCountKey;
    v6->_displayCountKey = v16;

    v6->_expectsResponse = xpc_dictionary_get_BOOL(v5, "9");
    v6->_groupsTextFields = xpc_dictionary_get_BOOL(v5, "A");
    v6->_kind = xpc_dictionary_get_int64(v5, "B");
    v6->_maxDisplayCount = xpc_dictionary_get_int64(v5, "C");
    objc_opt_class();
    v18 = SSXPCDictionaryCopyCFObjectWithClass();
    message = v6->_message;
    v6->_message = v18;

    v6->_noDefaultButton = xpc_dictionary_get_BOOL(v5, "N");
    v6->_oneButtonPerLine = xpc_dictionary_get_BOOL(v5, "E");
    v6->_shouldDismissAfterUnlock = xpc_dictionary_get_BOOL(v5, "F");
    v6->_shouldDisplayAsTopMost = xpc_dictionary_get_BOOL(v5, "G");
    v6->_shouldPendInSetupIfNotAllowed = xpc_dictionary_get_BOOL(v5, "H");
    v20 = xpc_dictionary_get_value(v5, "I");
    v21 = v20;
    if (v20 && MEMORY[0x277C8C570](v20) == v13)
    {
      objc_opt_class();
      v22 = SSXPCCreateNSArrayFromXPCEncodedArray();
      textFields = v6->_textFields;
      v6->_textFields = v22;
    }

    objc_opt_class();
    v24 = SSXPCDictionaryCopyCFObjectWithClass();
    title = v6->_title;
    v6->_title = v24;

    v6->_unlockActionButtonIndex = xpc_dictionary_get_int64(v5, "K");
    objc_opt_class();
    v26 = SSXPCDictionaryCopyCFObjectWithClass();
    userInfo = v6->_userInfo;
    v6->_userInfo = v26;

    objc_opt_class();
    v28 = SSXPCDictionaryCopyCFObjectWithClass();
    if (v28)
    {
      v6->_userNotificationValues = CFDictionaryCreateMutableCopy(0, 0, v28);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(NSLock *)self->_lock lock];
  xpc_dictionary_set_BOOL(v3, "1", self->_allowDuplicates);
  authenticationContext = self->_authenticationContext;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_BOOL(v3, "3", self->_authorizationIsForced);
  buttons = self->_buttons;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_int64(v3, "5", self->_defaultButtonIndex);
  xpc_dictionary_set_BOOL(v3, "6", self->_dismissOnHomeButton);
  xpc_dictionary_set_BOOL(v3, "7", self->_dismissOnLock);
  displayCountKey = self->_displayCountKey;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_BOOL(v3, "9", self->_expectsResponse);
  xpc_dictionary_set_BOOL(v3, "A", self->_groupsTextFields);
  xpc_dictionary_set_int64(v3, "B", self->_kind);
  xpc_dictionary_set_int64(v3, "C", self->_maxDisplayCount);
  message = self->_message;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_BOOL(v3, "N", self->_noDefaultButton);
  xpc_dictionary_set_BOOL(v3, "E", self->_oneButtonPerLine);
  xpc_dictionary_set_BOOL(v3, "F", self->_shouldDismissAfterUnlock);
  xpc_dictionary_set_BOOL(v3, "G", self->_shouldDisplayAsTopMost);
  xpc_dictionary_set_BOOL(v3, "H", self->_shouldPendInSetupIfNotAllowed);
  textFields = self->_textFields;
  SSXPCDictionarySetCFObject();
  title = self->_title;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_int64(v3, "K", self->_unlockActionButtonIndex);
  userInfo = self->_userInfo;
  SSXPCDictionarySetCFObject();
  userNotificationValues = self->_userNotificationValues;
  SSXPCDictionarySetCFObject();
  [(NSLock *)self->_lock unlock];
  return v3;
}

@end