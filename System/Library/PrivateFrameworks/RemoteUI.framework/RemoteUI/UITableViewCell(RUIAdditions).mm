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
    v2 = [a1 customLinkTextLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_2:
      v2 = [a1 customTextLabel];
      goto LABEL_7;
    }

    v2 = [a1 textLabel];
  }

LABEL_7:

  return v2;
}

- (id)ruiDetailTextLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 customDetailTextLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [a1 effectiveDetailTextLabel];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 customLinkDetailTextLabel];
      }

      else
      {
        [a1 detailTextLabel];
      }
      v2 = ;
    }
  }

  return v2;
}

- (id)ruiValueLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 customValueLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [a1 effectiveValueTextLabel];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = [a1 customLinkSubLabel];
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

- (id)ruiEditableTextField
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 customEditableTextField];
  }

  else
  {
    [a1 editableTextField];
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
    v2 = [a1 customLinkImageView];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_2:
      v2 = [a1 customImageView];
      goto LABEL_7;
    }

    v2 = [a1 imageView];
  }

LABEL_7:

  return v2;
}

@end