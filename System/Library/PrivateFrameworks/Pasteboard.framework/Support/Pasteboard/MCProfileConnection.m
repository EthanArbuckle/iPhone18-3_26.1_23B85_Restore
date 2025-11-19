@interface MCProfileConnection
- (BOOL)isManagedToUnmanagedPasteAllowed;
- (BOOL)isPasteboardManagementEnabled;
- (BOOL)isUnmanagedToManagedPasteAllowed;
- (int64_t)dataOwnerForBundleID:(id)a3 requestedDataOwner:(int64_t)a4;
@end

@implementation MCProfileConnection

- (BOOL)isPasteboardManagementEnabled
{
  if ([(MCProfileConnection *)self isUnmanagedToManagedPasteAllowed])
  {
    return ![(MCProfileConnection *)self isManagedToUnmanagedPasteAllowed];
  }

  else
  {
    return 1;
  }
}

- (BOOL)isUnmanagedToManagedPasteAllowed
{
  if (![(MCProfileConnection *)self isManagedPasteboardRequired]|| ![(MCProfileConnection *)self isOpenInRestrictionInEffect])
  {
    return 1;
  }

  return [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
}

- (BOOL)isManagedToUnmanagedPasteAllowed
{
  if (![(MCProfileConnection *)self isManagedPasteboardRequired]|| ![(MCProfileConnection *)self isOpenInRestrictionInEffect])
  {
    return 1;
  }

  return [(MCProfileConnection *)self mayOpenFromManagedToUnmanaged];
}

- (int64_t)dataOwnerForBundleID:(id)a3 requestedDataOwner:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
LABEL_8:
    a4 = 1;
    goto LABEL_12;
  }

  if ((-[MCProfileConnection isBundleIDAccountBasedForDragDrop:](self, "isBundleIDAccountBasedForDragDrop:", v6) & 1) != 0 || [v6 isEqualToString:@"com.apple.UIKitester"])
  {
    if (!a4)
    {
      v7 = _PBLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v9 = 138543362;
        v10 = v6;
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Account-based app tried to access the pasteboard with an undefined data owner: %{public}@", &v9, 0xCu);
      }

      goto LABEL_8;
    }
  }

  else if ([(MCProfileConnection *)self isAppManaged:v6])
  {
    a4 = 2;
  }

  else
  {
    a4 = 1;
  }

LABEL_12:

  return a4;
}

@end