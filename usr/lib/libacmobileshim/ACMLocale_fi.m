@interface ACMLocale_fi
- (ACMLocale_fi)init;
- (void)dealloc;
@end

@implementation ACMLocale_fi

- (ACMLocale_fi)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_fi;
  v2 = [(ACMLocale_fi *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Salasanakenttä on tyhjä",  @"Kumoa",  @"Kirjaudu sisään",  @"Lähetä",  @"OK",  @"Virheellinen metodikutsu. AppleConnect-kirjautumisvalintaikkunan kätkeminen ei onnistu.",  @"Epäkelpoja parametreja. Jotkut syöttöparametrit on asetettu väärin.",  @"Apple ID -salasana",  @"Et näytä olevan verkkoyhteydessä. Yhdistä Internetiin ja yritä uudelleen.",  @"Apple ID:si tai salasanasi syötettiin väärin.",  @"Kaksivaiheinen vahvistus vaaditaan, mutta käyttäjän vuorovaikutusta ei sallita.",  @"LUOTETUT LAITTEET",  @"Voit hallita luotettuja laitteitasi käymällä osoitteessa %@ Mac- tai Windows-tietokoneella.",  @"Kelvollisen palvelulipun luominen ei onnistunut",  @"Kaksivaiheisen vahvistuksen vaste on tyhjä.",  @"Tekstiviesti puhelinnumeroon",  @"Alla luetelluista laitteista valitsemaasi lähetetään tilapäinen koodi, jota voit käyttää henkilöllisyytesi vahvistamiseen.",  @"Muisti ei riitä",  @"jussi.kuokka",  @"Lähetä koodi tähän kohteeseen: %@",  @"Odottamaton metodikutsu",  @"Koodin vahvistaminen epäonnistui liian monta kertaa. Lähetä uusi koodi eri laitteeseen tai yritä myöhemmin uudelleen.",  @"Epäkelpo datatunnus. Vahvistuksen datatunnus ei kelpaa.",  @"Ohjelma peruutti todennuksen",  @"Virheellinen pääsykoodin pituus",  @"Vahvistuskoodi",  @"Tämä tili on turvallisuussyistä poistettu käytöstä. Voit nollata salasanasi osoitteessa %@.",  @"Etkö pysty vastaanottamaan viestejä mihinkään laitteeseesi?",  @"Lähetä uusi koodi",  @"Tapahtui virhe. Kiitos kärsivällisyydestäsi, yritä myöhemmin uudelleen.",  @"Vaaditaan",  @"Tätä henkilöä ei löydetä.",  @"Syötä vahvistuskoodi",  @"Laitetta ei löydy.",  @"Apple ID",  @"Kaksivaiheinen vahvistus on otettu käyttöön tälle Apple ID:lle.",  @"Tunnuksen vahvistaminen ei onnistu.",  @"Salasana",  @"Tietoturvasi takaamiseksi on aika nollata salasanasi. Se käy helposti osoitteessa %@.",  @"Tämän laitteen aika näyttää olevan virheellinen. Voit korjata sen avaamalla Asetukset > Yleiset > Päivä ja aika. Yritä sitten uudelleen.",  @"Kelvollisen SSO-tunnuksen luominen ei onnistunut",  @"Syöttämäsi vahvistuskoodi ei kelpaa.",  @"Jatka",  @"Vahvista henkilöllisyys",  @"Järjestelmä peruutti todennuksen",  @"Luo koodi laitteella %@",  @"Laiteluettelo on tyhjä.",
           @"Epäkelpo istunto.",
           @"Palvelimen vastaus on virheellisessä muodossa",
           @"Olet lähettänyt liian monta koodia puhelinnumerosi vahvistamiseksi. Yritä myöhemmin uudelleen.",
           @"puhelinnumero, joka päättyy %@",
           @"Tilisi nimi tai salasana syötettiin väärin.",
           @"Apple ID -kenttä on tyhjä",
           @"iForgot…",
           @"Pahoittelemme, mutta olet tehnyt liian monta epäonnistunutta yritystä henkilöllisyytesi vahvistamiseksi. Turvallisuussyistä et pysty tekemään muutoksia tiliisi seuraavaan kahdeksaan tuntiin ilman palautusavaintasi.",
           @"Laitetietoja ei ole saatavilla.",
           @"Oletko unohtanut ID:si tai salasanasi?",
           @"Tämä Apple ID on turvallisuussyistä poistettu käytöstä. Voit nollata salasanasi osoitteessa %@.",
           @"Todenna %@ Touch ID:llä",
           @"Käyttäjä peruutti todennuksen",
           @"Numero, joka päättyy %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_fi;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end