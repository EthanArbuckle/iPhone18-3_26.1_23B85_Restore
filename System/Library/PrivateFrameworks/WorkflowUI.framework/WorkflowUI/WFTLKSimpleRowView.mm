@interface WFTLKSimpleRowView
- (void)observedPropertiesChanged;
@end

@implementation WFTLKSimpleRowView

- (void)observedPropertiesChanged
{
  v35.receiver = self;
  v35.super_class = WFTLKSimpleRowView;
  [(TLKSimpleRowView *)&v35 observedPropertiesChanged];
  v3 = [(TLKSimpleRowView *)self leadingImage];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TLKSimpleRowView *)self trailingImage];
    v4 = v5 != 0;
  }

  v6 = [(TLKSimpleRowView *)self leadingSubtitle];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(TLKSimpleRowView *)self trailingSubtitle];
    v7 = v8 != 0;
  }

  v9 = [(TLKSimpleRowView *)self leadingImage];
  [v9 size];
  v11 = v10;

  v12 = [(TLKSimpleRowView *)self leadingImage];
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(TLKSimpleRowView *)self leadingTitle];
    if (v14)
    {
      v15 = [(TLKSimpleRowView *)self trailingTitle];
      if (v15)
      {
        v13 = 0;
      }

      else
      {
        v16 = [(TLKSimpleRowView *)self trailingSubtitle];
        if (v16)
        {
          v13 = 0;
        }

        else
        {
          v17 = [(TLKSimpleRowView *)self trailingImage];
          [v17 size];
          if (v19 == 29.0 && v18 == 29.0)
          {
            v13 = 1;
          }

          else
          {
            v20 = [(TLKSimpleRowView *)self trailingImage];
            if ([v20 isTemplate])
            {
              v34 = [(TLKSimpleRowView *)self trailingImage];
              [v34 size];
              if (v21 <= 29.0)
              {
                v13 = 1;
              }

              else
              {
                v33 = [(TLKSimpleRowView *)self trailingImage];
                [v33 size];
                v13 = v22 <= 29.0;
              }
            }

            else
            {
              v13 = 0;
            }
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v23 = [(TLKSimpleRowView *)self leadingTitle];
  if (v23)
  {
    v24 = [(TLKSimpleRowView *)self leadingSubtitle];
    if (v24)
    {
      v25 = [(TLKSimpleRowView *)self trailingTitle];
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v27 = [(TLKSimpleRowView *)self trailingSubtitle];
        if (v27)
        {
          v26 = 0;
        }

        else
        {
          v28 = [(TLKSimpleRowView *)self leadingImage];
          if (v28)
          {
            v29 = [(TLKSimpleRowView *)self trailingImage];
            v26 = v11 <= 18.0 && v29 == 0;
          }

          else
          {
            v26 = 0;
          }
        }
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  if (!v13 && !v26 && !v7 && !v4)
  {
    v31 = [MEMORY[0x277D6F1A8] cachedFontForTextStyle:*MEMORY[0x277D76988] isShort:1 isBold:0];
    v32 = [(TLKSimpleRowView *)self leadingTitleLabel];
    [v32 setFont:v31];
  }
}

@end