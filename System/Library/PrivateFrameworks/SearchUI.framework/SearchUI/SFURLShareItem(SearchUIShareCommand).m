@interface SFURLShareItem(SearchUIShareCommand)
- (void)searchUI_fetchShareableItemWithCompletionHandler:()SearchUIShareCommand;
@end

@implementation SFURLShareItem(SearchUIShareCommand)

- (void)searchUI_fetchShareableItemWithCompletionHandler:()SearchUIShareCommand
{
  v5 = a3;
  v6 = [a1 urlValue];
  (a3)[2](v5, v6);
}

@end