@interface PXGBurstStackEffect
- (PXGBurstStackEffect)initWithEntityManager:(id)a3;
- (id)createSiblingsTextureForMainSpriteTexture:(id)a3;
- (void)configureSiblingSprites:(id *)a3 siblingsSpriteIndexRange:(_PXGSpriteIndexRange)a4 siblingsTexture:(id)a5 forMainRenderSpriteRef:(id *)a6 mainPresentationSpriteRef:(id *)a7 mainSpriteIndex:(unsigned int)a8 mainSpriteTexture:(id)a9 screenScale:(double)a10;
@end

@implementation PXGBurstStackEffect

- (void)configureSiblingSprites:(id *)a3 siblingsSpriteIndexRange:(_PXGSpriteIndexRange)a4 siblingsTexture:(id)a5 forMainRenderSpriteRef:(id *)a6 mainPresentationSpriteRef:(id *)a7 mainSpriteIndex:(unsigned int)a8 mainSpriteTexture:(id)a9 screenScale:(double)a10
{
  v15 = a5;
  PXFloatRoundToPixel();
  v17 = v16;
  PXFloatRoundToPixel();
  v19 = v18;
  v20 = PXFloatApproximatelyEqualToFloat();
  v21 = 1.0;
  if (!v20)
  {
    v21 = v19;
  }

  v68 = v21;
  var0 = a3->var0;
  PXRectWithCenterAndSize();
  v23 = *(a7->var1 + 2);
  v65 = v24;
  v66 = v17 * var0;
  PXRectRoundToPixel();
  x = v73.origin.x;
  y = v73.origin.y;
  width = v73.size.width;
  height = v73.size.height;
  var1 = a6->var1;
  MidX = CGRectGetMidX(v73);
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  MidY = CGRectGetMidY(v74);
  v32 = v23;
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  v69 = CGRectGetWidth(v75);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  v33 = CGRectGetHeight(v76);
  v34.f64[0] = v69;
  v34.f64[1] = v33;
  *var1 = MidX;
  *(var1 + 1) = MidY;
  *(var1 + 2) = v32;
  *(var1 + 3) = vcvt_f32_f64(v34);
  if (var0)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 32 * var0;
    v67 = v66 / v65;
    do
    {
      y = y - v17;
      x = v17 + x;
      width = width + -v17 * 2.0;
      v39 = (a3->var2 + v37);
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = v17 - v68;
      v40 = CGRectGetMidX(v77);
      v78.origin.x = x;
      v78.origin.y = y;
      v78.size.width = width;
      v78.size.height = v17 - v68;
      v41 = CGRectGetMidY(v78);
      v79.origin.x = x;
      v79.origin.y = y;
      v79.size.width = width;
      v79.size.height = v17 - v68;
      v70 = CGRectGetWidth(v79);
      v80.origin.x = x;
      v80.origin.y = y;
      v80.size.width = width;
      v80.size.height = v17 - v68;
      v42 = CGRectGetHeight(v80);
      v43.f64[0] = v70;
      v43.f64[1] = v42;
      *v39 = v40;
      v39[1] = v41;
      v39[2] = v32;
      *(v39 + 3) = vcvt_f32_f64(v43);
      v44 = (a3->var3 + v35);
      var2 = a7->var2;
      v46 = *(var2 + 1);
      *v44 = *var2;
      v44[1] = v46;
      v47 = *(var2 + 5);
      v49 = *(var2 + 2);
      v48 = *(var2 + 3);
      v44[4] = *(var2 + 4);
      v44[5] = v47;
      v44[2] = v49;
      v44[3] = v48;
      v50 = *(var2 + 9);
      v52 = *(var2 + 6);
      v51 = *(var2 + 7);
      v44[8] = *(var2 + 8);
      v44[9] = v50;
      v44[6] = v52;
      v44[7] = v51;
      v53 = (a3->var3 + 4 * v36);
      *&v42 = *v53 * 0.6;
      *v53 = *&v42;
      *&v42 = v67 * v53[4];
      v53[4] = *&v42;
      v54 = a3->var4 + v36;
      var3 = a7->var3;
      v56 = *(var3 + 4);
      v57 = *(var3 + 1);
      *v54 = *var3;
      *(v54 + 1) = v57;
      *(v54 + 4) = v56;
      *(a3->var4 + v36 + 24) = a8;
      v37 += 32;
      v36 += 40;
      v35 += 160;
    }

    while (v38 != v37);
  }

  v71 = v15;
  if (v71)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    v58 = [MEMORY[0x277CCA890] currentHandler];
    v61 = objc_opt_class();
    v60 = NSStringFromClass(v61);
    v62 = [v71 px_descriptionForAssertionMessage];
    [v58 handleFailureInMethod:a2 object:self file:@"PXGBurstStackEffect.m" lineNumber:85 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"siblingsTexture", v60, v62}];
  }

  else
  {
    v58 = [MEMORY[0x277CCA890] currentHandler];
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    [v58 handleFailureInMethod:a2 object:self file:@"PXGBurstStackEffect.m" lineNumber:85 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"siblingsTexture", v60}];
  }

LABEL_8:
  [v71 addSpriteIndexRange:{a4.location, HIDWORD(*&a4)}];
}

- (id)createSiblingsTextureForMainSpriteTexture:(id)a3
{
  v3 = a3;
  v4 = +[PXGEffectWrappingTexture createTexture];
  [v4 setParent:v3];

  return v4;
}

- (PXGBurstStackEffect)initWithEntityManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXGBurstStackEffect;
  v3 = [(PXGEffect *)&v6 initWithEntityManager:a3];
  v4 = v3;
  if (v3)
  {
    [(PXGBurstStackEffect *)v3 setNumberOfItemsStackedBehind:2];
  }

  return v4;
}

@end