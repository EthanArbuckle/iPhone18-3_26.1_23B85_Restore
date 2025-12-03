@interface _UIVectorTextLayoutParameters
+ (id)parametersSuitableForView:(id)view;
- (BOOL)isEqualToParameters:(id)parameters;
- (CGSize)withinSize;
- (_UIVectorTextLayoutParameters)initWithParameters:(id)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_copyFromParameters:(id)parameters;
@end

@implementation _UIVectorTextLayoutParameters

+ (id)parametersSuitableForView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_new();
  traitCollection = [viewCopy traitCollection];
  [v4 setTraitCollection:traitCollection];

  [viewCopy bounds];
  v7 = v6;
  v9 = v8;

  [v4 setWithinSize:{v7, v9}];

  return v4;
}

- (_UIVectorTextLayoutParameters)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v8.receiver = self;
  v8.super_class = _UIVectorTextLayoutParameters;
  v5 = [(_UIVectorTextLayoutParameters *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIVectorTextLayoutParameters *)v5 _copyFromParameters:parametersCopy];
  }

  return v6;
}

- (void)_copyFromParameters:(id)parameters
{
  parametersCopy = parameters;
  attributedText = [parametersCopy attributedText];
  [(_UIVectorTextLayoutParameters *)self setAttributedText:attributedText];

  -[_UIVectorTextLayoutParameters setNumberOfLines:](self, "setNumberOfLines:", [parametersCopy numberOfLines]);
  [parametersCopy withinSize];
  [(_UIVectorTextLayoutParameters *)self setWithinSize:?];
  traitCollection = [parametersCopy traitCollection];
  [(_UIVectorTextLayoutParameters *)self setTraitCollection:traitCollection];

  lineBreakMode = [parametersCopy lineBreakMode];

  [(_UIVectorTextLayoutParameters *)self setLineBreakMode:lineBreakMode];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithParameters:self];
}

- (BOOL)isEqualToParameters:(id)parameters
{
  parametersCopy = parameters;
  if (parametersCopy && (v5 = -[_UIVectorTextLayoutParameters numberOfLines](self, "numberOfLines"), v5 == [parametersCopy numberOfLines]) && (v6 = -[_UIVectorTextLayoutParameters lineBreakMode](self, "lineBreakMode"), v6 == objc_msgSend(parametersCopy, "lineBreakMode")) && (-[_UIVectorTextLayoutParameters withinSize](self, "withinSize"), v8 = v7, objc_msgSend(parametersCopy, "withinSize"), v8 == v9) && (-[_UIVectorTextLayoutParameters withinSize](self, "withinSize"), v11 = v10, objc_msgSend(parametersCopy, "withinSize"), v11 == v12))
  {
    attributedText = [(_UIVectorTextLayoutParameters *)self attributedText];
    attributedText2 = [parametersCopy attributedText];
    v15 = [attributedText isEqualToAttributedString:attributedText2];
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