@interface UITintColorVisitor
@end

@implementation UITintColorVisitor

uint64_t __34___UITintColorVisitor__visitView___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(*(result + 32) + 24))
  {
    result = [*(result + 40) _interactionTintColor];
    if (result)
    {
      if (*(v1 + 80) == 1)
      {
        *(*(*(v1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      *(*(*(v1 + 56) + 8) + 24) = 1;
      *(*(*(v1 + 64) + 8) + 24) = 1;
      v2 = *(v1 + 48);
      if (!v2)
      {
        goto LABEL_9;
      }

      if (qword_1ED49C1E0 != -1)
      {
        dispatch_once(&qword_1ED49C1E0, &__block_literal_global_722);
      }

      result = objc_opt_isKindOfClass();
      if ((result & 1) == 0)
      {
        v3 = 0x200000000000;
        if ((v2[101] & 0x20) == 0)
        {
          result = [v2 _definesTintColor];
          if (!result)
          {
            v3 = 0;
          }
        }
      }

      else
      {
LABEL_9:
        v3 = 0;
      }

      v4 = *(v1 + 40);
      if (v4)
      {
        *(v4 + 96) = *(v4 + 96) & 0xFFFFDFFFFFFFFFFFLL | v3;
      }
    }
  }

  if ((*(*(v1 + 32) + 24) & 2) != 0)
  {
    v5 = *(v1 + 40);
    if (v5 && ((*(v5 + 100) & 0x30) != 0 || *(v5 + 216)))
    {
      if (*(v1 + 80) == 1)
      {
        *(*(*(v1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      *(*(*(v1 + 56) + 8) + 24) = 1;
      *(*(*(v1 + 64) + 8) + 24) = 1;
      v6 = *(v1 + 48);
      if (!v6)
      {
        goto LABEL_22;
      }

      if (qword_1ED49C1E0 != -1)
      {
        dispatch_once(&qword_1ED49C1E0, &__block_literal_global_722);
      }

      result = objc_opt_isKindOfClass();
      if ((result & 1) == 0)
      {
        if ((*(v6 + 100) & 0x4030) != 0)
        {
          v7 = 0x400000000000;
        }

        else
        {
          v7 = (*(v6 + 216) != 0) << 46;
        }
      }

      else
      {
LABEL_22:
        v7 = 0;
      }

      v8 = *(v1 + 40);
      if (v8)
      {
        *(v8 + 96) = *(v8 + 96) & 0xFFFFBFFFFFFFFFFFLL | v7;
      }
    }
  }

  v9 = *(*(v1 + 32) + 24);
  if ((v9 & 4) != 0)
  {
    *(*(*(v1 + 56) + 8) + 24) = 1;
    *(*(*(v1 + 64) + 8) + 24) = 1;
    v9 = *(*(v1 + 32) + 24);
  }

  if ((v9 & 8) != 0)
  {
    if ([*(v1 + 40) accessibilityIgnoresInvertColors])
    {
      *(*(*(v1 + 72) + 8) + 24) = 1;
      *(*(*(v1 + 56) + 8) + 24) = 1;
    }

    result = *(v1 + 48);
    if (result)
    {
      v10 = 0x800000000000;
      if ((*(result + 101) & 0x80) == 0)
      {
        result = [result accessibilityIgnoresInvertColors];
        if (!result)
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v1 + 40);
    if (v11)
    {
      *(v11 + 96) = *(v11 + 96) & 0xFFFF7FFFFFFFFFFFLL | v10;
    }
  }

  return result;
}

@end