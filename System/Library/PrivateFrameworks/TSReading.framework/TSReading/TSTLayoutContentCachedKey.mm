@interface TSTLayoutContentCachedKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayoutContentCachedKey:(id)a3;
- (TSTLayoutContentCachedKey)initWithString:(id)a3 width:(double)a4 height:(double)a5 paragraphStyle:(id)a6 cellWraps:(BOOL)a7 valueType:(int)a8 paddingInsets:(UIEdgeInsets)a9 verticalAlignment:(unsigned int)a10 writingDirection:(int)a11;
- (UIEdgeInsets)paddingInsets;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation TSTLayoutContentCachedKey

- (TSTLayoutContentCachedKey)initWithString:(id)a3 width:(double)a4 height:(double)a5 paragraphStyle:(id)a6 cellWraps:(BOOL)a7 valueType:(int)a8 paddingInsets:(UIEdgeInsets)a9 verticalAlignment:(unsigned int)a10 writingDirection:(int)a11
{
  right = a9.right;
  bottom = a9.bottom;
  left = a9.left;
  top = a9.top;
  v25.receiver = self;
  v25.super_class = TSTLayoutContentCachedKey;
  v23 = [(TSTLayoutContentCachedKey *)&v25 init];
  if (v23)
  {
    v23->mString = [a3 copy];
    v23->mWidth = a4;
    v23->mHeight = a5;
    v23->mParagraphStyle = a6;
    v23->mCellWraps = a7;
    v23->mValueType = a8;
    v23->mPaddingInsets.top = top;
    v23->mPaddingInsets.left = left;
    v23->mPaddingInsets.bottom = bottom;
    v23->mPaddingInsets.right = right;
    v23->mVerticalAlignment = a10;
    v23->mWritingDirection = a11;
  }

  return v23;
}

- (void)dealloc
{
  self->mString = 0;

  self->mParagraphStyle = 0;
  v3.receiver = self;
  v3.super_class = TSTLayoutContentCachedKey;
  [(TSTLayoutContentCachedKey *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSTLayoutContentCachedKey allocWithZone:a3];
  v5 = [(TSTLayoutContentCachedKey *)self string];
  [(TSTLayoutContentCachedKey *)self width];
  v7 = v6;
  [(TSTLayoutContentCachedKey *)self height];
  v9 = v8;
  v10 = [(TSTLayoutContentCachedKey *)self paragraphStyle];
  v11 = [(TSTLayoutContentCachedKey *)self cellWraps];
  v12 = [(TSTLayoutContentCachedKey *)self valueType];
  [(TSTLayoutContentCachedKey *)self paddingInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(TSTLayoutContentCachedKey *)self verticalAlignment];
  v22 = [(TSTLayoutContentCachedKey *)self writingDirection];

  return [(TSTLayoutContentCachedKey *)v4 initWithString:v5 width:v10 height:v11 paragraphStyle:v12 cellWraps:v21 valueType:v22 paddingInsets:v7 verticalAlignment:v9 writingDirection:v14, v16, v18, v20];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(TSTLayoutContentCachedKey *)self isEqualToLayoutContentCachedKey:a3];
}

- (BOOL)isEqualToLayoutContentCachedKey:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    mWidth = self->mWidth;
    [a3 width];
    if (vabdd_f64(mWidth, v6) < 0.00999999978 && (mHeight = self->mHeight, [a3 height], vabdd_f64(mHeight, v8) < 0.00999999978) && (mCellWraps = self->mCellWraps, mCellWraps == objc_msgSend(a3, "cellWraps")) && (mVerticalAlignment = self->mVerticalAlignment, mVerticalAlignment == objc_msgSend(a3, "verticalAlignment")) && (mWritingDirection = self->mWritingDirection, mWritingDirection == objc_msgSend(a3, "writingDirection")) && (mValueType = self->mValueType, mValueType == objc_msgSend(a3, "valueType")) && (objc_msgSend(a3, "paddingInsets"), v14.f64[1] = v13, v16.f64[1] = v15, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->mPaddingInsets.top, v14), vceqq_f64(*&self->mPaddingInsets.bottom, v16)))) & 1) != 0))
    {
      v17 = -[TSSStyle isEqual:](self->mParagraphStyle, "isEqual:", [a3 paragraphStyle]);
      if (v17)
      {
        mString = self->mString;
        v19 = [a3 string];

        LOBYTE(v17) = [(NSString *)mString isEqualToString:v19];
      }
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = [MEMORY[0x277D6C2C8] descriptionWithObject:self class:objc_opt_class()];
  [v3 addField:@"string" value:self->mString];
  [v3 addField:@"width" format:{@"%f", *&self->mWidth}];
  [v3 addField:@"height" format:{@"%f", *&self->mHeight}];
  [v3 addField:@"vertical" value:TSWPStringFromTSWPVerticalAlignment(self->mVerticalAlignment)];
  [v3 addField:@"direction" value:TSWPStringFromTSWPWritingDirection(self->mWritingDirection)];
  if (self->mCellWraps)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  [v3 addField:@"wraps" value:v4];
  [v3 addField:@"paragraphStyle" format:{@"%p", self->mParagraphStyle}];

  return [v3 descriptionString];
}

- (UIEdgeInsets)paddingInsets
{
  top = self->mPaddingInsets.top;
  left = self->mPaddingInsets.left;
  bottom = self->mPaddingInsets.bottom;
  right = self->mPaddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end