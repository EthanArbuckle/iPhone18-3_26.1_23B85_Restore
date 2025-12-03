@interface VoiceDialFacetimeRecognitionAction
- (VoiceDialFacetimeRecognitionAction)initWithContactInfo:(id)info uid:(int)uid;
- (id)perform;
@end

@implementation VoiceDialFacetimeRecognitionAction

- (VoiceDialFacetimeRecognitionAction)initWithContactInfo:(id)info uid:(int)uid
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = VoiceDialFacetimeRecognitionAction;
  v8 = [(VoiceDialFacetimeRecognitionAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactInfo, info);
    v9->_abID = uid;
  }

  return v9;
}

- (id)perform
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = [(VSRecognitionURLAction *)self URL];

  if (!v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      contactInfo = self->_contactInfo;
      abID = self->_abID;
      *buf = 138412546;
      v23 = contactInfo;
      v24 = 1024;
      LODWORD(v25) = abID;
      _os_log_impl(&dword_295FD5000, v4, OS_LOG_TYPE_DEFAULT, "Performing FaceTime voice dial for destination ID %@ and address book record ID %d", buf, 0x12u);
    }

    v7 = objc_alloc_init(MEMORY[0x29EDB8BB0]);
    v8 = [v7 contactFromPersonID:self->_abID keysToFetch:MEMORY[0x29EDB8E90]];

    identifier = [v8 identifier];
    v10 = objc_alloc_init(MEMORY[0x29EDC6F80]);
    v11 = objc_alloc(MEMORY[0x29EDC6F98]);
    faceTimeProvider = [v10 faceTimeProvider];
    v13 = [v11 initWithProvider:faceTimeProvider];

    v14 = [MEMORY[0x29EDC6FA0] handleWithDestinationID:self->_contactInfo];
    [v13 setHandle:v14];

    [v13 setContactIdentifier:identifier];
    [v13 setOriginatingUIType:42];
    v15 = PHDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v13 URL];
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_295FD5000, v15, OS_LOG_TYPE_DEFAULT, "Using dial request %@ to set URL %@", buf, 0x16u);
    }

    v17 = [v13 URL];
    [(VSRecognitionURLAction *)self setURL:v17];
  }

  v21.receiver = self;
  v21.super_class = VoiceDialFacetimeRecognitionAction;
  perform = [(VSRecognitionURLAction *)&v21 perform];
  v19 = *MEMORY[0x29EDCA608];

  return perform;
}

@end