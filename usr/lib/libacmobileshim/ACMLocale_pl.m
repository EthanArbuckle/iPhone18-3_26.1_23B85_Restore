@interface ACMLocale_pl
- (ACMLocale_pl)init;
- (void)dealloc;
@end

@implementation ACMLocale_pl

- (ACMLocale_pl)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_pl;
  v2 = [(ACMLocale_pl *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Pole hasła jest puste.",  @"Anuluj",  @"Zaloguj się",  @"Wyślij",  @"OK",  @"Nieprawidłowe wywołanie metody. Nie można ukryć okna dialogowego logowania AppleConnect.",  @"Błędne parametry. Niektóre parametry wejściowe ustawiono nieprawidłowo.",  @"Hasło Apple ID",  @"Prawdopodobnie jesteś w trybie offline. Połącz się z Internetem i spróbuj ponownie.",  @"Wprowadzono nieprawidłowy Apple ID lub błędne hasło.",  @"Wymagana jest dwustopniowa weryfikacja, ale interakcje z użytkownikiem nie są dozwolone.",  @"ZAUFANE URZĄDZENIA",  @"Aby zarządzać zaufanymi urządzeniami, odwiedź stronę %@ na komputerze Mac lub PC.",  @"Nie udało się utworzyć prawidłowego biletu na usługę.",  @"Pole odpowiedzi dotyczącej dwustopniowej weryfikacji jest puste.",  @"Wyślij wiadomość SMS na numer telefonu",  @"Na wybrane przez Ciebie urządzenie zostanie wysłany tymczasowy kod, którego możesz użyć, aby potwierdzić swoją tożsamość.",  @"Brak pamięci",  @"jan.kowalski",  @"Wyślij kod na %@",  @"Nieoczekiwane wywołanie metody",  @"Podjęto zbyt wiele nieudanych prób weryfikacji kodu. Wyślij nowy kod na inne urządzenie lub spróbuj ponownie później.",  @"Błędny token danych. Token danych do weryfikacji jest nieprawidłowy.",  @"Uwierzytelnienie zostało anulowane przez aplikację.",  @"Nieprawidłowa długość kodu",  @"Kod weryfikacyjny",  @"To konto zostało wyłączone ze względów bezpieczeństwa. Możesz wyzerować hasło na stronie %@.",  @"Nie otrzymujesz wiadomości na żadne ze swoich urządzeń?",  @"Wyślij nowy kod",  @"A survenit o eroare. Vă mulțumim pentru răbdare și vă rugăm să încercați mai târziu.",  @"Wymagane",  @"Nie można znaleźć tej osoby.",  @"Wprowadź kod weryfikacyjny",  @"Nie znaleziono urządzenia.",  @"Apple ID",  @"Dla tego Apple ID włączono dwustopniową weryfikację.",  @"Nie można zweryfikować tokenu.",  @"Hasło",  @"Aby chronić bezpieczeństwo, pora wyzerować hasło. To proste,  wystarczy odwiedzić stronę %@.",  @"Aktualna godzina na tym urządzeniu prawdopodobnie jest nieprawidłowa. Możesz ją poprawić, przechodząc do Ustawienia > Ogólne > Data i czas, a następnie spróbować ponownie.",  @"Nie udało się utworzyć prawidłowego tokenu SSO.",  @"Podany kod weryfikacyjny jest nieprawidłowy.",  @"Kontynuuj",  @"Potwierdź tożsamość",  @"Uwierzytelnienie zostało anulowane przez system.",  @"Wygeneruj kod przy użyciu %@",  @"Lista urządzeń jest pusta.",
           @"Sesja nieprawidłowa.",
           @"Odpowiedź z serwera jest zniekształcona.",
           @"Wysłano zbyt wiele kodów służących do weryfikacji numeru telefonu. Spróbuj ponownie później.",
           @"numer telefonu kończący się na %@",
           @"Nieprawidłowo wpisano nazwę konta lub hasło.",
           @"Pole Apple ID jest puste.",
           @"iForgot…",
           @"Niestety, podjęto zbyt wiele nieudanych prób potwierdzenia tożsamości. Ze względów bezpieczeństwa bez klucza odzyskiwania nie będzie można dokonywać zmian na koncie przez następne osiem godzin.",
           @"Brak dostępnych informacji o urządzeniu.",
           @"Nie pamiętasz ID lub hasła?",
           @"Ten Apple ID został wyłączony ze względów bezpieczeństwa. Możesz wyzerować hasło na stronie %@.",
           @"Uwierzytelnij jako %@ przy użyciu Touch ID.",
           @"Uwierzytelnienie zostało anulowane przez użytkownika.",
           @"Numer zakończony na %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_pl;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end