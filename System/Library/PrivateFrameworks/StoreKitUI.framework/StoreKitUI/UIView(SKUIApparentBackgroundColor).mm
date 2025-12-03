@interface UIView(SKUIApparentBackgroundColor)
- (id)skui_apparentBackgroundColor;
@end

@implementation UIView(SKUIApparentBackgroundColor)

- (id)skui_apparentBackgroundColor
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      backgroundColor = [selfCopy backgroundColor];
      if ([backgroundColor skui_isOpaque])
      {
        v5 = backgroundColor;
        goto LABEL_8;
      }

      v3 = objc_alloc(MEMORY[0x277D75348]);
      layer = [selfCopy layer];
      v5 = [v3 initWithCGColor:{objc_msgSend(layer, "backgroundColor")}];

      if ([v5 skui_isOpaque])
      {
        break;
      }

      superview = [selfCopy superview];

      selfCopy = superview;
      if (!superview)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

@end