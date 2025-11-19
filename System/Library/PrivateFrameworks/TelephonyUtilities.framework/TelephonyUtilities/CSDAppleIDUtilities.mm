@interface CSDAppleIDUtilities
- (BOOL)isSignedIntoiCloud;
- (CSDAppleIDUtilities)init;
@end

@implementation CSDAppleIDUtilities

- (BOOL)isSignedIntoiCloud
{
  v2 = [(CSDAppleIDUtilities *)self accountStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 username];
  v5 = [v4 length] != 0;

  return v5;
}

- (CSDAppleIDUtilities)init
{
  v6.receiver = self;
  v6.super_class = CSDAppleIDUtilities;
  v2 = [(CSDAppleIDUtilities *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ACAccountStore);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

@end