@interface NSString(WebPrivacyExtras)
- (NSString)_wp_stringByRemovingTrackingInformationFromURLs;
- (void)_wp_removeTrackingInformationFromURLs:()WebPrivacyExtras;
@end

@implementation NSString(WebPrivacyExtras)

- (NSString)_wp_stringByRemovingTrackingInformationFromURLs
{
  checkForURLUsingFastPath(self, v7);
  if (v7[0])
  {
    v2 = v8;
    if (v8)
    {
      _wp_urlByRemovingTrackingInformation = [v8 _wp_urlByRemovingTrackingInformation];
      selfCopy = [_wp_urlByRemovingTrackingInformation absoluteString];
    }

    else
    {
      WebPrivacy::findOrderedReplacementRanges(self, v6);
      selfCopy = WebPrivacy::applyOrderedReplacements<NSString>(self, v6);
      v9 = v6;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v9);
      v2 = 0;
    }
  }

  else
  {
    selfCopy = self;
    v2 = v8;
  }

  return selfCopy;
}

- (void)_wp_removeTrackingInformationFromURLs:()WebPrivacyExtras
{
  v4 = a3;
  checkForURLUsingFastPath(self, v11);
  if (v11[0])
  {
    v5 = v12;
    if (!v12)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3321888768;
      v8[2] = __68__NSString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke_2;
      v8[3] = &__block_descriptor_48_ea8_32c81_ZTSKZ68__NSString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__3_e9_v16__0_v8l;
      v6 = MEMORY[0x2743DC460](v4);
      v7 = [(NSString *)self copy];
      v8[4] = MEMORY[0x2743DC460](v6);
      v8[5] = v7;
      WebPrivacy::findOrderedReplacementRanges(self, v8);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__NSString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke;
    v9[3] = &unk_279EAF358;
    v10 = v4;
    [v5 _wp_removeTrackingInformation:v9];
  }

  else
  {
    (*(v4 + 2))(v4, self);
    v5 = v12;
  }
}

@end