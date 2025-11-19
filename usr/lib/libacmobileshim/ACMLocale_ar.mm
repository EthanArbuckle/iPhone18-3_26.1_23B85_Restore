@interface ACMLocale_ar
- (ACMLocale_ar)init;
- (void)dealloc;
@end

@implementation ACMLocale_ar

- (ACMLocale_ar)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_ar;
  v2 = [(ACMLocale_ar *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"حقل كلمة السر فارغ",  @"إلغاء",  @"تسجيل الدخول",  @"إرسال",  @"موافق",  @"عملية الإتصال بالوسيلة غير مناسبة. لا يمكن إخفاء مربع حوار تسجيل الدخول إلى AppleConnect.",  @"معلمات غير صالحة. تم تعيين بعض معلمات الإدخال بشكل غير صحيح.",  @"كلمة سر Apple ID",  @"يبدو أنك غير متصل. يُرجى الاتصال بالإنترنت والمحاولة مرة أخرى.",  @"تم إدخال Apple ID أو كلمة السر بشكل غير صحيح.",  @"إن عملية التحقق المكونة من خطوتين مطلوبة، ولكن تفاعل المستخدم غير مسموح به.",  @"أجهزة موثوق بها",  @"لإدارة أجهزتك الموثوق بها يرجى زيارة %@ من جهاز Mac أو كمبيوتر شخصي.",  @"فشل إنشاء تذكرة خدمة صالحة",  @"استجابة عملية التحقق المكونة من خطوتين فارغة.",  @"رسالة SMS إلى رقم الهاتف",  @"سيتم إرسال رمز مؤقت إلى الجهاز الذي قمت بتحديده أدناه حتى يمكنك استخدامه لتأكيد هويتك.",  @"نفدت الذاكرة",  @"سالم.سليم",  @"إرسال رمز إلى %@",  @"استدعاء أسلوب غير متوقع",  @"فشلت في التحقق من الرمز لعدد كبير جدًا من المرات. يرجى إرسال رمزًا جديدًا إلى جهاز مختلف أو إعادة المحاولة في وقت لاحق.",  @"رمز بيانات غير صالح. رمز البيانات للتحقق غير صالح.",  @"تم إلغاء المصادقة بواسطة التطبيق",  @"طول رمز الدخول غير صالح",  @"رمز التحقق",  @"تم تعطيل اسم الحساب هذا لأسباب أمنية. يُمكنك إعادة تعيين كلمة السر الخاصة بك على %@.",  @"هل تعذر عليك استلام رسائل على أي من أجهزتك؟",  @"أرسل رمزًا جديدًا",  @"عذرًا، حدث خطأ. شُكرًا لصبرك. يرجى المحاولة مرة أخرى لاحقًا.",  @"مطلوب",  @"تعذر العثور على هذا الشخص.",  @"إدخال رمز التحقق",  @"لم يتم العثور على الجهاز.",  @"Apple ID",  @"تم تمكين عملية التحقق المكونة من خطوتين للـ Apple ID هذا.",  @"تعذر التحقق من الرمز.",  @"كلمة السر",  @"لحماية أمانك، فقد حان الوقت لإعادة تعيين كلمة السر الخاصة بك. الأمر سهل، فقط انتقل إلى %@.",  @"يبدو أن الوقت الحالي على هذا الجهاز غير صحيح. يمكنك إصلاح الأمر عن طريق الإعدادات > عام > التاريخ والوقت، ثم حاول مرة أخرى.",  @"فشل إنشاء رمز SSO صالح",  @"رمز التحقق الذي أدخلته غير صالح.",  @"متابعة",  @"التحقق من الهوية",  @"تم إلغاء المصادقة بواسطة النظام",  @"إنشاء رمز بواسطة %@",  @"قائمة الأجهزة فارغة.",
           @"جلسة غير صالحة.",
           @"استجابة الخادم مكونة بشكل غير صحيح",
           @"لقد أرسلت عددًا كبيرًا جدًا من الرموز للتحقق من رقم الهاتف الخاص بك. يرجى إعادة المحاولة لاحقًا.",
           @"رقم الهاتف الذي ينتهي بـ %@",
           @"تم إدخال اسم الحساب أو كلمة السر بشكل غير صحيح.",
           @"حقل الـ Apple ID فارغ",
           @"iForgot…",
           @"عذرًا، ولكنك قمت بالكثير من المحاولات الفاشلة للتحقق من هويتك. لأسباب أمنية، لن تكون قادرًا على إجراء تغييرات على حسابك للساعات الثماني المقبلة من دون مفتاح الاسترداد.",
           @"لا تتوفر معلومات عن الجهاز.",
           @"هل نسيت المعرف أو كلمة السر الخاصة بك؟",
           @"تم تعطيل الـ Apple ID هذا لأسباب أمنية. يُمكنك إعادة تعيين كلمة السر الخاصة بك على %@.",
           @"المصادقة كـ %@ باستخدام Touch ID",
           @"تم إلغاء المصادقة بواسطة المستخدم",
           @"رقم ينتهي بـ %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_ar;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end