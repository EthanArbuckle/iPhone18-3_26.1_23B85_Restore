@interface Ace3RestoreInfoFirmwareCopierOS
- (id)firmwareKeyFromBuildIdentityDict:(id)a3 deviceInfo:(id)a4;
@end

@implementation Ace3RestoreInfoFirmwareCopierOS

- (id)firmwareKeyFromBuildIdentityDict:(id)a3 deviceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(Ace3SoCRestoreInfoHelperOS *)self verboseLog:@"%s", "[Ace3RestoreInfoFirmwareCopierOS firmwareKeyFromBuildIdentityDict:deviceInfo:]"];
  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"ManifestPrefix"];
    v9 = [v6 keyWithPrefix:v8];
  }

  else
  {
    [(Ace3SoCRestoreInfoHelperOS *)self log:@"Error: Could not find device info dictionary"];
    v9 = 0;
  }

  return v9;
}

@end