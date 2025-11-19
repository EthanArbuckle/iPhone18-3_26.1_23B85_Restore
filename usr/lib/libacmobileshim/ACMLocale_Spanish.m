@interface ACMLocale_Spanish
- (ACMLocale_Spanish)init;
- (void)dealloc;
@end

@implementation ACMLocale_Spanish

- (ACMLocale_Spanish)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_Spanish;
  v2 = [(ACMLocale_Spanish *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"El campo de la contraseña está vacío",  @"Cancelar",  @"Iniciar sesión",  @"Enviar",  @"Aceptar",  @"Error de llamada al método. El diálogo de inicio de sesión de AppleConnect no se puede ocultar.",  @"Parámetros no válidos. Algunos parámetros de entrada se han establecido de forma incorrecta.",  @"Contraseña del ID de Apple",  @"Parece que no tienes conexión. Conéctate a Internet e inténtalo de nuevo.",  @"El ID de Apple o la contraseña introducidos son incorrectos.",  @"Se requiere la verificación en dos pasos pero no se permite la interacción del usuario.",  @"DISPOSITIVOS DE CONFIANZA",  @"Para gestionar tus dispositivos de confianza, ve a %@ desde un Mac o PC.",  @"No se ha podido crear un ticket de servicio válido",  @"La respuesta de la verificación en dos pasos está en blanco.",  @"Enviar un SMS al número de teléfono",  @"Se enviará un código de seguridad provisional al dispositivo que selecciones a continuación; utilízalo para verificar tu identidad.",
           @"Memoria agotada",
           @"juan.lopezruiz",
           @"Enviar código a %@",
           @"Invocación de método inesperada",
           @"Has sobrepasado el límite de intentos de verificación del código. Envía un nuevo código a otro dispositivo o inténtalo de nuevo más tarde.",
           @"Identificador de datos no válido. El identificador de datos para la verificación no es válido.",
           @"La aplicación ha cancelado la autenticación",
           @"Longitud de código no válida",
           @"Código de verificación",
           @"Esta cuenta se ha desactivado por motivos de seguridad. Puedes restablecer la contraseña en %@.",
           @"¿No puedes recibir mensajes en ninguno de tus dispositivos?",
           @"Enviar un código nuevo",
           @"Se ha producido un error. Vuelve a intentarlo más tarde. Gracias por tu paciencia.",
           @"Obligatorio",
           @"No se encuentra a esta persona.",
           @"Introducir el código de verificación",
           @"Dispositivo no encontrado.",
           @"ID de Apple",
           @"La verificación en dos pasos está activada para este ID de Apple. ",
           @"No se puede verificar el identificador.",
           @"Contraseña",
           @"Restablece la contraseña para proteger tu seguridad. El procedimiento es sencillo: ve a %@.",
           @"Parece que la hora actual del dispositivo es incorrecta. Puedes modificarla en Ajustes > General > Fecha y hora, y volver a intentarlo.",
           @"No se ha podido crear un identificador de SSO válido",
           @"El código de seguridad que has introducido no es válido.",
           @"Continuar",
           @"Verificar la identidad",
           @"El sistema ha cancelado la autenticación",
           @"Generar código con %@",
           @"La lista de dispositivos está vacía.",
           @"Sesión no válida.",
           @"La respuesta del servidor no está bien formada",
           @"Has enviado demasiados códigos para verificar tu número de teléfono. Vuelve a intentarlo más tarde.",
           @"teléfono que termina en %@",
           @"El nombre de la cuenta o la contraseña que has introducido son incorrectos.",
           @"El campo del ID de Apple está vacío",
           @"iForgot…",
           @"Has intentado verificar tu identidad demasiadas veces sin éxito. Por motivos de seguridad, no podrás hacer cambios en la cuenta en las próximas ocho horas a menos que uses la clave de recuperación.",
           @"No hay información disponible sobre el dispositivo.",
           @"¿Has olvidado tu ID o tu contraseña?",
           @"Este ID de Apple se ha desactivado por motivos de seguridad. Puedes restablecer la contraseña en %@.",
           @"Autenticar como %@ con Touch ID",
           @"El usuario ha cancelado la autenticación",
           @"El número acabado en %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_Spanish;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end