@interface PXGMetalCaptureSpriteTexture
- (BOOL)isOpaque;
- (CGRect)captureRect;
- (PXGCaptureSpritePayload)payload;
- (PXGMetalCaptureSpriteTexture)initWithPayload:(id)a3 presentationType:(unsigned __int8)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)getTextureInfos:(id *)a3 forSpriteIndexes:(const unsigned int *)a4 geometries:(id *)a5 spriteStyles:(id *)a6 spriteInfos:(id *)a7 screenScale:(double)a8 count:(unsigned int)a9;
@end

@implementation PXGMetalCaptureSpriteTexture

- (PXGCaptureSpritePayload)payload
{
  v11.receiver = self;
  v11.super_class = PXGMetalCaptureSpriteTexture;
  v4 = [(PXGPayloadTexture *)&v11 payload];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v6 = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v4 px_descriptionForAssertionMessage];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGMetalCaptureSpriteTexture.m" lineNumber:55 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"super.payload", v8, v10}];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"PXGMetalCaptureSpriteTexture.m" lineNumber:55 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"super.payload", v8}];
  }

LABEL_3:

  return v4;
}

- (CGRect)captureRect
{
  x = self->_captureRect.origin.x;
  y = self->_captureRect.origin.y;
  width = self->_captureRect.size.width;
  height = self->_captureRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isOpaque
{
  v2 = [(PXGMetalCaptureSpriteTexture *)self payload];
  v3 = [v2 behavior] == 0;

  return v3;
}

- (void)getTextureInfos:(id *)a3 forSpriteIndexes:(const unsigned int *)a4 geometries:(id *)a5 spriteStyles:(id *)a6 spriteInfos:(id *)a7 screenScale:(double)a8 count:(unsigned int)a9
{
  if ([(PXGBaseTexture *)self spriteCount:a3]< a9)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXGMetalCaptureSpriteTexture.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"count <= self.spriteCount"}];
  }

  v14 = [(PXGMetalCaptureSpriteTexture *)self texture];
  v15 = [(PXGMetalCaptureSpriteTexture *)self spriteGeometries];
  if (!v15)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXGMetalCaptureSpriteTexture.m" lineNumber:68 description:{@"%@ must have geometries at this point", self}];

    if (v14)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = 1;
    v17 = 1;
    goto LABEL_8;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_5:
  v16 = [v14 width];
  v17 = [v14 height];
LABEL_8:
  [(PXGMetalCaptureSpriteTexture *)self captureRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(PXGMetalCaptureSpriteTexture *)self alpha];
  v29 = v28;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v30 = [(PXGBaseTexture *)self spriteIndexes];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __119__PXGMetalCaptureSpriteTexture_getTextureInfos_forSpriteIndexes_geometries_spriteStyles_spriteInfos_screenScale_count___block_invoke;
  v31[3] = &unk_2782A8060;
  *&v31[6] = v16;
  *&v31[7] = v17;
  v31[8] = v15;
  v31[9] = v21;
  v31[10] = v23;
  *&v31[11] = v25;
  v31[12] = v27;
  *&v31[13] = v16 / v25;
  v31[4] = v34;
  v31[5] = a7;
  v31[14] = a3;
  v31[15] = v16;
  v31[16] = v17;
  v32 = v29;
  v33 = a9;
  [v30 enumerateRangesUsingBlock:v31];

  _Block_object_dispose(v34, 8);
}

uint64_t __119__PXGMetalCaptureSpriteTexture_getTextureInfos_forSpriteIndexes_geometries_spriteStyles_spriteInfos_screenScale_count___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = a2 + a3;
  if (a2 + a3 > a2)
  {
    v6 = result;
    v7 = a2;
    v8 = a2 + 1;
    v9 = xmmword_21AE2D320;
    while (1)
    {
      if ((*(*(v6 + 40) + 40 * v7 + 34) & 8) != 0)
      {
        v21 = *(v6 + 48);
        v19 = 0;
      }

      else
      {
        v10 = *(v6 + 64) + 20 * v7;
        v11 = *(v10 + 12);
        v12 = vmul_f32(v11, 0x3F0000003F000000);
        v29.origin.x = (*v10 - v12.f32[0]);
        v29.origin.y = (*(v10 + 4) - v12.f32[1]);
        v29.size.width = v11.f32[0];
        v29.size.height = v11.f32[1];
        v27 = CGRectIntersection(*(v6 + 72), v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        if (!CGRectIsEmpty(v27))
        {
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          CGRectOffset(v28, -*(v6 + 72), -*(v6 + 80));
        }

        PXRectScale();
        result = PXRectRoundToPixel();
        v18.f64[1] = v17;
        v19 = vcvt_f32_f64(v18);
        v21.f64[1] = v20;
        v9 = xmmword_21AE2D320;
      }

      v22 = *(v6 + 112) + (*(*(*(v6 + 32) + 8) + 24) << 6);
      v23 = vcvt_f32_f64(v21);
      v24 = vcvt_f32_f64(vcvtq_f64_u64(*(v6 + 120)));
      v25 = *(v6 + 136);
      *v22 = v19;
      *(v22 + 8) = v23;
      *(v22 + 16) = v24;
      *(v22 + 32) = v9;
      *(v22 + 48) = v25;
      *(v22 + 52) = 0;
      if (++*(*(*(v6 + 32) + 8) + 24) == *(v6 + 140))
      {
        break;
      }

      v7 = v8;
      if (v4 <= v8++)
      {
        return result;
      }
    }

    *a4 = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXGMetalCaptureSpriteTexture alloc];
  v5 = [(PXGMetalCaptureSpriteTexture *)self payload];
  v6 = [(PXGMetalCaptureSpriteTexture *)v4 initWithPayload:v5 presentationType:[(PXGPayloadTexture *)self presentationType]];

  v7 = [(PXGBaseTexture *)self spriteIndexes];
  [(PXGBaseTexture *)v6 addSpriteIndexes:v7];

  return v6;
}

- (PXGMetalCaptureSpriteTexture)initWithPayload:(id)a3 presentationType:(unsigned __int8)a4
{
  v4 = a4;
  v7 = a3;
  v17.receiver = self;
  v17.super_class = PXGMetalCaptureSpriteTexture;
  v8 = [(PXGPayloadTexture *)&v17 initWithPayload:v7 presentationType:v4];
  if (v8)
  {
    v9 = [v7 renderSnapshot];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v9 px_descriptionForAssertionMessage];
        [v13 handleFailureInMethod:a2 object:v8 file:@"PXGMetalCaptureSpriteTexture.m" lineNumber:41 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"payload.renderSnapshot", v15, v16}];
      }
    }

    v10 = [v9 texture];
    snapshotTexture = v8->_snapshotTexture;
    v8->_snapshotTexture = v10;

    v8->_behavior = [v7 behavior];
  }

  return v8;
}

@end