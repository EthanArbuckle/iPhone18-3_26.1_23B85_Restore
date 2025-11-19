@interface ACMLocale_pt
- (ACMLocale_pt)init;
- (void)dealloc;
@end

@implementation ACMLocale_pt

- (ACMLocale_pt)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_pt;
  v2 = [(ACMLocale_pt *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"O campo palavra-passe está vazio",  @"Cancelar",  @"Iniciar sessão",  @"Enviar",  @"OK",  @"Chamada incorreta do método. Diálogo AppleConnect SignIn não pode ser ocultado.",  @"Parâmetros inválidos. Alguns dos parâmetros de entrada não estão definidos corretamente.",  @"Palavra-passe do ID Apple",  @"Parece estar offline. Estabeleça ligação à Internet e tente novamente.",  @"A palavra-passe ou o ID Apple foram introduzidos incorretamente.",  @"A confirmação em dois passos é necessária, mas a intervenção do utilizador não é permitida.",  @"DISPOSITIVOS FIDEDIGNOS",  @"Para gerir os seus dispositivos fidedignos, visite %@ a partir de um Mac ou PC.",  @"Falha ao criar um ticket de serviço válido",  @"A resposta da Confirmação em dois passos está vazia.",  @"SMS para número de telefone",  @"Será enviado, para o dispositivo que selecionar, um código temporário que pode utilizar para confirmar a sua identidade.",  @"Sem memória",  @"joão.silva",  @"Enviar código para %@",  @"Invocação de método inesperada",  @"Falhou a confirmação do código demasiadas vezes. Envie um código novo para outro dispositivo ou tente mais tarde.",  @"Token de dados inválido. O token de dados para confirmação não é válido.",  @"A autenticação foi cancelada pela aplicação",  @"Comprimento do código inválido",  @"Código de confirmação",  @"Por motivos de segurança, esta conta foi desativada. Pode repor a palavra-passe em %@.",  @"Não consegue receber mensagens em qualquer dos seus dispositivos?",  @"Enviar um código novo",  @"Ups, ocorreu um erro. Obrigado por aguardar, tente novamente mais tarde.",  @"Obrigatória",  @"Não é possível encontrar esta pessoa.",  @"Introduzir código de confirmação",  @"Dispositivo não encontrado.",  @"ID Apple",  @"A confirmação em dois passos está ativada para este ID Apple. ",  @"Não é possível confirmar o token.",  @"Palavra-passe",  @"Reponha a palavra-passe para proteger a sua segurança. Basta aceder a %@.",  @"A hora atual neste dispositivo parece estar incorreta. Pode corrigi-la em Definições > Geral > Data e hora e, em seguida, tente novamente.",  @"Falha ao criar um token SSO válido",  @"O código de confirmação que introduziu não é válido.",  @"Continuar",  @"Verificar identidade",  @"A autenticação foi cancelada pelo sistema",  @"Gerar código com %@",  @"A lista de dispositivos está vazia.",
           @"Sessão inválida.",
           @"A resposta do servidor está mal conformada",
           @"Enviou demasiados códigos para confirmar o seu número de telefone. Tente mais tarde.",
           @"telefone terminado em %@",
           @"O nome da conta ou a palavra-passe foram introduzidos incorretamente.",
           @"O campo ID Apple está vazio",
           @"iForgot…",
           @"Efetuou demasiadas tentativas incorretas na confirmação da sua identidade. Por motivos de segurança, não poderá efetuar alterações à sua conta nas próximas oito horas sem a Chave de recuperação.",
           @"Nenhuma informação de dispositivo disponível.",
           @"Esqueceu-se do seu ID ou palavra-passe?",
           @"Por motivos de segurança, este ID Apple foi desativado. Pode repor a palavra-passe em %@.",
           @"Autenticar como %@ com o Touch ID",
           @"A autenticação foi cancelada pelo utilizador",
           @"Número terminado em %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_pt;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end