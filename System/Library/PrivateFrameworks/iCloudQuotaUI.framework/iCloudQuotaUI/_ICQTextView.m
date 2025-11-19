@interface _ICQTextView
- (_ICQTextView)initWithFrame:(CGRect)a3;
- (void)setAttributedText;
@end

@implementation _ICQTextView

- (_ICQTextView)initWithFrame:(CGRect)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = _ICQTextView;
  v3 = [(_ICQTextView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_ICQTextView *)v3 setSelectable:1];
    [(_ICQTextView *)v4 setEditable:0];
    [(_ICQTextView *)v4 setScrollEnabled:0];
    v5 = [(_ICQTextView *)v4 textDragInteraction];
    [v5 setEnabled:0];

    [(_ICQTextView *)v4 setAdjustsFontForContentSizeCategory:1];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(_ICQTextView *)v4 gestureRecognizers];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            [v12 minimumPressDuration];
            if (v13 >= 0.499999881)
            {
              [v12 setEnabled:0];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }
  }

  return v4;
}

- (void)setAttributedText
{
  v3 = MEMORY[0x277CCA898];
  v7 = [(_ICQTextView *)self format];
  v4 = [(_ICQTextView *)self attributes];
  v5 = [(_ICQTextView *)self links];
  v6 = [v3 attributedStringWithFormat:v7 attributes:v4 links:v5];
  [(_ICQTextView *)self setAttributedText:v6];
}

@end