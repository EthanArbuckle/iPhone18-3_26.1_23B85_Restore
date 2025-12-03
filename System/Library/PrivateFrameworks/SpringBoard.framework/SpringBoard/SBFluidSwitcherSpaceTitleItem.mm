@interface SBFluidSwitcherSpaceTitleItem
- (BOOL)isEqual:(id)equal;
- (SBFluidSwitcherSpaceTitleItem)initWithDisplayItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBFluidSwitcherSpaceTitleItem

- (SBFluidSwitcherSpaceTitleItem)initWithDisplayItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SBFluidSwitcherSpaceTitleItem;
  v7 = [(SBFluidSwitcherSpaceTitleItem *)&v9 init];
  if (v7)
  {
    if (!itemCopy)
    {
      [(SBFluidSwitcherSpaceTitleItem *)a2 initWithDisplayItem:v7];
    }

    objc_storeStrong(&v7->_displayItem, item);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithDisplayItem:", self->_displayItem}];
  if (v4)
  {
    v5 = [(UIImage *)self->_image copy];
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;

    objc_storeStrong((v4 + 48), self->_imageView);
    v7 = [(SBHIconImageAppearance *)self->_imageAppearance copy];
    v8 = *(v4 + 56);
    *(v4 + 56) = v7;

    v9 = [(NSString *)self->_iconIdentifier copy];
    v10 = *(v4 + 64);
    *(v4 + 64) = v9;

    v11 = [(NSString *)self->_subtitleText copy];
    v12 = *(v4 + 32);
    *(v4 + 32) = v11;

    v13 = [(NSString *)self->_titleText copy];
    v14 = *(v4 + 24);
    *(v4 + 24) = v13;

    v15 = [(UIColor *)self->_titleTextColor copy];
    v16 = *(v4 + 72);
    *(v4 + 72) = v15;

    *(v4 + 80) = self->_subtitleInterfaceStyle;
    *(v4 + 8) = self->_showsMultiWindowIndicator;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = SBSafeCast(v5, equalCopy);
    v7 = v6;
    if (v6)
    {
      displayItem = [v6 displayItem];
      if (BSEqualObjects())
      {
        image = [v7 image];
        if ((image != 0) == (self->_image == 0))
        {
          v15 = 0;
        }

        else
        {
          imageView = [v7 imageView];
          if ((imageView != 0) == (self->_imageView == 0))
          {
            v15 = 0;
          }

          else
          {
            iconIdentifier = [v7 iconIdentifier];
            if (BSEqualObjects())
            {
              imageAppearance = [v7 imageAppearance];
              if (BSEqualObjects())
              {
                titleText = [v7 titleText];
                if (BSEqualStrings())
                {
                  subtitleText = [(SBFluidSwitcherSpaceTitleItem *)equalCopy subtitleText];
                  if (BSEqualStrings())
                  {
                    titleTextColor = [(SBFluidSwitcherSpaceTitleItem *)equalCopy titleTextColor];
                    v15 = BSEqualObjects() && [v7 subtitleInterfaceStyle] == self->_subtitleInterfaceStyle && self->_showsMultiWindowIndicator == objc_msgSend(v7, "showsMultiWindowIndicator");
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                else
                {
                  v15 = 0;
                }
              }

              else
              {
                v15 = 0;
              }
            }

            else
            {
              v15 = 0;
            }
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(SBDisplayItem *)self->_displayItem hash];
  v4 = [(UIImage *)self->_image hash]+ v3;
  v5 = [(UIView *)self->_imageView hash];
  v6 = v4 + v5 + [(NSString *)self->_iconIdentifier hash];
  v7 = [(SBHIconImageAppearance *)self->_imageAppearance hash];
  v8 = v7 + [(NSString *)self->_titleText hash];
  v9 = v6 + v8 + [(NSString *)self->_subtitleText hash];
  return self->_showsMultiWindowIndicator + [(UIColor *)self->_titleTextColor hash]+ self->_subtitleInterfaceStyle + v9 + 67;
}

- (void)initWithDisplayItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherSpaceTitleItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end