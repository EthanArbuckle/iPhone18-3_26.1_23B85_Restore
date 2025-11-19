@interface UIScreenAddScreen
@end

@implementation UIScreenAddScreen

void ___UIScreenAddScreen_block_invoke(uint64_t a1)
{
  if (qword_1ED49AB80 != -1)
  {
    dispatch_once(&qword_1ED49AB80, &__block_literal_global_926);
  }

  v2 = qword_1ED49AB88;
  v8 = v2;
  if ((*(a1 + 40) & 1) == 0)
  {
    if (qword_1ED49ABB0 != -1)
    {
      dispatch_once(&qword_1ED49ABB0, &__block_literal_global_943);
    }

    v3 = qword_1ED49ABA8;
    v4 = [*(a1 + 32) displayIdentity];
    [v3 addObject:v4];

    v5 = [v8 firstObject];
    if (qword_1ED49ABB8 != -1)
    {
      dispatch_once(&qword_1ED49ABB8, &__block_literal_global_946);
    }

    if (byte_1ED49AAE4 == 1 && v5)
    {
      v6 = [v5 displayIdentity];
      if ([v3 countForObject:v6])
      {
      }

      else
      {
        v7 = [*(a1 + 32) _isMainLikeScreen];

        if (v7)
        {
          [v8 replaceObjectAtIndex:0 withObject:*(a1 + 32)];
        }
      }
    }

    v2 = v8;
  }

  if (([v2 containsObject:*(a1 + 32)] & 1) == 0)
  {
    if (![*(a1 + 32) _isEmbeddedScreen])
    {
      goto LABEL_21;
    }

    if (qword_1ED49ABB8 != -1)
    {
      dispatch_once(&qword_1ED49ABB8, &__block_literal_global_946);
    }

    if (byte_1ED49AAE4 == 1)
    {
      [v8 insertObject:*(a1 + 32) atIndex:0];
    }

    else
    {
LABEL_21:
      [v8 addObject:*(a1 + 32)];
    }
  }
}

@end