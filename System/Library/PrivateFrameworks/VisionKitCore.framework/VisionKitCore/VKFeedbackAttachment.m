@interface VKFeedbackAttachment
- (VKFeedbackAttachment)initWithFileName:(id)a3 label:(id)a4 isOptional:(BOOL)a5;
@end

@implementation VKFeedbackAttachment

- (VKFeedbackAttachment)initWithFileName:(id)a3 label:(id)a4 isOptional:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = VKFeedbackAttachment;
  v11 = [(VKFeedbackAttachment *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fileName, a3);
    objc_storeStrong(&v12->_label, a4);
    v12->_isOptional = a5;
  }

  return v12;
}

@end