@interface TSWPDropCapSpacing
+ (id)dropCapSpacingWithLineCount:(unint64_t)a3 elevatedLineCount:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (TSWPDropCapSpacing)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)computedFlagsWithPropertyMap:(id)a3;
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

+ (id)dropCapSpacingWithLineCount:(unint64_t)a3 elevatedLineCount:(unint64_t)a4
{
  v6 = objc_alloc_init(a1);
  [v6 setLineCount:a3];
  [v6 setElevatedLineCount:a4];
  return v6;
}

- (unint64_t)computedFlagsWithPropertyMap:(id)a3
{
  result = self->_flags;
  if (!result)
  {
    [(TSWPDropCapSpacing *)self padding];
    if (v6 == 0.0 && ![a3 containsProperty:38])
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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    v6 = [(TSWPDropCapSpacing *)self allowSpanParagraphs];
    if (v6 == [v5 allowSpanParagraphs] && (v7 = -[TSWPDropCapSpacing lineCount](self, "lineCount"), v7 == objc_msgSend(v5, "lineCount")) && (v8 = -[TSWPDropCapSpacing elevatedLineCount](self, "elevatedLineCount"), v8 == objc_msgSend(v5, "elevatedLineCount")) && (-[TSWPDropCapSpacing padding](self, "padding"), v10 = v9, objc_msgSend(v5, "padding"), v10 == v11) && (v12 = -[TSWPDropCapSpacing followingLineCount](self, "followingLineCount"), v12 == objc_msgSend(v5, "followingLineCount")))
    {
      v13 = [(TSWPDropCapSpacing *)self flags];
      LOBYTE(v4) = v13 == [v5 flags];
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
  v3 = [(TSWPDropCapSpacing *)self allowSpanParagraphs];
  v4 = v3 | (2 * [(TSWPDropCapSpacing *)self lineCount]);
  v5 = v4 ^ (8 * [(TSWPDropCapSpacing *)self elevatedLineCount]);
  [(TSWPDropCapSpacing *)self padding];
  return v5 ^ (v6 << 6) ^ ([(TSWPDropCapSpacing *)self followingLineCount]<< 10) ^ self->_flags;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TSWPDropCapSpacing *)self lineCount];
  v7 = [(TSWPDropCapSpacing *)self elevatedLineCount];
  padding = self->_padding;
  v9 = [(TSWPDropCapSpacing *)self followingLineCount];
  if ([(TSWPDropCapSpacing *)self allowSpanParagraphs])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: lineCount=%lu elevatedLineCount=%lu padding=%f followingLineCount=%lu allowSpanParagraphs=%@ flags=%lu>", v5, v6, v7, *&padding, v9, v10, -[TSWPDropCapSpacing flags](self, "flags")];
}

@end