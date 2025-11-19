@interface ACMLocale_sv
- (ACMLocale_sv)init;
- (void)dealloc;
@end

@implementation ACMLocale_sv

- (ACMLocale_sv)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_sv;
  v2 = [(ACMLocale_sv *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Lösenordsfältet är tomt",  @"Avbryt",  @"Logga in",  @"Skicka",  @"OK",  @"Ogiltig användning av metoden. AppleConnect SignIn-dialogen kan inte döljas.",  @"Ogiltiga parametrar. Vissa indataparametrar har ställts in felaktigt.",  @"Lösenord för Apple-ID",  @"Du verkar vara offline. Anslut till Internet och försök igen.",  @"Du har skrivit in fel Apple-ID eller lösenord.",  @"Tvåstegsverifiering krävs, men användaråtgärder är inte tillåtna.",  @"TILLFÖRLITLIGA ENHETER",  @"Om du vill hantera dina tillförlitliga enheter kan du besöka %@ från en Mac eller PC.",  @"Kunde inte skapa en giltig serviceanmälan",  @"Svaret för tvåstegsverifiering är tomt.",  @"Skicka sms till telefonnummer",  @"En tillfällig kod kommer att skickas till enheten som du väljer nedan. Du kan använda koden till att verifiera din identitet.",  @"Minnet räcker inte till",  @"lars.svensson",  @"Skicka kod till %@",  @"Oväntat metodanrop",  @"Du har misslyckats med att verifiera koden för många gånger. Skicka en ny kod till en annan enhet eller försök igen senare.",  @"Ogiltigt datatoken. Detta datatoken för verifiering är inte giltigt.",  @"Programmet avbröt autentiseringen",  @"Ogiltig längd på lösenkod",  @"Verifieringskod",  @"Detta konto har avaktiverats av säkerhetsskäl. Du kan nollställa ditt lösenord på %@.",  @"Går det inte att ta emot meddelanden på någon av dina enheter?",  @"Skicka en ny kod",  @"Ett fel har uppstått. Försök igen senare. Tack för ditt tålamod.",  @"Krävs",  @"Kunde inte hitta personen.",  @"Ange verifieringskod",  @"Enheten hittades inte.",  @"Apple-ID",  @"Tvåstegsverifiering är aktiverat för detta Apple-ID.",  @"Kunde inte verifiera token.",  @"Lösenord",  @"Av säkerhetsskäl bör du nollställa ditt lösenord. Det är enkelt, gå bara till %@.",  @"Tiden verkar vara fel inställd på den här enheten. Du kan fixa det genom att gå till Inställningar > Allmänt > Datum och tid, och sedan försöka igen.",  @"Kunde inte skapa ett giltigt SSO-token",  @"Verifieringskoden som du har angett är ogiltig.",  @"Fortsätt",  @"Verifiera identitet",  @"Systemet avbröt autentiseringen",  @"Generera kod med %@",  @"Enhetslistan är tom.",
           @"Ogiltig session.",
           @"Svaret från servern innehåller fel",
           @"Du har skickat för många koder för att verifiera ditt telefonnummer. Försök igen senare.",
           @"telefonnummer som slutar med %@",
           @"Du har skrivit in fel kontonamn eller lösenord.",
           @"Fältet för Apple-ID är tomt",
           @"iForgot…",
           @"Du har tyvärr gjort för många misslyckade försök att verifiera din identitet. Av säkerhetsskäl kan du inte ändra något i ditt konto inom åtta timmar utan återställningsnyckeln.",
           @"Ingen enhetsinformation tillgänglig.",
           @"Har du glömt ditt ID eller lösenord?",
           @"Detta Apple-ID har avaktiverats av säkerhetsskäl. Du kan nollställa ditt lösenord på %@.",
           @"Autentisera som %@ med Touch ID",
           @"Användaren avbröt autentiseringen",
           @"Nummer som slutar på %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_sv;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end