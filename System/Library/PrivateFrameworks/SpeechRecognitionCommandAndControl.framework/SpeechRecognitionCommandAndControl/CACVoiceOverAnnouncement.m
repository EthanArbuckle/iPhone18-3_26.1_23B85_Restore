@interface CACVoiceOverAnnouncement
- (CACVoiceOverAnnouncement)initWithMessage:(id)a3 type:(int64_t)a4 completion:(id)a5;
@end

@implementation CACVoiceOverAnnouncement

- (CACVoiceOverAnnouncement)initWithMessage:(id)a3 type:(int64_t)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CACVoiceOverAnnouncement;
  v11 = [(CACVoiceOverAnnouncement *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, a3);
    v12->_type = a4;
    v13 = _Block_copy(v10);
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

@end