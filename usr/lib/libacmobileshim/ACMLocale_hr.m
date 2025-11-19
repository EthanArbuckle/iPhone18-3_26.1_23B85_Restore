@interface ACMLocale_hr
- (ACMLocale_hr)init;
- (void)dealloc;
@end

@implementation ACMLocale_hr

- (ACMLocale_hr)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_hr;
  v2 = [(ACMLocale_hr *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Polje lozinke je prazno.",  @"Odustani",  @"Prijavite se",  @"Pošalji",  @"U redu",  @"Nepravilno pozivanje metode. Nije moguće sakriti dijalog za AppleConnect SignIn.",  @"Nevažeći parametri. Neki ulazni parametri nisu pravilno postavljeni.",  @"Lozinka za Apple ID",  @"Izgleda da niste na mreži. Povežite se s internetom i pokušajte poslije ponovno.",  @"Netočno je unesen Apple ID ili lozinka.",  @"Potrebna je provjera valjanosti u dva koraka, ali interakcija korisnika nije dopuštena.",  @"POUZDANI UREĐAJI",  @"Da biste upravljali svojim pouzdanim uređajima, posjetite %@ korištenjem Mac ili PC računala.",  @"Izrada valjane uslužne karte nije uspjela",  @"Odgovor na provjeru valjanosti u dva koraka je prazan.",  @"SMS na telefonski broj",  @"Na uređaj koji odaberete u nastavku bit će poslan privremeni kod pomoću kojeg možete potvrditi svoj identitet.",  @"Nema memorije",  @"ivan.novak",  @"Pošalji kôd na %@",  @"Neočekivani poziv metode",  @"Previše ste puta neuspješno pokušali provjeriti valjanost koda. Pošalji novi kod na drugi uređaj pa pokušajte poslije ponovno.",  @"Nevažeći podatkovni token. Podatkovni token za provjeru nije valjan.",  @"Aplikacija je prekinula provjeru autentičnosti",  @"Dužina lozinke nije valjana",  @"Kod za provjeru valjanosti",  @"Ovaj Apple ID onemogućen je iz sigurnosnih razloga. Svoju lozinku možete poništiti na adresi %@.",  @"Nemate mogućnost primanja poruka ni na jedan uređaj?",  @"Pošaljite novi kod",  @"Dogodila se pogreška. Hvala vam na strpljenju, pokušajte poslije ponovno.",  @"Potrebno",  @"Nije moguće pronaći ovu osobu.",  @"Unesite kod za provjeru valjanosti",  @"Uređaj nije pronađen.",  @"Apple ID",  @"Provjera valjanosti u dva koraka omogućena je za ovaj Apple ID.",  @"Nije moguće provjeriti token.",  @"Lozinka",  @"Kako bi zaštitili svoju sigurnost, vrijeme je da poništite svoju lozinku. To je jednostavno, samo odite na adresu %@.",  @"Trenutno vrijeme na ovom uređaju izgleda nepravilnim. Možete ispraviti ako odete na Postavke > Opće > Datum i vrijeme, a zatim pokušajte poslije ponovno.",  @"Izrada valjanog SSO tokena nije uspjela",  @"Uneseni kod za provjeru valjanosti je nevažeći.",  @"Nastavi",  @"Provjeri valjanost identiteta",  @"Sustav je prekinuo provjeru autentičnosti",  @"Generiraj novi kôd s %@",  @"Lista uređaja je prazna.",
           @"Nevažeća sesija.",
           @"Nepravilno oblikovan odgovor poslužitelja",
           @"Poslali ste previše kodova za provjeru valjanosti telefonskog broja. Pokušajte ponovno kasnije.",
           @"telefonski broj koji završava sa %@",
           @"Vaš naziv računa ili lozinka nisu pravilno uneseni.",
           @"Polje za Apple ID je prazno",
           @"iForgot…",
           @"Nažalost, previše ste puta neuspješno pokušali potvrditi valjanost svojeg identiteta. Iz sigurnosnih razloga, sljedećih osam sati nećete moći vršiti promjene na svojem računu bez ključa za oporavak.",
           @"Nema dostupnih podataka o uređaju.",
           @"Zaboravili ste svoj ID ili lozinku?",
           @"Ovaj Apple ID onemogućen je iz sigurnosnih razloga. Svoju lozinku možete poništiti na adresi %@.",
           @"Provjeri autentičnost kao %@ pomoću Touch ID-a",
           @"Korisnik je prekinuo provjeru autentičnosti",
           @"Broj koji završava sa %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_hr;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end