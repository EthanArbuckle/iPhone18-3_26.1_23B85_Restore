@interface _SBPointerInteractionEventSniffer
- (SBWindowScene)windowScene;
- (_SBPointerInteractionEventSnifferDelegate)delegate;
- (void)handleEvent:(id)a3;
@end

@implementation _SBPointerInteractionEventSniffer

- (void)handleEvent:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  WeakRetained = [a3 allTouches];
  v5 = [WeakRetained countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(WeakRetained);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 _isPointerTouch])
        {
          v10 = [v9 view];
          [v9 previousLocationInView:v10];
          v12 = v11;
          v14 = v13;
          v15 = [v9 view];
          [v9 locationInView:v15];
          v18 = v14 == v17 && v12 == v16;

          v19 = [v9 phase] == 4 || objc_msgSend(v9, "phase") == 2;
          v20 = [v9 type];
          if (!v18 && !v19 && !v20)
          {

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained eventSnifferHandledPointerInteractionQualifyingEvent:self];
            goto LABEL_19;
          }
        }
      }

      v6 = [WeakRetained countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

- (_SBPointerInteractionEventSnifferDelegate)delegate
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