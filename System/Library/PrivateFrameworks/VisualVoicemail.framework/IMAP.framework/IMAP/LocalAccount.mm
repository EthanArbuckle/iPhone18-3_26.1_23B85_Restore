@interface LocalAccount
+ (id)localAccount;
- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (LocalAccount)initWithLibrary:(id)library;
- (id)_infoForMatchingURL:(id)l;
- (id)mailboxUidForFileSystemPath:(id)path;
- (void)_synchronouslyLoadListingForParent:(id)parent;
- (void)resetSpecialMailboxes;
@end

@implementation LocalAccount

+ (id)localAccount
{
  +[MailAccount mf_lock];
  if (!localAccount)
  {
    defaultAccountDirectory = [self defaultAccountDirectory];
    v4 = [defaultAccountDirectory stringByAppendingPathComponent:@"Mailboxes"];

    v5 = [(MailAccount *)[LocalAccount alloc] initWithPath:v4];
    v6 = localAccount;
    localAccount = v5;
  }

  +[MailAccount mf_unlock];
  v7 = localAccount;

  return v7;
}

- (LocalAccount)initWithLibrary:(id)library
{
  libraryCopy = library;
  v5 = vm_imap_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "XXX VMA initWithLibrary LocalAccount", buf, 2u);
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    +[MailAccount mf_lock];
    v8 = localAccount;
    if (!localAccount)
    {
      v12.receiver = self;
      v12.super_class = LocalAccount;
      self = [(MailAccount *)&v12 initWithLibrary:libraryCopy];
      v9 = localAccount;
      localAccount = self;

      v8 = localAccount;
    }

    selfCopy = v8;
    +[MailAccount mf_unlock];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = LocalAccount;
    self = [(MailAccount *)&v11 initWithLibrary:libraryCopy];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_synchronouslyLoadListingForParent:(id)parent
{
  parentCopy = parent;
  selfCopy = self;
  fullPath = [parentCopy fullPath];
  v6 = [fullPath mutableCopyWithZone:0];

  if (v6)
  {
    if ([parentCopy isStore])
    {
      mailboxPathExtension = [(LocalAccount *)selfCopy mailboxPathExtension];
      v8 = [v6 rangeOfString:mailboxPathExtension options:12];
      v10 = v9;

      if (v8 >= 2 && v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v6 deleteCharactersInRange:{v8 - 1, v10 + 1}];
      }
    }

    [(MailAccount *)selfCopy _loadEntriesFromFileSystemPath:v6 parent:parentCopy];
  }

  else
  {
  }
}

- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid
{
  childrenCopy = children;
  uidCopy = uid;
  v10.receiver = self;
  v10.super_class = LocalAccount;
  v8 = [(MailAccount *)&v10 _setChildren:childrenCopy forMailboxUid:uidCopy];
  if (([uidCopy isContainer] & 1) == 0 && objc_msgSend(childrenCopy, "count"))
  {
    [uidCopy setAttributes:{objc_msgSend(uidCopy, "attributes") & 0xFFFFFFFELL}];
  }

  return v8;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  mailboxCopy = mailbox;
  nameCopy = name;
  parentCopy = parent;
  v11 = [parentCopy childWithName:nameCopy];
  name = [mailboxCopy name];
  if ([nameCopy mf_isSubdirectoryOfPath:name])
  {
    goto LABEL_7;
  }

  if (v11)
  {
    isStore = [v11 isStore];
    if (isStore == [mailboxCopy isStore] || (v14 = objc_msgSend(v11, "isContainer"), v14 == objc_msgSend(mailboxCopy, "isContainer")))
    {
      v16 = +[MFActivityMonitor currentMonitor];
      v17 = MEMORY[0x277CCA9B8];
      v18 = MEMORY[0x277CCACA8];
      tildeAbbreviatedPath = [v11 tildeAbbreviatedPath];
      v20 = [v18 stringWithFormat:@"The mailbox “%@” already exists.", tildeAbbreviatedPath];
      v21 = [v17 errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v20];
      [v16 setError:v21];

LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }
  }

  v23.receiver = self;
  v23.super_class = LocalAccount;
  v15 = [(MailAccount *)&v23 renameMailbox:mailboxCopy newName:nameCopy parent:parentCopy];
LABEL_8:

  return v15;
}

- (id)mailboxUidForFileSystemPath:(id)path
{
  pathCopy = path;
  pathExtension = [pathCopy pathExtension];
  v14 = 0;
  mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = [pathCopy mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];

  if (![pathExtension isEqualToString:@"mbox"])
  {
    goto LABEL_8;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath isDirectory:&v14])
  {
    v8 = v14;

    if (v8 == 1)
    {
      v9 = [mailboxUidForFileSystemPath___rootlessMailboxRoot childWithName:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
      if (v9)
      {
        goto LABEL_11;
      }

      v9 = [objc_allocWithZone(_MFRootlessMailboxUid) initWithName:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath attributes:1 forAccount:0 extraAttributes:0];
      [v9 setType:4294967196];
      v10 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
      if (!mailboxUidForFileSystemPath___rootlessMailboxRoot)
      {
        v11 = [[MFMailboxUid alloc] initWithAccount:self];
        v12 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
        mailboxUidForFileSystemPath___rootlessMailboxRoot = v11;

        v10 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
      }

      defaultManager = [v10 mutableCopyOfChildren];
      [defaultManager addObject:v9];
      [mailboxUidForFileSystemPath___rootlessMailboxRoot setChildren:defaultManager];
      goto LABEL_10;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_10:

LABEL_11:

  return v9;
}

- (void)resetSpecialMailboxes
{
  v4.receiver = self;
  v4.super_class = LocalAccount;
  [(MailAccount *)&v4 resetSpecialMailboxes];
  v3 = [(LocalAccount *)self transientDraftsFolderShouldCreate:0];
}

- (id)_infoForMatchingURL:(id)l
{
  v4 = MEMORY[0x277CBEB38];
  lCopy = l;
  dictionary = [v4 dictionary];
  resourceSpecifier = [lCopy resourceSpecifier];

  stringByRemovingPercentEncoding = [resourceSpecifier stringByRemovingPercentEncoding];

  [dictionary setObject:self forKey:@"Account"];
  v9 = [stringByRemovingPercentEncoding rangeOfString:@"/" options:8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [stringByRemovingPercentEncoding substringWithRange:{v9 + v10, objc_msgSend(stringByRemovingPercentEncoding, "length") - (v9 + v10)}];

    stringByRemovingPercentEncoding = v11;
  }

  if (stringByRemovingPercentEncoding && ([stringByRemovingPercentEncoding isEqualToString:&stru_288159858] & 1) == 0)
  {
    [dictionary setObject:stringByRemovingPercentEncoding forKey:@"RelativePath"];
  }

  return dictionary;
}

@end