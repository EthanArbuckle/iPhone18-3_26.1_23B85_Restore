@interface _PLKUILabelCacheKey
+ (id)cacheKeyForLabel:(id)label;
- (BOOL)isEqual:(id)equal;
- (id)stringKey;
- (uint64_t)isValidForLabel:(uint64_t)label;
- (unint64_t)hash;
@end

@implementation _PLKUILabelCacheKey

+ (id)cacheKeyForLabel:(id)label
{
  labelCopy = label;
  objc_sync_enter(labelCopy);
  v4 = objc_getAssociatedObject(labelCopy, "cacheKeyForLabel");
  v5 = v4;
  if (v4 && ([(_PLKUILabelCacheKey *)v4 isValidForLabel:labelCopy]& 1) != 0)
  {
    v6 = v5;
LABEL_9:
    v6 = v6;
    attributedText = v6;
    goto LABEL_10;
  }

  v6 = objc_opt_new();

  *(v6 + 15) = 0x7FFFFFFFFFFFFFFFLL;
  [labelCopy bounds];
  *(v6 + 1) = v7;
  *(v6 + 2) = v8;
  *(v6 + 3) = v9;
  *(v6 + 4) = v10;
  *(v6 + 5) = [labelCopy numberOfLines];
  *(v6 + 48) = [labelCopy adjustsFontSizeToFitWidth];
  [labelCopy minimumScaleFactor];
  *(v6 + 7) = v11;
  text = [labelCopy text];

  if (text)
  {
    text2 = [labelCopy text];
    v14 = [text2 copy];
    v15 = *(v6 + 9);
    *(v6 + 9) = v14;

    font = [labelCopy font];
    v17 = [font copy];
    v18 = *(v6 + 10);
    *(v6 + 10) = v17;

    *(v6 + 11) = [labelCopy textAlignment];
    *(v6 + 12) = [labelCopy lineBreakMode];
    *(v6 + 13) = [labelCopy lineBreakStrategy];
LABEL_8:
    objc_setAssociatedObject(labelCopy, "cacheKeyForLabel", v6, 1);
    goto LABEL_9;
  }

  attributedText = [labelCopy attributedText];

  if (attributedText)
  {
    attributedText2 = [labelCopy attributedText];
    v21 = [attributedText2 copy];
    v22 = *(v6 + 8);
    *(v6 + 8) = v21;

    goto LABEL_8;
  }

  objc_setAssociatedObject(labelCopy, "cacheKeyForLabel", 0, 1);
LABEL_10:

  objc_sync_exit(labelCopy);

  return attributedText;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_11;
  }

  if (!equalCopy)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = equalCopy;
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
    builder = [MEMORY[0x277CF0C40] builder];
    v5 = [builder appendCGRect:{self->_labelBounds.origin.x, self->_labelBounds.origin.y, self->_labelBounds.size.width, self->_labelBounds.size.height}];
    v6 = [builder appendBool:self->_adjustsFontSizeToFitWidth];
    v7 = [builder appendUnsignedInteger:self->_numberOfLines];
    v8 = [builder appendCGFloat:self->_minimumScaleFactor];
    if (self->_attrString)
    {
      v9 = [builder appendObject:?];
    }

    else if (self->_text)
    {
      v10 = [builder appendObject:?];
      v11 = [builder appendObject:self->_font];
      v12 = [builder appendUnsignedInteger:self->_alignment];
      v13 = [builder appendUnsignedInteger:self->_lineBreakMode];
      v14 = [builder appendUnsignedInteger:self->_lineBreakStrategy];
    }

    self->_hash = [builder hash];

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
    string = [MEMORY[0x277CCAB68] string];
    v6 = NSStringFromCGRect(self->_labelBounds);
    [string appendFormat:@"bounds:%@, ", v6];

    [string appendFormat:@"lines:%lu, ", self->_numberOfLines];
    [string appendFormat:@"adjustsFontSize:%d, ", self->_adjustsFontSizeToFitWidth];
    [string appendFormat:@"minimumScaleFactor:%f, ", *&self->_minimumScaleFactor];
    if (self->_attrString)
    {
      [string appendFormat:@"attrString:%@, ", self->_attrString];
    }

    else if (self->_text)
    {
      [string appendFormat:@"text:%@, ", self->_text];
      [string appendFormat:@"font:%@, ", self->_font];
      [string appendFormat:@"alignment:%lu, ", self->_alignment];
      [string appendFormat:@"lineBreakMode:%lu, ", self->_lineBreakMode];
      [string appendFormat:@"lineBreakStrategy:%lu, ", self->_lineBreakStrategy];
    }

    uTF8String = [string UTF8String];
    v8 = strlen(uTF8String);
    CC_SHA256(uTF8String, v8, md);
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

- (uint64_t)isValidForLabel:(uint64_t)label
{
  v3 = a2;
  v4 = v3;
  if (label)
  {
    [v3 bounds];
    if (!CGRectEqualToRect(v16, *(label + 8)))
    {
      goto LABEL_6;
    }

    if (*(label + 48) != [v4 adjustsFontSizeToFitWidth])
    {
      goto LABEL_6;
    }

    if ([v4 numberOfLines] != *(label + 40))
    {
      goto LABEL_6;
    }

    [v4 minimumScaleFactor];
    if (v5 != *(label + 56))
    {
      goto LABEL_6;
    }

    text = [v4 text];

    if (!text)
    {
      attributedText = [v4 attributedText];
      v15 = *(label + 64);
      label = BSEqualObjects();

      goto LABEL_7;
    }

    text2 = [v4 text];
    v9 = *(label + 72);
    v10 = BSEqualObjects();

    if (!v10)
    {
      goto LABEL_6;
    }

    font = [v4 font];
    v12 = *(label + 80);
    v13 = BSEqualObjects();

    if (v13 && [v4 textAlignment] == *(label + 88) && objc_msgSend(v4, "lineBreakMode") == *(label + 96))
    {
      label = [v4 lineBreakStrategy] == *(label + 104);
    }

    else
    {
LABEL_6:
      label = 0;
    }
  }

LABEL_7:

  return label;
}

@end