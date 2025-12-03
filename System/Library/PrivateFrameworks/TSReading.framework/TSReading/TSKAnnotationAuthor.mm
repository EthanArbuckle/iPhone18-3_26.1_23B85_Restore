@interface TSKAnnotationAuthor
+ (id)authorChangeAdornmentsColorForIndex:(unint64_t)index;
+ (id)authorColorAppearanceNameForIndex:(unint64_t)index;
+ (id)authorColorNameForIndex:(unint64_t)index;
+ (id)authorPopoverColorForIndex:(unint64_t)index;
+ (id)authorStorageColorForIndex:(unint64_t)index;
+ (id)authorTextMarkupColorForIndex:(unint64_t)index;
+ (id)defaultAuthorName;
- (BOOL)isEqual:(id)equal;
- (TSKAnnotationAuthor)initWithContext:(id)context name:(id)name color:(id)color;
- (TSUColor)cellViolatorColor;
- (TSUColor)changeAdornmentsColor;
- (TSUColor)flagFillColor;
- (TSUColor)flagPressedColor;
- (TSUColor)flagStrokeColor;
- (TSUColor)popoverColor;
- (TSUColor)textHighlightColor;
- (TSUColor)textMarkupColor;
- (id)componentRootObject;
- (unint64_t)hash;
- (unint64_t)p_authorColorIndex;
- (void)dealloc;
- (void)setName:(id)name;
- (void)setStorageColor:(id)color;
@end

@implementation TSKAnnotationAuthor

- (void)setName:(id)name
{
  [(TSPObject *)self willModify];
  v5 = [name copy];

  self->mName = v5;
}

- (void)setStorageColor:(id)color
{
  [(TSPObject *)self willModify];
  colorCopy = color;

  self->mColor = color;
}

- (TSKAnnotationAuthor)initWithContext:(id)context name:(id)name color:(id)color
{
  if (name)
  {
    if (color)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAnnotationAuthor initWithContext:name:color:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 39, @"Invalid parameter not satisfying: %s", "name != nil"}];
    if (color)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAnnotationAuthor initWithContext:name:color:]"];
  [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 40, @"Invalid parameter not satisfying: %s", "color != nil"}];
