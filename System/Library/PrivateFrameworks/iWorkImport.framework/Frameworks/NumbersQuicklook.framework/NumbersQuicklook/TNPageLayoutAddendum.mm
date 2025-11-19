@interface TNPageLayoutAddendum
- (CGColor)backgroundColor;
- (void)updateChildrenFromInfo;
@end

@implementation TNPageLayoutAddendum

- (CGColor)backgroundColor
{
  v3 = objc_msgSend_whiteColor(MEMORY[0x277D81180], a2, v2);
  v6 = objc_msgSend_CGColor(v3, v4, v5);

  return v6;
}

- (void)updateChildrenFromInfo
{
  v4.receiver = self;
  v4.super_class = TNPageLayoutAddendum;
  [(TNPageLayoutContainer *)&v4 updateChildrenFromInfo];
  objc_msgSend_performBlockForEachHeaderFooterLayout_(self, v3, &unk_2884F6340);
}

@end