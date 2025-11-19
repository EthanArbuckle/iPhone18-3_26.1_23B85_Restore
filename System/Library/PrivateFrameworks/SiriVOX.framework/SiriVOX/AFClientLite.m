@interface AFClientLite
@end

@implementation AFClientLite

uint64_t __62__AFClientLite_SVXAceCommandHandling__handleAceCommand_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __62__AFClientLite_SVXAceCommandHandling__handleAceCommand_reply___block_invoke_3(uint64_t result, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    return [*(result + 32) invokeWithValue:0];
  }

  return result;
}

@end