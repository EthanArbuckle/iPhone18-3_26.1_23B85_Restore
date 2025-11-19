@interface NSArray
@end

@implementation NSArray

uint64_t __63__NSArray_Additions__pl_indexOfFirstObjectInRange_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) objectAtIndex:a2];
  v6 = (*(v4 + 16))(v4, v5, a2, *(*(a1 + 48) + 8) + 24);

  return v6;
}

uint64_t __61__NSArray_Additions__pl_arrayOfUniqueObjectsNotInOrderedSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 >= *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

id __65__NSArray_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke(uint64_t a1)
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

  v4 = [MEMORY[0x1E696AD60] string];
  v5 = PLIndentToString();
  [v4 appendFormat:@"<%@: %p> [", objc_opt_class(), *(a1 + 32)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__NSArray_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2;
  v12[3] = &unk_1E7573A70;
  v6 = *(a1 + 32);
  v15 = *(a1 + 40);
  v7 = v4;
  v13 = v7;
  v14 = v5;
  v16 = v3;
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:v12];
  [v7 appendFormat:@"\n%@]", v8];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __65__NSArray_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 _pl_prettyDescriptionWithIndent:*(a1 + 48) + 1];
  [*(a1 + 32) appendFormat:@"\n%@%@[%*lu]: %@", *(a1 + 40), *MEMORY[0x1E69BFEC8], *(a1 + 56), a3, v5];
}

void __45__NSArray_PhotoLibraryServices___pl_flatMap___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObjectsFromArray:v2];
}

@end