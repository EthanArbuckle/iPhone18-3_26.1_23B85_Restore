@interface _SBPointerTouchDownEventSniffer
- (SBWindowScene)windowScene;
- (_SBPointerTouchDownEventSnifferDelegate)delegate;
- (void)handleEvent:(id)a3;
@end

@implementation _SBPointerTouchDownEventSniffer

- (void)handleEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 type])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 allTouches];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 _isPointerTouch])
          {
            v12 = [v10 phase];
            v13 = [v10 phase];

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v11 = WeakRetained;
            if (v12)
            {
              if (v13 == 3)
              {
                [WeakRetained eventSnifferHandledPointerTouchUp:self];
              }
            }

            else
            {
              [WeakRetained eventSnifferHandledPointerTouchDown:self];
            }

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
LABEL_15:
  }
}

- (_SBPointerTouchDownEventSnifferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end