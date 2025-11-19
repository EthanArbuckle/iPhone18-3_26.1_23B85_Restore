@interface ACMLocale_tr
- (ACMLocale_tr)init;
- (void)dealloc;
@end

@implementation ACMLocale_tr

- (ACMLocale_tr)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_tr;
  v2 = [(ACMLocale_tr *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Parola alanı boş",  @"İptal",  @"Giriş yap",  @"Gönder",  @"Tamam",  @"Yanlış yöntem talebi. AppleConnect SignIn iletişim kutusu gizlenemiyor.",  @"Geçersiz Parametreler. Bazı giriş parametreleri yanlış ayarlanmış.",  @"Apple Kimliği parolası",  @"Çevrimdışı görünüyorsunuz. Lütfen internete bağlanın ve tekrar deneyin.",  @"Apple Kimliğiniz veya parolanız doğru girilmedi.",  @"İki aşamalı doğrulama gerekiyor, ancak kullanıcı etkileşimine izin verilmiyor.",  @"GÜVENİLİR AYGITLAR",  @"Güvenilir aygıtlarınızı yönetmek için Mac veya bilgisayardan %@ sayfasını ziyaret edin.",  @"Geçerli hizmet talep formu oluşturulamadı",  @"İki aşamalı doğrulama yanıt alanı boş.",  @"Telefon Numarasına SMS Gönder",  @"Aşağıda seçtiğiniz aygıta kimliğinizi doğrulamak için kullanabileceğiniz geçici bir kod gönderilecek.",  @"Yetersiz Hafıza",  @"ad.soyad",  @"Şuraya kod gönder: %@",  @"Beklenmedik yöntem çağırma",  @"Kodu doğrulamada birçok kez başarısız oldunuz. Lütfen başka bir aygıta yeni bir kod gönderin veya daha sonra tekrar deneyin.",  @"Geçersiz Veri Belirteci. Doğrulanacak Veri Belirteci geçerli değil.",  @"Kimlik doğrulama uygulama tarafından iptal edildi",  @"Geçersiz parola uzunluğu",  @"Doğrulama Kodu",  @"Bu hesap adı güvenlik nedenlerinden dolayı devre dışı bırakıldı. Parolanızı %@ adresinde sıfırlayabilirsiniz.",  @"Aygıtlarınızda mesaj alamıyor musunuz?",  @"Yeni bir kod gönder",  @"Bir hata oluştu. Lütfen daha sonra tekrar deneyin.",  @"Gerekli",  @"Bu kişi bulunamıyor.",  @"Doğrulama kodunu girin",  @"Aygıt bulunamadı.",  @"Apple Kimliği",  @"Bu Apple Kimliği için iki aşamalı doğrulama etkin.",  @"Belirteç doğrulanamıyor.",  @"Parola",  @"Güvenliğinizi korumak için parolanızı sıfırlamanın zamanı geldi. Tek yapmanız gereken %@ adresini ziyaret etmek.",  @"Bu aygıttaki geçerli saat yanlış görünüyor. Ayarlar > Genel > Tarih ve Saat'e giderek düzeltebilir ve tekrar deneyebilirsiniz.",  @"Geçerli SSO belirteci oluşturulamadı",  @"Girdiğiniz doğrulama kodu geçerli değil.",  @"Devam",  @"Kimliğinizi Doğrulayın",  @"Kimlik doğrulama sistem tarafından iptal edildi",  @"%@ ile kod oluştur",  @"Aygıt listesi boş.",
           @"Geçersiz Oturum",
           @"Hatalı sunucu yanıtı",
           @"Telefon numaranızı doğrulamak için çok fazla kod gönderdiniz. Lütfen daha sonra tekrar deneyin.",
           @"sonu %@ ile biten telefon numarası",
           @"Hesap adınız veya parolanız yanlış girilmiş.",
           @"Apple Kimliği alanı boş",
           @"iForgot…",
           @"Üzgünüz, ancak kimliğinizi doğrulamak için çok fazla başarısız girişimde bulundunuz. Güvenlik nedeniyle Kurtarma Anahtarı'nız olmadan önümüzdeki sekiz saat boyunca hesabınızda değişiklik yapamayacaksınız.",
           @"Herhangi bir Aygıt bilgisi yok.",
           @"Kimliğinizi veya Parolanızı mı unuttunuz?",
           @"Bu Apple Kimliği güvenlik nedenlerinden dolayı devre dışı bırakıldı. Parolanızı %@ adresinde sıfırlayabilirsiniz.",
           @"Touch ID ile %@ olarak kimliği doğrulayın",
           @"Kimlik doğrulama kullanıcı tarafından iptal edildi",
           @"Sonu %@ ile biten numara");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_tr;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end