@interface SMHandleFormatting
+ (id)canonicalIDSAddressForAddress:(id)address;
@end

@implementation SMHandleFormatting

+ (id)canonicalIDSAddressForAddress:(id)address
{
  addressCopy = address;
  if (IMSharedUtilitiesLibraryCore() && getIMChatCanonicalIDSIDsForAddressSymbolLoc())
  {
    v4 = addressCopy;
    IMChatCanonicalIDSIDsForAddressSymbolLoc = getIMChatCanonicalIDSIDsForAddressSymbolLoc();
    if (!IMChatCanonicalIDSIDsForAddressSymbolLoc)
    {
      dlerror();
      abort_report_np();
      return IMSharedUtilitiesLibraryCore();
    }

    v6 = IMChatCanonicalIDSIDsForAddressSymbolLoc(v4);

    _stripFZIDPrefix = [v6 _stripFZIDPrefix];

    if (_stripFZIDPrefix && ([_stripFZIDPrefix isEqualToString:@"(null)"] & 1) == 0)
    {
      v8 = _stripFZIDPrefix;
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