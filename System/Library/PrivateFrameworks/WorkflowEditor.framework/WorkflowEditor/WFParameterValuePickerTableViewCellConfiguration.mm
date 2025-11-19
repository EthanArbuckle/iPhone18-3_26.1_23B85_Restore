@interface WFParameterValuePickerTableViewCellConfiguration
- (BOOL)isEqual:(id)a3;
- (UIViewController)parentViewController;
- (WFParameterValuePickerTableViewCellDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
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
  v28 = [(WFParameterValuePickerTableViewCellConfiguration *)self text];
  v3 = [v28 hash];
  v27 = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryText];
  v4 = [v27 hash] ^ v3;
  v26 = [(WFParameterValuePickerTableViewCellConfiguration *)self textColor];
  v5 = [v26 hash];
  v6 = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryTextColor];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = [(WFParameterValuePickerTableViewCellConfiguration *)self textFont];
  v9 = [v8 hash];
  v10 = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryTextFont];
  v11 = v9 ^ [v10 hash];
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

  v15 = [(WFParameterValuePickerTableViewCellConfiguration *)self image];
  v16 = v14 ^ [v15 hash];
  v17 = [(WFParameterValuePickerTableViewCellConfiguration *)self icon];
  v18 = v13 ^ v16 ^ [v17 hash];
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
  v23 = [(WFParameterValuePickerTableViewCellConfiguration *)self parentViewController];
  v24 = v22 ^ [v23 hash];

  return v24 ^ v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(WFParameterValuePickerTableViewCellConfiguration *)self text];
      v8 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 text];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryText];
        v10 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 secondaryText];
        if ([v9 isEqualToString:v10])
        {
          v11 = [(WFParameterValuePickerTableViewCellConfiguration *)self textColor];
          v12 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 textColor];
          if ([v11 isEqual:v12])
          {
            v13 = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryTextColor];
            v36 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 secondaryTextColor];
            v37 = v13;
            if ([v13 isEqual:v36])
            {
              v14 = [(WFParameterValuePickerTableViewCellConfiguration *)self textFont];
              v34 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 textFont];
              v35 = v14;
              if ([v14 isEqual:v34])
              {
                v15 = [(WFParameterValuePickerTableViewCellConfiguration *)self secondaryTextFont];
                v16 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 secondaryTextFont];
                v33 = v15;
                v17 = v15;
                v18 = v16;
                if ([v17 isEqual:v16] && (v30 = -[WFParameterValuePickerTableViewCellConfiguration isContainedInState](self, "isContainedInState"), v30 == -[WFParameterValuePickerTableViewCellConfiguration isContainedInState](v6, "isContainedInState")) && (v31 = -[WFParameterValuePickerTableViewCellConfiguration usesToggleForSelection](self, "usesToggleForSelection"), v31 == -[WFParameterValuePickerTableViewCellConfiguration usesToggleForSelection](v6, "usesToggleForSelection")))
                {
                  v32 = [(WFParameterValuePickerTableViewCellConfiguration *)self image];
                  v29 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 image];
                  if ([v32 isEqual:?])
                  {
                    v28 = [(WFParameterValuePickerTableViewCellConfiguration *)self icon];
                    v27 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 icon];
                    if ([v28 isEqual:?] && (-[WFParameterValuePickerTableViewCellConfiguration cornerRadius](self, "cornerRadius"), v22 = v21, -[WFParameterValuePickerTableViewCellConfiguration cornerRadius](v6, "cornerRadius"), v22 == v23) && (v25 = -[WFParameterValuePickerTableViewCellConfiguration forceImageScaling](self, "forceImageScaling"), v25 == -[WFParameterValuePickerTableViewCellConfiguration forceImageScaling](v6, "forceImageScaling")))
                    {
                      v26 = [(WFParameterValuePickerTableViewCellConfiguration *)self parentViewController];
                      v24 = [(WFParameterValuePickerTableViewCellConfiguration *)v6 parentViewController];
                      v19 = v26 == v24;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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