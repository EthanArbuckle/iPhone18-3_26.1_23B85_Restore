@interface _SBPointerTouchDownEventSniffer
- (SBWindowScene)windowScene;
- (_SBPointerTouchDownEventSnifferDelegate)delegate;
- (void)handleEvent:(id)event;
@end

@implementation _SBPointerTouchDownEventSniffer

- (void)handleEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (![eventCopy type])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allTouches = [eventCopy allTouches];
    v6 = [allTouches countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(allTouches);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 _isPointerTouch])
          {
            phase = [v10 phase];
            phase2 = [v10 phase];

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v11 = WeakRetained;
            if (phase)
            {
              if (phase2 == 3)
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

        v7 = [allTouches countByEnumeratingWithState:&v15 objects:v19 count:16];
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