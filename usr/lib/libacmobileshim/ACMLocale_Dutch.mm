@interface ACMLocale_Dutch
- (ACMLocale_Dutch)init;
- (void)dealloc;
@end

@implementation ACMLocale_Dutch

- (ACMLocale_Dutch)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_Dutch;
  v2 = [(ACMLocale_Dutch *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Wachtwoordveld is leeg",  @"Annuleer",  @"Log in",  @"Stuur",  @"OK",  @"Ongeldig beroep op de methode. AppleConnect SignIn dialoogvenster kan niet worden verborgen.",  @"Ongeldige parameters. Bepaalde invoerparameters zijn onjuist ingesteld.",  @"Apple ID-wachtwoord",  @"U lijkt offline te zijn. Maak verbinding met het internet en probeer het opnieuw.",  @"Uw Apple ID of wachtwoord is onjuist ingevoerd.",  @"Twee-staps-verificatie vereist, maar gebruikersinteractie is niet toegestaan.",  @"BETROUWBARE APPARATEN",  @"Om uw betrouwbare apparaten te beheren, gaat u naar %@ vanaf een Mac of pc.",  @"Aanmaken geldig serviceticket mislukt",  @"Twee-staps-verificatie antwoord is leeg.",  @"Sms naar telefoonnummer",  @"Er wordt een tijdelijke code gestuurd naar het apparaat dat u hieronder kiest, waarmee u uw identiteit kunt verifiëren.",  @"Geen geheugen meer",  @"john.appleseed",  @"Stuur code naar %@",  @"Onverwachte inroeping methode",  @"U bent er te vaak niet in geslaagd om de code te verifiëren. Stuur een nieuwe code naar een ander apparaat of probeer het later opnieuw.",  @"Ongeldig data-teken. Data-teken voor verifiëren is niet geldig.",  @"Identiteitscontrole werd door programma geannuleerd",  @"Ongeldige toegangscode-lengte",  @"Verificatiecode",  @"Deze Apple ID is om veiligheidsredenen buiten werking gesteld. U kunt uw wachtwoord opnieuw instellen op %@.",  @"Niet in staat om berichten op uw apparaten te ontvangen?",  @"Stuur een nieuwe code",  @"Er is een fout opgetreden. Dank u voor uw geduld. Probeer het later opnieuw.",  @"Vereist",  @"Kan deze persoon niet vinden.",  @"Voer verificatiecode in",  @"Apparaat is niet gevonden.",  @"Apple ID",  @"Tweestapsverificatie is ingeschakeld voor deze Apple ID.",  @"Kan teken niet verifiëren.",  @"Wachtwoord",  @"Om uw veiligheid te waarborgen, is het tijd om uw wachtwoord opnieuw in te stellen. U doet dit gewoon op %@.",  @"De huidige tijd op dit apparaat lijkt onjuist te zijn. U kunt dit corrigeren via 'Instellingen > Algemeen > Datum en tijd', probeer daarna opnieuw.",  @"Aanmaken geldig SSO-teken mislukt",  @"De verificatiecode die u hebt ingevoerd is ongeldig.",  @"Ga verder",  @"Verifieer identiteit",  @"Identiteitscontrole werd door systeem geannuleerd",  @"Genereer code met %@",  @"Apparaatlijst is leeg.",
           @"Ongeldige sessie.",
           @"Antwoord van server is misvormd",
           @"U hebt te veel codes verstuurd om uw telefoonnummer te verifiëren. Probeer het later opnieuw.",
           @"telefoonnummer eindigend op %@",
           @"Uw accountnaam of wachtwoord is onjuist ingevoerd.",
           @"Apple ID-veld is leeg",
           @"iForgot…",
           @"U hebt helaas te vaak tevergeefs geprobeerd uw identiteit te verifiëren. Om veiligheidsredenen kunt u de komende acht uur geen wijzigingen aanbrengen aan uw account zonder uw herstelcode.",
           @"Geen informatie over apparaten beschikbaar.",
           @"ID of wachtwoord vergeten?",
           @"Deze Apple ID is om veiligheidsredenen buiten werking gesteld. U kunt uw wachtwoord opnieuw instellen op %@.",
           @"Identiteitscontrole als %@ met Touch ID",
           @"Identiteitscontrole werd door gebruiker geannuleerd",
           @"Nummer dat eindigt op %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_Dutch;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end