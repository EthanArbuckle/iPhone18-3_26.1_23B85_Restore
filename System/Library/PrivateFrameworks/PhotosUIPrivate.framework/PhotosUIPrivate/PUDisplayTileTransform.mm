@interface PUDisplayTileTransform
+ (PUDisplayTileTransform)displayTileTransformWithModelTileTransform:(id)a3 initialScale:(double)a4 initialSize:(CGSize)a5 displaySize:(CGSize)a6 secondaryDisplayTileTransform:(id)a7;
- (CGAffineTransform)affineTransform;
- (CGSize)_displaySize;
- (CGSize)_initialSize;
- (CGSize)transformPadding;
- (PUDisplayTileTransform)init;
- (PUModelTileTransform)modelTileTransform;
- (id)description;
- (id)newDisplayTileTransformWithUserAffineTransform:(CGAffineTransform *)a3 userInputOriginIdentifier:(id)a4 isZoomedOut:(BOOL)a5;
- (void)_setAffineTransform:(CGAffineTransform *)a3;
@end

@implementation PUDisplayTileTransform

- (CGSize)_displaySize
{
  width = self->__displaySize.width;
  height = self->__displaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_initialSize
{
  width = self->__initialSize.width;
  height = self->__initialSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)transformPadding
{
  width = self->_transformPadding.width;
  height = self->_transformPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setAffineTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_affineTransform.c = *&a3->c;
  *&self->_affineTransform.tx = v4;
  *&self->_affineTransform.a = v3;
}

- (CGAffineTransform)affineTransform
{
  v3 = *&self[2].a;
  *&retstr->a = *&self[1].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].c;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PUDisplayTileTransform *)self hasUserInput];
  [(PUDisplayTileTransform *)self affineTransform];
  v7 = NSStringFromCGAffineTransform(&transform);
  v8 = [v3 stringWithFormat:@"<%@: %p hasUserInput:%i; affineTransform:%@>", v5, self, v6, v7];;

  return v8;
}

