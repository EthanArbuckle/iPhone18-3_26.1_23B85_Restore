@interface UNNotificationAttachment
- (__CFString)_nc_safeUTI;
@end

@implementation UNNotificationAttachment

- (__CFString)_nc_safeUTI
{
  type = [(UNNotificationAttachment *)self type];
  if (!type)
  {
    v4 = [(UNNotificationAttachment *)self URL];
    pathExtension = [v4 pathExtension];

    if (pathExtension)
    {
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension, 0);
      type = CFAutorelease(PreferredIdentifierForTag);
    }

    else
    {
      type = 0;
    }
  }

  if (type)
  {
    return type;
  }

  else
  {
    return kUTTypeItem;
  }
}

@end