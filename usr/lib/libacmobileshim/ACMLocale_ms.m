@interface ACMLocale_ms
- (ACMLocale_ms)init;
- (void)dealloc;
@end

@implementation ACMLocale_ms

- (ACMLocale_ms)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_ms;
  v2 = [(ACMLocale_ms *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Medan kata laluan kosong",  @"Batal",  @"Daftar masuk",  @"Hantar",  @"OK",  @"Panggilan tidak wajar untuk kaedah tersebut. Dialog AppleConnect SignIn tidak boleh disembunyikan.",  @"Parameter Tidak Sah. Sesetengah parameter input disetkan dengan cara yang salah.",  @"Kata laluan Apple ID",  @"Anda mungkin berada di luar talian. Sila sambung ke Internet dan cuba lagi.",  @"Apple ID atau kata laluan anda adalah salah.",  @"Memerlukan pengesahan dua langkah, namun interaksi pengguna tidak dibenarkan.",  @"PERANTI YANG DIPERCAYAI",  @"Untuk mengurus peranti yang dipercayai, lawati %@ dari Mac atau PC.",  @"Gagal mencipta tiket perkhidmatan yang sah",  @"Respons pengesahan dua langkah tidak diisi.",  @"SMS ke Nombor Telefon",  @"Kod sementara akan dihantar ke peranti yang dipilih di bawah yang boleh digunakan untuk mengesahkan identiti anda.",  @"Kehabisan Memori",  @"johan.johari",  @"Hantarkan kod ke %@",  @"Kaedah panggilan yang tidak dijangka",  @"Anda telah banyak kali gagal untuk mengesahkan kod. Sila hantar kod baru ke peranti yang berbeza atau cuba sebentar lagi.",  @"Token Data Tidak Sah. Token Data untuk pengesahan tidak sah.",  @"Pengesahan dibatalkan oleh aplikasi",  @"Panjang kod laluan tidak sah",  @"Kod Pengesahan",  @"Nama akaun ini telah dilumpuhkan atas sebab keselamatan. Kata laluan anda boleh direset di %@.",  @"Tidak dapat menerima mesej di mana-mana peranti anda?",  @"Hantar kod baru",  @"Ralat telah berlaku. Terima kasih atas kesabaran anda, sila cuba sebentar lagi.",  @"Diperlukan",  @"Tidak dapat mencari individu ini.",  @"Masukkan kod pengesahan",  @"Peranti tidak dijumpai.",  @"Apple ID",  @"Pengesahan dua langkah telah diaktifkan untuk Apple ID ini.",  @"Tidak dapat mengesahkan token.",  @"Kata Laluan",  @"Untuk melindungi keselamatan, kata laluan anda perlu direset. Caranya mudah, hanya pergi ke %@.",  @"Waktu semasa pada peranti ini adalah salah. Anda boleh mengesetkannya dengan pergi ke Seting > Umum > Tarikh & Masa, kemudian cuba lagi.",  @"Gagal mencipta token SSO yang sah",  @"Kod pengesahan yang anda masukkan tidak sah.",  @"Teruskan",  @"Sahkan Identiti",  @"Pengesahan dibatalkan oleh sistem",  @"Janakan kod dengan %@",  @"Senarai peranti kosong.",
           @"Sesi Tidak Sah.",
           @"Respons dari pelayan adalah tidak lengkap",
           @"Anda telah menghantar terlalu banyak kod untuk mengesahkan nombor telefon anda. Sila cuba sebentar lagi.",
           @"nombor telefon yang berakhir dengan %@",
           @"Nama akaun atau kata laluan yang dimasukkan adalah salah.",
           @"Medan Apple ID kosong",
           @"iForgot…",
           @"Maaf, anda telah melakukan terlalu banyak cubaan gagal untuk mengesahkan identiti anda. Untuk tujuan keselamatan, anda tidak boleh melakukan perubahan ke akaun selama lapan jam tanpa Kunci Pemulihan.",
           @"Tiada maklumat Peranti tersedia.",
           @"Terlupa ID atau Kata Laluan anda?",
           @"Apple ID ini telah dilumpuhkan atas sebab keselamatan. Kata laluan anda boleh direset di %@.",
           @"Sahkan sebagai %@ Dengan Touch ID",
           @"Pengesahan dibatalkan oleh pengguna",
           @"Nombor berakhir dengan %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_ms;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end