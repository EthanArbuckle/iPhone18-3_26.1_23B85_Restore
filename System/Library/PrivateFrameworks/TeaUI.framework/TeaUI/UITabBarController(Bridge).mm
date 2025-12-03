@interface UITabBarController(Bridge)
- (id)ts_floatingTabBarContainerView;
@end

@implementation UITabBarController(Bridge)

- (id)ts_floatingTabBarContainerView
{
  v16 = *MEMORY[0x1E69E9840];
  NSClassFromString(&cfstr_Uitabcontainer.isa);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  view = [self view];
  subviews = [view subviews];

  v4 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end