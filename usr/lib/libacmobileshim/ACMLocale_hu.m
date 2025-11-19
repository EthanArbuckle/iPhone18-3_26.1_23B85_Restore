@interface ACMLocale_hu
- (ACMLocale_hu)init;
- (void)dealloc;
@end

@implementation ACMLocale_hu

- (ACMLocale_hu)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_hu;
  v2 = [(ACMLocale_hu *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"A jelszómező üres",  @"Mégsem",  @"Bejelentkezés",  @"Küldés",  @"OK",  @"Érvénytelen metódushívás. Az AppleConnect Bejelentkezés párbeszédablak nem rejthető el.",  @"Érvénytelen paraméterek. Egyes bemeneti paraméterek hibásan lettek megadva.",  @"Apple ID jelszó",  @"Úgy tűnik, Ön offline állapotban van. Kapcsolódjon az internethez, és próbálja újra.",  @"Az Apple ID vagy jelszó hibásan lett megadva.",  @"Kétlépcsős ellenőrzés szükséges, de felhasználói közreműködés nem engedélyezett.",  @"MEGBÍZHATÓ KÉSZÜLÉKEK",  @"A megbízható készülékek kezeléséhez egy Mac vagy PC számítógépről látogasson el a következő címre: %@.",  @"Érvényes szolgáltatásjegy létrehozása sikertelen",  @"A kétlépcsős ellenőrzésre adott válasz üres.",  @"SMS telefonszámra",  @"Az alább kiválasztott készülékre küldjük el a személyazonossága ellenőrzésére szolgáló ideiglenes kód.",  @"Kevés a memória",  @"kovacs.janos",  @"Kód küldése a következőre: %@",  @"Nem várt metódushívás",  @"Túl sokszor próbálta meg ellenőrizni a kódot. Küldjön egy új kódot egy másik készülékre, vagy próbálja újra később.",  @"Érvénytelen adattoken. Az adattoken az ellenőrzéshez érvénytelen.",  @"A hitelesítést az alkalmazás megszakította",  @"Érvénytelen a jelkód hossza",  @"Ellenőrző kód",  @"Ez a fiók biztonsági okokból le lett tiltva. A jelszót visszaállíthatja a(z) %@ webhelyen.",  @"Nem tud üzeneteket fogadni egyik készülékén sem?",  @"Új kód küldése",  @"Hiba történt. Köszönjük türelmét, kérjük, próbálja újra később.",  @"Kötelező",  @"Ez a személy nem található.",  @"Ellenőrző kód megadása",  @"A készülék nem található.",  @"Apple ID",  @"Ehhez az Apple ID-hoz be van kapcsolva a kétlépcsős ellenőrzés.",  @"A token nem ellenőrizhető.",  @"Jelszó",  @"Adatai védelme érdekében ideje megváltoztatnia jelszavát. Ezt egyszerűen megteheti a(z) %@ webhelyen.",  @"Az eszközön megjelenő pontos idő hibásnak tűnik. Kijavíthatja a Beállítások > Általános > Dátum és idő menüpont alatt, majd próbálja újra.",  @"Érvényes SSO-token létrehozása sikertelen",  @"A megadott ellenőrző kód érvénytelen.",  @"Folytatás",  @"Azonosítás",  @"A hitelesítést a rendszer megszakította",  @"Generáljon kódot a következővel: %@",  @"A készüléklista üres.",
           @"Érvénytelen munkamenet.",
           @"A kiszolgáló válasza helytelenül formázott",
           @"Túl sok kódot küldött a telefonszáma hitelesítéséhez. Próbálja újra később.",
           @"a következőre végződő szám: %@",
           @"A fióknév vagy a jelszó hibásan lett megadva.",
           @"Az Apple ID mező üres",
           @"iForgot…",
           @"Sajnáljuk, de túl sok sikertelen kísérletet tett személyazonossága igazolására. Biztonsági okokból a következő nyolc órában a visszaállítási kulcsa nélkül nem tud majd módosításokat végrehajtani a fiókjában.",
           @"Nincs elérhető készülékinformáció.",
           @"Elfelejtette az azonosítóját vagy jelszavát?",
           @"Ez az Apple ID biztonsági okokból le lett tiltva. A jelszót visszaállíthatja a(z) %@ webhelyen.",
           @"Hitelesítés mint %@ Touch ID használatával",
           @"A hitelesítést a felhasználó megszakította",
           @"A következőre végződő szám: %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_hu;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end