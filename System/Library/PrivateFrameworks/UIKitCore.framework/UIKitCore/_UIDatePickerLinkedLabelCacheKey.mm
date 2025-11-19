@interface _UIDatePickerLinkedLabelCacheKey
+ (id)keyWithText:(id)a3 font:(id)a4 height:(double)a5;
- (BOOL)isEqual:(id)a3;
- (_UIDatePickerLinkedLabelCacheKey)initWithText:(id)a3 font:(id)a4 height:(double)a5;
- (unint64_t)hash;
@end

@implementation _UIDatePickerLinkedLabelCacheKey

+ (id)keyWithText:(id)a3 font:(id)a4 height:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithText:v9 font:v8 height:a5];

  return v10;
}

- (_UIDatePickerLinkedLabelCacheKey)initWithText:(id)a3 font:(id)a4 height:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _UIDatePickerLinkedLabelCacheKey;
  v11 = [(_UIDatePickerLinkedLabelCacheKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, a3);
    objc_storeStrong(&v12->_font, a4);
    v12->_height = a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if ([(_UIDatePickerLinkedLabelCacheKey *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = self->_height == v5->_height && [(UIFont *)self->_font isEqual:v5->_font]&& [(NSString *)self->_text isEqualToString:v5->_text];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end