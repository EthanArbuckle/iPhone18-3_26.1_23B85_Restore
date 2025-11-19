@interface ACMLocale_ru
- (ACMLocale_ru)init;
- (void)dealloc;
@end

@implementation ACMLocale_ru

- (ACMLocale_ru)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_ru;
  v2 = [(ACMLocale_ru *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Поле пароля не заполнено",  @"Отменить",  @"Войти",  @"Отправить",  @"ОК",  @"Неверный вызов метода. Окно входа в Apple Connect невозможно скрыть.",  @"Неверные параметры. Некоторые из входных параметров заданы неверно.",  @"Пароль для Apple ID",  @"Вы не в сети. Подключитесь к Интернету и повторите попытку.",  @"Введен неверный Apple ID или пароль.",  @"Требуется двухэтапная проверка без участия пользователя.",  @"ПРОВЕРЕННЫЕ УСТРОЙСТВА",  @"Для управления проверенными устройствами зайдите на %@ с Mac или PC.",  @"Не удалось создать действительную сервисную заявку",  @"Пустой отклик двухэтажной проверки.",  @"SMS-сообщение на номер телефона",  @"Временный код для подтверждения личности будет выслан на устройство, выбранное из списка ниже.",  @"Нет памяти",  @"john.appleseed",  @"Отправить код на %@",  @"Непредвиденный вызов метода",  @"Слишком много неудачных попыток подтвердить код. Отправьте новый код на другое устройство или повторите попытку позже.",  @"Неверный токен с данными. Токен с данными на проверку недействителен.",  @"Приложение отменило аутентификацию",  @"Неверная длина пароля",  @"Код проверки",  @"Этот Apple ID заблокирован в целях безопасности. Вы можете сбросить пароль на %@.",  @"Не удается получить сообщения ни на одно устройство?",  @"Отправить новый код",  @"Произошла ошибка. Повторите попытку позже. Благодарим Вас за понимание.",  @"Обязательно",  @"Не удается найти пользователя.",  @"Введите код проверки",  @"Устройство не найдено.",  @"Apple ID",  @"Для этого Apple ID активирована двухэтапная проверка.",  @"Не удается подтвердить токен.",  @"Пароль",  @"В целях безопасности необходимо сборосить пароль. Для этого просто перейдите на %@.",  @"Текущее время на устройстве задано неверно. Измените время в меню «Настройки» > «Основные» > «Дата и время» и повторите попытку.",  @"Не удалось создать действительный SSO-токен",  @"Введен неверный код проверки.",  @"Продолжить",  @"Подтверждение личности",  @"Система отменила аутентификацию",  @"Генерировать код с помощью %@",  @"Список устройств пуст.",
           @"Неверная сессия.",
           @"Ответ сервера искажен",
           @"Отправлено слишком много кодов для подтверждения номера телефона. Повторите попытку позже.",
           @"номер телефона, заканчивающийся на %@",
           @"Неверное имя учетной записи или пароль.",
           @"Поле Apple ID не заполнено",
           @"iForgot…",
           @"К сожалению, Вы сделали слишком много неудачных попыток подтвердить свою личность. По соображениям безопасности Вы не сможете вносить изменения в учетную запись в течение следующих восьми часов без ключа восстановления.",
           @"Информация об устройстве недоступна.",
           @"Забыли Ваш ID или пароль?",
           @"Этот Apple ID заблокирован в целях безопасности. Вы можете сбросить пароль на %@.",
           @"Пройдите аутентификацию как %@, используя Touch ID",
           @"Пользователь отменил аутентификацию",
           @"Номер, заканчивающийся на %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_ru;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end