LABEL_3:
  v15.receiver = self;
  v15.super_class = TSKAnnotationAuthor;
  v9 = [(TSPObject *)&v15 initWithContext:context];
  if (v9)
  {
    v9->mName = [name copy];
    v9->mColor = color;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKAnnotationAuthor;
  [(TSKAnnotationAuthor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = TSUDynamicCast();
      v5 = -[TSUColor isEqual:](self->mColor, "isEqual:", [v4 storageColor]);
      if (v5)
      {
        mName = self->mName;
        name = [v4 name];

        LOBYTE(v5) = [(NSString *)mName isEqualToString:name];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = TSKAnnotationAuthor;
  v3 = [(TSKAnnotationAuthor *)&v6 hash];
  v4 = [(NSString *)self->mName hash]^ v3;
  return v4 ^ [(TSUColor *)self->mColor hash];
}

- (unint64_t)p_authorColorIndex
{
  storageColor = [(TSKAnnotationAuthor *)self storageColor];
  if (!+[TSKAnnotationAuthor presetColorCount])
  {
    goto LABEL_7;
  }

  v3 = 0;
  while (([+[TSKAnnotationAuthor authorStorageColorForIndex:](TSKAnnotationAuthor authorStorageColorForIndex:{v3), "isEqual:", storageColor}] & 1) == 0)
  {
    if (++v3 >= +[TSKAnnotationAuthor presetColorCount])
    {
      goto LABEL_7;
    }
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    [(TSUColor *)storageColor redComponent];
    v5 = v4;
    [(TSUColor *)storageColor greenComponent];
    v7 = v6;
    [(TSUColor *)storageColor blueComponent];
    v9 = v8;
    if (!+[TSKAnnotationAuthor presetColorCount])
    {
LABEL_14:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAnnotationAuthor p_authorColorIndex]"];
      [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 133, @"Should have found a color"}];
      return 0;
    }

    v10 = 0;
    v3 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 1.79769313e308;
    do
    {
      v12 = [TSKAnnotationAuthor authorStorageColorForIndex:v10];
      if (v12)
      {
        v13 = v12;
        [v12 redComponent];
        v15 = v14;
        [v13 greenComponent];
        v17 = v16;
        [v13 blueComponent];
        v19 = sqrt((v17 - v7) * (v17 - v7) + (v15 - v5) * (v15 - v5) + (v18 - v9) * (v18 - v9));
        if (v19 < v11)
        {
          v11 = v19;
          v3 = v10;
        }
      }

      ++v10;
    }

    while (v10 < +[TSKAnnotationAuthor presetColorCount]);
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  return v3;
}

- (TSUColor)textMarkupColor
{
  p_authorColorIndex = [(TSKAnnotationAuthor *)self p_authorColorIndex];

  return [TSKAnnotationAuthor authorTextMarkupColorForIndex:p_authorColorIndex];
}

- (TSUColor)textHighlightColor
{
  p_authorColorIndex = [(TSKAnnotationAuthor *)self p_authorColorIndex];

  return [TSKAnnotationAuthor authorTextHighlightColorForIndex:p_authorColorIndex];
}

- (TSUColor)cellViolatorColor
{
  p_authorColorIndex = [(TSKAnnotationAuthor *)self p_authorColorIndex];

  return [TSKAnnotationAuthor authorCellViolatorColorForIndex:p_authorColorIndex];
}

- (TSUColor)flagStrokeColor
{
  p_authorColorIndex = [(TSKAnnotationAuthor *)self p_authorColorIndex];

  return [TSKAnnotationAuthor authorFlagStrokeColorForIndex:p_authorColorIndex];
}

- (TSUColor)flagPressedColor
{
  p_authorColorIndex = [(TSKAnnotationAuthor *)self p_authorColorIndex];

  return [TSKAnnotationAuthor authorFlagPressedColorForIndex:p_authorColorIndex];
}

- (TSUColor)changeAdornmentsColor
{
  p_authorColorIndex = [(TSKAnnotationAuthor *)self p_authorColorIndex];

  return [TSKAnnotationAuthor authorChangeAdornmentsColorForIndex:p_authorColorIndex];
}

- (TSUColor)flagFillColor
{
  p_authorColorIndex = [(TSKAnnotationAuthor *)self p_authorColorIndex];

  return [TSKAnnotationAuthor authorFlagFillColorForIndex:p_authorColorIndex];
}

- (TSUColor)popoverColor
{
  p_authorColorIndex = [(TSKAnnotationAuthor *)self p_authorColorIndex];

  return [TSKAnnotationAuthor authorPopoverColorForIndex:p_authorColorIndex];
}

+ (id)authorStorageColorForIndex:(unint64_t)index
{
  if (+[TSKAnnotationAuthor authorStorageColorForIndex:]::onceToken != -1)
  {
    +[TSKAnnotationAuthor authorStorageColorForIndex:];
  }

  if (index >= 8)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKAnnotationAuthor authorStorageColorForIndex:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 227, @"author color id not defined"}];
  }

  indexCopy = 8;
  if (index < 8)
  {
    indexCopy = index;
  }

  return +[TSKAnnotationAuthor authorStorageColorForIndex:]::sAuthorColors[indexCopy];
}

id __50__TSKAnnotationAuthor_authorStorageColorForIndex___block_invoke()
{
  v0 = 0;
  v9 = 0x3FEB3B3B40000000;
  v8 = 0x3FE5757580000000;
  v7 = 0x3FEDDDDDE0000000;
  do
  {
    if (v0 > 3)
    {
      if (v0 <= 5)
      {
        v1 = 1.0;
        if (v0 == 4)
        {
          v3 = *&v8;
          v2 = *&v9;
          v4 = *&v7;
        }

        else
        {
          v2 = 0.552941203;
          v3 = 0.854901969;
          v4 = 0.792156875;
        }

        goto LABEL_20;
      }

      if (v0 == 6)
      {
        v1 = 1.0;
        v2 = 0.960784316;
        v3 = 0.694117665;
LABEL_19:
        v4 = 0.301960796;
LABEL_20:
        v5 = [MEMORY[0x277D6C2A8] colorWithRed:v2 green:v3 blue:v4 alpha:{v1, v7, v8, v9}];
        goto LABEL_21;
      }

      if (v0 == 7)
      {
        v1 = 1.0;
        v2 = 0.87843138;
        v3 = 0.87843138;
        v4 = 0.87843138;
        goto LABEL_20;
      }
    }

    else
    {
      if (v0 > 1)
      {
        v1 = 1.0;
        if (v0 == 2)
        {
          v3 = 0.800000012;
          v2 = 0.68235296;
          v4 = 0.988235295;
        }

        else
        {
          v2 = 0.980392158;
          v4 = 0.823529422;
          v3 = 0.666666687;
        }

        goto LABEL_20;
      }

      if (!v0)
      {
        v1 = 1.0;
        v2 = 0.980392158;
        v4 = 0.352941185;
        v3 = 0.937254906;
        goto LABEL_20;
      }

      if (v0 == 1)
      {
        v1 = 1.0;
        v3 = 0.941176474;
        v2 = 0.749019623;
        goto LABEL_19;
      }
    }

    v5 = [MEMORY[0x277D6C2A8] blackColor];
LABEL_21:
    result = v5;
    +[TSKAnnotationAuthor authorStorageColorForIndex:]::sAuthorColors[v0++] = result;
  }

  while (v0 != 9);
  return result;
}

