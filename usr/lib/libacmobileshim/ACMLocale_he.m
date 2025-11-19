@interface ACMLocale_he
- (ACMLocale_he)init;
- (void)dealloc;
@end

@implementation ACMLocale_he

- (ACMLocale_he)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_he;
  v2 = [(ACMLocale_he *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"שדה הסיסמה ריק",  @"ביטול",  @"התחבר",  @"שליחה",  @"אישור",  @"קריאת שיטה שגויה. לא ניתן להסתיר את תיבת ההתחברות של AppleConnect.",  @"פרמטרים לא חוקיים. כמה מפרמטרי הקלט הוגדרו בצורה שגויה.",  @"סיסמת Apple ID",  @"נראה כי את/ה לא מחובר/ת לאינטרנט. התחבר/י לאינטרנט ונסה/י שוב.",  @"ה-Apple ID או הסיסמה שהזנת שגויים.",  @"יש צורך באימות בשני צעדים, אך אינטאראקציית המשתמש אסורה.",  @"מכשירים מהימנים",  @"כדי לנהל את המכשירים המהימנים שלך, בקר/י ב-%@ מה-Mac או ה-PC.",  @"יצירת כרטיס שירות תקף נכשלה",  @"התגובה לאימות בשני צעדים ריקה.",  @"SMS למספר טלפון",  @"אל המכשיר שתבחר/י להלן יישלח קוד זמני, בו ניתן להשתמש על מנת לאמת את זהותך.",  @"הזיכרון אזל",  @"israel.israeli",  @"שלח קוד אל %@",  @"שיטת קריאה בלתי צפויה",  @"לא הצלחת לאשר את הקוד יותר מדי פעמים. נא לשלוח קוד חדש למכשיר אחר או לנסות שוב מאוחר יותר.",  @"אסימון נתונים לא תקף. אסימון הנתונים לאימות אינו תקף.",  @"האימות בוטל על ידי יישום",  @"אורך קוד גישה אינו תקף",  @"קוד אימות",  @"חשבון זה הושבת מטעמי אבטחה. באפשרותך לאפס את סיסמתך בכתובת %@.",  @"אין באפשרותך לקבל הודעות באף אחד מהמכשירים שלך?",  @"שליחת קוד חדש",  @"מצטערים, אירעה שגיאה. נסה/י שוב מאוחר יותר. תודה על סבלנותך. ",  @"חובה",  @"לא ניתן למצוא אדם זה.",  @"הזן/י קוד אימות",  @"מכשיר לא נמצא.",  @"Apple ID",  @"אימות בשני צעדים הופעל עבור Apple ID זה.",  @"לא ניתן לאמת את האסימון.",  @"סיסמה",  @"מטעמי אבטחה, הגיע הזמן לאפס את סיסמתך. פשוט בקר/י בכתובת %@.",  @"נראה כי השעה הנוכחית במכשיר זה לא מדויקת. כדי לתקן זאת, עבור/י אל ״הגדרות״ > ״כללי״ > ״תאריך ושעה״ ולאחר מכן נסה/י שוב.",  @"יצירת אסימון SSO תקף נכשלה",  @"קוד האימות שהזנת אינו תקף.",  @"המשך/י",  @"אמת/י את זהותך",  @"האימות בוטל על ידי מערכת",  @"צור סיסמה באמצעות %@",  @"רשימת המכשירים ריקה.",
           @"התקשרות לא תקפה.",
           @"תגובת השרת פגומה",
           @"שלחת יותר מדי קודים לאימות מספר הטלפון שלך. נסה/י שוב מאוחר יותר.",
           @"מספר טלפון המסתיים ב-%@",
           @"שם החשבון או הסיסמה שלך הוזנו באופן שגוי.",
           @"שדה ה-Apple ID ריק",
           @"iForgot…",
           @"מצטערים, אבל ביצעת יותר מדי ניסיונות סרק לאימות זהותך. משיקולי אבטחה, לא תוכל/י לבצע שינויים בחשבונך במשך שמונה השעות הבאות ללא מפתח השחזור שלך.",
           @"אין פרטי מכשיר זמינים.",
           @"שכחת את ה-ID או סיסמה שלך?",
           @"\u200FApple ID זה הושבת מטעמי אבטחה. באפשרותך לאפס את סיסמתך בכתובת %@.",
           @"אמת/י שהינך %@ באמצעות Touch ID",
           @"האימות בוטל על ידי משתמש",
           @"מספר המסתיים ב-%@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_he;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end