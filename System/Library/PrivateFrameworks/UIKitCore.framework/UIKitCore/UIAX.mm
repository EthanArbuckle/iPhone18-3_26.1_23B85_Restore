@interface UIAX
@end

@implementation UIAX

uint64_t ___UIAX_CGPathEnumerateElementsUsingBlock_block_invoke(uint64_t result, unsigned int *a2)
{
  v2 = *(*(result + 40) + 8);
  v4 = *(v2 + 24);
  v3 = v2 + 24;
  if ((v4 & 1) == 0)
  {
    v6 = result;
    v7 = *(result + 32);
    v8 = *a2;
    if (v8 > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_18A677600[v8];
    }

    result = (*(v7 + 16))(v7, v8, *(a2 + 1), v9, *(*(*(v6 + 48) + 8) + 24), v3);
    ++*(*(*(v6 + 48) + 8) + 24);
  }

  return result;
}

@end