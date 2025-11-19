@interface SXPasteboardActionActivity
- (SXPasteboardActionActivity)initWithLabel:(id)a3 image:(id)a4 type:(unint64_t)a5 pasteboard:(id)a6 string:(id)a7;
- (SXPasteboardActionActivity)initWithLabel:(id)a3 type:(unint64_t)a4 pasteboard:(id)a5 string:(id)a6;
- (void)invokeWithAction:(id)a3 invocationMethod:(unint64_t)a4;
@end

@implementation SXPasteboardActionActivity

- (SXPasteboardActionActivity)initWithLabel:(id)a3 type:(unint64_t)a4 pasteboard:(id)a5 string:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v20.receiver = self;
    v20.super_class = SXPasteboardActionActivity;
    v14 = [(SXPasteboardActionActivity *)&v20 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_label, a3);
      v15->_type = a4;
      objc_storeStrong(&v15->_pasteboard, a5);
      v16 = [v13 copy];
      string = v15->_string;
      v15->_string = v16;
    }

    self = v15;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (SXPasteboardActionActivity)initWithLabel:(id)a3 image:(id)a4 type:(unint64_t)a5 pasteboard:(id)a6 string:(id)a7
{
  v13 = a4;
  v14 = [(SXPasteboardActionActivity *)self initWithLabel:a3 type:a5 pasteboard:a6 string:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_image, a4);
  }

  return v15;
}

- (void)invokeWithAction:(id)a3 invocationMethod:(unint64_t)a4
{
  v6 = [(SXPasteboardActionActivity *)self pasteboard:a3];
  v5 = [(SXPasteboardActionActivity *)self string];
  [v6 setString:v5];
}

@end