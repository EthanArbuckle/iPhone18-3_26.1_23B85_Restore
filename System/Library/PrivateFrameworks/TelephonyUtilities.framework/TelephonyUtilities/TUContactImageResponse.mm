@interface TUContactImageResponse
- (TUContactImageResponse)initWithCoder:(id)coder;
- (TUContactImageResponse)initWithImageData:(id)data type:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContactImageResponse

- (TUContactImageResponse)initWithImageData:(id)data type:(int64_t)type
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = TUContactImageResponse;
  v8 = [(TUContactImageResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_imageData, data);
    v9->_imageType = type;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  v7 = [(NSData *)self->_imageData description];
  [v6 appendFormat:@" imageData=%@", v7];

  [v6 appendFormat:@" imageType=%ld", self->_imageType];
  [v6 appendString:@">"];
  v8 = [v6 copy];

  return v8;
}

- (TUContactImageResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_imageData);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_imageType);
  v9 = [coderCopy decodeIntegerForKey:v8];

  v10 = [(TUContactImageResponse *)self initWithImageData:v7 type:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  imageData = self->_imageData;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_imageData);
  [coderCopy encodeObject:imageData forKey:v6];

  imageType = self->_imageType;
  v8 = NSStringFromSelector(sel_imageType);
  [coderCopy encodeInteger:imageType forKey:v8];
}

@end