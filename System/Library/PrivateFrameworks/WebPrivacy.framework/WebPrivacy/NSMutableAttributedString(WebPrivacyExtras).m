@interface NSMutableAttributedString(WebPrivacyExtras)
- (void)_wp_removeTrackingInformationFromURLs;
- (void)_wp_removeTrackingInformationFromURLsInPlace:()WebPrivacyExtras;
@end

@implementation NSMutableAttributedString(WebPrivacyExtras)

- (void)_wp_removeTrackingInformationFromURLs
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a1 string];
  checkForURLUsingFastPath(v2, v9);

  v3 = v10;
  if (v9[0])
  {
    if (v10)
    {
      v4 = [a1 length];
      v5 = [v3 _wp_urlByRemovingTrackingInformation];
      v6 = [v5 absoluteString];
      v12[0] = 0;
      v12[1] = v4;
      v13 = v6;
      memset(v8, 0, sizeof(v8));
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(v8, v12, &v14, 1uLL);
      WebPrivacy::applyOrderedReplacementsInPlace<NSMutableAttributedString>(a1, v8);
      v11 = v8;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v11);
    }

    else
    {
      v5 = [a1 string];
      WebPrivacy::findOrderedReplacementRanges(v5, v8);
      WebPrivacy::applyOrderedReplacementsInPlace<NSMutableAttributedString>(a1, v8);
      v12[0] = v8;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](v12);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_wp_removeTrackingInformationFromURLsInPlace:()WebPrivacyExtras
{
  v4 = a3;
  v5 = [a1 string];
  checkForURLUsingFastPath(v5, v16);

  if (v16[0])
  {
    v6 = v17;
    if (!v17)
    {
      objc_initWeak(&location, a1);
      v7 = [a1 string];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3321888768;
      v10[2] = __92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke_2;
      v10[3] = &__block_descriptor_48_ea8_32c105_ZTSKZ92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace__E3__6_e9_v16__0_v8l;
      v8 = MEMORY[0x2743DC460](v4);
      objc_copyWeak(&v9, &location);
      v10[4] = MEMORY[0x2743DC460](v8);
      objc_copyWeak(&v11, &v9);
      WebPrivacy::findOrderedReplacementRanges(v7, v10);
    }

    objc_initWeak(&v8, a1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke;
    v13[3] = &unk_279EAF3D0;
    objc_copyWeak(&v15, &v8);
    v13[4] = a1;
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