@interface ACMLocale_pt_BR
- (ACMLocale_pt_BR)init;
- (void)dealloc;
@end

@implementation ACMLocale_pt_BR

- (ACMLocale_pt_BR)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_pt_BR;
  v2 = [(ACMLocale_pt_BR *)&v6 init];
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
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"O campo Senha está em branco",  @"Cancelar",  @"Iniciar sessão",  @"Enviar",  @"OK",  @"Chamada incorreta do método. Não é possível ocultar a caixa de diálogo para iniciar sessão do AppleConnect.",  @"Parâmetros inválidos. Alguns parâmetros de entrada foram definidos incorretamente.",  @"Senha do ID Apple",  @"Você parece estar offline. Conecte-se à Internet e tente novamente.",  @"Sua senha ou ID Apple foram inseridos incorretamente.",  @"A verificação em dois passos é necessária, mas a interação do usuário não é permitida.",  @"DISPOSITIVOS DE CONFIANÇA",  @"Para gerenciar seus dispositivos confiáveis, visite %@ de um Mac ou PC.",  @"Falha na criação de um tíquete de serviço válido",  @"A resposta da verificação em dois passos está vazia.",  @"SMS para número de telefone",  @"Para verificar sua identidade, enviaremos um código temporário para o dispositivo selecionado a seguir.",  @"Sem Memória",  @"joão.silva",  @"Enviar código para %@",  @"Invocação de método não esperada",  @"Você não conseguiu verificar o código por muitas vezes. Envie um novo código para um dispositivo diferente e tente novamente.",  @"Token de Dados inválido. O Token de Dados para confirmação não é válido.",  @"A autenticação foi cancelada pelo aplicativo",  @"Tamanho do código inválido",  @"Código de verificação",  @"Este ID Apple foi desativado por motivos de segurança. Você pode redefinir sua senha no site %@.",  @"Não consegue receber mensagens em nenhum de seus dispositivos?",  @"Enviar um novo código",  @"Opa! Aconteceu em erro. Obrigado por sua paciência. Tente novamente mais tarde.",  @"Obrigatória",  @"Não é possível encontrar essa pessoa.",  @"Inserir código de verificação",  @"Dispositivo não encontrado.",  @"ID Apple",  @"A verificação em dois passos está ativada para este ID Apple.",  @"Não é possível confirmar o token.",  @"Senha",  @"Para proteger sua segurança, chegou a hora de redefinir a senha. É fácil, basta acessar %@.",  @"A hora atual deste dispositivo parece estar incorreta. Você pode corrigi-la acessando Ajustes > Geral > Data e Hora. Em seguida, tente novamente.",  @"Falha na criação de um token SSO válido",  @"O código de verificação inserido não é válido.",  @"Verificar identidade",  @"A autenticação foi cancelada pelo sistema",  @"Gerar código com %@",  @"A lista de dispositivos está vazia.",  @"Sessão inválida.",
           @"A resposta do servidor está malformada",
           @"Você enviou demasiados códigos para verificar seu número de telefone. Tente novamente mais tarde.",
           @"número de telefone com final %@",
           @"Seu nome de conta ou senha foi inserida incorretamente.",
           @"O campo ID Apple está em branco",
           @"iForgot…",
           @"Lamentamos, mas você tentou verificar sua identidade muitas vezes sem sucesso. Por razões de segurança, você não poderá fazer alterações na sua conta pelas próximas oito horas sem sua chave de recuperação.",
           @"Nenhuma informação disponível sobre o dispositivo.",
           @"Esqueceu seu ID ou sua senha?",
           @"Este ID Apple foi desativado por motivos de segurança. Você pode redefinir sua senha no site %@.",
           @"Autenticar-se como %@ com o Touch ID",
           @"A autenticação foi cancelada pelo usuário",
           @"Número com final %@",
           @"A verificação em dois passos foi desativada na conta do ID Apple %@.");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_pt_BR;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end