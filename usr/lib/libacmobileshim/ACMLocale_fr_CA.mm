@interface ACMLocale_fr_CA
- (ACMLocale_fr_CA)init;
- (void)dealloc;
@end

@implementation ACMLocale_fr_CA

- (ACMLocale_fr_CA)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_fr_CA;
  v2 = [(ACMLocale_fr_CA *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Le champ Mot de passe est vide",  @"Annuler",  @"Connexion",  @"Envoyer",  @"OK",  @"Appel de la méthode incorrect. La boîte de dialogue AppleConnect SignIn ne peut être masquée.",  @"Paramètres incorrects. Certains paramètres d’entrée sont incorrects.",  @"Mot de passe de l’identifiant Apple",  @"Votre statut est hors-ligne. Veuillez vous connecter à l’Internet et essayer de nouveau.",  @"Votre identifiant Apple ou votre mot de passe n’a pas été saisi correctement.",  @"Validation en deux étapes requise, mais l’interaction avec l’utilisateur est interdite.",  @"APPAREILS DE CONFIANCE",  @"Pour gérer vos appareils de confiance, consultez %@ sur un Mac ou un PC.",  @"La création du ticket d’assistance a échoué",  @"Le champ de réponse de la validation en deux étapes est vide.",  @"Envoyer une messagerie texte vers un numéro de téléphone",  @"L’appareil que vous sélectionnez ci-dessous recevra un code temporaire, que vous pouvez utiliser pour valider votre identité.",  @"Mémoire insuffisante",  @"Marc Lavoie",  @"Envoyer le code à %@",  @"Méthode d’appel inattendue",  @"Vous avez effectué trop de tentatives infructueuses afin de vérifier votre compte. Veuillez envoyer un nouveau code à un appareil différent ou essayer de nouveau plus tard.",  @"Jeton de données invalide. Le jeton de données de vérification est invalide.",  @"L’identification a été annulée par l’application",  @"Longueur du code de sécurité non valide",  @"Code de validation",  @"Cet identifiant Apple a été désactivé pour des raisons de sécurité. Vous pouvez réinitialiser votre mot de passe à %@.",  @"Vous ne pouvez pas recevoir de messages sur vos appareils?",  @"Envoyer un nouveau code",  @"Désolé! Une erreur est survenue. Nous vous remercions de votre patience. Veuillez réessayer plus tard.",  @"Obligatoire",  @"Cette personne est introuvable.",  @"Entrer le code de validation",  @"L’appareil est introuvable.",  @"Identifiant Apple",  @"La validation en deux étapes est activée pour cet identifiant Apple.",  @"Le jeton ne peut être vérifié.",  @"Mot de passe",  @"Afin de protéger votre sécurité, il est temps de réinitialiser votre mot de passe. C’est facile, il suffit de vous rendre à %@.",  @"L’heure actuelle sur cet appareil semble incorrecte. Vous pouvez la changer en allant dans Réglages > Général > Date et heure, puis essayer de nouveau.",  @"La création d’un jeton d’authentification par signature unique a échoué",  @"Le code de validation que vous avez entré est incorrect.",  @"Continuer",  @"Valider l’identité",  @"L’identification a été annulée par le système",  @"Générer le code avec %@",  @"La liste d’appareils est vide.",
           @"Session invalide.",
           @"La réponse du serveur n’est pas correctement formée",
           @"Vous avez envoyé trop de codes pour valider votre numéro de téléphone. Veuillez essayer de nouveau plus tard.",
           @"numéro de téléphone se terminant par %@",
           @"Le nom du compte ou le mot de passe est incorrect.",
           @"Le champ Identifiant Apple est vide",
           @"iForgot…",
           @"Désolés, vous avez effectué trop de tentatives infructueuses afin de vérifier votre identité. Pour des raisons de sécurité, vous ne pourrez pas effectuer de changements à votre compte pendant huit heures sans votre clé de récupération.",
           @"Aucune donnée n’est accessible concernant l’appareil.",
           @"Vous avez oublié votre identifiant ou votre mot de passe?",
           @"Cet identifiant Apple a été désactivé pour des raisons de sécurité. Vous pouvez réinitialiser votre mot de passe  à %@.",
           @"S’identifier en tant que %@ à l’aide du Touch ID",
           @"L’identification a été annulée par l’utilisateur",
           @"Numéro se terminant par %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_fr_CA;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end