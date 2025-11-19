@interface ISOperation
@end

@implementation ISOperation

void __52__ISOperation_SUScriptPost__sendCompletionCallback___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) success];
  v5 = MEMORY[0x1E695E4D0];
  if (!v4)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = [v2 initWithObjects:{v3, *v5, 0}];
  [*(a1 + 32) callWebScriptMethod:@"call" withArguments:v6];
}

@end