+ (id)authorTextMarkupColorForIndex:(unint64_t)index
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TSKAnnotationAuthor_authorTextMarkupColorForIndex___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = index;
  if (+[TSKAnnotationAuthor authorTextMarkupColorForIndex:]::onceToken != -1)
  {
    dispatch_once(&+[TSKAnnotationAuthor authorTextMarkupColorForIndex:]::onceToken, block);
  }

  if (index >= 8)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKAnnotationAuthor authorTextMarkupColorForIndex:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 275, @"author color id not defined"}];
  }

  indexCopy = 8;
  if (index < 8)
  {
    indexCopy = index;
  }

  return +[TSKAnnotationAuthor authorTextMarkupColorForIndex:]::sAuthorColors[indexCopy];
}

id __53__TSKAnnotationAuthor_authorTextMarkupColorForIndex___block_invoke(uint64_t a1)
{
  v2 = 0;
  v10 = 0x3FE4747480000000;
  do
  {
    v3 = *(a1 + 32);
    if (v3 > 3)
    {
      if (v3 <= 5)
      {
        v5 = 1.0;
        if (v3 == 4)
        {
          v6 = *&v10;
          v7 = 0.407843143;
          v4 = 0.866666675;
        }

        else
        {
          v6 = 0.156862751;
          v7 = 0.53725493;
          v4 = 0.458823532;
        }

        goto LABEL_19;
      }

      if (v3 == 6)
      {
        v5 = 1.0;
        v6 = 0.647058845;
        v7 = 0.427450985;
        v4 = 0.0862745121;
        goto LABEL_19;
      }

      if (v3 == 7)
      {
        v5 = 1.0;
        v6 = 0.427450985;
        v7 = 0.427450985;
        v4 = 0.427450985;
        goto LABEL_19;
      }
    }

    else
    {
      if (v3 > 1)
      {
        v5 = 1.0;
        if (v3 == 2)
        {
          v7 = 0.529411793;
          v6 = 0.329411775;
          v4 = 0.80392158;
        }

        else
        {
          v7 = 0.301960796;
          v6 = 0.713725507;
          v4 = 0.541176498;
        }

        goto LABEL_19;
      }

      if (!v3)
      {
        v4 = 0.0;
        v5 = 1.0;
        v7 = 0.596078455;
        v6 = 0.75686276;
        goto LABEL_19;
      }

      if (v3 == 1)
      {
        v4 = 0.0;
        v5 = 1.0;
        v6 = 0.478431374;
        v7 = 0.647058845;
LABEL_19:
        v8 = [MEMORY[0x277D6C2A8] colorWithRed:v6 green:v7 blue:v4 alpha:{v5, v10}];
        goto LABEL_20;
      }
    }

    v8 = [MEMORY[0x277D6C2A8] blackColor];
LABEL_20:
    result = v8;
    +[TSKAnnotationAuthor authorTextMarkupColorForIndex:]::sAuthorColors[v2++] = result;
  }

  while (v2 != 9);
  return result;
}

+ (id)authorChangeAdornmentsColorForIndex:(unint64_t)index
{
  v9 = MEMORY[0x277D6C2A8];
  if (index > 3)
  {
    if (index <= 5)
    {
      if (index == 4)
      {
        v10 = 0.729411781;
        v11 = 0.509803951;
        v12 = 0.996078432;
      }

      else
      {
        v10 = 0.407843143;
        v11 = 0.749019623;
        v12 = 0.678431392;
      }

      goto LABEL_20;
    }

    if (index != 6)
    {
      if (index == 7)
      {
        v10 = 0.87843138;
        v13 = 1.0;
        v11 = 0.87843138;
        v12 = 0.87843138;

        return [v9 colorWithRed:v10 green:v11 blue:v12 alpha:v13];
      }

      goto LABEL_23;
    }

    v10 = 0.984313726;
    v11 = 0.674509823;
    v12 = 0.254901975;
LABEL_20:
    v13 = 1.0;

    return [v9 colorWithRed:v10 green:v11 blue:v12 alpha:v13];
  }

  if (index > 1)
  {
    if (index == 2)
    {
      v10 = 0.627451003;
      v11 = 0.749019623;
      v12 = 0.917647064;
    }

    else
    {
      v10 = 0.952941179;
      v11 = 0.666666687;
      v12 = 0.796078444;
    }

    goto LABEL_20;
  }

  if (!index)
  {
    v10 = 0.992156863;
    v11 = 0.815686285;
    v12 = 0.211764708;
    goto LABEL_20;
  }

  if (index == 1)
  {
    v10 = 0.674509823;
    v11 = 0.858823538;
    v12 = 0.156862751;
    goto LABEL_20;
  }

LABEL_23:
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKAnnotationAuthor authorChangeAdornmentsColorForIndex:]"];
  [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 333, @"author color id not defined"}];
  return blackColor;
}

