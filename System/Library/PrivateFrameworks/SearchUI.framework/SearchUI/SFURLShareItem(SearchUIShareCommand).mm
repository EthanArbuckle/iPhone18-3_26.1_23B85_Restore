@interface SFURLShareItem(SearchUIShareCommand)
- (void)searchUI_fetchShareableItemWithCompletionHandler:()SearchUIShareCommand;
@end

@implementation SFURLShareItem(SearchUIShareCommand)

- (void)searchUI_fetchShareableItemWithCompletionHandler:()SearchUIShareCommand
{
  v5 = a3;
  urlValue = [self urlValue];
  (a3)[2](v5, urlValue);
}

@end