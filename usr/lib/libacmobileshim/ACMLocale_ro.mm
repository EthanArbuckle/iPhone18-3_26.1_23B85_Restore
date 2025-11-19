@interface ACMLocale_ro
- (ACMLocale_ro)init;
- (void)dealloc;
@end

@implementation ACMLocale_ro

- (ACMLocale_ro)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_ro;
  v2 = [(ACMLocale_ro *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Câmpul Parolă este necompletat",  @"Anulați",  @"Autentificaţi-vă",  @"Trimiteți",  @"OK",  @"Utilizare incorectă a metodei. Caseta de dialog pentru autentificare AppleConnect nu poate fi ascunsă.",  @"Parametri nevalizi. Unii dintre parametrii de intrare sunt configurați incorect.",  @"Parolă ID Apple",  @"Se pare că sunteți offline. Conectați-vă la Internet și încercați din nou.",  @"ID-ul Apple sau parola a fost introdusă incorect.",  @"Este necesară confirmarea în doi pași, dar nu este permisă interacțiunea cu utilizatorul.",  @"DISPOZITIVE AUTORIZATE",  @"Pentru a vă gestiona dispozitivele autorizate, vizitați %@ pe un Mac sau PC.",  @"Crearea unei cereri de asistență a eșuat",  @"Niciun răspuns pentru confirmarea în doi pași.",  @"SMS la un număr de telefon",  @"Dispozitivul pe care îl selectați mai jos va primi un cod temporar pe care îl veți putea utiliza la confirmarea identității.",  @"Memorie insuficientă",  @"ion.merisor",  @"Trimiteți codul la %@",  @"Metodă invocată neașteptată",  @"Nu ați reușit să confirmați codul de prea multe ori. Trimiteți un cod nou pe un alt dispozitiv sau încercați mai târziu.",  @"Token de date nevalid. Tokenul de date pentru verificare nu este valid.",  @"Autentificarea a fost anulată de aplicație",  @"Lungimea codului de acces este nevalidă.",  @"Cod de confirmare",  @"Acest cont a fost dezactivat din motive de securitate. Vă puteți reseta parola la %@.",  @"Nu puteți primi mesaje pe niciunul dintre dispozitivele dvs.?",  @"Trimiteți un nou cod",  @"Vyskytla sa chyba. Ďakujeme za vašu trpezlivosť, skúste to znova neskôr.",  @"Obligatoriu",  @"Această persoană nu poate fi găsită.",  @"Introduceți codul de verificare",  @"Dispozitivul nu poate fi găsit.",  @"ID Apple",  @"Confirmarea în doi pași este activată pentru acest ID Apple.",  @"Tokenul nu poate fi verificat.",  @"Parolă",  @"Pentru a vă proteja securitatea, resetați-vă parola accesând %@.",  @"Ora actuală de pe acest dispozitiv pare a fi incorectă. O puteți corecta, accesând Configurări > General > Data și ora, apoi încercați din nou.",  @"Crearea unui token SSO valid a eșuat",  @"Codul de confirmare pe care l-ați introdus nu este valid.",  @"Continuați",  @"Confirmați identitatea",  @"Autentificarea a fost anulată de sistem",  @"Generați codul cu %@",  @"Nu aveți nimic în lista de dispozitive.",
           @"Sesiune nevalidă.",
           @"Răspunsul primit de la server este formulat incorect",
           @"Ați trimis prea multe coduri pentru a vă confirma numărul de telefon. Încercați mai târziu.",
           @"numărul de telefon ce se termină în %@",
           @"Numele sau parola contului dvs. a fost introdusă incorect.",
           @"Câmpul ID Apple este necompletat",
           @"iForgot…",
           @"Ne pare rău, dar ați făcut prea multe încercări eșuate de a vă confirma identitatea. Din motive de securitate, nu veți putea face modificări în contul dvs. în următoarele opt ore fără Cheia de recuperare.",
           @"Informațiile dispozitivului nu sunt disponibile.",
           @"V-ați uitat ID-ul sau parola?",
           @"Acest ID Apple a fost dezactivat din motive de securitate. Vă puteți reseta parola la %@.",
           @"Autentificați-vă ca %@ cu Touch ID",
           @"Autentificarea a fost anulată de utilizator",
           @"Număr ce se termină în %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_ro;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end