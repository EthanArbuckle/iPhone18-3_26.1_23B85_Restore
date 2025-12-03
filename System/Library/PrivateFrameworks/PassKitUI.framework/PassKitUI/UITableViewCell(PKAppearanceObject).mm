@interface UITableViewCell(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UITableViewCell(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v11 = a3;
  foregroundColor = [v11 foregroundColor];
  [self setBackgroundColor:foregroundColor];

  textLabel = [self textLabel];
  PKAppearanceApplyToContainer(v11, textLabel);

  textLabel2 = [self textLabel];
  textColor = [v11 textColor];
  [textLabel2 setTextColor:textColor];

  if ([self style] == 1000)
  {
    editableTextField = [self editableTextField];
    PKAppearanceApplyToContainer(v11, editableTextField);
  }

  else
  {
    detailTextLabel = [self detailTextLabel];
    PKAppearanceApplyToContainer(v11, detailTextLabel);

    editableTextField = [self detailTextLabel];
    altTextColor = [v11 altTextColor];
    [editableTextField setTextColor:altTextColor];
  }
}

@end