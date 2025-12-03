@interface MCProfileConnection
- (BOOL)isManagedToUnmanagedPasteAllowed;
- (BOOL)isPasteboardManagementEnabled;
- (BOOL)isUnmanagedToManagedPasteAllowed;
- (int64_t)dataOwnerForBundleID:(id)d requestedDataOwner:(int64_t)owner;
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

- (int64_t)dataOwnerForBundleID:(id)d requestedDataOwner:(int64_t)owner
{
  dCopy = d;
  if (!dCopy)
  {
LABEL_8:
    owner = 1;
    goto LABEL_12;
  }

  if ((-[MCProfileConnection isBundleIDAccountBasedForDragDrop:](self, "isBundleIDAccountBasedForDragDrop:", dCopy) & 1) != 0 || [dCopy isEqualToString:@"com.apple.UIKitester"])
  {
    if (!owner)
    {
      v7 = _PBLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v9 = 138543362;
        v10 = dCopy;
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Account-based app tried to access the pasteboard with an undefined data owner: %{public}@", &v9, 0xCu);
      }

      goto LABEL_8;
    }
  }

  else if ([(MCProfileConnection *)self isAppManaged:dCopy])
  {
    owner = 2;
  }

  else
  {
    owner = 1;
  }

LABEL_12:

  return owner;
}

@end