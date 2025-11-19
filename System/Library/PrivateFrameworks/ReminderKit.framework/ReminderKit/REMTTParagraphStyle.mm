@interface REMTTParagraphStyle
- (REMTTParagraphStyle)initWithContents:(id)a3;
- (REMTTParagraphStyle)initWithStyle:(int64_t)a3;
- (id)listBulletInAttributedString:(id)a3 atIndex:(unint64_t)a4;
- (int64_t)remParagraphStyle;
@end

@implementation REMTTParagraphStyle

- (REMTTParagraphStyle)initWithContents:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = REMTTParagraphStyle;
  v5 = [(REMTTParagraphStyle *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = REMDynamicCast(v6, v4);
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

- (REMTTParagraphStyle)initWithStyle:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = REMTTParagraphStyle;
  v4 = [(REMTTParagraphStyle *)&v9 init];
  if (v4)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v5 = 101;
        goto LABEL_10;
      }

      if (a3 == 3)
      {
        v5 = 102;
        goto LABEL_10;
      }
    }

    else if (a3 == 1)
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
  v2 = [(REMTTParagraphStyle *)self innerStyle];
  v3 = [v2 style];

  v4 = (v3 - 100);
  if (v4 < 3)
  {
    return v4 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)listBulletInAttributedString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(REMTTParagraphStyle *)self innerStyle];
  v8 = [v7 listBulletInAttributedString:v6 atIndex:a4];

  return v8;
}

@end