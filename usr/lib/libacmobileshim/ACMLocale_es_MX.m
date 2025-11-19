@interface ACMLocale_es_MX
- (ACMLocale_es_MX)init;
- (void)dealloc;
@end

@implementation ACMLocale_es_MX

- (ACMLocale_es_MX)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_es_MX;
  v2 = [(ACMLocale_es_MX *)&v6 init];
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
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"El campo de la contraseña está vacío",  @"Cancelar",  @"Iniciar sesión",  @"Enviar",  @"Aceptar",  @"Error de llamada al método. El diálogo de inicio de sesión de AppleConnect no se pudo ocultar.",  @"Parámetros no válidos. Algunos parámetros de entrada están configurados incorrectamente.",  @"Contraseña del Apple ID",  @"Parece que no tienes conexión. Conéctate a Internet e inténtalo de nuevo.",  @"El ID de Apple o la contraseña ingresados son incorrectos.",  @"Se requiere la verificación en dos pasos pero no se permite la interacción del usuario",  @"DISPOSITIVOS DE CONFIANZA",  @"Para gestionar tus dispositivos de confianza, ve a %@ desde una Mac o PC.",  @"No se pudo crear un ticket de servicio válido",  @"La respuesta de la verificación en dos pasos está vacía.",  @"Enviar un SMS al número de teléfono",  @"Se enviará un código de seguridad provisional al dispositivo que selecciones a continuación; utilízalo para verificar tu identidad.",
           @"Memoria agotada",
           @"juan.lopezruiz",
           @"Enviar código a %@",
           @"Invocación de método inesperada",
           @"Has sobrepasado el límite de intentos de verificación del código. Envía un nuevo código a otro dispositivo o inténtalo de nuevo más tarde.",
           @"Identificador de datos no válido. El identificador de datos para verificación no es válido.",
           @"La aplicación canceló la autenticación",
           @"La longitud del código no es válida.",
           @"Código de verificación",
           @"Esta cuenta se desactivó por motivos de seguridad. Puedes restablecer tu contraseña en %@.",
           @"¿No puedes recibir mensajes en ninguno de tus dispositivos?",
           @"Enviar un código nuevo",
           @"Se produjo un error. Vuelve a intentarlo más tarde. Gracias por tu paciencia. ",
           @"Obligatorio",
           @"No se encuentra a esta persona.",
           @"Ingresar el código de verificación",
           @"No se encuentra el dispositivo.",
           @"ID de Apple",
           @"La verificación en dos pasos está activada para este ID de Apple. ",
           @"No se puede verificar el identificador.",
           @"Contraseña",
           @"Restablece tu contraseña para proteger tu seguridad. El procedimiento es sencillo: ve a %@.",
           @"Parece que la hora actual en este dispositivo es incorrecta. Puedes modificarla en Configuración > General > Fecha & Hora, y vuelve a intentarlo.",
           @"No se pudo crear un identificador SSO válido",
           0x2A1EC1000,
           @"Verificar la identidad",
           @"El sistema canceló la autenticación",
           @"Generar código con %@",
           @"La lista de dispositivos está vacía.",
           @"Sesión no válida.",
           @"La respuesta del servidor no está bien formada",
           @"Has enviado demasiados códigos para verificar tu número de teléfono. Vuelve a intentarlo más tarde.",
           @"teléfono que termina en %@",
           @"El nombre de la cuenta o la contraseña que ingresaste son incorrectos.",
           @"El campo del ID de Apple está vacío",
           @"iForgot…",
           @"Has intentado verificar tu identidad demasiadas veces sin éxito. Por motivos de seguridad, no podrás hacer cambios en la cuenta en las próximas ocho horas a menos que uses la clave de recuperación.",
           @"No hay información disponible sobre el dispositivo.",
           @"¿Olvidaste tu ID o contraseña?",
           @"Este Apple ID se desactivó por motivos de seguridad. Puedes restablecer tu contraseña en %@.",
           @"Autenticar como %@ con Touch ID",
           @"El usuario canceló la autenticación",
           @"El número que acaba en %@",
           @"Se ha desactivado la verificación en dos pasos para la cuenta del Apple ID %@.");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_es_MX;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end