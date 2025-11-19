@interface ACMLocale_da
- (ACMLocale_da)init;
- (void)dealloc;
@end

@implementation ACMLocale_da

- (ACMLocale_da)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_da;
  v2 = [(ACMLocale_da *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Feltet Adgangskode er tomt",  @"Annuller",  @"Log ind",  @"Send",  @"OK",  @"Ugyldig metode. Log ind-dialogen for AppleConnect kan ikke skjules.",  @"Ugyldige parametre. Nogle af inputparametrene er ikke indstillet korrekt.",  @"Adgangskode til Apple-id",  @"Du lader til at være offline. Opret forbindelse til internettet og prøv igen.",  @"Du har skrevet et forkert Apple-id eller adgangskode.",  @"Totrinsbekræftelse kræves, men brugerhandling er ikke tilladt.",  @"PÅLIDELIGE ENHEDER",  @"Gå til %@ på en Mac eller pc for at administrere dine pålidelige enheder.",  @"Kunne ikke oprette en gyldig serviceanmodning",  @"Svaret til totrinsbekræftelse mangler.",  @"Sms til telefonnummer",  @"Der sendes en midlertidig kode til den valgte enhed nedenfor. Du kan bruge koden til at bekræfte din identitet.",  @"Ikke mere hukommelse",  @"jens.nielsen",  @"Send kode til %@",  @"Uventet aktivering af metode",  @"Der har været for mange mislykkede forsøg på at bekræfte koden. Send en ny kode til en anden enhed eller prøv igen senere.",  @"Ugyldigt datatoken. Datatokenet til bekræftelse er ikke gyldigt.",  @"Godkendelsen blev annulleret af appen",  @"Ugyldig længde på adgangskode",  @"Bekræftelseskode",  @"Dette Apple-id er blevet slået fra af hensyn til din sikkerhed. Du kan nulstille din adgangskode på %@",  @"Kan du ikke modtage meddelelser på nogen af dine enheder?",  @"Send en ny kode",  @"Der opstod en fejl. Undskyld ulejligheden. Prøv venligst igen senere.",  @"Påkrævet",  @"Kan ikke finde denne person.",  @"Angiv bekræftelseskoden",  @"Kan ikke finde enheden.",  @"Apple-id",  @"Totrinsbekræftelse er aktiveret for dette Apple‑id. ",  @"Kan ikke bekræfte tokenet.",  @"Adgangskode",  @"Nulstille din adgangskode for at beskytte din sikkerhed. Det er nemt – bare gå til %@",  @"Nuværende tid på denne enhed er tilsyneladende forkert. Du kan rette det ved at gå til Indstillinger > Generelt > Dato & tid. Prøv derefter igen.",  @"Kunne ikke oprette et gyldigt SSO-token",  @"Den angivne bekræftelseskode er ikke gyldig.",  @"Fortsæt",  @"Bekræft identitet",  @"Godkendelsen blev annulleret af systemet",  @"Generer kode med %@",  @"Listen med enheder er tom.",
           @"Ugyldig session.",
           @"Svaret fra serveren er forkert",
           @"Du har sendt for mange koder til bekræftelse af dit telefonnummer. Prøv igen senere.",
           @"telefonnummer, som slutter med %@",
           @"Du har angivet et forkert kontonavn eller en forkert adgangskode.",
           @"Feltet Apple-id er tomt",
           @"iForgot…",
           @"Du har desværre haft for mange mislykkede forsøg på at bekræfte din identitet. Af hensyn til din sikkerhed kan du ikke foretage ændringer på din konto i de næste otte timer uden din gendannelsesnøgle.",
           @"Ingen tilgængelige oplysninger om enheden.",
           @"Har du glemt dit id eller din adgangskode?",
           @"Dette Apple-id er blevet slået fra af hensyn til din sikkerhed. Du kan nulstille din adgangskode på %@",
           @"Godkend som %@ med Touch-id",
           @"Godkendelsen blev annulleret af brugeren",
           @"Nummer, der slutter med %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_da;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end