@interface SXPresentationAttributes
- (BOOL)isEqual:(id)equal;
- (CGSize)canvasSize;
- (SXPresentationAttributes)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SXPresentationAttributes

- (SXPresentationAttributes)init
{
  v3.receiver = self;
  v3.super_class = SXPresentationAttributes;
  result = [(SXPresentationAttributes *)&v3 init];
  if (result)
  {
    result->_contentScaleFactor = 1.0;
  }

  return result;
}

- (unint64_t)hash
{
  contentSizeCategory = [(SXPresentationAttributes *)self contentSizeCategory];
  v4 = [contentSizeCategory hash];
  presentationMode = [(SXPresentationAttributes *)self presentationMode];

  return presentationMode ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v13) = 0;
    goto LABEL_25;
  }

  [(SXPresentationAttributes *)self canvasSize];
  v9 = v8;
  v11 = v10;
  [(SXPresentationAttributes *)equalCopy canvasSize];
  LOBYTE(v13) = 0;
  if (v9 == v14 && v11 == v12)
  {
    contentSizeCategory = [(SXPresentationAttributes *)self contentSizeCategory];
    if (contentSizeCategory || ([(SXPresentationAttributes *)equalCopy contentSizeCategory], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      contentSizeCategory2 = [(SXPresentationAttributes *)self contentSizeCategory];
      contentSizeCategory3 = [(SXPresentationAttributes *)equalCopy contentSizeCategory];
      if (![contentSizeCategory2 isEqualToString:contentSizeCategory3])
      {
        LOBYTE(v13) = 0;
        goto LABEL_21;
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    presentationMode = [(SXPresentationAttributes *)self presentationMode];
    if (presentationMode == [(SXPresentationAttributes *)equalCopy presentationMode]&& (v18 = [(SXPresentationAttributes *)self fadeInComponents], v18 == [(SXPresentationAttributes *)equalCopy fadeInComponents]) && (v19 = [(SXPresentationAttributes *)self enableViewportDebugging], v19 == [(SXPresentationAttributes *)equalCopy enableViewportDebugging]) && (v20 = [(SXPresentationAttributes *)self testingConditionEnabled], v20 == [(SXPresentationAttributes *)equalCopy testingConditionEnabled]) && ([(SXPresentationAttributes *)self contentScaleFactor], v22 = v21, [(SXPresentationAttributes *)equalCopy contentScaleFactor], v22 == v23))
    {
      useTransparentToolbar = [(SXPresentationAttributes *)self useTransparentToolbar];
      v13 = useTransparentToolbar ^ [(SXPresentationAttributes *)equalCopy useTransparentToolbar]^ 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
      if (!v16)
      {
LABEL_22:
        if (!contentSizeCategory)
        {
        }

        goto LABEL_25;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_25:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SXPresentationAttributes);
  [(SXPresentationAttributes *)self canvasSize];
  [(SXPresentationAttributes *)v4 setCanvasSize:?];
  contentSizeCategory = [(SXPresentationAttributes *)self contentSizeCategory];
  [(SXPresentationAttributes *)v4 setContentSizeCategory:contentSizeCategory];

  [(SXPresentationAttributes *)v4 setPresentationMode:[(SXPresentationAttributes *)self presentationMode]];
  [(SXPresentationAttributes *)v4 setFadeInComponents:[(SXPresentationAttributes *)self fadeInComponents]];
  [(SXPresentationAttributes *)v4 setEnableViewportDebugging:[(SXPresentationAttributes *)self enableViewportDebugging]];
  [(SXPresentationAttributes *)v4 setTestingConditionEnabled:[(SXPresentationAttributes *)self testingConditionEnabled]];
  [(SXPresentationAttributes *)self contentScaleFactor];
  [(SXPresentationAttributes *)v4 setContentScaleFactor:?];
  [(SXPresentationAttributes *)v4 setUseTransparentToolbar:[(SXPresentationAttributes *)self useTransparentToolbar]];
  return v4;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"<%@: %p; attributes: \n", objc_opt_class(), self];
  [(SXPresentationAttributes *)self canvasSize];
  v4 = NSStringFromCGSize(v9);
  [string appendFormat:@"  canvasSize: %@; \n", v4];

  contentSizeCategory = [(SXPresentationAttributes *)self contentSizeCategory];
  [string appendFormat:@"  contentSizeCategory: %@; \n", contentSizeCategory];

  [string appendFormat:@"  presentationMode: %i; \n", -[SXPresentationAttributes presentationMode](self, "presentationMode")];
  [string appendFormat:@"  fadeInComponents: %i; \n", -[SXPresentationAttributes fadeInComponents](self, "fadeInComponents")];
  [(SXPresentationAttributes *)self contentScaleFactor];
  [string appendFormat:@"  contentScaleFactor: %f; \n", v6];
  [string appendFormat:@"  useTransparentToolbar: %i; \n", -[SXPresentationAttributes useTransparentToolbar](self, "useTransparentToolbar")];
  [string appendFormat:@">"];

  return string;
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end