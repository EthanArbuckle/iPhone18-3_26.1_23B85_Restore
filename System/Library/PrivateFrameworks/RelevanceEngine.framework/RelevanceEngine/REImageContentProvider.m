@interface REImageContentProvider
+ (REImageContentProvider)imageContentProviderWithOnePieceImage:(id)a3;
+ (REImageContentProvider)imageContentProviderWithOnePieceImage:(id)a3 twoPieceForegroundImage:(id)a4 twoPieceBackgroundImage:(id)a5;
- (REImageContentProvider)initWithCoder:(id)a3;
- (REImageContentProvider)initWithImage:(id)a3 foregroundImage:(id)a4 backgroundImage:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REImageContentProvider

+ (REImageContentProvider)imageContentProviderWithOnePieceImage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithImage:v4 foregroundImage:0 backgroundImage:0];

  return v5;
}

+ (REImageContentProvider)imageContentProviderWithOnePieceImage:(id)a3 twoPieceForegroundImage:(id)a4 twoPieceBackgroundImage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithImage:v10 foregroundImage:v9 backgroundImage:v8];

  return v11;
}

- (REImageContentProvider)initWithImage:(id)a3 foregroundImage:(id)a4 backgroundImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = REImageContentProvider;
  v11 = [(REImageContentProvider *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    onePieceImage = v11->_onePieceImage;
    v11->_onePieceImage = v12;

    v14 = [v10 copy];
    twoPieceBackgroundImage = v11->_twoPieceBackgroundImage;
    v11->_twoPieceBackgroundImage = v14;

    v16 = [v9 copy];
    twoPieceForegroundImage = v11->_twoPieceForegroundImage;
    v11->_twoPieceForegroundImage = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  onePieceImage = self->_onePieceImage;
  twoPieceForegroundImage = self->_twoPieceForegroundImage;
  twoPieceBackgroundImage = self->_twoPieceBackgroundImage;

  return [v4 initWithImage:onePieceImage foregroundImage:twoPieceForegroundImage backgroundImage:twoPieceBackgroundImage];
}

- (void)encodeWithCoder:(id)a3
{
  onePieceImage = self->_onePieceImage;
  v5 = a3;
  [v5 encodeObject:onePieceImage forKey:@"onePieceImage"];
  [v5 encodeObject:self->_twoPieceForegroundImage forKey:@"twoPieceForeground"];
  [v5 encodeObject:self->_twoPieceBackgroundImage forKey:@"twoPieceBackground"];
}

- (REImageContentProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"onePieceImage"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"twoPieceForeground"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"twoPieceBackground"];

  v8 = [(REImageContentProvider *)self initWithImage:v5 foregroundImage:v6 backgroundImage:v7];
  return v8;
}

@end