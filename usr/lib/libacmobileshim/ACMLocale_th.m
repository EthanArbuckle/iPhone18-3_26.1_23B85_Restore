@interface ACMLocale_th
- (ACMLocale_th)init;
- (void)dealloc;
@end

@implementation ACMLocale_th

- (ACMLocale_th)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_th;
  v2 = [(ACMLocale_th *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"ช่องรหัสผ่านว่างอยู่",  @"ยกเลิก",  @"เข้าสู่ระบบ",  @"ส่ง",  @"ตกลง",  @"มีการเรียกใช้วิธีดำเนินการอย่างไม่ถูกต้อง ไม่สามารถซ่อนกล่องโต้ตอบการลงชื่อเข้าใช้ AppleConnect ได้",  @"พารามิเตอร์ไม่ถูกต้อง มีการตั้งค่าพารามิเตอร์อินพุทบางรายการไม่ถูกต้อง",  @"รหัสผ่าน Apple ID",  @"คุณมีสถานะออฟไลน์อยู่ โปรดเชื่อมต่อเข้าอินเทอร์เน็ต และลองอีกครั้ง",  @"Apple ID หรือรหัสผ่านของคุณที่คุณป้อนไม่ถูกต้อง",  @"ต้องใช้การตรวจสอบยืนยันสองขั้นตอน แต่ไม่อนุญาตให้ผู้ใช้มีการโต้ตอบ",  @"อุปกรณ์ที่เชื่อถือได้",  @"ในการจัดการอุปกรณ์ที่เชื่อถือได้ โปรดไปที่ %@ จากเครื่อง Mac หรือ PC",  @"ล้มเหลวในการสร้างบัตรผ่านของการบริการที่ถูกต้อง",  @"ผลการตอบสนองต่อการตรวจสอบยืนยันสองขั้นตอนว่างเปล่า",  @"ส่ง SMS ถึงหมายเลขโทรศัพท์",  @"จะมีการส่งรหัสชั่วคราวไปยังอุปกรณ์ที่คุณเลือกด้านล่าง ซึ่งคุณสามารถใช้ยืนยันตัวตนของคุณ",  @"หน่วยความจำไม่เพียงพอ",  @"john.appleseed",  @"ส่งรหัสไปยัง %@",  @"การเรียกวิธีการ (Method Invocation) ที่ไม่คาดคิดเกิดขึ้น",  @"คุณยืนยันรหัสไม่สำเร็จหลายครั้ง โปรดส่งรหัสใหม่ไปยังอุปกรณ์อื่นหรือลองอีกครั้งในภายหลัง",  @"โทเค็นข้อมูลไม่ถูกต้อง โทเค็นข้อมูลสำหรับตรวจสอบยืนยันไม่ถูกต้อง",  @"การรับรองความถูกต้องถูกยกเลิกโดยแอปพลิเคชัน",  @"ความยาวของรหัสผ่านไม่ถูกต้อง",  @"รหัสการตรวจสอบยืนยัน",  @"บัญชีนี้ถูกปิดใช้งานด้วยเหตุผลด้านความปลอดภัย คุณสามารถรีเซ็ตรหัสผ่านของคุณได้ที่ %@",  @"ไม่สามารถรับข้อความบนอุปกรณ์ใดๆ ของคุณเลยใช่หรือไม่?",  @"ส่งรหัสใหม่",  @"ขออภัยสำหรับข้อผิดพลาดที่เกิดขึ้น ขอบคุณสำหรับความอดทนของคุณ โปรดลองอีกครั้งในภายหลัง",  @"ต้องระบุ",  @"ค้นหาไม่พบบุคคลนี้",  @"ป้อนรหัสการตรวจสอบยืนยัน",  @"ไม่พบอุปกรณ์",  @"Apple ID",  @"การตรวจสอบยืนยันสองขั้นตอนได้ถูกเปิดใช้งานแล้วสำหรับ Apple ID นี้",  @"ไม่สามารถตรวจสอบยืนยันโทเค็น",  @"รหัสผ่าน",  @"เพื่อรักษาความปลอดภัยของคุณ ถึงเวลาแล้วสำหรับการรีเซ็ตรหัสผ่านของคุณ ซึ่งทำได้ง่ายมาก เพียงไปที่ %@",  @"เวลาปัจจุบันบนอุปกรณ์นี้ไม่ถูกต้อง คุณสามารถแก้ไขได้โดยไปที่ การตั้งค่า > ทั่วไป > วันที่และเวลา จากนั้นลองอีกครั้ง",  @"ล้มเหลวในการสร้างโทเค็น SSO ที่ถูกต้อง",  @"รหัสการตรวจสอบยืนยันที่คุณป้อนไม่ถูกต้อง",  @"ดำเนินการต่อ",  @"ยืนยันตัวตนของคุณ",  @"การรับรองความถูกต้องถูกยกเลิกโดยระบบ",  @"สร้างรหัสด้วย %@",  @"รายการอุปกรณ์ว่างเปล่า",
           @"เซสชันไม่ถูกต้อง",
           @"รูปแบบการตอบรับจากเซิร์ฟเวอร์ไม่ถูกต้อง",
           @"คุณได้ส่งรหัสจำนวนมากเกินไปในการยืนยันหมายเลขโทรศัพท์ของคุณ โปรดลองอีกครั้งในภายหลัง",
           @"โทรศัพท์ที่ลงท้ายด้วย %@",
           @"มีการป้อนชื่อบัญชีหรือรหัสผ่านของคุณไม่ถูกต้อง",
           @"ช่อง Apple ID ว่างอยู่",
           @"iForgot…",
           @"ขออภัย แต่คุณได้พยายามยืนยันตัวตนของคุณที่ผิดหลายครั้งมากเกินไป เพื่อเหตุผลด้านความปลอดภัย คุณจะไม่สามารถทำการเปลี่ยนแปลงกับบัญชีผู้ใช้ของคุณเป็นเวลา 8 ชั่วโมงต่อจากนี้ หากคุณไม่มีรหัสการกู้คืน",
           @"ไม่มีข้อมูลอุปกรณ์",
           @"ลืม ID หรือรหัสผ่านของคุณใช่หรือไม่?",
           @"Apple ID นี้ถูกปิดใช้งานด้วยเหตุผลด้านความปลอดภัย คุณสามารถรีเซ็ตรหัสผ่านของคุณได้ที่ %@",
           @"รับรองความถูกต้องว่าเป็น %@ ด้วย Touch ID",
           @"การรับรองความถูกต้องถูกยกเลิกโดยผู้ใช้",
           @"หมายเลขที่ลงท้ายด้วย %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_th;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end