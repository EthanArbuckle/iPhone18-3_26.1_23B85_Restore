@interface ACMLocale_French
- (ACMLocale_French)init;
- (void)dealloc;
@end

@implementation ACMLocale_French

- (ACMLocale_French)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_French;
  v2 = [(ACMLocale_French *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Le champ du mot de passe est vide",  @"Annuler",  @"Connexion",  @"Envoyer",  @"OK",  @"Appel incorrect de la méthode. Le dialogue de connexion AppleConnect ne peut pas être masqué.",  @"Paramètres non valides. Certains paramètres de saisie sont incorrects.",  @"mot de passe de l’identifiant Apple",  @"Vous semblez être hors ligne. Veuillez vous connecter à Internet et réessayer.",  @"Votre identifiant Apple ou votre mot de passe n’a pas été saisi correctement.",  @"La validation en deux étapes est nécessaire, mais l’interaction des utilisateurs n’est pas autorisée.",  @"APPAREILS DE CONFIANCE",  @"Pour gérer vos appareils sécurisés, rendez-vous sur %@ à l’aide d’un Mac ou d’un PC.",  @"Échec de la création d’un ticket de service valide",  @"La réponse à la validation en deux étapes est vide.",  @"Envoyer un SMS vers un numéro de téléphone",  @"Un code temporaire qui vous servira à vérifier votre identité, sera envoyé à l’appareil que vous aurez sélectionné ci-dessous.",  @"Mémoire insuffisante",  @"Jean Martin",  @"Envoyer le code à %@",  @"Invocation de la méthode inattendue",  @"Vous avez dépassé le nombre maximal de tentatives de validation du code. Envoyez un nouveau code à un appareil différent ou réessayez ultérieurement.",  @"Jeton de données non valide. Le jeton de données de validation n’est pas valide.",  @"Authentification annulée par l’application",  @"Longueur incorrecte du mot de passe",  @"Code de validation",  @"Ce compte a été désactivé pour des raisons de sécurité. Vous pouvez réinitialiser votre mot de passe sur %@.",  @"Vous ne recevez aucun message sur vos appareils ?",  @"Envoyer un nouveau code",  @"Une erreur est survenue. Nous vous remercions de votre patience. Veuillez réessayer ultérieurement.",  @"Obligatoire",  @"Personne introuvable.",  @"Saisir le code de validation",  @"Appareil introuvable.",  @"Identifiant Apple",  @"La validation en deux étapes est activée pour cet identifiant Apple.",  @"Impossible de vérifier le jeton.",  @"Mot de passe",  @"Il est temps de réinitialiser votre mot de passe afin de renforcer votre sécurité. C’est simple, il suffit d’aller à %@.",  @"L’heure affichée par cet appareil semble être incorrecte. Pour la changer, rendez-vous dans Réglages > Général > Date et heure, puis réessayez.",  @"Échec de la création d’un jeton d’identification SSO valide",  @"Le code de validation que vous avez saisi n’est pas valide.",  @"Continuer",  @"Valider l’identité",  @"Authentification annulée par le système",  @"Générer le code avec %@",  @"La liste d’appareils est vide.",
           @"Session non valide.",
           @"La réponse du serveur est incorrecte",
           @"Vous avez dépassé le nombre maximal de codes envoyés afin de vérifier votre numéro de téléphone. Veuillez réessayer ultérieurement.",
           @"numéro de téléphone se terminant par %@",
           @"Votre nom de compte ou votre mot de passe est incorrect.",
           @"Le champ de l’identifiant Apple est vide",
           @"iForgot…",
           @"Nous sommes désolés, mais vous avez effectué trop de tentatives infructueuses afin de vérifier votre identité. Pour des raisons de sécurité, sauf si vous utilisez votre clé de secours, vous ne pourrez pas modifier votre compte au cours des huit prochaines heures.",
           @"Aucune information disponible sur l’appareil.",
           @"Vous avez oublié votre identifiant ou votre mot de passe ?",
           @"Cet identifiant Apple a été désactivé pour des raisons de sécurité. Vous pouvez réinitialiser votre mot de passe sur %@.",
           @"S’authentifier en tant que %@ avec Touch ID",
           @"Authentification annulée par l’utilisateur",
           @"Numéro se terminant par %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_French;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end