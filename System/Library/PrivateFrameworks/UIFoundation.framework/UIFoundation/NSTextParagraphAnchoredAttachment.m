@interface NSTextParagraphAnchoredAttachment
- (CGRect)frame;
- (NSTextParagraphAnchoredAttachment)initWithTextAttachment:(id)a3 position:(unint64_t)a4;
@end

@implementation NSTextParagraphAnchoredAttachment

- (NSTextParagraphAnchoredAttachment)initWithTextAttachment:(id)a3 position:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NSTextParagraphAnchoredAttachment;
  v8 = [(NSTextParagraphAnchoredAttachment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textAttachment, a3);
    v9->_position = a4;
    v9->_excludesText = 1;
  }

  return v9;
}

- (CGRect)frame
{
  objc_copyStruct(v6, &self->_frame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end