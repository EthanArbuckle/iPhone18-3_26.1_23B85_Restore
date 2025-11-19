@interface UIExternalScreenSceneConnectionHandler
@end

@implementation UIExternalScreenSceneConnectionHandler

void _UIExternalScreenSceneConnectionHandler_block_invoke_4(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 _hostsWindows])
  {
    v3 = v2;
    if ([UIApp isFrontBoard])
    {
      v4 = [UIApp disablesFrontBoardImplicitWindowScenes];
    }

    else
    {
      v4 = 0;
    }

    v5 = [v3 _screen];
    v6 = [UIWindowScene _placeholderWindowSceneForScreen:v5 create:0];

    if (v6 && v4 & 1 | (([UIApp isFrontBoard] & 1) == 0))
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [v6 _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:{0, 0}];
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * i) _setWindowHostingScene:v3];
          }

          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }
  }
}

@end