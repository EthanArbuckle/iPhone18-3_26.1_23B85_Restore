@interface PRUISIncomingCallPosterContext
- (BOOL)isEqual:(id)a3;
- (CGRect)horizontalTitleBoundingRect;
- (CGRect)verticalTitleBoundingRect;
- (PRUISIncomingCallPosterContext)initWithNameVariations:(id)a3 preferredNameStyle:(int64_t)a4 horizontalTitleBoundingRect:(CGRect)a5 verticalTitleBoundingRect:(CGRect)a6 imageAssetID:(id)a7 personalPoster:(BOOL)a8;
- (PRUISIncomingCallPosterContext)initWithTitleString:(id)a3 horizontalTitleBoundingRect:(CGRect)a4 verticalTitleBoundingRect:(CGRect)a5 imageAssetID:(id)a6 personalPoster:(BOOL)a7;
- (id)identifierForSnapshottingWithNameStyle:(int64_t)a3;
- (unint64_t)hash;
- (void)applyContextToEditingSceneViewController:(id)a3;
- (void)applyContextToScene:(id)a3;
@end

@implementation PRUISIncomingCallPosterContext

- (PRUISIncomingCallPosterContext)initWithNameVariations:(id)a3 preferredNameStyle:(int64_t)a4 horizontalTitleBoundingRect:(CGRect)a5 verticalTitleBoundingRect:(CGRect)a6 imageAssetID:(id)a7 personalPoster:(BOOL)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a5.size.height;
  v15 = a5.size.width;
  v16 = a5.origin.y;
  v17 = a5.origin.x;
  v21 = a3;
  v22 = a7;
  v26.receiver = self;
  v26.super_class = PRUISIncomingCallPosterContext;
  v23 = [(PRUISIncomingCallPosterContext *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_nameVariations, a3);
    v24->_preferredNameStyle = a4;
    v24->_horizontalTitleBoundingRect.origin.x = v17;
    v24->_horizontalTitleBoundingRect.origin.y = v16;
    v24->_horizontalTitleBoundingRect.size.width = v15;
    v24->_horizontalTitleBoundingRect.size.height = v14;
    v24->_verticalTitleBoundingRect.origin.x = x;
    v24->_verticalTitleBoundingRect.origin.y = y;
    v24->_verticalTitleBoundingRect.size.width = width;
    v24->_verticalTitleBoundingRect.size.height = height;
    objc_storeStrong(&v24->_imageAssetID, a7);
    v24->_personalPoster = a8;
  }

  return v24;
}

- (PRUISIncomingCallPosterContext)initWithTitleString:(id)a3 horizontalTitleBoundingRect:(CGRect)a4 verticalTitleBoundingRect:(CGRect)a5 imageAssetID:(id)a6 personalPoster:(BOOL)a7
{
  v7 = a7;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4.size.height;
  v13 = a4.size.width;
  v14 = a4.origin.y;
  v15 = a4.origin.x;
  v25[2] = *MEMORY[0x1E69E9840];
  v18 = a6;
  if (a3)
  {
    v19 = a3;
    v20 = [PRUISIncomingCallPosterContextNameVariations alloc];
    v24[0] = &unk_1F4AE1DF0;
    v24[1] = &unk_1F4AE1E08;
    v25[0] = v19;
    v25[1] = v19;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

    a3 = [(PRUISIncomingCallPosterContextNameVariations *)v20 initWithNamesDictionary:v21];
  }

  v22 = [(PRUISIncomingCallPosterContext *)self initWithNameVariations:a3 preferredNameStyle:0 horizontalTitleBoundingRect:v18 verticalTitleBoundingRect:v7 imageAssetID:v15 personalPoster:v14, v13, v12, x, y, width, height];

  return v22;
}

- (id)identifierForSnapshottingWithNameStyle:(int64_t)a3
{
  v4 = [MEMORY[0x1E698E6B8] builder];
  v5 = [v4 appendCGRect:{self->_horizontalTitleBoundingRect.origin.x, self->_horizontalTitleBoundingRect.origin.y, self->_horizontalTitleBoundingRect.size.width, self->_horizontalTitleBoundingRect.size.height}];
  v6 = [v4 appendCGRect:{self->_verticalTitleBoundingRect.origin.x, self->_verticalTitleBoundingRect.origin.y, self->_verticalTitleBoundingRect.size.width, self->_verticalTitleBoundingRect.size.height}];
  v7 = [(PRUISIncomingCallPosterContextNameVariations *)self->_nameVariations nameForStyle:self->_preferredNameStyle];
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [v4 appendObject:v8];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "hash")}];
  v11 = [v10 stringValue];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 nameVariations];
    v7 = [(PRUISIncomingCallPosterContext *)self nameVariations];
    v8 = BSEqualObjects();

    if (v8 && ([v5 horizontalTitleBoundingRect], -[PRUISIncomingCallPosterContext horizontalTitleBoundingRect](self, "horizontalTitleBoundingRect"), BSRectEqualToRect()) && (objc_msgSend(v5, "verticalTitleBoundingRect"), -[PRUISIncomingCallPosterContext verticalTitleBoundingRect](self, "verticalTitleBoundingRect"), BSRectEqualToRect()) && (objc_msgSend(v5, "imageAssetID"), v9 = objc_claimAutoreleasedReturnValue(), -[PRUISIncomingCallPosterContext imageAssetID](self, "imageAssetID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualStrings(), v10, v9, v11))
    {
      v12 = [v5 isPersonalPoster];
      v13 = v12 ^ [(PRUISIncomingCallPosterContext *)self isPersonalPoster]^ 1;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_nameVariations];
  v5 = [v3 appendCGRect:{self->_horizontalTitleBoundingRect.origin.x, self->_horizontalTitleBoundingRect.origin.y, self->_horizontalTitleBoundingRect.size.width, self->_horizontalTitleBoundingRect.size.height}];
  v6 = [v3 appendCGRect:{self->_verticalTitleBoundingRect.origin.x, self->_verticalTitleBoundingRect.origin.y, self->_verticalTitleBoundingRect.size.width, self->_verticalTitleBoundingRect.size.height}];
  v7 = [v3 appendObject:self->_imageAssetID];
  v8 = [v3 appendBool:self->_personalPoster];
  v9 = [v3 hash];

  return v9;
}

- (void)applyContextToScene:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PRUISIncomingCallPosterContext_applyContextToScene___block_invoke;
  v3[3] = &unk_1E83A7260;
  v3[4] = self;
  [a3 performUpdate:v3];
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

- (void)applyContextToEditingSceneViewController:(id)a3
{
  x = self->_horizontalTitleBoundingRect.origin.x;
  y = self->_horizontalTitleBoundingRect.origin.y;
  width = self->_horizontalTitleBoundingRect.size.width;
  height = self->_horizontalTitleBoundingRect.size.height;
  v8 = a3;
  [v8 setHorizontalTitleBoundingRect:{x, y, width, height}];
  [v8 setVerticalTitleBoundingRect:{self->_verticalTitleBoundingRect.origin.x, self->_verticalTitleBoundingRect.origin.y, self->_verticalTitleBoundingRect.size.width, self->_verticalTitleBoundingRect.size.height}];
  v9 = [(PRUISIncomingCallPosterContext *)self preferredTitleString];
  [v8 setTitleString:v9];
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