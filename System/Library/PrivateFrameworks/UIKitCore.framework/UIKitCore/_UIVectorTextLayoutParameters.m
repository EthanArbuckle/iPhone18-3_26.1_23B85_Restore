@interface _UIVectorTextLayoutParameters
+ (id)parametersSuitableForView:(id)a3;
- (BOOL)isEqualToParameters:(id)a3;
- (CGSize)withinSize;
- (_UIVectorTextLayoutParameters)initWithParameters:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_copyFromParameters:(id)a3;
@end

@implementation _UIVectorTextLayoutParameters

+ (id)parametersSuitableForView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 traitCollection];
  [v4 setTraitCollection:v5];

  [v3 bounds];
  v7 = v6;
  v9 = v8;

  [v4 setWithinSize:{v7, v9}];

  return v4;
}

- (_UIVectorTextLayoutParameters)initWithParameters:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIVectorTextLayoutParameters;
  v5 = [(_UIVectorTextLayoutParameters *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIVectorTextLayoutParameters *)v5 _copyFromParameters:v4];
  }

  return v6;
}

- (void)_copyFromParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 attributedText];
  [(_UIVectorTextLayoutParameters *)self setAttributedText:v5];

  -[_UIVectorTextLayoutParameters setNumberOfLines:](self, "setNumberOfLines:", [v4 numberOfLines]);
  [v4 withinSize];
  [(_UIVectorTextLayoutParameters *)self setWithinSize:?];
  v6 = [v4 traitCollection];
  [(_UIVectorTextLayoutParameters *)self setTraitCollection:v6];

  v7 = [v4 lineBreakMode];

  [(_UIVectorTextLayoutParameters *)self setLineBreakMode:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithParameters:self];
}

- (BOOL)isEqualToParameters:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[_UIVectorTextLayoutParameters numberOfLines](self, "numberOfLines"), v5 == [v4 numberOfLines]) && (v6 = -[_UIVectorTextLayoutParameters lineBreakMode](self, "lineBreakMode"), v6 == objc_msgSend(v4, "lineBreakMode")) && (-[_UIVectorTextLayoutParameters withinSize](self, "withinSize"), v8 = v7, objc_msgSend(v4, "withinSize"), v8 == v9) && (-[_UIVectorTextLayoutParameters withinSize](self, "withinSize"), v11 = v10, objc_msgSend(v4, "withinSize"), v11 == v12))
  {
    v13 = [(_UIVectorTextLayoutParameters *)self attributedText];
    v14 = [v4 attributedText];
    v15 = [v13 isEqualToAttributedString:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGSize)withinSize
{
  width = self->_withinSize.width;
  height = self->_withinSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end