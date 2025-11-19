@interface ACMLocale_Italian
- (ACMLocale_Italian)init;
- (void)dealloc;
@end

@implementation ACMLocale_Italian

- (ACMLocale_Italian)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_Italian;
  v2 = [(ACMLocale_Italian *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Il campo della password è vuoto",  @"Annulla",  @"Accedi",  @"Invia",  @"OK",  @"Richiamo del metodo non corretto. Impossibile nascondere la finestra di dialogo AppleConnect SignIn.",  @"Parametri non validi. Alcuni dei parametri di input non sono impostati correttamente.",  @"Password dell'ID Apple",  @"Il tuo stato è offline. Connettiti a internet e riprova.",  @"ID Apple o password non inseriti correttamente.",  @"È richiesta la verifica in due passaggi, ma l'interazione dell'utente non è consentita.",  @"DISPOSITIVI REGISTRATI",  @"Per gestire i tuoi dispositivi registrati visita %@ da un Mac o da un PC.",  @"Impossibile creare un ticket di assistenza valido",  @"La risposta della verifica in due passaggi è vuota.",  @"SMS al numero di telefono",  @"Sul dispositivo che hai scelto ti verrà inviato un codice temporaneo per la verifica dell'identità.",  @"Memoria esaurita",  @"mario.rossi",  @"Invia codice a %@",  @"Chiamata metodo non attesa",  @"Hai eseguito troppi tentativi falliti di verificare il codice. Invia un nuovo codice a un dispositivo diverso o riprova più tardi.",  @"Token dati non valido. Il token dati per la verifica non è valido.",  @"L'autenticazione è stata annullata dall'applicazione",  @"Lunghezza codice non valida",  @"Codice di verifica",  @"Questo nome account è stato disattivato per motivi di sicurezza. Puoi reimpostare la password su %@.",  @"Non riesci a ricevere messaggi su nessuno dei tuoi dispositivi?",  @"Invia un nuovo codice",  @"Spiacenti, si è verificato un errore. Grazie per la pazienza, riprova più tardi.",  @"Obbligatorio",  @"Impossibile trovare questa persona.",  @"Inserisci codice di verifica",  @"Il dispositivo non è stato trovato.",  @"ID Apple",  @"La verifica in due passaggi è attiva per questo ID Apple. ",  @"Impossibile verificare il token.",  @"Password",  @"Per proteggere la tua sicurezza, ti consigliamo di reimpostare la tua password. È semplice, basta accedere a %@.",  @"L'orario attualmente visualizzato sul dispositivo non sembra essere corretto. Puoi correggerlo accedendo a Impostazioni > Generale > Data e ora e quindi riprovare.",  @"Impossibile creare un token SSO valido",  @"Il codice di verifica inserito non è valido.",  @"Continua",  @"Verifica identità",  @"L'autenticazione è stata annullata dal sistema",  @"Genera codice con %@",  @"L'elenco dispositivi è vuoto.",
           @"Sessione non valida.",
           @"La risposta del server non è corretta",
           @"Hai inviato troppi codici per verificare il tuo numero di telefono. Riprova più tardi.",
           @"il numero di telefono termina con %@",
           @"Il tuo ID Apple o la password non sono stati inseriti correttamente.",
           @"Il campo ID Apple è vuoto",
           @"iForgot…",
           @"Hai eseguito troppi tentativi falliti di verificare la tua identità. Per motivi di sicurezza, non potrai apportare modifiche al tuo account per le prossime otto ore senza la chiave di recupero.",
           @"Informazioni sul dispositivo non disponibili.",
           @"Hai dimenticato l'ID o la password?",
           @"Questo ID Apple è stato disattivato per motivi di sicurezza. Puoi reimpostare la password su %@.",
           @"Esegui autenticazione come %@ con Touch ID",
           @"L'autenticazione è stata annullata dall'utente",
           @"Numero che termina con %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_Italian;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end