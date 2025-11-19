@interface UIViewEnumerateLayoutConstraintsAndAdjustForSelectedLayoutVariables
@end

@implementation UIViewEnumerateLayoutConstraintsAndAdjustForSelectedLayoutVariables

uint64_t ___UIViewEnumerateLayoutConstraintsAndAdjustForSelectedLayoutVariables_block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  for (result = a1[4]; result; result = [v10 superview])
  {
    v10 = result;
    v3 = [objc_msgSend(result "_constraintsExceptingSubviewAutoresizingConstraints")];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          if (v8)
          {
            [objc_msgSend(*(*(&v11 + 1) + 8 * v7) "firstItem")];
            [v8 firstAttribute];
            [objc_msgSend(v8 "secondItem")];
          }

          else
          {
            [0 firstAttribute];
          }

          [v8 secondAttribute];
          if (((*(a1[5] + 16))() & 1) != 0 || (*(a1[5] + 16))())
          {
            (*(a1[6] + 16))();
          }

          ++v7;
        }

        while (v5 != v7);
        v9 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v5 = v9;
      }

      while (v9);
    }

    if (v10 != a1[4])
    {
      result = [v10 _hostsLayoutEngine];
      if (result)
      {
        break;
      }
    }
  }

  return result;
}

@end