+ (id)authorPopoverColorForIndex:(unint64_t)index
{
  v9 = MEMORY[0x277D6C2A8];
  if (index > 3)
  {
    if (index <= 5)
    {
      if (index == 4)
      {
        v10 = 0.850980401;
        v11 = 0.670588255;
        v12 = 0.933333337;
      }

      else
      {
        v10 = 0.552941203;
        v11 = 0.854901969;
        v12 = 0.792156875;
      }

      goto LABEL_20;
    }

    if (index != 6)
    {
      if (index == 7)
      {
        v10 = 0.956862748;
        v13 = 1.0;
        v11 = 0.956862748;
        v12 = 0.956862748;

        return [v9 colorWithRed:v10 green:v11 blue:v12 alpha:v13];
      }

      goto LABEL_23;
    }

    v10 = 0.970000029;
    v12 = 0.370000005;
    v11 = 0.75;
LABEL_20:
    v13 = 1.0;

    return [v9 colorWithRed:v10 green:v11 blue:v12 alpha:v13];
  }

  if (index > 1)
  {
    if (index == 2)
    {
      v10 = 0.733333349;
      v11 = 0.839215696;
      v12 = 0.984313726;
    }

    else
    {
      v11 = 0.730000019;
      v12 = 0.850000024;
      v10 = 1.0;
    }

    goto LABEL_20;
  }

  if (!index)
  {
    v10 = 0.984313726;
    v11 = 0.945098042;
    v12 = 0.490196079;
    goto LABEL_20;
  }

  if (index == 1)
  {
    v10 = 0.749019623;
    v11 = 0.941176474;
    v12 = 0.301960796;
    goto LABEL_20;
  }

LABEL_23:
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKAnnotationAuthor authorPopoverColorForIndex:]"];
  [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 376, @"author color id not defined"}];
  return blackColor;
}

+ (id)authorColorAppearanceNameForIndex:(unint64_t)index
{
  if (index < 8)
  {
    return off_279D47C60[index];
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKAnnotationAuthor authorColorAppearanceNameForIndex:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 416, @"author color id not defined"}];
  return @"Unknown";
}

+ (id)authorColorNameForIndex:(unint64_t)index
{
  if (index > 3)
  {
    if (index > 5)
    {
      if (index == 6)
      {
        v3 = TSKBundle();
        v4 = @"Orange";
        goto LABEL_18;
      }

      if (index == 7)
      {
        v3 = TSKBundle();
        v4 = @"Gray";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (index == 4)
    {
      v3 = TSKBundle();
      v4 = @"Purple";
    }

    else
    {
      v3 = TSKBundle();
      v4 = @"Teal";
    }
  }

  else
  {
    if (index <= 1)
    {
      if (!index)
      {
        v3 = TSKBundle();
        v4 = @"Yellow";
        goto LABEL_18;
      }

      if (index == 1)
      {
        v3 = TSKBundle();
        v4 = @"Green";
        goto LABEL_18;
      }

LABEL_21:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKAnnotationAuthor authorColorNameForIndex:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 454, @"author color id not defined"}];
      return @"Unknown";
    }

    if (index == 2)
    {
      v3 = TSKBundle();
      v4 = @"Blue";
    }

    else
    {
      v3 = TSKBundle();
      v4 = @"Pink";
    }
  }

LABEL_18:

  return [v3 localizedStringForKey:v4 value:&stru_287D36338 table:@"TSKit"];
}

+ (id)defaultAuthorName
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];

  return [currentDevice localizedModel];
}

- (id)componentRootObject
{
  documentRoot = [(TSPObject *)self documentRoot];

  return [documentRoot annotationAuthorStorage];
}

@end