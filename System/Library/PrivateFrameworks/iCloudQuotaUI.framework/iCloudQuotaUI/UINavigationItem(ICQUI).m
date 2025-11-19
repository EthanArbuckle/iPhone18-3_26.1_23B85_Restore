@interface UINavigationItem(ICQUI)
- (void)icqui_showNavigationBarSpinner;
@end

@implementation UINavigationItem(ICQUI)

- (void)icqui_showNavigationBarSpinner
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [MEMORY[0x277D75348] systemGrayColor];
  [v2 setColor:v3];

  [v2 startAnimating];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v2];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [a1 setRightBarButtonItems:v5];
}

@end