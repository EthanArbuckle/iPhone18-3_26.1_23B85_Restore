@interface Ace3RestoreInfoFirmwareCopierOS
- (id)firmwareKeyFromBuildIdentityDict:(id)dict deviceInfo:(id)info;
@end

@implementation Ace3RestoreInfoFirmwareCopierOS

- (id)firmwareKeyFromBuildIdentityDict:(id)dict deviceInfo:(id)info
{
  dictCopy = dict;
  infoCopy = info;
  [(Ace3SoCRestoreInfoHelperOS *)self verboseLog:@"%s", "[Ace3RestoreInfoFirmwareCopierOS firmwareKeyFromBuildIdentityDict:deviceInfo:]"];
  if (infoCopy)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"ManifestPrefix"];
    v9 = [dictCopy keyWithPrefix:v8];
  }

  else
  {
    [(Ace3SoCRestoreInfoHelperOS *)self log:@"Error: Could not find device info dictionary"];
    v9 = 0;
  }

  return v9;
}

@end