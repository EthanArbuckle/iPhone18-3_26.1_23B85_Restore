@interface NSOrderedSet
@end

@implementation NSOrderedSet

id __70__NSOrderedSet_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count] - 1;
  if (v2 <= 0x3B9AC9FF)
  {
    if (v2 <= 0x5F5E0FF)
    {
      if (v2 <= 0x98967F)
      {
        if (v2 <= 0xF423F)
        {
          if (v2 >> 5 <= 0xC34)
          {
            if (v2 >> 4 <= 0x270)
            {
              if (v2 <= 0x3E7)
              {
                if (v2 <= 0x63)
                {
                  if (v2 <= 9)
                  {
                    v3 = 1;
                  }

                  else
                  {
                    v3 = 2;
                  }
                }

                else
                {
                  v3 = 3;
                }
              }

              else
              {
                v3 = 4;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 6;
          }
        }

        else
        {
          v3 = 7;
        }
      }

      else
      {
        v3 = 8;
      }
    }

    else
    {
      v3 = 9;
    }
  }

  else
  {
    v3 = 10;
  }

  v4 = [*(a1 + 32) array];
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = PLIndentToString();
  [v5 appendFormat:@"<%@: %p> [", objc_opt_class(), *(a1 + 32)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__NSOrderedSet_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2;
  v12[3] = &unk_1E7573A70;
  v15 = *(a1 + 40);
  v7 = v5;
  v13 = v7;
  v14 = v6;
  v16 = v3;
  v8 = v6;
  [v4 enumerateObjectsUsingBlock:v12];
  [v7 appendFormat:@"\n%@]", v8];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __70__NSOrderedSet_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 _pl_prettyDescriptionWithIndent:*(a1 + 48) + 1];
  [*(a1 + 32) appendFormat:@"\n%@%@[%*lu]: %@", *(a1 + 40), *MEMORY[0x1E69BFEC8], *(a1 + 56), a3, v5];
}

@end