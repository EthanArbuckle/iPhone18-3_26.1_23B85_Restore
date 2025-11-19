@interface ACMLocale_uk
- (ACMLocale_uk)init;
- (void)dealloc;
@end

@implementation ACMLocale_uk

- (ACMLocale_uk)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_uk;
  v2 = [(ACMLocale_uk *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Поле пароля порожнє",  @"Скасувати",  @"Увійдіть",  @"Надіслати",  @"ОК",  @"Неправильний виклик методу. Неможливо приховати вікно входу до AppleConnect.",  @"Недійсні параметри. Деякі вхідні параметри встановлено неправильно.",  @"Пароль Apple ID",  @"Ви офлайн. Під’єднайтеся до Інтернету та повторіть спробу.",  @"Ваш Apple ID або пароль було введено неправильно.",  @"Потрібне двоетапне підтвердження без взаємодії з користувачем.",  @"ДОВІРЕНІ ПРИСТРОЇ",  @"Для управління довіреними пристроями відвідайте %@ з Mac або ПК.",  @"Не вдалося створити дійсну сервісну заявку",  @"Відповідь двоетапного підтвердження порожня.",  @"Надіслати SMS на номер телефону",  @"На пристрій обраний нижче буде надіслано тимчасовий код, потрібний для підтвердження особистості.",  @"Недостатньо пам’яті",  @"stepan.yabluchko",  @"Надіслати код на %@",  @"Неочікуваний виклик методу",  @"Забагато спроб підтвердити код. Надішліть новий код на інший пристрій або повторіть спробу пізніше.",  @"Недійсний токен даних. Токен даних для перевірки недійсний.",  @"Автентифікацію скасовано програмою",  @"Неприпустима довжина паролю",  @"Код перевірки",  @"Обліковий запис заблоковано з міркувань безпеки. Ви можете скинути пароль на %@.",  @"Не маєте доступу до пристроїв?",  @"Надіслати новий код",  @"Сталася помилка. Будь ласка, повторіть спробу пізніше.",  @"Обов'язково",  @"Не вдалося знайти користувача.",  @"Введіть код перевірки",  @"Пристрій не знайдено.",  @"Apple ID",  @"Для Apple ID увімкнено двоетапне підтвердження. ",  @"Не вдалося перевірити токен.",  @"Пароль",  @"З міркувань безпеки слід скинути пароль. Це дуже легко: просто перейдіть на %@.",  @"Схоже, поточний час на цьому пристрої неправильний. Щоб виправити це, перейдіть у Параметри > Загальні > Дата і час і повторіть спробу.",  @"Не вдалося створити дійсний SSO-токен",  @"Вказано невірний код перевірки.",  @"Продовжити",  @"Підтвердити особистість",  @"Автентифікацію скасовано системою",  @"Створити код за допомогою %@",  @"Список пристроїв порожній.",
           @"Недійсний сеанс.",
           @"Відповідь сервера деформована",
           @"Ви надіслали забагато кодів, щоб підтвердити номер телефону. Будь ласка, повторіть спробу пізніше.",
           @"номер телефону, що закінчується на %@",
           @"Невірний логін або пароль.",
           @"Поле Apple ID порожнє",
           @"iForgot…",
           @"Вибачте, забагато невдалих спроб підтвердити особистість. Ви не зможете вносити зміни до облікового запису протягом наступних восьми годин без використання ключа відновлення, з міркувань безпеки.",
           @"Інформація про пристрій відсутня.",
           @"Забули ID або пароль?",
           @"Apple ID заблоковано з міркувань безпеки. Ви можете скинути пароль на %@.",
           @"Увійдіть як %@ за допомогою Touch ID",
           @"Автентифікацію скасовано користувачем",
           @"Номер, що закінчується на %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_uk;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end