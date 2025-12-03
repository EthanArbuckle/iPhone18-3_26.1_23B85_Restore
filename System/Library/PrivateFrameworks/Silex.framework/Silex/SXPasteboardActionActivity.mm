@interface SXPasteboardActionActivity
- (SXPasteboardActionActivity)initWithLabel:(id)label image:(id)image type:(unint64_t)type pasteboard:(id)pasteboard string:(id)string;
- (SXPasteboardActionActivity)initWithLabel:(id)label type:(unint64_t)type pasteboard:(id)pasteboard string:(id)string;
- (void)invokeWithAction:(id)action invocationMethod:(unint64_t)method;
@end

@implementation SXPasteboardActionActivity

- (SXPasteboardActionActivity)initWithLabel:(id)label type:(unint64_t)type pasteboard:(id)pasteboard string:(id)string
{
  labelCopy = label;
  pasteboardCopy = pasteboard;
  stringCopy = string;
  if (stringCopy)
  {
    v20.receiver = self;
    v20.super_class = SXPasteboardActionActivity;
    v14 = [(SXPasteboardActionActivity *)&v20 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_label, label);
      v15->_type = type;
      objc_storeStrong(&v15->_pasteboard, pasteboard);
      v16 = [stringCopy copy];
      string = v15->_string;
      v15->_string = v16;
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SXPasteboardActionActivity)initWithLabel:(id)label image:(id)image type:(unint64_t)type pasteboard:(id)pasteboard string:(id)string
{
  imageCopy = image;
  v14 = [(SXPasteboardActionActivity *)self initWithLabel:label type:type pasteboard:pasteboard string:string];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_image, image);
  }

  return v15;
}

- (void)invokeWithAction:(id)action invocationMethod:(unint64_t)method
{
  v6 = [(SXPasteboardActionActivity *)self pasteboard:action];
  string = [(SXPasteboardActionActivity *)self string];
  [v6 setString:string];
}

@end