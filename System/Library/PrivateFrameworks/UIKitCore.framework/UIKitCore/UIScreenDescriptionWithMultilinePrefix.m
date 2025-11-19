@interface UIScreenDescriptionWithMultilinePrefix
@end

@implementation UIScreenDescriptionWithMultilinePrefix

id ___UIScreenDescriptionWithMultilinePrefix_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayIdentity];
  v4 = [v2 appendObject:v3 withName:@"displayIdentity"];

  return [*(a1 + 32) ui_appendUserInterfaceIdiom:objc_msgSend(*(a1 + 40) withName:{"_userInterfaceIdiom"), @"idiom"}];
}

@end