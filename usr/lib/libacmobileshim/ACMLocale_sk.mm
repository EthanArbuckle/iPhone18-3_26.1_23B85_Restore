@interface ACMLocale_sk
- (ACMLocale_sk)init;
- (void)dealloc;
@end

@implementation ACMLocale_sk

- (ACMLocale_sk)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_sk;
  v2 = [(ACMLocale_sk *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Pole Heslo je prázdne",  @"Zrušiť",  @"Prihláste sa",  @"Odoslať",  @"OK",  @"Neplatné volanie metódy. Dialógové okno prihlásenia AppleConnect nie je možné skryť.",  @"Neplatné parametre. Niektoré vstupné parametre sú nastavené nesprávne.",  @"Heslo Apple ID",  @"Vyzerá to, že ste offline. Pripojte sa k internetu a skúste to znova.",  @"Vaše Apple ID alebo heslo bolo nesprávne zadané.",  @"Vyžaduje sa dvojfázové overenie, ale nie je povolená interakcia používateľa.",  @"DÔVERYHODNÉ ZARIADENIA",  @"Dôveryhodné zariadenia môžete spravovať na stránke %@ z počítača Mac alebo PC.",  @"Vytvorenie platného lístka služby zlyhalo",  @"Odpoveď na dvojfázové overenie je prázdna.",  @"Odoslať SMS na telefónne číslo",  @"Do nižšie vybraného zariadenia bude odoslaný dočasný kód, ktorý môžete použiť na overenie svojej identity.",  @"Nedostatok pamäte",  @"janko.hrasko",  @"Odoslať kód na %@",  @"Neočakávané volanie metódy",  @"Príliš veľa neúspešných pokusov o overenie kódu. Pošlite nový kód na iné zariadenie alebo to skúste znovu neskôr.",  @"Neplatný token údajov. Token údajov na overenie je neplatný.",  @"Overenie bolo zrušené aplikáciou.",  @"Nesprávna dĺžka hesla",  @"Overovací kód",  @"Toto Apple ID bolo z bezpečnostných dôvodov deaktivované. Svoje heslo môžete obnoviť na adrese %@.",  @"Nemôžete prijímať správy na žiadne svoje zariadenia?",  @"Odoslať nový kód",  @"Vyskytla sa chyba. Ďakujeme za vašu trpezlivosť, skúste to znova neskôr.",  @"Povinné",  @"Nie je možné nájsť túto osobu.",  @"Zadajte overovací kód",  @"Zariadenie sa nenašlo.",  @"Apple ID",  @"Pre tento účet Apple ID je aktivované dvojfázové overenie.",  @"Nie je možné overiť token.",  @"Heslo",  @"Z dôvodu ochrany bezpečnosti je čas obnoviť vaše heslo. Je to jednoduché - stačí prejsť na adresu %@.",  @"Aktuálny čas tohto zariadenia vyzerá byť nesprávny. Môžete to napraviť v ponuke Nastavenia > Všeobecné > Dátum a čas. Potom to skúste znova.",  @"Vytvorenie platného SSO tokenu zlyhalo",  @"Overovací kód, ktorý ste zadali, nie je platný.",  @"Pokračovať",  @"Overiť identitu",  @"Overenie bolo zrušené systémom.",  @"Kód vygenerujete pomocou %@",  @"Zoznam zariadení je prázdny.",
           @"Neplatná relácia.",
           @"Odpoveď servera je chybná",
           @"Odoslali ste priveľa kódov na overenie svojho telefónneho čísla. Skúste to znova neskôr.",
           @"telefónne číslo končiace číslicami %@",
           @"Bol zadaný nesprávny názov účtu alebo heslo.",
           @"Pole Apple ID je prázdne",
           @"iForgot…",
           @"Je nám to ľúto, ale už ste urobili priveľa neúspešných pokusov o overenie vašej identity. Z bezpečnostných dôvodov nebude možné najbližších 8 hodín urobiť zmeny na vašom účte bez Kľúča obnovy.",
           @"K dispozícii nie sú žiadne informácie o zariadení.",
           @"Zabudli ste svoje ID alebo heslo?",
           @"Toto Apple ID bolo z bezpečnostných dôvodov deaktivované. Svoje heslo môžete obnoviť na adrese %@.",
           @"Overiť  totožnosť %@ pomocou Touch ID",
           @"Overenie bolo zrušené používateľom.",
           @"Číslo končiace na %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_sk;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end