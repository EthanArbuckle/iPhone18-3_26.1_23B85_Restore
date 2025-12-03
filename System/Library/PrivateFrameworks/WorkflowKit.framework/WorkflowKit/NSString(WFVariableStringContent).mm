@interface NSString(WFVariableStringContent)
- (void)wf_getContentItemsWithContext:()WFVariableStringContent completionHandler:;
@end

@implementation NSString(WFVariableStringContent)

- (void)wf_getContentItemsWithContext:()WFVariableStringContent completionHandler:
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6996D58];
  v6 = a4;
  v7 = [v5 itemWithObject:self];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6[2](v6, v8, 0);

  v9 = *MEMORY[0x1E69E9840];
}

@end