@interface REMTTParagraphStyle
- (REMTTParagraphStyle)initWithContents:(id)contents;
- (REMTTParagraphStyle)initWithStyle:(int64_t)style;
- (id)listBulletInAttributedString:(id)string atIndex:(unint64_t)index;
- (int64_t)remParagraphStyle;
@end

@implementation REMTTParagraphStyle

- (REMTTParagraphStyle)initWithContents:(id)contents
{
  contentsCopy = contents;
  v11.receiver = self;
  v11.super_class = REMTTParagraphStyle;
  v5 = [(REMTTParagraphStyle *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = REMDynamicCast(v6, contentsCopy);
    if (!v7)
    {
      v9 = 0;
      goto LABEL_6;
    }

    innerStyle = v5->_innerStyle;
    v5->_innerStyle = v7;
  }

  v9 = v5;
LABEL_6:

  return v9;
}

- (REMTTParagraphStyle)initWithStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = REMTTParagraphStyle;
  v4 = [(REMTTParagraphStyle *)&v9 init];
  if (v4)
  {
    if (style > 1)
    {
      if (style == 2)
      {
        v5 = 101;
        goto LABEL_10;
      }

      if (style == 3)
      {
        v5 = 102;
        goto LABEL_10;
      }
    }

    else if (style == 1)
    {
      v5 = 100;
LABEL_10:
      v6 = [TTParagraphStyle paragraphStyleNamed:v5];
      goto LABEL_11;
    }

    v6 = +[TTParagraphStyle defaultParagraphStyle];
LABEL_11:
    v7 = v6;
    [(REMTTParagraphStyle *)v4 setInnerStyle:v6];
  }

  return v4;
}

- (int64_t)remParagraphStyle
{
  innerStyle = [(REMTTParagraphStyle *)self innerStyle];
  style = [innerStyle style];

  v4 = (style - 100);
  if (v4 < 3)
  {
    return v4 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)listBulletInAttributedString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  innerStyle = [(REMTTParagraphStyle *)self innerStyle];
  v8 = [innerStyle listBulletInAttributedString:stringCopy atIndex:index];

  return v8;
}

@end