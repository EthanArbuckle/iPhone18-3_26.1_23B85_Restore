@interface _UIDatePickerLinkedLabelCacheKey
+ (id)keyWithText:(id)text font:(id)font height:(double)height;
- (BOOL)isEqual:(id)equal;
- (_UIDatePickerLinkedLabelCacheKey)initWithText:(id)text font:(id)font height:(double)height;
- (unint64_t)hash;
@end

@implementation _UIDatePickerLinkedLabelCacheKey

+ (id)keyWithText:(id)text font:(id)font height:(double)height
{
  fontCopy = font;
  textCopy = text;
  v10 = [[self alloc] initWithText:textCopy font:fontCopy height:height];

  return v10;
}

- (_UIDatePickerLinkedLabelCacheKey)initWithText:(id)text font:(id)font height:(double)height
{
  textCopy = text;
  fontCopy = font;
  v14.receiver = self;
  v14.super_class = _UIDatePickerLinkedLabelCacheKey;
  v11 = [(_UIDatePickerLinkedLabelCacheKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, text);
    objc_storeStrong(&v12->_font, font);
    v12->_height = height;
  }

  return v12;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(NSString *)self->_text hash];
    result = [(UIFont *)self->_font hash]^ v4 ^ self->_height;
    self->_hash = result;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if ([(_UIDatePickerLinkedLabelCacheKey *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = self->_height == v5->_height && [(UIFont *)self->_font isEqual:v5->_font]&& [(NSString *)self->_text isEqualToString:v5->_text];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end