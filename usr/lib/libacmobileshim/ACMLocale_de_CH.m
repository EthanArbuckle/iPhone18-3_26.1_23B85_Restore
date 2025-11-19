@interface ACMLocale_de_CH
- (ACMLocale_de_CH)init;
- (void)dealloc;
@end

@implementation ACMLocale_de_CH

- (ACMLocale_de_CH)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_de_CH;
  v2 = [(ACMLocale_de_CH *)&v6 init];
  if (v2)
  {
    v3 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Password field is empty",  @"Cancel",  @"Sign In",  @"Send",  @"OK",  @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.",  @"Invalid Parameters. Some of input parameters are set incorrectly.",  @"Apple ID password",  @"You appear to be offline. Please connect to the Internet and try again.",  @"Your Apple ID or password was entered incorrectly.",  @"Two-step verification required, but user interaction is not allowed.",  @"TRUSTED DEVICES",  @"To manage your trusted devices visit %@ from a Mac or PC.",  @"Failed to create valid service ticket",  @"Two-step verification response is empty.",  @"SMS to Phone Number",  @"The device you select below will be sent a temporary code that you can use to verify your identity.",  @"Out of Memory",  @"john.appleseed",  @"Send code to %@",  @"Unexpected method invocation",  @"You failed to verify the code too many times. Please send a new code to a different device or try again later.",  @"Invalid Data Token. Data Token for verify is not valid.",  @"Authentication was canceled by application",  @"Invalid passcode length",  @"Verification Code",  @"This account name has been disabled for security reasons. You can reset your password at %@.",  @"Unable to receive messages at any of your devices?",  @"Send a new code",  @"Oops, an error occurred. Thanks for your patience, please try again later.",  @"Required",  @"Cannot find this person.",  @"Enter verification code",  @"Device is not found.",  @"Apple ID",  @"Two-step verification is enabled for this Apple ID.",  @"Can not verify token.",  @"Password",  @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.",  @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.",  @"Failed to create valid SSO token",  @"The verification code you entered is not valid.",  @"Verify Identity",  @"Authentication was canceled by system",  @"Generate code with %@",  @"Device list is empty.",  @"Invalid Session.",
           @"Response from server is malformed",
           @"You have sent too many codes to verify your phone number. Please try again later.",
           @"phone ending in %@",
           @"Your account name or password was entered incorrectly.",
           @"Apple ID field is empty",
           @"iForgot…",
           @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.",
           @"No Device information available.",
           @"Forgot your ID or Password?",
           @"This Apple ID has been disabled for security reasons. You can reset your password at %@.",
           @"Authenticate as %@ with Touch ID",
           @"Authentication was canceled by user",
           @"Number ending in %@",
           @"Two-step verification has been disabled for the Apple ID account %@.");
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Passwortfeld ist leer",  @"Abbrechen",  @"Anmelden",  @"Senden",  @"OK",  @"Methode wurde unsachgemäss aufgerufen. AppleConnect-Anmeldedialog kann nicht ausgeblendet werden.",  @"Ungültige Parameter. Einige der Eingabeparameter sind falsch eingestellt.",  @"Passwort für die Apple-ID",  @"Sie scheinen offline zu sein. Verbinden Sie sich mit dem Internet und versuchen Sie es erneut.",  @"Ihre Apple-ID oder Ihr Passwort wurde falsch eingegeben.",  @"Zweistufige Bestätigung erforderlich. Es ist jedoch keine Benutzerinteraktion zulässig.",  @"VERTRAUENSWÜRDIGE GERÄTE",  @"Gehen Sie von einem Mac oder PC aus zu %@, um Ihre vertrauenswürdigen Geräte zu verwalten.",  @"Erstellen eines gültigen Service-Tickets ist fehlgeschlagen",  @"Antwort auf zweistufige Bestätigung ist leer.",  @"SMS an Telefonnummer",  @"An das von Ihnen unten ausgewählte Gerät wird ein temporärer Code gesendet, den Sie verwenden können, um Ihre Identität zu bestätigen.",  @"Nicht genügend Arbeitsspeicher",  @"max.mustermann",  @"Code an %@ senden",  @"Unerwarteter Methodenaufruf",  @"Die Bestätigung des Codes ist zu oft fehlgeschlagen. Senden Sie einen neuen Code an ein anderes Gerät oder versuchen Sie es später erneut.",  @"Ungültiger Daten-Token. Der Daten-Token zum Bestätigen ist ungültig.",  @"Authentifizierung wurde vom Programm abgebrochen",  @"Ungültige Codelänge",  @"Bestätigungscode",  @"Dieses Konto wurde aus Sicherheitsgründen deaktiviert. Sie können Ihr Passwort unter %@ zurücksetzen.",  @"Sie können auf keinem Ihrer Geräte Nachrichten empfangen?",  @"Einen neuen Code senden",  @"Es ist ein Fehler aufgetreten, versuchen Sie es später erneut.",  @"Erforderlich",  @"Diese Person konnte nicht gefunden werden.",  @"Bestätigungscode eingeben",  0x2A1EBC000,  @"Apple-ID",  @"Für diese Apple-ID ist die zweistufige Bestätigung aktiviert.",  @"Token kann nicht bestätigt werden.",  @"Passwort",  @"Sie sollten Ihr Passwort zurücksetzen, um Ihre Sicherheit zu schützen. Gehen Sie dazu einfach zu %@.",  @"Die aktuelle Zeit scheint auf diesem Gerät falsch zu sein. Gehen Sie „Einstellungen“ > „Allgemein“ > „Datum & Uhrzeit“, um dies zu korrigieren, und versuchen Sie es erneut.",  @"Erstellen eines gültigen SSO-Token ist fehlgeschlagen",  @"Der eingegebene Bestätigungscode ist ungültig.",  @"Identität bestätigen",  @"Authentifizierung wurde vom System abgebrochen",  @"Code mit %@ erstellen",  @"Die Geräteliste ist leer.",  @"Ungültige Sitzung.",
           @"Antwort vom Server ist fehlerhaft",
           @"Sie haben zum Bestätigen Ihrer Telefonnummer zu viele Codes gesendet. Versuchen Sie es später erneut.",
           @"Telefonnummer, die auf „%@“ endet",
           @"Ihr Accountname oder Ihr Passwort wurde falsch eingegeben.",
           @"Apple-ID-Feld ist leer",
           @"iForgot …",
           @"Sie haben zu oft ohne Erfolg versucht, Ihre Identität zu bestätigen. Aus Sicherheitsgründen können Sie ohne Ihren Wiederherstellungsschlüssel innerhalb der nächsten acht Stunden keine Änderungen an Ihrem Account vornehmen.",
           @"Keine Geräteinformationen verfügbar.",
           @"ID oder Passwort vergessen?",
           @"Diese Apple-ID wurde aus Sicherheitsgründen deaktiviert. Sie können Ihr Passwort unter %@ zurücksetzen.",
           @"Als %@ mit Touch ID authentifizieren",
           @"Authentifizierung wurde vom Benutzer abgebrochen",
           @"Nummer mit den Endziffern %@",
           @"Die zweistufige Bestätigung wurde für den Apple-ID-Account „%@“ deaktiviert.");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_de_CH;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end