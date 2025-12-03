@interface WFParameterValuePickerTableViewCellConfiguration
- (BOOL)isEqual:(id)equal;
- (UIViewController)parentViewController;
- (WFParameterValuePickerTableViewCellDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeContentView;
- (unint64_t)hash;
@end

@implementation WFParameterValuePickerTableViewCellConfiguration

- (WFParameterValuePickerTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (unint64_t)hash
{
  text = [(WFParameterValuePickerTableViewCellConfiguration *)self text];
  v3 = [text hash];
  secondaryText = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryText];
  v4 = [secondaryText hash] ^ v3;
  textColor = [(WFParameterValuePickerTableViewCellConfiguration *)self textColor];
  v5 = [textColor hash];
  secondaryTextColor = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryTextColor];
  v7 = v4 ^ v5 ^ [secondaryTextColor hash];
  textFont = [(WFParameterValuePickerTableViewCellConfiguration *)self textFont];
  v9 = [textFont hash];
  secondaryTextFont = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryTextFont];
  v11 = v9 ^ [secondaryTextFont hash];
  if ([(WFParameterValuePickerTableViewCellConfiguration *)self isContainedInState])
  {
    v12 = 3133065982;
  }

  else
  {
    v12 = 3405691582;
  }

  v13 = v7 ^ v11 ^ v12;
  if ([(WFParameterValuePickerTableViewCellConfiguration *)self usesToggleForSelection])
  {
    v14 = 3405691582;
  }

  else
  {
    v14 = 3133065982;
  }

  image = [(WFParameterValuePickerTableViewCellConfiguration *)self image];
  v16 = v14 ^ [image hash];
  icon = [(WFParameterValuePickerTableViewCellConfiguration *)self icon];
  v18 = v13 ^ v16 ^ [icon hash];
  [(WFParameterValuePickerTableViewCellConfiguration *)self cornerRadius];
  v20 = v19;
  if ([(WFParameterValuePickerTableViewCellConfiguration *)self forceImageScaling])
  {
    v21 = 3405691582;
  }

  else
  {
    v21 = 3133065982;
  }

  v22 = v18 ^ v21;
  parentViewController = [(WFParameterValuePickerTableViewCellConfiguration *)self parentViewController];
  v24 = v22 ^ [parentViewController hash];

  return v24 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      text = [(WFParameterValuePickerTableViewCellConfiguration *)self text];
      text2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 text];
      if ([text isEqualToString:text2])
      {
        secondaryText = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryText];
        secondaryText2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 secondaryText];
        if ([secondaryText isEqualToString:secondaryText2])
        {
          textColor = [(WFParameterValuePickerTableViewCellConfiguration *)self textColor];
          textColor2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 textColor];
          if ([textColor isEqual:textColor2])
          {
            secondaryTextColor = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryTextColor];
            secondaryTextColor2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 secondaryTextColor];
            v37 = secondaryTextColor;
            if ([secondaryTextColor isEqual:secondaryTextColor2])
            {
              textFont = [(WFParameterValuePickerTableViewCellConfiguration *)self textFont];
              textFont2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 textFont];
              v35 = textFont;
              if ([textFont isEqual:textFont2])
              {
                secondaryTextFont = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryTextFont];
                secondaryTextFont2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 secondaryTextFont];
                v33 = secondaryTextFont;
                v17 = secondaryTextFont;
                v18 = secondaryTextFont2;
                if ([v17 isEqual:secondaryTextFont2] && (v30 = -[WFParameterValuePickerTableViewCellConfiguration isContainedInState](self, "isContainedInState"), v30 == -[WFParameterValuePickerTableViewCellConfiguration isContainedInState](v6, "isContainedInState")) && (v31 = -[WFParameterValuePickerTableViewCellConfiguration usesToggleForSelection](self, "usesToggleForSelection"), v31 == -[WFParameterValuePickerTableViewCellConfiguration usesToggleForSelection](v6, "usesToggleForSelection")))
                {
                  image = [(WFParameterValuePickerTableViewCellConfiguration *)self image];
                  image2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 image];
                  if ([image isEqual:?])
                  {
                    icon = [(WFParameterValuePickerTableViewCellConfiguration *)self icon];
                    icon2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 icon];
                    if ([icon isEqual:?] && (-[WFParameterValuePickerTableViewCellConfiguration cornerRadius](self, "cornerRadius"), v22 = v21, -[WFParameterValuePickerTableViewCellConfiguration cornerRadius](v6, "cornerRadius"), v22 == v23) && (v25 = -[WFParameterValuePickerTableViewCellConfiguration forceImageScaling](self, "forceImageScaling"), v25 == -[WFParameterValuePickerTableViewCellConfiguration forceImageScaling](v6, "forceImageScaling")))
                    {
                      parentViewController = [(WFParameterValuePickerTableViewCellConfiguration *)self parentViewController];
                      parentViewController2 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 parentViewController];
                      v19 = parentViewController == parentViewController2;
                    }

                    else
                    {
                      v19 = 0;
                    }
                  }

                  else
                  {
                    v19 = 0;
                  }
                }

                else
                {
                  v19 = 0;
                }
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(NSString *)self->_text copy];
    v6 = *(v4 + 16);
    *(v4 + 16) = v5;

    v7 = [(NSString *)self->_secondaryText copy];
    v8 = *(v4 + 24);
    *(v4 + 24) = v7;

    objc_storeStrong((v4 + 32), self->_textColor);
    objc_storeStrong((v4 + 40), self->_secondaryTextColor);
    *(v4 + 8) = self->_containedInState;
    *(v4 + 9) = self->_usesToggleForSelection;
    objc_storeStrong((v4 + 48), self->_textFont);
    objc_storeStrong((v4 + 56), self->_secondaryTextFont);
    objc_storeStrong((v4 + 64), self->_image);
    objc_storeStrong((v4 + 72), self->_icon);
    *(v4 + 80) = self->_cornerRadius;
    *(v4 + 10) = self->_forceImageScaling;
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    objc_storeWeak((v4 + 88), WeakRetained);
  }

  return v4;
}

- (id)makeContentView
{
  v2 = [[WFParameterValuePickerTableViewCellContentView alloc] initWithConfiguration:self];

  return v2;
}

@end