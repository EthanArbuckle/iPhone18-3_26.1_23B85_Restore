@interface TSTLayoutContentCachedKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutContentCachedKey:(id)key;
- (TSTLayoutContentCachedKey)initWithString:(id)string width:(double)width height:(double)height paragraphStyle:(id)style cellWraps:(BOOL)wraps valueType:(int)type paddingInsets:(UIEdgeInsets)insets verticalAlignment:(unsigned int)self0 writingDirection:(int)self1;
- (UIEdgeInsets)paddingInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation TSTLayoutContentCachedKey

- (TSTLayoutContentCachedKey)initWithString:(id)string width:(double)width height:(double)height paragraphStyle:(id)style cellWraps:(BOOL)wraps valueType:(int)type paddingInsets:(UIEdgeInsets)insets verticalAlignment:(unsigned int)self0 writingDirection:(int)self1
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v25.receiver = self;
  v25.super_class = TSTLayoutContentCachedKey;
  v23 = [(TSTLayoutContentCachedKey *)&v25 init];
  if (v23)
  {
    v23->mString = [string copy];
    v23->mWidth = width;
    v23->mHeight = height;
    v23->mParagraphStyle = style;
    v23->mCellWraps = wraps;
    v23->mValueType = type;
    v23->mPaddingInsets.top = top;
    v23->mPaddingInsets.left = left;
    v23->mPaddingInsets.bottom = bottom;
    v23->mPaddingInsets.right = right;
    v23->mVerticalAlignment = alignment;
    v23->mWritingDirection = direction;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTLayoutContentCachedKey allocWithZone:zone];
  string = [(TSTLayoutContentCachedKey *)self string];
  [(TSTLayoutContentCachedKey *)self width];
  v7 = v6;
  [(TSTLayoutContentCachedKey *)self height];
  v9 = v8;
  paragraphStyle = [(TSTLayoutContentCachedKey *)self paragraphStyle];
  cellWraps = [(TSTLayoutContentCachedKey *)self cellWraps];
  valueType = [(TSTLayoutContentCachedKey *)self valueType];
  [(TSTLayoutContentCachedKey *)self paddingInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  verticalAlignment = [(TSTLayoutContentCachedKey *)self verticalAlignment];
  writingDirection = [(TSTLayoutContentCachedKey *)self writingDirection];

  return [(TSTLayoutContentCachedKey *)v4 initWithString:string width:paragraphStyle height:cellWraps paragraphStyle:valueType cellWraps:verticalAlignment valueType:writingDirection paddingInsets:v7 verticalAlignment:v9 writingDirection:v14, v16, v18, v20];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(TSTLayoutContentCachedKey *)self isEqualToLayoutContentCachedKey:equal];
}

- (BOOL)isEqualToLayoutContentCachedKey:(id)key
{
  if (self == key)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    mWidth = self->mWidth;
    [key width];
    if (vabdd_f64(mWidth, v6) < 0.00999999978 && (mHeight = self->mHeight, [key height], vabdd_f64(mHeight, v8) < 0.00999999978) && (mCellWraps = self->mCellWraps, mCellWraps == objc_msgSend(key, "cellWraps")) && (mVerticalAlignment = self->mVerticalAlignment, mVerticalAlignment == objc_msgSend(key, "verticalAlignment")) && (mWritingDirection = self->mWritingDirection, mWritingDirection == objc_msgSend(key, "writingDirection")) && (mValueType = self->mValueType, mValueType == objc_msgSend(key, "valueType")) && (objc_msgSend(key, "paddingInsets"), v14.f64[1] = v13, v16.f64[1] = v15, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->mPaddingInsets.top, v14), vceqq_f64(*&self->mPaddingInsets.bottom, v16)))) & 1) != 0))
    {
      v17 = -[TSSStyle isEqual:](self->mParagraphStyle, "isEqual:", [key paragraphStyle]);
      if (v17)
      {
        mString = self->mString;
        string = [key string];

        LOBYTE(v17) = [(NSString *)mString isEqualToString:string];
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