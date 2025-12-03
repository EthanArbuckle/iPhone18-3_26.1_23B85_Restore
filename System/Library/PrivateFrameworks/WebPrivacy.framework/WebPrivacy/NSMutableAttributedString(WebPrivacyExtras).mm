@interface NSMutableAttributedString(WebPrivacyExtras)
- (void)_wp_removeTrackingInformationFromURLs;
- (void)_wp_removeTrackingInformationFromURLsInPlace:()WebPrivacyExtras;
@end

@implementation NSMutableAttributedString(WebPrivacyExtras)

- (void)_wp_removeTrackingInformationFromURLs
{
  v14 = *MEMORY[0x277D85DE8];
  string = [self string];
  checkForURLUsingFastPath(string, v9);

  v3 = v10;
  if (v9[0])
  {
    if (v10)
    {
      v4 = [self length];
      _wp_urlByRemovingTrackingInformation = [v3 _wp_urlByRemovingTrackingInformation];
      absoluteString = [_wp_urlByRemovingTrackingInformation absoluteString];
      v12[0] = 0;
      v12[1] = v4;
      v13 = absoluteString;
      memset(v8, 0, sizeof(v8));
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(v8, v12, &v14, 1uLL);
      WebPrivacy::applyOrderedReplacementsInPlace<NSMutableAttributedString>(self, v8);
      v11 = v8;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v11);
    }

    else
    {
      _wp_urlByRemovingTrackingInformation = [self string];
      WebPrivacy::findOrderedReplacementRanges(_wp_urlByRemovingTrackingInformation, v8);
      WebPrivacy::applyOrderedReplacementsInPlace<NSMutableAttributedString>(self, v8);
      v12[0] = v8;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](v12);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_wp_removeTrackingInformationFromURLsInPlace:()WebPrivacyExtras
{
  v4 = a3;
  string = [self string];
  checkForURLUsingFastPath(string, v16);

  if (v16[0])
  {
    v6 = v17;
    if (!v17)
    {
      objc_initWeak(&location, self);
      string2 = [self string];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3321888768;
      v10[2] = __92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke_2;
      v10[3] = &__block_descriptor_48_ea8_32c105_ZTSKZ92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace__E3__6_e9_v16__0_v8l;
      v8 = MEMORY[0x2743DC460](v4);
      objc_copyWeak(&v9, &location);
      v10[4] = MEMORY[0x2743DC460](v8);
      objc_copyWeak(&v11, &v9);
      WebPrivacy::findOrderedReplacementRanges(string2, v10);
    }

    objc_initWeak(&v8, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke;
    v13[3] = &unk_279EAF3D0;
    objc_copyWeak(&v15, &v8);
    v13[4] = self;
    v14 = v4;
    [v6 _wp_removeTrackingInformation:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v8);
  }

  else
  {
    v4[2](v4);
    v6 = v17;
  }
}

@end