@interface SXPresentationAttributes
- (BOOL)isEqual:(id)a3;
- (CGSize)canvasSize;
- (SXPresentationAttributes)init;
- (id)copyWithZone:(_NSZone *)a3;
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
  v3 = [(SXPresentationAttributes *)self contentSizeCategory];
  v4 = [v3 hash];
  v5 = [(SXPresentationAttributes *)self presentationMode];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
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
  [(SXPresentationAttributes *)v7 canvasSize];
  LOBYTE(v13) = 0;
  if (v9 == v14 && v11 == v12)
  {
    v15 = [(SXPresentationAttributes *)self contentSizeCategory];
    if (v15 || ([(SXPresentationAttributes *)v7 contentSizeCategory], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = [(SXPresentationAttributes *)self contentSizeCategory];
      v5 = [(SXPresentationAttributes *)v7 contentSizeCategory];
      if (![v4 isEqualToString:v5])
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

    v17 = [(SXPresentationAttributes *)self presentationMode];
    if (v17 == [(SXPresentationAttributes *)v7 presentationMode]&& (v18 = [(SXPresentationAttributes *)self fadeInComponents], v18 == [(SXPresentationAttributes *)v7 fadeInComponents]) && (v19 = [(SXPresentationAttributes *)self enableViewportDebugging], v19 == [(SXPresentationAttributes *)v7 enableViewportDebugging]) && (v20 = [(SXPresentationAttributes *)self testingConditionEnabled], v20 == [(SXPresentationAttributes *)v7 testingConditionEnabled]) && ([(SXPresentationAttributes *)self contentScaleFactor], v22 = v21, [(SXPresentationAttributes *)v7 contentScaleFactor], v22 == v23))
    {
      v24 = [(SXPresentationAttributes *)self useTransparentToolbar];
      v13 = v24 ^ [(SXPresentationAttributes *)v7 useTransparentToolbar]^ 1;
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
        if (!v15)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SXPresentationAttributes);
  [(SXPresentationAttributes *)self canvasSize];
  [(SXPresentationAttributes *)v4 setCanvasSize:?];
  v5 = [(SXPresentationAttributes *)self contentSizeCategory];
  [(SXPresentationAttributes *)v4 setContentSizeCategory:v5];

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
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"<%@: %p; attributes: \n", objc_opt_class(), self];
  [(SXPresentationAttributes *)self canvasSize];
  v4 = NSStringFromCGSize(v9);
  [v3 appendFormat:@"  canvasSize: %@; \n", v4];

  v5 = [(SXPresentationAttributes *)self contentSizeCategory];
  [v3 appendFormat:@"  contentSizeCategory: %@; \n", v5];

  [v3 appendFormat:@"  presentationMode: %i; \n", -[SXPresentationAttributes presentationMode](self, "presentationMode")];
  [v3 appendFormat:@"  fadeInComponents: %i; \n", -[SXPresentationAttributes fadeInComponents](self, "fadeInComponents")];
  [(SXPresentationAttributes *)self contentScaleFactor];
  [v3 appendFormat:@"  contentScaleFactor: %f; \n", v6];
  [v3 appendFormat:@"  useTransparentToolbar: %i; \n", -[SXPresentationAttributes useTransparentToolbar](self, "useTransparentToolbar")];
  [v3 appendFormat:@">"];

  return v3;
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