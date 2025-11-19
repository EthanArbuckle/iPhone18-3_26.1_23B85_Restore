@interface REMDisplayNameUtils
+ (id)displayNameFromAccountName:(id)a3;
+ (id)displayNameFromListName:(id)a3 isPlaceholder:(BOOL)a4;
@end

@implementation REMDisplayNameUtils

+ (id)displayNameFromListName:(id)a3 isPlaceholder:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (![v5 length] && v4)
    {
      goto LABEL_4;
    }
  }

  else if (v4)
  {
LABEL_4:
    v7 = 49;
LABEL_9:
    v8 = _REMGetLocalizedString(v7);
    goto LABEL_10;
  }

  if (([v6 isEqualToString:@"DEFAULT_TASK_CALENDAR_NAME"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"Reminders"))
  {
    v7 = 11;
    goto LABEL_9;
  }

  v8 = v6;
LABEL_10:
  v9 = v8;

  return v9;
}

+ (id)displayNameFromAccountName:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"local"];

  if (v5)
  {
    v6 = _REMGetLocalizedString(12);
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

@end