@interface _PLKUILabelCacheKey
+ (id)cacheKeyForLabel:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)stringKey;
- (uint64_t)isValidForLabel:(uint64_t)a1;
- (unint64_t)hash;
@end

@implementation _PLKUILabelCacheKey

+ (id)cacheKeyForLabel:(id)a3
{
  v3 = a3;
  objc_sync_enter(v3);
  v4 = objc_getAssociatedObject(v3, "cacheKeyForLabel");
  v5 = v4;
  if (v4 && ([(_PLKUILabelCacheKey *)v4 isValidForLabel:v3]& 1) != 0)
  {
    v6 = v5;
LABEL_9:
    v6 = v6;
    v19 = v6;
    goto LABEL_10;
  }

  v6 = objc_opt_new();

  *(v6 + 15) = 0x7FFFFFFFFFFFFFFFLL;
  [v3 bounds];
  *(v6 + 1) = v7;
  *(v6 + 2) = v8;
  *(v6 + 3) = v9;
  *(v6 + 4) = v10;
  *(v6 + 5) = [v3 numberOfLines];
  *(v6 + 48) = [v3 adjustsFontSizeToFitWidth];
  [v3 minimumScaleFactor];
  *(v6 + 7) = v11;
  v12 = [v3 text];

  if (v12)
  {
    v13 = [v3 text];
    v14 = [v13 copy];
    v15 = *(v6 + 9);
    *(v6 + 9) = v14;

    v16 = [v3 font];
    v17 = [v16 copy];
    v18 = *(v6 + 10);
    *(v6 + 10) = v17;

    *(v6 + 11) = [v3 textAlignment];
    *(v6 + 12) = [v3 lineBreakMode];
    *(v6 + 13) = [v3 lineBreakStrategy];
LABEL_8:
    objc_setAssociatedObject(v3, "cacheKeyForLabel", v6, 1);
    goto LABEL_9;
  }

  v19 = [v3 attributedText];

  if (v19)
  {
    v20 = [v3 attributedText];
    v21 = [v20 copy];
    v22 = *(v6 + 8);
    *(v6 + 8) = v21;

    goto LABEL_8;
  }

  objc_setAssociatedObject(v3, "cacheKeyForLabel", 0, 1);
LABEL_10:

  objc_sync_exit(v3);

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
    goto LABEL_11;
  }

  if (!v4)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = v4;
  if (CGRectEqualToRect(self->_labelBounds, v6->_labelBounds) && self->_adjustsFontSizeToFitWidth == v6->_adjustsFontSizeToFitWidth && self->_numberOfLines == v6->_numberOfLines && self->_minimumScaleFactor == v6->_minimumScaleFactor)
  {
    if (self->_text && v6->_text)
    {
      if (BSEqualObjects())
      {
        font = self->_font;
        v10 = v6->_font;
        if (BSEqualObjects())
        {
          if (self->_alignment == v6->_alignment && self->_lineBreakMode == v6->_lineBreakMode)
          {
            v7 = self->_lineBreakStrategy == v6->_lineBreakStrategy;
            goto LABEL_8;
          }
        }
      }
    }

    else if (self->_attrString && v6->_attrString)
    {
      v7 = BSEqualObjects();
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

LABEL_11:
  return v7;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x277CF0C40] builder];
    v5 = [v4 appendCGRect:{self->_labelBounds.origin.x, self->_labelBounds.origin.y, self->_labelBounds.size.width, self->_labelBounds.size.height}];
    v6 = [v4 appendBool:self->_adjustsFontSizeToFitWidth];
    v7 = [v4 appendUnsignedInteger:self->_numberOfLines];
    v8 = [v4 appendCGFloat:self->_minimumScaleFactor];
    if (self->_attrString)
    {
      v9 = [v4 appendObject:?];
    }

    else if (self->_text)
    {
      v10 = [v4 appendObject:?];
      v11 = [v4 appendObject:self->_font];
      v12 = [v4 appendUnsignedInteger:self->_alignment];
      v13 = [v4 appendUnsignedInteger:self->_lineBreakMode];
      v14 = [v4 appendUnsignedInteger:self->_lineBreakStrategy];
    }

    self->_hash = [v4 hash];

    return self->_hash;
  }

  return result;
}

- (id)stringKey
{
  v16 = *MEMORY[0x277D85DE8];
  stringKey = self->_stringKey;
  if (!stringKey)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CCAB68] string];
    v6 = NSStringFromCGRect(self->_labelBounds);
    [v5 appendFormat:@"bounds:%@, ", v6];

    [v5 appendFormat:@"lines:%lu, ", self->_numberOfLines];
    [v5 appendFormat:@"adjustsFontSize:%d, ", self->_adjustsFontSizeToFitWidth];
    [v5 appendFormat:@"minimumScaleFactor:%f, ", *&self->_minimumScaleFactor];
    if (self->_attrString)
    {
      [v5 appendFormat:@"attrString:%@, ", self->_attrString];
    }

    else if (self->_text)
    {
      [v5 appendFormat:@"text:%@, ", self->_text];
      [v5 appendFormat:@"font:%@, ", self->_font];
      [v5 appendFormat:@"alignment:%lu, ", self->_alignment];
      [v5 appendFormat:@"lineBreakMode:%lu, ", self->_lineBreakMode];
      [v5 appendFormat:@"lineBreakStrategy:%lu, ", self->_lineBreakStrategy];
    }

    v7 = [v5 UTF8String];
    v8 = strlen(v7);
    CC_SHA256(v7, v8, md);
    v9 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v9 appendFormat:@"%02x", md[i]];
    }

    v11 = [v9 copy];
    v12 = self->_stringKey;
    self->_stringKey = v11;

    objc_autoreleasePoolPop(v4);
    stringKey = self->_stringKey;
  }

  v13 = *MEMORY[0x277D85DE8];

  return stringKey;
}

- (uint64_t)isValidForLabel:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 bounds];
    if (!CGRectEqualToRect(v16, *(a1 + 8)))
    {
      goto LABEL_6;
    }

    if (*(a1 + 48) != [v4 adjustsFontSizeToFitWidth])
    {
      goto LABEL_6;
    }

    if ([v4 numberOfLines] != *(a1 + 40))
    {
      goto LABEL_6;
    }

    [v4 minimumScaleFactor];
    if (v5 != *(a1 + 56))
    {
      goto LABEL_6;
    }

    v7 = [v4 text];

    if (!v7)
    {
      v14 = [v4 attributedText];
      v15 = *(a1 + 64);
      a1 = BSEqualObjects();

      goto LABEL_7;
    }

    v8 = [v4 text];
    v9 = *(a1 + 72);
    v10 = BSEqualObjects();

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = [v4 font];
    v12 = *(a1 + 80);
    v13 = BSEqualObjects();

    if (v13 && [v4 textAlignment] == *(a1 + 88) && objc_msgSend(v4, "lineBreakMode") == *(a1 + 96))
    {
      a1 = [v4 lineBreakStrategy] == *(a1 + 104);
    }

    else
    {
LABEL_6:
      a1 = 0;
    }
  }

LABEL_7:

  return a1;
}

@end