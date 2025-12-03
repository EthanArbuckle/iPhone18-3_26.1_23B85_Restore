@interface PRUISIncomingCallPosterContext
- (BOOL)isEqual:(id)equal;
- (CGRect)horizontalTitleBoundingRect;
- (CGRect)verticalTitleBoundingRect;
- (PRUISIncomingCallPosterContext)initWithNameVariations:(id)variations preferredNameStyle:(int64_t)style horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster;
- (PRUISIncomingCallPosterContext)initWithTitleString:(id)string horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster;
- (id)identifierForSnapshottingWithNameStyle:(int64_t)style;
- (unint64_t)hash;
- (void)applyContextToEditingSceneViewController:(id)controller;
- (void)applyContextToScene:(id)scene;
@end

@implementation PRUISIncomingCallPosterContext

- (PRUISIncomingCallPosterContext)initWithNameVariations:(id)variations preferredNameStyle:(int64_t)style horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster
{
  height = boundingRect.size.height;
  width = boundingRect.size.width;
  y = boundingRect.origin.y;
  x = boundingRect.origin.x;
  v14 = rect.size.height;
  v15 = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  variationsCopy = variations;
  dCopy = d;
  v26.receiver = self;
  v26.super_class = PRUISIncomingCallPosterContext;
  v23 = [(PRUISIncomingCallPosterContext *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_nameVariations, variations);
    v24->_preferredNameStyle = style;
    v24->_horizontalTitleBoundingRect.origin.x = v17;
    v24->_horizontalTitleBoundingRect.origin.y = v16;
    v24->_horizontalTitleBoundingRect.size.width = v15;
    v24->_horizontalTitleBoundingRect.size.height = v14;
    v24->_verticalTitleBoundingRect.origin.x = x;
    v24->_verticalTitleBoundingRect.origin.y = y;
    v24->_verticalTitleBoundingRect.size.width = width;
    v24->_verticalTitleBoundingRect.size.height = height;
    objc_storeStrong(&v24->_imageAssetID, d);
    v24->_personalPoster = poster;
  }

  return v24;
}

- (PRUISIncomingCallPosterContext)initWithTitleString:(id)string horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster
{
  posterCopy = poster;
  height = boundingRect.size.height;
  width = boundingRect.size.width;
  y = boundingRect.origin.y;
  x = boundingRect.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  v25[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (string)
  {
    stringCopy = string;
    v20 = [PRUISIncomingCallPosterContextNameVariations alloc];
    v24[0] = &unk_1F4AE1DF0;
    v24[1] = &unk_1F4AE1E08;
    v25[0] = stringCopy;
    v25[1] = stringCopy;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

    string = [(PRUISIncomingCallPosterContextNameVariations *)v20 initWithNamesDictionary:v21];
  }

  height = [(PRUISIncomingCallPosterContext *)self initWithNameVariations:string preferredNameStyle:0 horizontalTitleBoundingRect:dCopy verticalTitleBoundingRect:posterCopy imageAssetID:v15 personalPoster:v14, v13, v12, x, y, width, height];

  return height;
}

- (id)identifierForSnapshottingWithNameStyle:(int64_t)style
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v5 = [builder appendCGRect:{self->_horizontalTitleBoundingRect.origin.x, self->_horizontalTitleBoundingRect.origin.y, self->_horizontalTitleBoundingRect.size.width, self->_horizontalTitleBoundingRect.size.height}];
  v6 = [builder appendCGRect:{self->_verticalTitleBoundingRect.origin.x, self->_verticalTitleBoundingRect.origin.y, self->_verticalTitleBoundingRect.size.width, self->_verticalTitleBoundingRect.size.height}];
  v7 = [(PRUISIncomingCallPosterContextNameVariations *)self->_nameVariations nameForStyle:self->_preferredNameStyle];
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [builder appendObject:v8];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(builder, "hash")}];
  stringValue = [v10 stringValue];

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    nameVariations = [v5 nameVariations];
    nameVariations2 = [(PRUISIncomingCallPosterContext *)self nameVariations];
    v8 = BSEqualObjects();

    if (v8 && ([v5 horizontalTitleBoundingRect], -[PRUISIncomingCallPosterContext horizontalTitleBoundingRect](self, "horizontalTitleBoundingRect"), BSRectEqualToRect()) && (objc_msgSend(v5, "verticalTitleBoundingRect"), -[PRUISIncomingCallPosterContext verticalTitleBoundingRect](self, "verticalTitleBoundingRect"), BSRectEqualToRect()) && (objc_msgSend(v5, "imageAssetID"), v9 = objc_claimAutoreleasedReturnValue(), -[PRUISIncomingCallPosterContext imageAssetID](self, "imageAssetID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualStrings(), v10, v9, v11))
    {
      isPersonalPoster = [v5 isPersonalPoster];
      v13 = isPersonalPoster ^ [(PRUISIncomingCallPosterContext *)self isPersonalPoster]^ 1;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_nameVariations];
  v5 = [builder appendCGRect:{self->_horizontalTitleBoundingRect.origin.x, self->_horizontalTitleBoundingRect.origin.y, self->_horizontalTitleBoundingRect.size.width, self->_horizontalTitleBoundingRect.size.height}];
  v6 = [builder appendCGRect:{self->_verticalTitleBoundingRect.origin.x, self->_verticalTitleBoundingRect.origin.y, self->_verticalTitleBoundingRect.size.width, self->_verticalTitleBoundingRect.size.height}];
  v7 = [builder appendObject:self->_imageAssetID];
  v8 = [builder appendBool:self->_personalPoster];
  v9 = [builder hash];

  return v9;
}

- (void)applyContextToScene:(id)scene
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PRUISIncomingCallPosterContext_applyContextToScene___block_invoke;
  v3[3] = &unk_1E83A7260;
  v3[4] = self;
  [scene performUpdate:v3];
}

void __54__PRUISIncomingCallPosterContext_applyContextToScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = a2;
  [v8 pr_setHorizontalTitleBoundingRect:{v4, v5, v6, v7}];
  [v8 pr_setVerticalTitleBoundingRect:{*(*(a1 + 32) + 72), *(*(a1 + 32) + 80), *(*(a1 + 32) + 88), *(*(a1 + 32) + 96)}];
}

- (void)applyContextToEditingSceneViewController:(id)controller
{
  x = self->_horizontalTitleBoundingRect.origin.x;
  y = self->_horizontalTitleBoundingRect.origin.y;
  width = self->_horizontalTitleBoundingRect.size.width;
  height = self->_horizontalTitleBoundingRect.size.height;
  controllerCopy = controller;
  [controllerCopy setHorizontalTitleBoundingRect:{x, y, width, height}];
  [controllerCopy setVerticalTitleBoundingRect:{self->_verticalTitleBoundingRect.origin.x, self->_verticalTitleBoundingRect.origin.y, self->_verticalTitleBoundingRect.size.width, self->_verticalTitleBoundingRect.size.height}];
  preferredTitleString = [(PRUISIncomingCallPosterContext *)self preferredTitleString];
  [controllerCopy setTitleString:preferredTitleString];
}

- (CGRect)horizontalTitleBoundingRect
{
  x = self->_horizontalTitleBoundingRect.origin.x;
  y = self->_horizontalTitleBoundingRect.origin.y;
  width = self->_horizontalTitleBoundingRect.size.width;
  height = self->_horizontalTitleBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)verticalTitleBoundingRect
{
  x = self->_verticalTitleBoundingRect.origin.x;
  y = self->_verticalTitleBoundingRect.origin.y;
  width = self->_verticalTitleBoundingRect.size.width;
  height = self->_verticalTitleBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end