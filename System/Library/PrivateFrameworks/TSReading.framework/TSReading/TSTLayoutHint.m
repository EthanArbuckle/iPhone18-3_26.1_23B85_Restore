@interface TSTLayoutHint
- (BOOL)overlapsWithSelection:(id)a3;
- (CGSize)effectiveSize;
- (CGSize)maximumSize;
- (NSString)description;
- (TSTLayoutHint)initWithCoder:(id)a3;
- (TSTLayoutHint)initWithRange:(id)a3 hintId:(id)a4 partitionPosition:(unsigned int)a5 maximumSize:(CGSize)a6 effectiveSize:(CGSize)a7 layout:(id)a8 validity:(BOOL)a9 horizontal:(BOOL)a10;
- (id)copyForArchiving;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)release;
@end

@implementation TSTLayoutHint

- (TSTLayoutHint)initWithRange:(id)a3 hintId:(id)a4 partitionPosition:(unsigned int)a5 maximumSize:(CGSize)a6 effectiveSize:(CGSize)a7 layout:(id)a8 validity:(BOOL)a9 horizontal:(BOOL)a10
{
  height = a7.height;
  width = a7.width;
  v17 = a6.height;
  v18 = a6.width;
  v21.receiver = self;
  v21.super_class = TSTLayoutHint;
  result = [(TSTLayoutHint *)&v21 init];
  if (result)
  {
    result->mCellRange = a3;
    result->mCacheHintID = a4;
    result->mPartitionPosition = a5;
    result->mMaximumSize.width = v18;
    result->mMaximumSize.height = v17;
    result->mEffectiveSize.width = width;
    result->mEffectiveSize.height = height;
    result->mLayout = a8;
    result->mIsValid = a9;
    result->mHorizontal = a10;
    result->mPartitioningPass = 0;
  }

  return result;
}

- (void)dealloc
{
  mLayout = self->mLayout;
  if (mLayout)
  {
    [(TSTLayout *)mLayout setLayoutHint:0];
  }

  self->mLayout = 0;

  self->mPartitioningPass = 0;
  v4.receiver = self;
  v4.super_class = TSTLayoutHint;
  [(TSTLayoutHint *)&v4 dealloc];
}

- (void)release
{
  v2.receiver = self;
  v2.super_class = TSTLayoutHint;
  [(TSTLayoutHint *)&v2 release];
}

- (id)copyForArchiving
{
  v3 = [objc_alloc(objc_opt_class()) initWithRange:*&self->mCellRange hintId:*&self->mCacheHintID partitionPosition:self->mPartitionPosition maximumSize:0 effectiveSize:self->mIsValid layout:self->mHorizontal validity:self->mMaximumSize.width horizontal:{self->mMaximumSize.height, self->mEffectiveSize.width, self->mEffectiveSize.height}];
  if (v3)
  {
    v3[3] = self->mPartitioningPass;
  }

  else
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayoutHint copyForArchiving]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutHint.mm"), 111, @"invalid nil value for '%s'", "copy"}];
  }

  return v3;
}

