@interface NCNotificationRequest(CarPlay)
- (id)carPlayAttributedMessage;
- (id)carPlayMessage;
- (id)carPlaySubTitle;
- (id)carPlayTitle;
@end

@implementation NCNotificationRequest(CarPlay)

- (id)carPlayTitle
{
  content = [self content];
  title = [content title];

  if (![title length])
  {
    content2 = [self content];
    customHeader = [content2 customHeader];
    v6 = customHeader;
    if (customHeader)
    {
      defaultHeader = customHeader;
    }

    else
    {
      content3 = [self content];
      defaultHeader = [content3 defaultHeader];

      title = content3;
    }

    title = defaultHeader;
  }

  return title;
}

- (id)carPlaySubTitle
{
  content = [self content];
  subtitle = [content subtitle];

  if (![subtitle length])
  {
    content2 = [self content];
    title = [content2 title];
    v6 = [title length];

    if (v6)
    {
      content3 = [self content];
      customHeader = [content3 customHeader];
      v9 = customHeader;
      if (customHeader)
      {
        defaultHeader = customHeader;
      }

      else
      {
        content4 = [self content];
        defaultHeader = [content4 defaultHeader];

        subtitle = content4;
      }

      subtitle = defaultHeader;
    }
  }

  return subtitle;
}

- (id)carPlayMessage
{
  carPlayAttributedMessage = [self carPlayAttributedMessage];
  string = [carPlayAttributedMessage string];

  return string;
}

- (id)carPlayAttributedMessage
{
  content = [self content];
  attributedMessage = [content attributedMessage];

  return attributedMessage;
}

@end