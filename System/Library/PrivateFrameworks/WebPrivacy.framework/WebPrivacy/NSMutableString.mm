@interface NSMutableString
@end

@implementation NSMutableString

void __82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained length];
    [v3 absoluteString];
    v10[0] = 0;
    v11 = v10[1] = v6;
    memset(v8, 0, sizeof(v8));
    std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(v8, v10, &v12, 1uLL);
    WebPrivacy::applyOrderedReplacementsInPlace<NSMutableString>(v5, v8);
    v9 = v8;
    std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v9);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WebPrivacy::applyOrderedReplacementsInPlace<NSMutableString>(WeakRetained, a2);
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

@end