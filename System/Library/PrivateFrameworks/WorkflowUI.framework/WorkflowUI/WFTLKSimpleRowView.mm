@interface WFTLKSimpleRowView
- (void)observedPropertiesChanged;
@end

@implementation WFTLKSimpleRowView

- (void)observedPropertiesChanged
{
  v35.receiver = self;
  v35.super_class = WFTLKSimpleRowView;
  [(TLKSimpleRowView *)&v35 observedPropertiesChanged];
  leadingImage = [(TLKSimpleRowView *)self leadingImage];
  if (leadingImage)
  {
    v4 = 1;
  }

  else
  {
    trailingImage = [(TLKSimpleRowView *)self trailingImage];
    v4 = trailingImage != 0;
  }

  leadingSubtitle = [(TLKSimpleRowView *)self leadingSubtitle];
  if (leadingSubtitle)
  {
    v7 = 1;
  }

  else
  {
    trailingSubtitle = [(TLKSimpleRowView *)self trailingSubtitle];
    v7 = trailingSubtitle != 0;
  }

  leadingImage2 = [(TLKSimpleRowView *)self leadingImage];
  [leadingImage2 size];
  v11 = v10;

  leadingImage3 = [(TLKSimpleRowView *)self leadingImage];
  if (leadingImage3)
  {
    v13 = 0;
  }

  else
  {
    leadingTitle = [(TLKSimpleRowView *)self leadingTitle];
    if (leadingTitle)
    {
      trailingTitle = [(TLKSimpleRowView *)self trailingTitle];
      if (trailingTitle)
      {
        v13 = 0;
      }

      else
      {
        trailingSubtitle2 = [(TLKSimpleRowView *)self trailingSubtitle];
        if (trailingSubtitle2)
        {
          v13 = 0;
        }

        else
        {
          trailingImage2 = [(TLKSimpleRowView *)self trailingImage];
          [trailingImage2 size];
          if (v19 == 29.0 && v18 == 29.0)
          {
            v13 = 1;
          }

          else
          {
            trailingImage3 = [(TLKSimpleRowView *)self trailingImage];
            if ([trailingImage3 isTemplate])
            {
              trailingImage4 = [(TLKSimpleRowView *)self trailingImage];
              [trailingImage4 size];
              if (v21 <= 29.0)
              {
                v13 = 1;
              }

              else
              {
                trailingImage5 = [(TLKSimpleRowView *)self trailingImage];
                [trailingImage5 size];
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

  leadingTitle2 = [(TLKSimpleRowView *)self leadingTitle];
  if (leadingTitle2)
  {
    leadingSubtitle2 = [(TLKSimpleRowView *)self leadingSubtitle];
    if (leadingSubtitle2)
    {
      trailingTitle2 = [(TLKSimpleRowView *)self trailingTitle];
      if (trailingTitle2)
      {
        v26 = 0;
      }

      else
      {
        trailingSubtitle3 = [(TLKSimpleRowView *)self trailingSubtitle];
        if (trailingSubtitle3)
        {
          v26 = 0;
        }

        else
        {
          leadingImage4 = [(TLKSimpleRowView *)self leadingImage];
          if (leadingImage4)
          {
            trailingImage6 = [(TLKSimpleRowView *)self trailingImage];
            v26 = v11 <= 18.0 && trailingImage6 == 0;
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
    leadingTitleLabel = [(TLKSimpleRowView *)self leadingTitleLabel];
    [leadingTitleLabel setFont:v31];
  }
}

@end