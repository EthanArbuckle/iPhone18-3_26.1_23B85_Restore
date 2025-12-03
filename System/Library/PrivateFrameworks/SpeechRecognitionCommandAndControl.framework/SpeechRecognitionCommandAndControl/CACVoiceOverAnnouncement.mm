@interface CACVoiceOverAnnouncement
- (CACVoiceOverAnnouncement)initWithMessage:(id)message type:(int64_t)type completion:(id)completion;
@end

@implementation CACVoiceOverAnnouncement

- (CACVoiceOverAnnouncement)initWithMessage:(id)message type:(int64_t)type completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = CACVoiceOverAnnouncement;
  v11 = [(CACVoiceOverAnnouncement *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, message);
    v12->_type = type;
    v13 = _Block_copy(completionCopy);
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

@end