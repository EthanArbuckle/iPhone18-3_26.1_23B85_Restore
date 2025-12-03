@interface WAKView(WebHTMLViewFileInternal)
- (uint64_t)_web_addDescendentWebHTMLViewsToArray:()WebHTMLViewFileInternal;
@end

@implementation WAKView(WebHTMLViewFileInternal)

- (uint64_t)_web_addDescendentWebHTMLViewsToArray:()WebHTMLViewFileInternal
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [self subviews];
  result = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a3 addObject:v9];
        }

        [v9 _web_addDescendentWebHTMLViewsToArray:a3];
        ++v8;
      }

      while (v6 != v8);
      result = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

@end