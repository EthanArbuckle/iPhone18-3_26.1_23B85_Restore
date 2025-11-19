@interface LocalAccount
+ (id)localAccount;
- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (LocalAccount)initWithLibrary:(id)a3;
- (id)_infoForMatchingURL:(id)a3;
- (id)mailboxUidForFileSystemPath:(id)a3;
- (void)_synchronouslyLoadListingForParent:(id)a3;
- (void)resetSpecialMailboxes;
@end

@implementation LocalAccount

+ (id)localAccount
{
  +[MailAccount mf_lock];
  if (!localAccount)
  {
    v3 = [a1 defaultAccountDirectory];
    v4 = [v3 stringByAppendingPathComponent:@"Mailboxes"];

    v5 = [(MailAccount *)[LocalAccount alloc] initWithPath:v4];
    v6 = localAccount;
    localAccount = v5;
  }

  +[MailAccount mf_unlock];
  v7 = localAccount;

  return v7;
}

- (LocalAccount)initWithLibrary:(id)a3
{
  v4 = a3;
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
      self = [(MailAccount *)&v12 initWithLibrary:v4];
      v9 = localAccount;
      localAccount = self;

      v8 = localAccount;
    }

    v7 = v8;
    +[MailAccount mf_unlock];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = LocalAccount;
    self = [(MailAccount *)&v11 initWithLibrary:v4];
    v7 = self;
  }

  return v7;
}

- (void)_synchronouslyLoadListingForParent:(id)a3
{
  v11 = a3;
  v4 = self;
  v5 = [v11 fullPath];
  v6 = [v5 mutableCopyWithZone:0];

  if (v6)
  {
    if ([v11 isStore])
    {
      v7 = [(LocalAccount *)v4 mailboxPathExtension];
      v8 = [v6 rangeOfString:v7 options:12];
      v10 = v9;

      if (v8 >= 2 && v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v6 deleteCharactersInRange:{v8 - 1, v10 + 1}];
      }
    }

    [(MailAccount *)v4 _loadEntriesFromFileSystemPath:v6 parent:v11];
  }

  else
  {
  }
}

- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = LocalAccount;
  v8 = [(MailAccount *)&v10 _setChildren:v6 forMailboxUid:v7];
  if (([v7 isContainer] & 1) == 0 && objc_msgSend(v6, "count"))
  {
    [v7 setAttributes:{objc_msgSend(v7, "attributes") & 0xFFFFFFFELL}];
  }

  return v8;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 childWithName:v9];
  v12 = [v8 name];
  if ([v9 mf_isSubdirectoryOfPath:v12])
  {
    goto LABEL_7;
  }

  if (v11)
  {
    v13 = [v11 isStore];
    if (v13 == [v8 isStore] || (v14 = objc_msgSend(v11, "isContainer"), v14 == objc_msgSend(v8, "isContainer")))
    {
      v16 = +[MFActivityMonitor currentMonitor];
      v17 = MEMORY[0x277CCA9B8];
      v18 = MEMORY[0x277CCACA8];
      v19 = [v11 tildeAbbreviatedPath];
      v20 = [v18 stringWithFormat:@"The mailbox “%@” already exists.", v19];
      v21 = [v17 errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v20];
      [v16 setError:v21];

LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }
  }

  v23.receiver = self;
  v23.super_class = LocalAccount;
  v15 = [(MailAccount *)&v23 renameMailbox:v8 newName:v9 parent:v10];
LABEL_8:

  return v15;
}

- (id)mailboxUidForFileSystemPath:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  v14 = 0;
  v6 = [v4 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];

  if (![v5 isEqualToString:@"mbox"])
  {
    goto LABEL_8;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v7 fileExistsAtPath:v6 isDirectory:&v14])
  {
    v8 = v14;

    if (v8 == 1)
    {
      v9 = [mailboxUidForFileSystemPath___rootlessMailboxRoot childWithName:v6];
      if (v9)
      {
        goto LABEL_11;
      }

      v9 = [objc_allocWithZone(_MFRootlessMailboxUid) initWithName:v6 attributes:1 forAccount:0 extraAttributes:0];
      [v9 setType:4294967196];
      v10 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
      if (!mailboxUidForFileSystemPath___rootlessMailboxRoot)
      {
        v11 = [[MFMailboxUid alloc] initWithAccount:self];
        v12 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
        mailboxUidForFileSystemPath___rootlessMailboxRoot = v11;

        v10 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
      }

      v7 = [v10 mutableCopyOfChildren];
      [v7 addObject:v9];
      [mailboxUidForFileSystemPath___rootlessMailboxRoot setChildren:v7];
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

- (id)_infoForMatchingURL:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [v5 resourceSpecifier];

  v8 = [v7 stringByRemovingPercentEncoding];

  [v6 setObject:self forKey:@"Account"];
  v9 = [v8 rangeOfString:@"/" options:8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v8 substringWithRange:{v9 + v10, objc_msgSend(v8, "length") - (v9 + v10)}];

    v8 = v11;
  }

  if (v8 && ([v8 isEqualToString:&stru_288159858] & 1) == 0)
  {
    [v6 setObject:v8 forKey:@"RelativePath"];
  }

  return v6;
}

@end