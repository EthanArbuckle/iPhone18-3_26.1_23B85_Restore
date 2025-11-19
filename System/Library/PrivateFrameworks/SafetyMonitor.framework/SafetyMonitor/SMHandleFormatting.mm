@interface SMHandleFormatting
+ (id)canonicalIDSAddressForAddress:(id)a3;
@end

@implementation SMHandleFormatting

+ (id)canonicalIDSAddressForAddress:(id)a3
{
  v3 = a3;
  if (IMSharedUtilitiesLibraryCore() && getIMChatCanonicalIDSIDsForAddressSymbolLoc())
  {
    v4 = v3;
    IMChatCanonicalIDSIDsForAddressSymbolLoc = getIMChatCanonicalIDSIDsForAddressSymbolLoc();
    if (!IMChatCanonicalIDSIDsForAddressSymbolLoc)
    {
      dlerror();
      abort_report_np();
      return IMSharedUtilitiesLibraryCore();
    }

    v6 = IMChatCanonicalIDSIDsForAddressSymbolLoc(v4);

    v7 = [v6 _stripFZIDPrefix];

    if (v7 && ([v7 isEqualToString:@"(null)"] & 1) == 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end