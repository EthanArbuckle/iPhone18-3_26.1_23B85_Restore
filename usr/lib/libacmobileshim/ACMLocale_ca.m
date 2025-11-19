@interface ACMLocale_ca
- (ACMLocale_ca)init;
- (void)dealloc;
@end

@implementation ACMLocale_ca

- (ACMLocale_ca)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_ca;
  v2 = [(ACMLocale_ca *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"El camp de la contrasenya està buit",  @"Cancel·lar",  @"Iniciar sessió",  @"Enviar",  @"Acceptar",  @"Error de trucada al mètode. El diàleg d’inici de sessió de l’AppleConnect no es pot ocultar.",  @"Paràmetres no vàlids. Alguns paràmetres d’entrada no s’han establert correctament.",  @"Contrasenya de l’ID d’Apple",  @"Sembla que no tens connexió. Connecta’t a Internet i torna-ho a provar.",  @"L’ID d’Apple o la contrasenya que has escrit són incorrectes.",  @"La verificació en dos passos és obligatòria, però no es permet la interacció de l’usuari.",  @"DISPOSITIUS DE CONFIANÇA",  @"Per a gestionar els dispositius de confiança, vés a %@ des d’un Mac o un PC.",  @"No s’ha pogut crear un tiquet de servei vàlid",  @"La resposta de la verificació en dos passos està en blanc.",  @"Enviar un SMS al número de telèfon",  @"Rebràs un codi temporal al dispositiu que seleccionis a continuació que podràs fer servir per a verificar la teva identitat.",  @"Sense memòria",  @"joan.pomes",  @"Enviar codi a %@",  @"Invocació de mètode inesperada",  @"Has superat el límit d’intents de verificació del codi. Envia un codi nou a un dispositiu diferent o torna-ho a provar més tard.",  @"L’identificador de les dades no és vàlid. L’identificador de les dades per verificar no és vàlid.",  @"L’aplicació ha cancel·lat l’autenticació",  @"Longitud del codi no vàlida",  @"Codi de verificació",  @"Aquest compte s’ha desactivat per motius de seguretat. Pots restablir la contrasenya a %@.",  @"No pots rebre missatges en cap dels teus dispositius?",  @"Enviar un codi nou",  @"S’ha produït un error. Torna-ho a provar més tard.",  @"Obligatori",  @"No es troba aquesta persona.",  @"Escriu el codi de verificació",  @"No es troba el dispositiu.",  @"ID d’Apple",  @"Aquest ID d’Apple té activada la verificació en dos passos.",  @"No es pot verificar l’identificador.",  @"Contrasenya",  @"Restableix la contrasenya per protegir la teva seguretat. És senzill: només cal que vagis a %@.",  @"Sembla que l’hora actual del dispositiu és incorrecta. Pots modificar-la a Configuració > General > Data i hora, i tornar-ho a provar.",  @"No s’ha pogut crear un identificador d’SSO vàlid",  @"El codi de verificació que has escrit no és vàlid.",  @"Continuar",  @"Verificar la identitat",  @"El sistema ha cancel·lat l’autenticació",  @"Generar el codi amb %@",  @"La llista de dispositius és buida.",
           @"Sessió no vàlida.",
           @"La resposta del servidor no està ben formada",
           @"Has enviat massa codis per verificar el teu número de telèfon. Torna-ho a provar més endavant.",
           @"telèfon que acaba en %@",
           @"El nom del compte o la contrasenya que has escrit són incorrectes.",
           @"El camp de l’ID d’Apple està buit",
           @"iForgot…",
           @"Has intentat verificar la teva identitat sense èxit massa vegades. Per motius de seguretat, no podràs fer canvis al teu compte durant les següents vuit hores sense la clau de recuperació.",
           @"No hi ha informació disponible del dispositiu.",
           @"Has oblidat l’ID o la contrasenya?",
           @"Aquest ID d’Apple s’ha desactivat per motius de seguretat. Pots restablir la contrasenya a %@.",
           @"Autenticar com a %@ amb el Touch ID",
           @"L’usuari ha cancel·lat l’autenticació",
           @"Número que acaba en %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_ca;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end