- (PUDisplayTileTransform)init
{
  v5.receiver = self;
  v5.super_class = PUDisplayTileTransform;
  result = [(PUDisplayTileTransform *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_affineTransform.a = *MEMORY[0x1E695EFD0];
    *&result->_affineTransform.c = v4;
    *&result->_affineTransform.tx = *(v3 + 32);
    result->__initialScale = 1.0;
  }

  return result;
}

- (PUModelTileTransform)modelTileTransform
{
  if ([(PUDisplayTileTransform *)self hasUserInput])
  {
    v40 = *MEMORY[0x1E695EFF8];
    v39 = 1.0;
    [(PUDisplayTileTransform *)self affineTransform];
    PUDecomposeTransform(v38, &v40, &v39, 0, 0);
    [(PUDisplayTileTransform *)self _initialScale];
    v5 = v4;
    if (v4 == 0.0)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      [v37 handleFailureInMethod:a2 object:self file:@"PUDisplayTileTransform.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"initialScale != 0.0"}];
    }

    v6 = v39 / v5;
    [(PUDisplayTileTransform *)self _displaySize];
    v8 = v7;
    v10 = v9;
    [(PUDisplayTileTransform *)self transformPadding];
    v12 = v11;
    v14 = v13;
    [(PUDisplayTileTransform *)self _initialSize];
    v17 = v16 * v6;
    v18 = v15 * v6 - v8;
    v19 = 0.0;
    v20 = v12 + fmax(v18, 0.0);
    if (v12 > 0.0)
    {
      v18 = v20;
    }

    v21 = v18 * 0.5;
    v22 = *&v40 + v18 * 0.5;
    if (*&v40 >= -(v18 * 0.5))
    {
      v22 = 0.0;
    }

    v23 = v21 < *&v40;
    v24 = *&v40 - v21;
    if (!v23)
    {
      v24 = v22;
    }

    if (v18 > 0.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = *&v40;
    }

    v26 = fmax(fmin(*&v40 / v18, 0.5), -0.5);
    v27 = v17 - v10;
    v28 = v14 + fmax(v17 - v10, 0.0);
    if (v14 > 0.0)
    {
      v27 = v28;
    }

    v29 = v27 * 0.5;
    if (*(&v40 + 1) < -(v27 * 0.5))
    {
      v19 = v27 * 0.5 + *(&v40 + 1);
    }

    if (v29 < *(&v40 + 1))
    {
      v30 = *(&v40 + 1) - v29;
    }

    else
    {
      v30 = v19;
    }

    if (v27 > 0.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = *(&v40 + 1);
    }

    v32 = fmax(fmin(*(&v40 + 1) / v27, 0.5), -0.5);
    v33 = [PUModelTileTransform alloc];
    v34 = [(PUDisplayTileTransform *)self userInputOriginIdentifier];
    v35 = [(PUModelTileTransform *)v33 initWithNormalizedTranslation:v34 overscroll:[(PUDisplayTileTransform *)self isZoomedOut] scale:v26 userInputOriginIdentifier:v32 isZoomedOut:v25, v31, v6];
  }

  else
  {
    v35 = [[PUModelTileTransform alloc] initWithNoUserInput];
  }

  return v35;
}

- (id)newDisplayTileTransformWithUserAffineTransform:(CGAffineTransform *)a3 userInputOriginIdentifier:(id)a4 isZoomedOut:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = objc_alloc_init(PUDisplayTileTransform);
  [(PUDisplayTileTransform *)v9 _setHasUserInput:1];
  v10 = *&a3->c;
  v12[0] = *&a3->a;
  v12[1] = v10;
  v12[2] = *&a3->tx;
  [(PUDisplayTileTransform *)v9 _setAffineTransform:v12];
  [(PUDisplayTileTransform *)self _initialScale];
  [(PUDisplayTileTransform *)v9 _setInitialScale:?];
  [(PUDisplayTileTransform *)self _initialSize];
  [(PUDisplayTileTransform *)v9 _setInitialSize:?];
  [(PUDisplayTileTransform *)self _displaySize];
  [(PUDisplayTileTransform *)v9 _setDisplaySize:?];
  [(PUDisplayTileTransform *)v9 _setUserInputOriginIdentifier:v8];

  [(PUDisplayTileTransform *)self transformPadding];
  [(PUDisplayTileTransform *)v9 _setTransformPadding:?];
  [(PUDisplayTileTransform *)v9 _setZoomedOut:v5];
  return v9;
}

