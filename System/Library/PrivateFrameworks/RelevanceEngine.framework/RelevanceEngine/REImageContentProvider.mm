@interface REImageContentProvider
+ (REImageContentProvider)imageContentProviderWithOnePieceImage:(id)image;
+ (REImageContentProvider)imageContentProviderWithOnePieceImage:(id)image twoPieceForegroundImage:(id)foregroundImage twoPieceBackgroundImage:(id)backgroundImage;
- (REImageContentProvider)initWithCoder:(id)coder;
- (REImageContentProvider)initWithImage:(id)image foregroundImage:(id)foregroundImage backgroundImage:(id)backgroundImage;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REImageContentProvider

+ (REImageContentProvider)imageContentProviderWithOnePieceImage:(id)image
{
  imageCopy = image;
  v5 = [[self alloc] initWithImage:imageCopy foregroundImage:0 backgroundImage:0];

  return v5;
}

+ (REImageContentProvider)imageContentProviderWithOnePieceImage:(id)image twoPieceForegroundImage:(id)foregroundImage twoPieceBackgroundImage:(id)backgroundImage
{
  backgroundImageCopy = backgroundImage;
  foregroundImageCopy = foregroundImage;
  imageCopy = image;
  v11 = [[self alloc] initWithImage:imageCopy foregroundImage:foregroundImageCopy backgroundImage:backgroundImageCopy];

  return v11;
}

- (REImageContentProvider)initWithImage:(id)image foregroundImage:(id)foregroundImage backgroundImage:(id)backgroundImage
{
  imageCopy = image;
  foregroundImageCopy = foregroundImage;
  backgroundImageCopy = backgroundImage;
  v19.receiver = self;
  v19.super_class = REImageContentProvider;
  v11 = [(REImageContentProvider *)&v19 init];
  if (v11)
  {
    v12 = [imageCopy copy];
    onePieceImage = v11->_onePieceImage;
    v11->_onePieceImage = v12;

    v14 = [backgroundImageCopy copy];
    twoPieceBackgroundImage = v11->_twoPieceBackgroundImage;
    v11->_twoPieceBackgroundImage = v14;

    v16 = [foregroundImageCopy copy];
    twoPieceForegroundImage = v11->_twoPieceForegroundImage;
    v11->_twoPieceForegroundImage = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  onePieceImage = self->_onePieceImage;
  twoPieceForegroundImage = self->_twoPieceForegroundImage;
  twoPieceBackgroundImage = self->_twoPieceBackgroundImage;

  return [v4 initWithImage:onePieceImage foregroundImage:twoPieceForegroundImage backgroundImage:twoPieceBackgroundImage];
}

- (void)encodeWithCoder:(id)coder
{
  onePieceImage = self->_onePieceImage;
  coderCopy = coder;
  [coderCopy encodeObject:onePieceImage forKey:@"onePieceImage"];
  [coderCopy encodeObject:self->_twoPieceForegroundImage forKey:@"twoPieceForeground"];
  [coderCopy encodeObject:self->_twoPieceBackgroundImage forKey:@"twoPieceBackground"];
}

- (REImageContentProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onePieceImage"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"twoPieceForeground"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"twoPieceBackground"];

  v8 = [(REImageContentProvider *)self initWithImage:v5 foregroundImage:v6 backgroundImage:v7];
  return v8;
}

@end