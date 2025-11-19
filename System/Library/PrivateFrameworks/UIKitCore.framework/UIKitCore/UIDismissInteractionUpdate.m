@interface UIDismissInteractionUpdate
@end

@implementation UIDismissInteractionUpdate

double __39___UIDismissInteractionUpdate_isEqual___block_invoke_2@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 translation];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double __39___UIDismissInteractionUpdate_isEqual___block_invoke_3@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 transform];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

@end