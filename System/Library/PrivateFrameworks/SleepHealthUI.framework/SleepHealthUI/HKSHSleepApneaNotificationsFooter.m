@interface HKSHSleepApneaNotificationsFooter
- (HKSHSleepApneaNotificationsFooter)initWithText:(id)a3 link:(id)a4 url:(id)a5;
@end

@implementation HKSHSleepApneaNotificationsFooter

- (HKSHSleepApneaNotificationsFooter)initWithText:(id)a3 link:(id)a4 url:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HKSHSleepApneaNotificationsFooter;
  v11 = [(HKSHSleepApneaNotificationsFooter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HKSHSleepApneaNotificationsFooter *)v11 setFooterText:v8];
    [(HKSHSleepApneaNotificationsFooter *)v12 setFooterLink:v9];
    [(HKSHSleepApneaNotificationsFooter *)v12 setLinkURL:v10];
  }

  return v12;
}

@end