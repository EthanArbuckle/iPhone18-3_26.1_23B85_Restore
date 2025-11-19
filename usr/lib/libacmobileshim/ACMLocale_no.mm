@interface ACMLocale_no
- (ACMLocale_no)init;
- (void)dealloc;
@end

@implementation ACMLocale_no

- (ACMLocale_no)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_no;
  v2 = [(ACMLocale_no *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Passordfeltet er tomt",  @"Avbryt",  @"Logg på",  @"Send",  @"OK",  @"Ugyldig bruk av metoden. AppleConnect-påloggingsdialogen kan ikke skjules.",  @"Ugyldige parametre. Enkelte av inndataparametrene er satt opp feil.",  @"Passord til Apple-ID",  @"Det ser ut til at du er offline. Koble til Internett og prøv på nytt.",  @"Apple-ID-en eller passordet ble ikke skrevet riktig.",  @"Totrinns-verifisering kreves, men brukerhandlinger er ikke tillatt.",  @"PÅLITELIGE ENHETER",  @"For å administrere de pålitelige enhetene går du til %@ på en Mac eller PC.",  @"Kunne ikke opprette en gyldig serviceforespørsel",  @"Svar på totrinns-verifisering mangler.",  @"SMS til telefonnummer",  @"Enheten du velger vil bli sendt en midlertidig kode du kan bruke til å verifisere identiteten din.",  @"Ikke mer minne",  @"ola.nordmann",  @"Send kode til %@",  @"Uventet metodekall",  @"Du mislyktes for mange ganger med å verifisere koden. Send en ny kode til en annen enhet eller prøv igjen senere.",  @"Ugyldig datatoken. Datatokenet for verifiseringen er ugyldig.",  @"Bekreftelsen ble avbrutt av appen",  @"Ugyldig kodelengde",  @"Verifiseringskode",  @"Apple-ID-en er deaktivert av sikkerhetsgrunner. Du kan endre passordet ditt på %@.",  @"Mottar du ikke meldinger på noen av enhetene dine?",  @"Send en ny kode",  @"En feil har oppstått. Takk for at du viser forståelse. Prøv igjen senere.",  @"Påkrevd",  @"Kan ikke finne personen.",  @"Skriv inn verifiseringskode",  @"Enheten ble ikke funnet.",  @"Apple-ID",  @"Totrinns-verifisering er aktivert for denne Apple-ID-en.",  @"Kan ikke verifisere tokenet.",  @"Passord",  @"Av sikkerhetsgrunner er det på tide å endre passordet ditt. Dette kan du enkelt gjøre på %@.",  @"Klokkeslettet på enheten ser ut til å være feil. Du kan fikse det ved å gå til Innstillinger > Generelt > Dato og tid. Prøv så på nytt.",  @"Kunne ikke opprette et gyldig SSO-token",  @"Verifiseringskoden du oppga er ikke gyldig.",  @"Fortsett",  @"Verifiser identitet",  @"Bekreftelsen ble avbrutt av systemet",  @"Generer kode med %@",  @"Enhetslisten er tom.",
           @"Ugyldig økt.",
           @"Svaret fra serveren inneholder feil",
           @"Du har sendt for mange koder for å verifisere telefonnummeret ditt. Prøv igjen senere.",
           @"telefonnummer som slutter på %@",
           @"Kontonavnet eller passordet du oppga var feil.",
           @"Feltet for Apple-ID er tomt",
           @"iForgot …",
           @"Du har dessverre hatt for mange mislykkede forsøk på å verifisere identiteten din. Av sikkerhetsgrunner kommer du ikke til å kunne gjøre endringer i kontoen de neste åtte timene uten gjenopprettingsnøkkelen din.",
           @"Ingen informasjon om enheten er tilgjengelig.",
           @"Har du glemt ID-en eller passordet?",
           @"Apple-ID-en er deaktivert av sikkerhetsgrunner. Du kan endre passordet ditt på %@.",
           @"Bekreft som %@ med Touch-ID",
           @"Bekreftelsen ble avbrutt av brukeren",
           @"Nummeret som slutter på %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_no;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end