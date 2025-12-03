@interface REMDisplayNameUtils
+ (id)displayNameFromAccountName:(id)name;
+ (id)displayNameFromListName:(id)name isPlaceholder:(BOOL)placeholder;
@end

@implementation REMDisplayNameUtils

+ (id)displayNameFromListName:(id)name isPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  nameCopy = name;
  v6 = nameCopy;
  if (nameCopy)
  {
    if (![nameCopy length] && placeholderCopy)
    {
      goto LABEL_4;
    }
  }

  else if (placeholderCopy)
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

+ (id)displayNameFromAccountName:(id)name
{
  nameCopy = name;
  lowercaseString = [nameCopy lowercaseString];
  v5 = [lowercaseString isEqualToString:@"local"];

  if (v5)
  {
    v6 = _REMGetLocalizedString(12);
  }

  else
  {
    v6 = nameCopy;
  }

  v7 = v6;

  return v7;
}

@end