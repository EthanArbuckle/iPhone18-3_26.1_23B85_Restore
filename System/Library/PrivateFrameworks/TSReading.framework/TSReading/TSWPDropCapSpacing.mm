@interface TSWPDropCapSpacing
+ (id)dropCapSpacingWithLineCount:(unint64_t)count elevatedLineCount:(unint64_t)lineCount;
- (BOOL)isEqual:(id)equal;
- (TSWPDropCapSpacing)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computedFlagsWithPropertyMap:(id)map;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSWPDropCapSpacing

- (TSWPDropCapSpacing)init
{
  v3.receiver = self;
  v3.super_class = TSWPDropCapSpacing;
  result = [(TSWPDropCapSpacing *)&v3 init];
  if (result)
  {
    result->_lineCount = 0;
    result->_elevatedLineCount = 0;
    result->_followingLineCount = 0x7FFFFFFFFFFFFFFFLL;
    result->_padding = 0.0;
    result->_allowSpanParagraphs = 1;
    result->_flags = 0;
    result->_maxWidthFactor = 1.0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPDropCapSpacing;
  [(TSWPDropCapSpacing *)&v2 dealloc];
}

+ (id)dropCapSpacingWithLineCount:(unint64_t)count elevatedLineCount:(unint64_t)lineCount
{
  v6 = objc_alloc_init(self);
  [v6 setLineCount:count];
  [v6 setElevatedLineCount:lineCount];
  return v6;
}

- (unint64_t)computedFlagsWithPropertyMap:(id)map
{
  result = self->_flags;
  if (!result)
  {
    [(TSWPDropCapSpacing *)self padding];
    if (v6 == 0.0 && ![map containsProperty:38])
    {
      return 102;
    }

    else
    {
      return 121;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setLineCount:self->_lineCount];
  [v4 setElevatedLineCount:self->_elevatedLineCount];
  [v4 setPadding:self->_padding];
  [v4 setFollowingLineCount:self->_followingLineCount];
  [v4 setAllowSpanParagraphs:self->_allowSpanParagraphs];
  [v4 setFlags:self->_flags];
  [v4 setMaxWidthFactor:self->_maxWidthFactor];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    allowSpanParagraphs = [(TSWPDropCapSpacing *)self allowSpanParagraphs];
    if (allowSpanParagraphs == [v5 allowSpanParagraphs] && (v7 = -[TSWPDropCapSpacing lineCount](self, "lineCount"), v7 == objc_msgSend(v5, "lineCount")) && (v8 = -[TSWPDropCapSpacing elevatedLineCount](self, "elevatedLineCount"), v8 == objc_msgSend(v5, "elevatedLineCount")) && (-[TSWPDropCapSpacing padding](self, "padding"), v10 = v9, objc_msgSend(v5, "padding"), v10 == v11) && (v12 = -[TSWPDropCapSpacing followingLineCount](self, "followingLineCount"), v12 == objc_msgSend(v5, "followingLineCount")))
    {
      flags = [(TSWPDropCapSpacing *)self flags];
      LOBYTE(v4) = flags == [v5 flags];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (unint64_t)hash
{
  allowSpanParagraphs = [(TSWPDropCapSpacing *)self allowSpanParagraphs];
  v4 = allowSpanParagraphs | (2 * [(TSWPDropCapSpacing *)self lineCount]);
  v5 = v4 ^ (8 * [(TSWPDropCapSpacing *)self elevatedLineCount]);
  [(TSWPDropCapSpacing *)self padding];
  return v5 ^ (v6 << 6) ^ ([(TSWPDropCapSpacing *)self followingLineCount]<< 10) ^ self->_flags;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  lineCount = [(TSWPDropCapSpacing *)self lineCount];
  elevatedLineCount = [(TSWPDropCapSpacing *)self elevatedLineCount];
  padding = self->_padding;
  followingLineCount = [(TSWPDropCapSpacing *)self followingLineCount];
  if ([(TSWPDropCapSpacing *)self allowSpanParagraphs])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: lineCount=%lu elevatedLineCount=%lu padding=%f followingLineCount=%lu allowSpanParagraphs=%@ flags=%lu>", v5, lineCount, elevatedLineCount, *&padding, followingLineCount, v10, -[TSWPDropCapSpacing flags](self, "flags")];
}

@end