+ (PUDisplayTileTransform)displayTileTransformWithModelTileTransform:(id)a3 initialScale:(double)a4 initialSize:(CGSize)a5 displaySize:(CGSize)a6 secondaryDisplayTileTransform:(id)a7
{
  height = a6.height;
  width = a6.width;
  v9 = a5.height;
  v10 = a5.width;
  v14 = a3;
  v15 = a7;
  v77 = a4;
  if (a4 == 0.0)
  {
    v64 = [MEMORY[0x1E696AAA8] currentHandler];
    [v64 handleFailureInMethod:a2 object:a1 file:@"PUDisplayTileTransform.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"initialScale != 0.0f"}];
  }

  v16 = [v14 hasUserInput];
  [v14 normalizedTranslation];
  v75 = v17;
  v76 = v18;
  [v14 scale];
  v79 = v19;
  [v14 overscroll];
  v22 = *MEMORY[0x1E695F060];
  v23 = *(MEMORY[0x1E695F060] + 8);
  v78 = v10;
  if (v15)
  {
    v72 = v20;
    v73 = v21;
    v24 = [v15 modelTileTransform];
    [v15 _initialSize];
    v74 = v9;
    v26 = v25;
    v28 = v27;
    [v15 _displaySize];
    v30 = v29;
    v32 = v31;
    [v24 scale];
    v68 = v28 * v33;
    v70 = v26 * v33;
    v66 = fmin(fmax(width / v10, height / v74), fmax(v30 / v26, v32 / v28));
    v34 = +[PUAirPlaySettings sharedInstance];
    [v34 minimumZoomForScrollPadding];
    v36 = v35;
    [v34 maximumZoomForScrollPadding];
    v38 = fmax(v36, fmin(v37, v66));
    v39 = v26 * v38 - v30;
    v40 = v28 * v38 - v32;
    if (v70 - v30 < v39)
    {
      v39 = v70 - v30;
    }

    if (v68 - v32 < v40)
    {
      v40 = v68 - v32;
    }

    v69 = v40;
    v71 = v39;
    v41 = fmin(width / v30, height / v32);
    v65 = height - v32 * v41;
    v67 = width - v30 * v41;
    [v24 scale];
    v43 = v26 * v42;
    v9 = v74;
    v44 = v28 * v42;
    v45 = v43 - v30;
    v46 = v22 + fmax(v45, 0.0);
    if (v22 > 0.0)
    {
      v45 = v46;
    }

    v47 = v44 - v32;
    v48 = v23 + fmax(v47, 0.0);
    v49 = v78 * v79 - width;
    v50 = fmax(v49, 0.0);
    v51 = v22 + v50;
    if (v22 <= 0.0)
    {
      v51 = v78 * v79 - width;
    }

    if (v23 > 0.0)
    {
      v47 = v48;
    }

    v52 = v74 * v79 - height;
    v53 = fmax(v52, 0.0);
    v54 = v23 + v53;
    if (v23 <= 0.0)
    {
      v54 = v74 * v79 - height;
    }

    if (v22 >= v51)
    {
      v55 = v22;
    }

    else
    {
      v55 = v51;
    }

    if (v23 >= v54)
    {
      v54 = v23;
    }

    v56 = v45 - v55;
    v57 = v47 - v54;
    if (v56 >= v67 - v55)
    {
      v56 = v67 - v55;
    }

    if (v57 >= v65 - v54)
    {
      v57 = v65 - v54;
    }

    if (v71 - v55 < v56)
    {
      v56 = v71 - v55;
    }

    if (v69 - v54 < v57)
    {
      v57 = v69 - v54;
    }

    if (v22 < v56)
    {
      v22 = v56;
    }

    if (v23 < v57)
    {
      v23 = v57;
    }

    v20 = v72;
    v21 = v73;
  }

  else
  {
    v49 = v10 * v79 - width;
    v50 = fmax(v49, 0.0);
    v52 = v9 * v79 - height;
    v53 = fmax(v52, 0.0);
  }

  if (v22 <= 0.0)
  {
    v58 = v49;
  }

  else
  {
    v58 = v22 + v50;
  }

  if (v23 <= 0.0)
  {
    v59 = v52;
  }

  else
  {
    v59 = v23 + v53;
  }

  if (v58 > 0.0)
  {
    v20 = v20 + v58 * v75;
  }

  if (v59 > 0.0)
  {
    v21 = v21 + v59 * v76;
  }

  v60 = *(MEMORY[0x1E695EFD0] + 16);
  *&v83.a = *MEMORY[0x1E695EFD0];
  *&v83.c = v60;
  *&v83.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v82.a = *&v83.a;
  *&v82.c = v60;
  *&v82.tx = *&v83.tx;
  CGAffineTransformTranslate(&v83, &v82, v20, v21);
  v81 = v83;
  CGAffineTransformScale(&v82, &v81, v79 * v77, v79 * v77);
  v83 = v82;
  v61 = objc_alloc_init(PUDisplayTileTransform);
  [(PUDisplayTileTransform *)v61 _setHasUserInput:v16];
  v82 = v83;
  [(PUDisplayTileTransform *)v61 _setAffineTransform:&v82];
  [(PUDisplayTileTransform *)v61 _setInitialScale:v77];
  [(PUDisplayTileTransform *)v61 _setInitialSize:v78, v9];
  [(PUDisplayTileTransform *)v61 _setDisplaySize:width, height];
  v62 = [v14 userInputOriginIdentifier];
  [(PUDisplayTileTransform *)v61 _setUserInputOriginIdentifier:v62];

  [(PUDisplayTileTransform *)v61 _setTransformPadding:v22, v23];

  return v61;
}

@end