- (BOOL)overlapsWithSelection:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return v4;
  }

  v5 = [objc_msgSend(v4 "cellRegion")];
  v6 = 0;
  if (v5 == 0xFFFF)
  {
    goto LABEL_25;
  }

  v7 = 0;
  if ((v5 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_26;
  }

  if (HIWORD(v5))
  {
    v8 = (v5 & 0xFFFF00000000) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_26;
  }

  v6 = 0;
  mCellRange = self->mCellRange;
  if (self->mCellRange.origin.row == 0xFFFF)
  {
    goto LABEL_25;
  }

  v7 = 0;
  if ((*&mCellRange & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_26;
  }

  v6 = 0;
  if (!HIWORD(*&mCellRange))
  {
LABEL_25:
    v7 = 0;
    goto LABEL_26;
  }

  v7 = 0;
  if ((*&mCellRange & 0xFFFF00000000) != 0)
  {
    v6 = 0;
    column = BYTE2(v5);
    if (BYTE2(v5) <= mCellRange.origin.column)
    {
      column = mCellRange.origin.column;
    }

    v11 = *&self->mCellRange;
    if (v5 > mCellRange.origin.row)
    {
      v11 = v5;
    }

    v12 = (LOBYTE(mCellRange.size.numberOfColumns) + mCellRange.origin.column - 1);
    if ((BYTE4(v5) + BYTE2(v5) - 1) < v12)
    {
      v12 = (BYTE4(v5) + BYTE2(v5) - 1);
    }

    v13 = (v5 + HIWORD(v5) - 1);
    v14 = mCellRange.origin.row + mCellRange.size.numberOfRows - 1;
    if (v13 >= v14)
    {
      v13 = v14;
    }

    if (v11 <= v13)
    {
      v7 = 0;
      if (column <= v12)
      {
        v7 = ((v13 - v11) << 48) + 0x1000000000000;
        v6 = (((v12 - column) << 32) + 0x100000000) & 0xFFFF00000000;
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  LOBYTE(v4) = ((v6 | v7) & 0xFFFF00000000) != 0 && HIWORD(v7) != 0;
  return v4;
}

- (void)invalidate
{
  if ([(TSTLayoutHint *)self layout])
  {
    [[(TSTLayoutHint *)self layout] invalidate];
  }

  [(TSTLayoutHint *)self setIsValid:0];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(TSTLayoutHint *)self cacheHintID];
  -[NSString appendFormat:](v3, "appendFormat:", @"ID: %@ ", [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", BYTE2(v4), v4]);
  v5 = [(TSTLayoutHint *)self cellRange];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", v5.var0.var1, v5.var0.var0];
  -[NSString appendFormat:](v3, "appendFormat:", @"Range: %@ ", [v6 stringWithFormat:@"(%@, %@)", v7, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", v5.var1.var0, HIWORD(*&v5))]);
  if ([(TSTLayoutHint *)self horizontal])
  {
    v8 = @"H";
  }

  else
  {
    v8 = @"V";
  }

  [(NSString *)v3 appendString:v8];
  return v3;
}

- (TSTLayoutHint)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"maximumSize"];
  if (v5)
  {
    [v5 CGSizeValue];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"effectiveSize"];
  if (v10)
  {
    [v10 CGSizeValue];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v15 = -[TSTLayoutHint initWithRange:hintId:partitionPosition:maximumSize:effectiveSize:layout:validity:horizontal:](self, "initWithRange:hintId:partitionPosition:maximumSize:effectiveSize:layout:validity:horizontal:", ([a3 decodeIntegerForKey:@"cellRangeSizeRows"] << 48) | (objc_msgSend(a3, "decodeIntegerForKey:", @"cellRangeSizeColumns") << 32) | (objc_msgSend(a3, "decodeIntegerForKey:", @"cellRangeOriginColumn") << 16) | objc_msgSend(a3, "decodeIntegerForKey:", @"cellRangeOriginRow"), objc_msgSend(a3, "decodeIntegerForKey:", @"cacheHintIDRow") | (objc_msgSend(a3, "decodeIntegerForKey:", @"cacheHintIDColumn") << 16), objc_msgSend(a3, "decodeIntForKey:", @"partitionPosition"), 0, objc_msgSend(a3, "decodeBoolForKey:", @"isValid"), objc_msgSend(a3, "decodeBoolForKey:", @"horizontal"), v7, v9, v12, v14);
  if (v15)
  {
    v15->mPartitioningPass = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"partitioningPass", "copy"}];
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->mCellRange.origin.row forKey:@"cellRangeOriginRow"];
  [a3 encodeInteger:self->mCellRange.origin.column forKey:@"cellRangeOriginColumn"];
  [a3 encodeInteger:self->mCellRange.size.numberOfColumns forKey:@"cellRangeSizeColumns"];
  [a3 encodeInteger:self->mCellRange.size.numberOfRows forKey:@"cellRangeSizeRows"];
  [a3 encodeInteger:self->mCacheHintID.column forKey:@"cacheHintIDColumn"];
  [a3 encodeInteger:self->mCacheHintID.row forKey:@"cacheHintIDRow"];
  [a3 encodeBool:self->mIsValid forKey:@"isValid"];
  [a3 encodeInt:self->mPartitionPosition forKey:@"partitionPosition"];
  [a3 encodeBool:self->mHorizontal forKey:@"horizontal"];
  [a3 encodeObject:self->mPartitioningPass forKey:@"partitioningPass"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGSize:", self->mMaximumSize.width, self->mMaximumSize.height), @"maximumSize"}];
  v5 = [MEMORY[0x277CCAE60] valueWithCGSize:{self->mEffectiveSize.width, self->mEffectiveSize.height}];

  [a3 encodeObject:v5 forKey:@"effectiveSize"];
}

- (CGSize)maximumSize
{
  width = self->mMaximumSize.width;
  height = self->mMaximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)effectiveSize
{
  width = self->mEffectiveSize.width;
  height = self->mEffectiveSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end