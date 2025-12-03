@interface UITableViewCell(RUIAdditions)
- (id)ruiDetailTextLabel;
- (id)ruiEditableTextField;
- (id)ruiImageView;
- (id)ruiTextLabel;
- (id)ruiValueLabel;
@end

@implementation UITableViewCell(RUIAdditions)

- (id)ruiTextLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    customLinkTextLabel = [self customLinkTextLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_2:
      customLinkTextLabel = [self customTextLabel];
      goto LABEL_7;
    }

    customLinkTextLabel = [self textLabel];
  }

LABEL_7:

  return customLinkTextLabel;
}

- (id)ruiDetailTextLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    customDetailTextLabel = [self customDetailTextLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      customDetailTextLabel = [self effectiveDetailTextLabel];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self customLinkDetailTextLabel];
      }

      else
      {
        [self detailTextLabel];
      }
      customDetailTextLabel = ;
    }
  }

  return customDetailTextLabel;
}

- (id)ruiValueLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    customValueLabel = [self customValueLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      customValueLabel = [self effectiveValueTextLabel];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        customValueLabel = [self customLinkSubLabel];
      }

      else
      {
        customValueLabel = 0;
      }
    }
  }

  return customValueLabel;
}

- (id)ruiEditableTextField
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self customEditableTextField];
  }

  else
  {
    [self editableTextField];
  }
  v2 = ;

  return v2;
}

- (id)ruiImageView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    customLinkImageView = [self customLinkImageView];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_2:
      customLinkImageView = [self customImageView];
      goto LABEL_7;
    }

    customLinkImageView = [self imageView];
  }

LABEL_7:

  return customLinkImageView;
}

@end