@interface ACMLocale_id
- (ACMLocale_id)init;
- (void)dealloc;
@end

@implementation ACMLocale_id

- (ACMLocale_id)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_id;
  v2 = [(ACMLocale_id *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Kolom kata sandi kosong",  @"Batalkan",  @"Masuk",  @"Kirim",  @"OKE",  @"Metode dipanggil dengan cara yang tidak tepat. Dialog AppleConnect SignIn tidak dapat disembunyikan.",  @"Parameter Tidak Valid. Beberapa parameter input diatur dengan cara yang salah.",  @"Kata sandi ID Apple",  @"Tampaknya Anda sedang offline. Silakan sambung ke Internet dan coba lagi.",  @"ID Apple atau kata sandi Anda Salah.",  @"Diperlukan verifikasi dua langkah, tetapi interaksi pengguna tidak diizinkan.",  @"PERANGKAT TEPERCAYA",  @"Untuk mengelola perangkat tepercaya Anda, kunjungi %@ melalui Mac atau PC.",  @"Gagal membuat tiket layanan yang valid",  @"Respons verifikasi dua langkah kosong.",  @"SMS ke Nomor Telepon",  @"Perangkat yang Anda pilih di bawah akan dikirimi kode sementara yang dapat Anda gunakan untuk memverifikasi identitas Anda.",  @"Memori Habis",  @"johan.ramli",  @"Kirimkan kode ke %@",  @"Pemanggilan metode tidak benar",  @"Anda telah terlalu banyak gagal untuk memverifikasi kode. Harap kirimkan kode baru ke perangkat yang berbeda atau coba lagi nanti.",  @"Token Data Tidak Valid. Token Data untuk verifikasi tidak valid.",  @"Autentikasi dibatalkan oleh aplikasi",  @"Panjang kode sandi tidak valid",  @"Kode Verifikasi",  @"ID Apple ini telah dinonaktifkan karena alasan keamanan. Anda dapat mengatur ulang kata sandi Anda di %@.",  @"Tidak dapat menerima pesan pada semua perangkat Anda?",  @"Kirim kode baru",  @"Ups, telah terjadi kesalahan. Terima kasih atas kesabaran Anda. Harap coba lagi nanti.",  @"Diperlukan",  @"Tidak dapat menemukan orang ini.",  @"Masukkan kode verifikasi",  @"Perangkat tidak ditemukan.",  @"ID Apple",  @"Verifikasi dua langkah telah diaktifkan untuk ID Apple ini.",  @"Tidak dapat memverifikasi token.",  @"Kata Sandi",  @"Untuk melindungi keamanan akun Anda, sekarang adalah waktunya untuk mengatur ulang kata sandi Anda. Mudah, cukup masuk ke %@.",  @"Waktu saat ini pada perangkat tampaknya salah. Anda dapat memperbaikinya dengan masuk ke Pengaturan > Umum > Tanggal & Waktu, lalu coba lagi.",  @"Gagal membuat token SSO yang valid",  @"Kode verifikasi yang Anda masukkan tidak valid.",  @"Lanjutkan",  @"Verifikasi Identitas",  @"Autentikasi dibatalkan oleh sistem",  @"Hasilkan kode dengan %@",  @"Daftar perangkat kosong.",
           @"Sesi Tidak Valid.",
           @"Respons dari server buruk",
           @"Anda telah mengirimkan terlalu banyak kode untuk memverifikasi nomor telepon Anda. Harap coba lagi nanti.",
           @"telepon yang berakhiran dengan %@",
           @"Nama akun atau kata sandi yang Anda masukkan salah.",
           @"Kolom ID Apple kosong",
           @"iForgot…",
           @"Maaf, Anda telah membuat terlalu banyak upaya gagal untuk memverifikasi identitas Anda. Untuk tujuan pengamanan, Anda tidak akan dapat membuat perubahan pada akun selama delapan jam ke depan tanpa Kunci Pemulihan Anda.",
           @"Informasi Perangkat tidak tersedia.",
           @"Lupa ID atau Kata Sandi Anda?",
           @"ID Apple ini telah dinonaktifkan karena alasan keamanan. Anda dapat mengatur ulang kata sandi Anda di %@.",
           @"Autentikasikan sebagai %@ Dengan Touch ID",
           @"Autentikasi dibatalkan oleh pengguna",
           @"Nomor yang berakhir dengan %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_id;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end