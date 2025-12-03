@interface HKSHSleepApneaNotificationsFooter
- (HKSHSleepApneaNotificationsFooter)initWithText:(id)text link:(id)link url:(id)url;
@end

@implementation HKSHSleepApneaNotificationsFooter

- (HKSHSleepApneaNotificationsFooter)initWithText:(id)text link:(id)link url:(id)url
{
  textCopy = text;
  linkCopy = link;
  urlCopy = url;
  v14.receiver = self;
  v14.super_class = HKSHSleepApneaNotificationsFooter;
  v11 = [(HKSHSleepApneaNotificationsFooter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HKSHSleepApneaNotificationsFooter *)v11 setFooterText:textCopy];
    [(HKSHSleepApneaNotificationsFooter *)v12 setFooterLink:linkCopy];
    [(HKSHSleepApneaNotificationsFooter *)v12 setLinkURL:urlCopy];
  }

  return v12;
}

@end