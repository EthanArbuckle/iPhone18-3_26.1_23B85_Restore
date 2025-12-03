@interface WCRAppleAllowList
- (BOOL)contains:(id)contains;
- (id)initFromFile:(id)file;
@end

@implementation WCRAppleAllowList

- (id)initFromFile:(id)file
{
  fileCopy = file;
  v16.receiver = self;
  v16.super_class = WCRAppleAllowList;
  v6 = [(WCRAppleAllowList *)&v16 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_localPath, file);
  v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v7->_localPath];
  v9 = [v8 objectForKey:@"Allow-List"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = @"Failed to initialize Apple allow list at path %@: unknown format";
LABEL_8:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:v13, v7->_localPath];
    [WCRLogging log:v14 withType:0];

    v12 = 0;
    goto LABEL_9;
  }

  v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
  allowList = v7->_allowList;
  v7->_allowList = v10;

  if (!v7->_allowList)
  {
    v13 = @"Failed to initialize Apple allow list at path %@";
    goto LABEL_8;
  }

LABEL_5:
  v12 = v7;
LABEL_9:

  return v12;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  allowList = [(WCRAppleAllowList *)self allowList];
  host = [containsCopy host];

  LOBYTE(containsCopy) = [allowList containsObject:host];
  return containsCopy;
}

@end