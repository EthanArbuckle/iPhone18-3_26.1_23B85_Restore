@interface j7CSI6j8vNYi4bMa
+ (id)sharedInstance;
- (id)email;
- (j7CSI6j8vNYi4bMa)init;
@end

@implementation j7CSI6j8vNYi4bMa

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F2E8;
  block[3] = &unk_10068EEE8;
  block[4] = self;
  if (qword_1006D7CB8 != -1)
  {
    dispatch_once(&qword_1006D7CB8, block);
  }

  v2 = qword_1006D7CB0;

  return v2;
}

- (j7CSI6j8vNYi4bMa)init
{
  v3.receiver = self;
  v3.super_class = j7CSI6j8vNYi4bMa;
  return [(j7CSI6j8vNYi4bMa *)&v3 init];
}

- (id)email
{
  v2 = objc_alloc_init(ACAccountStore);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  aa_primaryEmail = [aa_primaryAppleAccount aa_primaryEmail];

  return aa_primaryEmail;
}

@end