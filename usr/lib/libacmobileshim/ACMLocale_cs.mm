@interface ACMLocale_cs
- (ACMLocale_cs)init;
- (void)dealloc;
@end

@implementation ACMLocale_cs

- (ACMLocale_cs)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_cs;
  v2 = [(ACMLocale_cs *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Pole Heslo je prázdné.",  @"Zrušit",  @"Přihlásit se",  @"Odeslat",  @"OK",  @"Neplatné volání metody. Přihlašovací okno AppleConnect nelze skrýt.",  @"Neplatné parametry. Některé vstupní parametry nejsou správně nastaveny.",  @"Heslo k účtu Apple ID",  @"Zdá se, že jste offline. Připojte se k internetu a zkuste to znovu.",  @"Nezadali jste správně své Apple ID nebo heslo.",  @"Je požadováno dvoufázové ověření, ale není povolena interakce uživatele.",  @"DŮVĚRYHODNÁ ZAŘÍZENÍ",  @"Důvěryhodná zařízení můžete spravovat na stránce %@ z počítače Mac nebo PC.",  @"Nepodařilo se vytvořit platný lístek pro službu.",  @"Nebyla zadána odpověď na dvoufázové ověření.",  @"SMS na telefonní číslo",  @"Do níže vybraného zařízení bude odeslán dočasný kód, který můžete použít k ověření své identity.",  @"Nedostatek paměti",  @"jan.novak",  @"Odeslat kód do: %@",  @"Neočekávané volání metody",  @"Bylo provedeno příliš mnoho neúspěšných pokusů o ověření kódu. Odešlete prosím kód na jiné zařízení nebo to zkuste znovu později.",  @"Neplatný datový token. Datový token k ověření není platný.",  @"Ověření bylo zrušeno aplikací.",  @"Neplatná délka přístupového kódu",  @"Ověřovací kód",  @"Toto Apple ID bylo z bezpečnostních důvodů deaktivováno. Heslo můžete obnovit na adrese %@.",  @"Nemůžete přijímat zprávy na žádné z vašich zařízení?",  @"Odeslat nový kód",  @"Vyskytla se chyba. Děkujeme za vaši trpělivost. Zkuste to znovu později.",  @"Povinné",  @"Tuto osobu nelze nalézt.",  @"Zadat ověřovací kód",  @"Zařízení nebylo nalezeno.",  @"Apple ID",  @"Pro toto Apple ID je aktivováno dvoufázové ověření.",  @"Nelze ověřit token.",  @"Heslo",  @"Z důvodu ochrany zabezpečení je nyní vhodné změnit heslo. Postup je snadný – stačí přejít na adresu %@.",  @"Aktuální čas na tomto zařízení pravděpodobně není správný. Opravu můžete provést v nabídce Nastavení > Obecné > Datum a čas. Poté to zkuste znovu.",  @"Nepodařilo se vytvořit platný SSO token.",  @"Zadaný ověřovací kód není platný.",  @"Pokračovat",  @"Ověřit identitu",  @"Ověření bylo zrušeno systémem.",  @"Generovat kód s %@",  @"Seznam zařízení je prázdný.",
           @"Neplatná relace.",
           @"Odpověď ze serveru je poškozená.",
           @"Odeslali jste příliš mnoho kódů pro ověření telefonního čísla. Zkuste to znovu později.",
           @"telefonní číslo končící na %@",
           @"Zadali jste nesprávný název účtu nebo heslo.",
           @"Pole Apple ID je prázdné.",
           @"iForgot…",
           @"Litujeme, ale provedli jste příliš mnoho neúspěšných pokusů o ověření své identity. Bez Klíče pro obnovení nebudete z bezpečnostních důvodů moci po následujících osm hodin provádět změny ve svém účtu.",
           @"Nejsou k dispozici žádné informace o zařízení.",
           @"Zapomněli jste své ID nebo heslo?",
           @"Toto Apple ID bylo z bezpečnostních důvodů deaktivováno. Heslo můžete obnovit na adrese %@.",
           @"Ověřit totožnost uživatele %@ pomocí Touch ID",
           @"Ověření bylo zrušeno uživatelem.",
           @"Číslo končící na %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_cs;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end