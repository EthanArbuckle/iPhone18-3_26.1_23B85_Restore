@interface ACMLocale_vi
- (ACMLocale_vi)init;
- (void)dealloc;
@end

@implementation ACMLocale_vi

- (ACMLocale_vi)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_vi;
  v2 = [(ACMLocale_vi *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Ô mật khẩu đang trống",  @"Hủy bỏ",  @"Đăng nhập",  @"Gửi",  @"OK",  @"Phương thức gọi không hợp lệ. Không thể ẩn cuộc đối thoại AppleConnect SignIn.",  @"Thông số Không hợp lệ. Vài thông số đã nhập không được cài đặt chính xác.",  @"Mật khẩu của ID Apple",  @"Bạn đang ngoại tuyến. Vui lòng kết nối Internet và thử lại.",  @"Bạn đã nhập ID Apple hoặc mật khẩu không chính xác. ",  @"Yêu cầu xác minh hai bước nhưng không cho phép người dùng tương tác.",  @"THIẾT BỊ TIN CẬY",  @"Để quản lý thiết bị tin cậy của bạn, hãy truy cập %@ từ máy Mac hoặc máy vi tính.",  @"Không tạo được phiếu dịch vụ hợp lệ",  @"Phản hồi xác minh hai bước đang trống.",  @"Gửi tin nhắn SMS đến Số Điện Thoại",  @"Mã tạm thời sẽ được gửi đến thiết bị được chọn dưới đây, bạn có thể sử dụng mã để xác minh nhận dạng của mình.",  @"Hết bộ nhớ",  @"trần.thủy",  @"Gửi mã đến %@",  @"Phương pháp yêu cầu hỗ trợ ngoài dự kiến",  @"Bạn đã xác minh mã quá nhiều lần không thành công. Vui lòng gửi mã mới đến một thiết bị khác hoặc thử lại sau.",  @"Mã thông báo Dữ liệu Không hợp lệ. Mã thông báo Dữ Liệu để xác minh không hợp lệ.",  @"Xác thực đã bị hủy bởi ứng dụng",  @"Độ dài mật khẩu không hợp lệ",  @"Mã Xác Minh",  @"ID Apple này đã bị tắt vì lý do bảo mật. Bạn có thể cài đặt lại mật khẩu tại %@.",  @"Bạn không nhận được thông điệp trên mọi thiết bị của mình?",  @"Gửi mã mới",  @"Đã xảy ra lỗi. Cám ơn bạn đã kiên nhẫn chờ đợi, vui lòng thử lại sau.",  @"Yêu cầu",  @"Không thể tìm người này.",  @"Nhập mã xác minh",  @"Không tìm thấy thiết bị.",  @"ID Apple",  @"Xác minh hai bước đã được kích hoạt cho ID Apple này.",  @"Không thể xác minh mã thông báo.",  @"Mật khẩu",  @"Để tăng cường bảo mật, bạn nên đặt lại mật khẩu. Hãy vào %@.",  @"Giờ hiện tại trên thiết bị này có thể không đúng. Bạn có thể đổi giờ bằng cách vào Cài Đặt > Cài đặt Chung > Ngày & Giờ, sau đó thử lại.",  @"Không tạo được mã thông báo SSO hợp lệ",  @"Mã xác minh bạn đã nhập không hợp lệ.",  @"Tiếp tục",  @"Xác Minh Nhận Dạng",  @"Xác thực đã bị hủy bởi hệ thống",  @"Tạo mã với %@",  @"Danh sách thiết bị đang trống.",
           @"Phiên Không Hợp Lệ.",
           @"Phản hồi từ máy chủ không đúng dạng",
           @"Bạn đã gửi quá nhiều mã để xác minh số điện thoại của bạn. Vui lòng thử lại sau.",
           @"số điện thoại tận cùng bằng %@",
           @"Tên tài khoản hoặc mật khẩu của bạn đã nhập không đúng.",
           @"Ô ID Apple đang trống",
           @"iForgot…",
           @"Rất tiếc là bạn đã thử xác minh nhận dạng quá nhiều lần không thành công. Vì lý do bảo mật, bạn sẽ không thể tạo thay đổi trên tài khoản trong vòng tám giờ tới nếu bạn không có Mã Khôi Phục.",
           @"Thông tin Thiết Bị không khả dụng.",
           @"Quên ID hoặc Mật khẩu?",
           @"ID Apple này đã bị tắt vì lý do bảo mật. Bạn có thể cài đặt lại mật khẩu tại %@.",
           @"Xác nhận là %@ Với Touch ID",
           @"Xác thực đã bị hủy bởi người dùng",
           @"Số tận cùng bằng %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_vi;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end