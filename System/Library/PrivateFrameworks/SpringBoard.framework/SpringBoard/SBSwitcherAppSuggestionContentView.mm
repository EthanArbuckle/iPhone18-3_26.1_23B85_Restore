@interface SBSwitcherAppSuggestionContentView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBSwitcherAppSuggestionContentView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(SBSwitcherAppSuggestionContentView *)self subviews:a4];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) frame];
        v17.x = x;
        v17.y = y;
        if (CGRectContainsPoint(v18, v17))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end