@interface VoiceDialRecognitionAction
- (VoiceDialRecognitionAction)initWithPhoneNumber:(id)number uid:(int)uid;
- (id)perform;
@end

@implementation VoiceDialRecognitionAction

- (VoiceDialRecognitionAction)initWithPhoneNumber:(id)number uid:(int)uid
{
  numberCopy = number;
  v8 = [(VoiceDialRecognitionAction *)self init];
  if (v8)
  {
    if ([numberCopy length])
    {
      objc_storeStrong(&v8->_phoneNumber, number);
      v8->_uid = uid;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (id)perform
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = VoiceDialNumberToDialForNumber(self->_phoneNumber);
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uid = self->_uid;
    *buf = 138412546;
    v22 = v3;
    v23 = 1024;
    LODWORD(v24) = uid;
    _os_log_impl(&dword_295FD5000, v4, OS_LOG_TYPE_DEFAULT, "Performing voice dial for phone number %@ and address book record ID %d", buf, 0x12u);
  }

  v6 = objc_alloc_init(MEMORY[0x29EDB8BB0]);
  v7 = [v6 contactFromPersonID:self->_uid keysToFetch:MEMORY[0x29EDB8E90]];

  identifier = [v7 identifier];
  v9 = objc_alloc_init(MEMORY[0x29EDC6F80]);
  v10 = objc_alloc(MEMORY[0x29EDC6F98]);
  telephonyProvider = [v9 telephonyProvider];
  v12 = [v10 initWithProvider:telephonyProvider];

  v13 = [objc_alloc(MEMORY[0x29EDC6FA0]) initWithType:2 value:v3];
  [v12 setHandle:v13];

  [v12 setContactIdentifier:identifier];
  [v12 setOriginatingUIType:42];
  v14 = PHDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v12 URL];
    *buf = 138412546;
    v22 = v12;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_295FD5000, v14, OS_LOG_TYPE_DEFAULT, "Using dial request %@ to set URL %@", buf, 0x16u);
  }

  v16 = [v12 URL];
  [(VSRecognitionURLAction *)self setURL:v16];

  v20.receiver = self;
  v20.super_class = VoiceDialRecognitionAction;
  perform = [(VSRecognitionURLAction *)&v20 perform];

  v18 = *MEMORY[0x29EDCA608];

  return perform;
}

@end