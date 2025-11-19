@interface VSImageScaleValueTransformer
- (CGSize)preferredSize;
- (id)transformedValue:(id)a3;
@end

@implementation VSImageScaleValueTransformer

- (id)transformedValue:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  [(VSImageScaleValueTransformer *)self preferredSize];
  v8 = v7;
  v10 = v9;
  [v4 size];
  v13 = fmin(v8 / v11, v10 / v12);
  v14 = v11 * v13;
  v15 = v12 * v13;
  v30.origin.x = v5;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = v5;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v17 = CGRectGetMidY(v31) + v15 * -0.5;
  v18 = objc_alloc(MEMORY[0x277D75560]);
  [(VSImageScaleValueTransformer *)self preferredSize];
  v19 = [v18 initWithSize:?];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __49__VSImageScaleValueTransformer_transformedValue___block_invoke;
  v23[3] = &unk_279E191C8;
  v24 = v4;
  v25 = MidX + v14 * -0.5;
  v26 = v17;
  v27 = v14;
  v28 = v15;
  v20 = v4;
  v21 = [v19 imageWithActions:v23];

  return v21;
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end