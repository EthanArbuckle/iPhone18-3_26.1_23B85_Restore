@interface VKFeedbackAttachment
- (VKFeedbackAttachment)initWithFileName:(id)name label:(id)label isOptional:(BOOL)optional;
@end

@implementation VKFeedbackAttachment

- (VKFeedbackAttachment)initWithFileName:(id)name label:(id)label isOptional:(BOOL)optional
{
  nameCopy = name;
  labelCopy = label;
  v14.receiver = self;
  v14.super_class = VKFeedbackAttachment;
  v11 = [(VKFeedbackAttachment *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fileName, name);
    objc_storeStrong(&v12->_label, label);
    v12->_isOptional = optional;
  }

  return v12;
}

@end