@interface _SBTouchInteractionEventSniffer
- (SBWindowScene)windowScene;
- (_SBTouchInteractionEventSnifferDelegate)delegate;
- (void)handleEvent:(id)event;
@end

@implementation _SBTouchInteractionEventSniffer

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)handleEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = [event allTouches];
  v5 = [WeakRetained countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(WeakRetained);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 _isPointerTouch] & 1) == 0)
        {
          v10 = [v9 phase] == 4 || objc_msgSend(v9, "phase") == 2;
          if ([v9 type] != 1)
          {
            v11 = [v9 type] == 3 || v10;
            if ((v11 & 1) == 0)
            {

              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              [WeakRetained eventSnifferHandledTouchInteractionQualifyingEvent:self];
              goto LABEL_19;
            }
          }
        }
      }

      v6 = [WeakRetained countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

- (_SBTouchInteractionEventSnifferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end