@interface TSTTableStyleNetwork
+ (id)createStylesInStylesheet:(id)stylesheet presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate;
+ (id)defaultTableNameShapeStyleWithContext:(id)context;
+ (id)identifiersForPresetIndex:(unint64_t)index;
+ (id)networkFromStylesheet:(id)stylesheet presetIndex:(unint64_t)index;
+ (id)networkFromTableModel:(id)model;
+ (id)networkFromTheme:(id)theme presetIndex:(unint64_t)index;
+ (id)networkWithContext:(id)context presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate;
- (BOOL)isEqual:(id)equal;
- (BOOL)stylesInStylesheet:(id)stylesheet;
- (TSTTableStyleNetwork)initWithContext:(id)context;
- (TSTTableStyleNetwork)initWithContext:(id)context fromArray:(id)array presetIndex:(unint64_t)index;
- (TSTTableStyleNetwork)initWithContext:(id)context fromDictionary:(id)dictionary withPreset:(unint64_t)preset;
- (id)cellStyleForTableArea:(unsigned int)area;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone context:(id)context;
- (id)dictionaryWithPreset:(unint64_t)preset;
- (id)styleArray;
- (id)textStyleForTableArea:(unsigned int)area;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)setBodyCellStyle:(id)style;
- (void)setBodyTextStyle:(id)style;
- (void)setCellStyle:(id)style forTableArea:(unsigned int)area;
- (void)setFooterRowCellStyle:(id)style;
- (void)setFooterRowTextStyle:(id)style;
- (void)setHeaderColumnCellStyle:(id)style;
- (void)setHeaderColumnTextStyle:(id)style;
- (void)setHeaderRowCellStyle:(id)style;
- (void)setHeaderRowTextStyle:(id)style;
- (void)setStylesFromTableModel:(id)model;
- (void)setTableNameShapeStyle:(id)style;
- (void)setTableNameStyle:(id)style;
- (void)setTableStyle:(id)style;
- (void)setTextStyle:(id)style forTableArea:(unsigned int)area;
@end

@implementation TSTTableStyleNetwork

- (void)setTableStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mTableStyle = style;
}

- (void)setBodyCellStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mBodyCellStyle = style;
}

- (void)setHeaderColumnCellStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mHeaderColumnCellStyle = style;
}

- (void)setFooterRowCellStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mFooterRowCellStyle = style;
}

- (void)setHeaderRowCellStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mHeaderRowCellStyle = style;
}

- (void)setBodyTextStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mBodyTextStyle = style;
}

- (void)setHeaderColumnTextStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mHeaderColumnTextStyle = style;
}

- (void)setFooterRowTextStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mFooterRowTextStyle = style;
}

- (void)setHeaderRowTextStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mHeaderRowTextStyle = style;
}

- (void)setTableNameStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mTableNameStyle = style;
}

- (void)setTableNameShapeStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mTableNameShapeStyle = style;
}

+ (id)networkFromTableModel:(id)model
{
  v4 = -[TSTTableStyleNetwork initWithContext:]([TSTTableStyleNetwork alloc], "initWithContext:", [model context]);
  [(TSTTableStyleNetwork *)v4 setStylesFromTableModel:model];
  -[TSTTableStyleNetwork setPresetIndex:](v4, "setPresetIndex:", [model presetIndex]);

  return v4;
}

+ (id)networkWithContext:(id)context presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate
{
  v6 = *&alternate;
  v10 = [[TSTTableStyleNetwork alloc] initWithContext:context];
  v11 = objc_alloc_init(TSSPropertyMap);
  [TSTTableStyle initDefaultPropertyMap:v11 presetIndex:index colors:colors alternate:v6];
  v12 = [[TSTTableStyle alloc] initWithContext:context name:0 overridePropertyMap:v11 isVariation:0];

  [(TSTTableStyleNetwork *)v10 setTableStyle:v12];
  v13 = 0;
  do
  {
    v14 = objc_alloc_init(TSSPropertyMap);
    [TSTCellStyle initDefaultPropertyMap:v14 forTableArea:v13 presetIndex:index colors:colors alternate:v6];
    v15 = [(TSSStyle *)[TSTCellStyle alloc] initWithContext:context name:0 overridePropertyMap:v14 isVariation:0];
    [(TSTTableStyleNetwork *)v10 setCellStyle:v15 forTableArea:v13];

    v16 = [TSWPParagraphStyle defaultStyleWithContext:context];
    [v16 setValue:+[TSWPParagraphStyle defaultValueForProperty:](TSWPParagraphStyle forProperty:{"defaultValueForProperty:", 16), 16}];
    [v16 setCGFloatValue:17 forProperty:15.0];
    [(TSTTableStyleNetwork *)v10 setTextStyle:v16 forTableArea:v13];
    v13 = (v13 + 1);
  }

  while (v13 != 4);
  v17 = [TSWPParagraphStyle defaultStyleWithContext:context];
  [v17 setValue:+[TSWPParagraphStyle defaultValueForProperty:](TSWPParagraphStyle forProperty:{"defaultValueForProperty:", 16), 16}];
  [v17 setCGFloatValue:17 forProperty:15.0];
  [(TSTTableStyleNetwork *)v10 setTableNameStyle:v17];
  [(TSTTableStyleNetwork *)v10 setPresetIndex:index];

  return v10;
}

+ (id)createStylesInStylesheet:(id)stylesheet presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate
{
  v6 = *&alternate;
  context = [stylesheet context];
  v11 = objc_alloc_init(TSSPropertyMap);
  colorsCopy = colors;
  [TSTTableStyle initDefaultPropertyMap:v11 presetIndex:index colors:colors alternate:v6];
  [stylesheet addStyle:-[TSTTableStyle initWithContext:name:overridePropertyMap:isVariation:]([TSTTableStyle alloc] withIdentifier:{"initWithContext:name:overridePropertyMap:isVariation:", context, 0, v11, 0), +[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", index)}];

  v12 = 0;
  v26 = v6;
  v14 = v6 == 2 || (v6 & 0xFFFFFFFD) == 4;
  v24 = !v14;
  do
  {
    v15 = [TSTCellStyle styleIDForPreset:index andTableArea:v12];
    v16 = [TSTCellStyle textStyleIDForPreset:index andTableArea:v12];
    v17 = objc_alloc_init(TSSPropertyMap);
    [TSTCellStyle initDefaultPropertyMap:v17 forTableArea:v12 presetIndex:index colors:colorsCopy alternate:v26];
    v18 = [(TSSStyle *)[TSTCellStyle alloc] initWithContext:context name:0 overridePropertyMap:v17 isVariation:0];
    v19 = [TSWPParagraphStyle defaultStyleWithContext:context];
    [v19 setValue:+[TSWPParagraphStyle defaultValueForProperty:](TSWPParagraphStyle forProperty:{"defaultValueForProperty:", 16), 16}];
    [v19 setCGFloatValue:17 forProperty:15.0];
    [v19 setCGFloatValue:81 forProperty:0.0];
    if (v12)
    {
      v20 = 1;
    }

    else
    {
      v20 = v24;
    }

    if ((v20 & 1) == 0)
    {
      [v19 setValue:objc_msgSend(MEMORY[0x277D6C2A8] forProperty:{"whiteColor"), 18}];
    }

    [stylesheet addStyle:v18 withIdentifier:v15];
    [stylesheet addStyle:v19 withIdentifier:v16];

    v12 = (v12 + 1);
  }

  while (v12 != 4);
  v21 = [TSWPParagraphStyle defaultStyleWithContext:context];
  [v21 setValue:+[TSWPParagraphStyle defaultValueForProperty:](TSWPParagraphStyle forProperty:{"defaultValueForProperty:", 16), 16}];
  [v21 setCGFloatValue:17 forProperty:15.0];
  [stylesheet addStyle:v21 withIdentifier:{+[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", index)}];
  [stylesheet addStyle:+[TSTTableStyleNetwork defaultTableNameShapeStyleWithContext:](TSTTableStyleNetwork withIdentifier:{"defaultTableNameShapeStyleWithContext:", context), +[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", index)}];

  return [self networkFromStylesheet:stylesheet presetIndex:index];
}

+ (id)networkFromStylesheet:(id)stylesheet presetIndex:(unint64_t)index
{
  v6 = -[TSTTableStyleNetwork initWithContext:]([TSTTableStyleNetwork alloc], "initWithContext:", [stylesheet context]);
  v7 = [stylesheet cascadedStyleWithIdentifier:{+[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", index)}];
  if (v7)
  {
    [(TSTTableStyleNetwork *)v6 setTableStyle:v7];
    objc_opt_class();
    [stylesheet cascadedStyleWithIdentifier:{+[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", index)}];
    v8 = TSUDynamicCast();
    if (!v8)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 244, @"invalid nil value for '%s'", "nameStyle"}];
    }

    [(TSTTableStyleNetwork *)v6 setTableNameStyle:v8];
    objc_opt_class();
    [stylesheet cascadedStyleWithIdentifier:{+[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", index)}];
    v11 = TSUDynamicCast();
    if (!v11)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
      [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 251, @"invalid nil value for '%s'", "tableNameShapeStyle"}];
    }

    [(TSTTableStyleNetwork *)v6 setTableNameShapeStyle:v11];
    v14 = 0;
    do
    {
      v15 = [TSTCellStyle styleIDForPreset:index andTableArea:v14];
      v16 = [stylesheet cascadedStyleWithIdentifier:v15];
      if (!v16)
      {
        currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
        [currentHandler3 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 261, @"no default cell style for id %@ in stylesheet %p", v15, stylesheet}];
        return 0;
      }

      [(TSTTableStyleNetwork *)v6 setCellStyle:v16 forTableArea:v14];
      v17 = [stylesheet cascadedStyleWithIdentifier:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", index, v14)}];
      if (!v17)
      {
        currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
        [currentHandler4 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 271, @"no default cell style for id %@ in stylesheet %p", v15, stylesheet}];
        return 0;
      }

      [(TSTTableStyleNetwork *)v6 setTextStyle:v17 forTableArea:v14];
      v14 = (v14 + 1);
    }

    while (v14 != 4);
    [(TSTTableStyleNetwork *)v6 setPresetIndex:index];

    return v6;
  }

  else
  {
    currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
    [currentHandler5 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 232, @"no default table style in stylesheet %p", stylesheet, v25}];
    return 0;
  }
}

+ (id)networkFromTheme:(id)theme presetIndex:(unint64_t)index
{
  if (!theme)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromTheme:presetIndex:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 285, @"invalid nil value for '%s'", "theme"}];
  }

  objc_opt_class();
  [theme presetOfKind:String index:index];
  v8 = TSUDynamicCast();

  return [v8 styleNetwork];
}

+ (id)defaultTableNameShapeStyleWithContext:(id)context
{
  v3 = [(TSSStyle *)TSWPShapeStyle defaultStyleWithContext:context];
  [v3 setIntValue:1 forProperty:149];
  [v3 setValue:+[TSDStroke emptyStroke](TSDStroke forProperty:{"emptyStroke"), 517}];
  [v3 setValue:+[TSWPPadding padding](TSWPPadding forProperty:{"padding"), 146}];
  return v3;
}

- (TSTTableStyleNetwork)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSTTableStyleNetwork;
  return [(TSPObject *)&v4 initWithContext:context];
}

- (TSTTableStyleNetwork)initWithContext:(id)context fromArray:(id)array presetIndex:(unint64_t)index
{
  v22[11] = *MEMORY[0x277D85DE8];
  v7 = [(TSTTableStyleNetwork *)self initWithContext:context];
  if ([array count] != 11)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork initWithContext:fromArray:presetIndex:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 330, @"expected equality between %s and %s", "[array count]", "11"}];
  }

  if (v7)
  {
    v22[0] = &v7->mTableStyle;
    v22[1] = &v7->mHeaderRowCellStyle;
    v22[2] = &v7->mHeaderColumnCellStyle;
    v22[3] = &v7->mFooterRowCellStyle;
    v22[4] = &v7->mBodyCellStyle;
    v22[5] = &v7->mHeaderRowTextStyle;
    v22[6] = &v7->mHeaderColumnTextStyle;
    v22[7] = &v7->mFooterRowTextStyle;
    v22[8] = &v7->mBodyTextStyle;
    v22[9] = &v7->mTableNameStyle;
    v22[10] = &v7->mTableNameShapeStyle;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [array countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v18;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(array);
          }

          v12 = v15 + 1;
          *v22[v15++] = *(*(&v17 + 1) + 8 * v14++);
        }

        while (v11 != v14);
        v11 = [array countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v7->mPresetIndex = index;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone context:(id)context
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithContext:", context}];
  if (v5)
  {
    v5[7] = self->mTableStyle;
    v5[8] = self->mHeaderRowCellStyle;
    v5[9] = self->mHeaderColumnCellStyle;
    v5[10] = self->mFooterRowCellStyle;
    v5[11] = self->mBodyCellStyle;
    v5[12] = self->mHeaderRowTextStyle;
    v5[13] = self->mHeaderColumnTextStyle;
    v5[14] = self->mFooterRowTextStyle;
    v5[15] = self->mBodyTextStyle;
    v5[16] = self->mTableNameStyle;
    v5[17] = self->mTableNameShapeStyle;
    v5[6] = self->mPresetIndex;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  context = [(TSPObject *)self context];

  return [(TSTTableStyleNetwork *)self copyWithZone:zone context:context];
}

- (id)copy
{
  context = [(TSPObject *)self context];

  return [(TSTTableStyleNetwork *)self copyWithZone:0 context:context];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableStyleNetwork;
  [(TSTTableStyleNetwork *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    presetIndex = [(TSTTableStyleNetwork *)self presetIndex];
    if (presetIndex == [v5 presetIndex] && (v7 = -[TSTTableStyleNetwork tableStyle](self, "tableStyle"), v7 == objc_msgSend(v5, "tableStyle")) && (v8 = -[TSTTableStyleNetwork bodyCellStyle](self, "bodyCellStyle"), v8 == objc_msgSend(v5, "bodyCellStyle")) && (v9 = -[TSTTableStyleNetwork headerColumnCellStyle](self, "headerColumnCellStyle"), v9 == objc_msgSend(v5, "headerColumnCellStyle")) && (v10 = -[TSTTableStyleNetwork footerRowCellStyle](self, "footerRowCellStyle"), v10 == objc_msgSend(v5, "footerRowCellStyle")) && (v11 = -[TSTTableStyleNetwork headerRowCellStyle](self, "headerRowCellStyle"), v11 == objc_msgSend(v5, "headerRowCellStyle")) && (v12 = -[TSTTableStyleNetwork bodyTextStyle](self, "bodyTextStyle"), v12 == objc_msgSend(v5, "bodyTextStyle")) && (v13 = -[TSTTableStyleNetwork headerColumnTextStyle](self, "headerColumnTextStyle"), v13 == objc_msgSend(v5, "headerColumnTextStyle")) && (v14 = -[TSTTableStyleNetwork footerRowTextStyle](self, "footerRowTextStyle"), v14 == objc_msgSend(v5, "footerRowTextStyle")) && (v15 = -[TSTTableStyleNetwork headerRowTextStyle](self, "headerRowTextStyle"), v15 == objc_msgSend(v5, "headerRowTextStyle")) && (v16 = -[TSTTableStyleNetwork tableNameStyle](self, "tableNameStyle"), v16 == objc_msgSend(v5, "tableNameStyle")) && (v17 = -[TSTTableStyleNetwork tableNameShapeStyle](self, "tableNameShapeStyle"), v17 == objc_msgSend(v5, "tableNameShapeStyle")))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LODWORD(v4) = -[TSSStyle hasEqualValues:forProperties:](self->mTableStyle, "hasEqualValues:forProperties:", [v5 tableStyle], +[TSSPropertySet propertySetWithProperties:](TSSPropertySet, "propertySetWithProperties:", 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 788, 789, 791, 793, 795, 796, 797, 0));
      if (v4)
      {
        LODWORD(v4) = -[TSSStyle overridePropertyMapIsEqualTo:](self->mHeaderRowCellStyle, "overridePropertyMapIsEqualTo:", [objc_msgSend(v5 "headerRowCellStyle")]);
        if (v4)
        {
          LODWORD(v4) = -[TSSStyle overridePropertyMapIsEqualTo:](self->mHeaderColumnCellStyle, "overridePropertyMapIsEqualTo:", [objc_msgSend(v5 "headerColumnCellStyle")]);
          if (v4)
          {
            LODWORD(v4) = -[TSSStyle overridePropertyMapIsEqualTo:](self->mFooterRowCellStyle, "overridePropertyMapIsEqualTo:", [objc_msgSend(v5 "footerRowCellStyle")]);
            if (v4)
            {
              LODWORD(v4) = -[TSSStyle overridePropertyMapIsEqualTo:](self->mBodyCellStyle, "overridePropertyMapIsEqualTo:", [objc_msgSend(v5 "bodyCellStyle")]);
              if (v4)
              {
                LODWORD(v4) = -[TSSStyle overridePropertyMapIsEqualTo:](self->mHeaderRowTextStyle, "overridePropertyMapIsEqualTo:", [objc_msgSend(v5 "headerRowTextStyle")]);
                if (v4)
                {
                  LODWORD(v4) = -[TSSStyle overridePropertyMapIsEqualTo:](self->mHeaderColumnTextStyle, "overridePropertyMapIsEqualTo:", [objc_msgSend(v5 "headerColumnTextStyle")]);
                  if (v4)
                  {
                    LODWORD(v4) = -[TSSStyle overridePropertyMapIsEqualTo:](self->mFooterRowTextStyle, "overridePropertyMapIsEqualTo:", [objc_msgSend(v5 "footerRowTextStyle")]);
                    if (v4)
                    {
                      mBodyTextStyle = self->mBodyTextStyle;
                      v19 = [objc_msgSend(v5 "bodyTextStyle")];

                      LOBYTE(v4) = [(TSSStyle *)mBodyTextStyle overridePropertyMapIsEqualTo:v19];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v15[11] = *MEMORY[0x277D85DE8];
  mHeaderRowCellStyle = self->mHeaderRowCellStyle;
  v15[0] = self->mTableStyle;
  v15[1] = mHeaderRowCellStyle;
  mFooterRowCellStyle = self->mFooterRowCellStyle;
  v15[2] = self->mHeaderColumnCellStyle;
  v15[3] = mFooterRowCellStyle;
  mHeaderRowTextStyle = self->mHeaderRowTextStyle;
  v15[4] = self->mBodyCellStyle;
  v15[5] = mHeaderRowTextStyle;
  mFooterRowTextStyle = self->mFooterRowTextStyle;
  v15[6] = self->mHeaderColumnTextStyle;
  v15[7] = mFooterRowTextStyle;
  mTableNameStyle = self->mTableNameStyle;
  v15[8] = self->mBodyTextStyle;
  v15[9] = mTableNameStyle;
  var0 = state->var0;
  if (11 - state->var0 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = 11 - state->var0;
  }

  v15[10] = self->mTableNameShapeStyle;
  if (countCopy)
  {
    memcpy(objects, &v15[var0], 8 * countCopy);
    state->var0 += countCopy;
    state->var1 = objects;
    state->var2 = &state->var2;
  }

  return countCopy;
}

+ (id)identifiersForPresetIndex:(unint64_t)index
{
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{+[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", index), +[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", index, 1), +[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", index, 2), +[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", index, 3), +[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", index, 0), +[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", index, 1), +[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", index, 2), +[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", index, 3), +[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", index, 0), +[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", index), +[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", index), 0}];

  return v3;
}

- (BOOL)stylesInStylesheet:(id)stylesheet
{
  v18 = *MEMORY[0x277D85DE8];
  context = [(TSPObject *)self context];
  if (context == [stylesheet context])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(TSTTableStyleNetwork *)self countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(self);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v6 = [stylesheet containsStyle:v11];
        if (!v6)
        {
          break;
        }

        if ([v11 stylesheet] != stylesheet)
        {
          goto LABEL_2;
        }

        if (v8 == ++v10)
        {
          v8 = [(TSTTableStyleNetwork *)self countByEnumeratingWithState:&v13 objects:v17 count:16];
          LOBYTE(v6) = 1;
          if (v8)
          {
            goto LABEL_6;
          }

          return v6;
        }
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
LABEL_2:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)cellStyleForTableArea:(unsigned int)area
{
  if (area > 2)
  {
    if (area != 3)
    {
      if (area == 4)
      {
LABEL_10:
        v9 = 64;
        return *(&self->super.super.isa + v9);
      }

      if (area != 5)
      {
        goto LABEL_13;
      }
    }

    v9 = 80;
    return *(&self->super.super.isa + v9);
  }

  switch(area)
  {
    case 0u:
      v9 = 88;
      return *(&self->super.super.isa + v9);
    case 1u:
      goto LABEL_10;
    case 2u:
      v9 = 72;
      return *(&self->super.super.isa + v9);
  }

LABEL_13:
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork cellStyleForTableArea:]"];
  [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 581, @"illegal table region in style bootstrapping"}];
  return 0;
}

- (id)textStyleForTableArea:(unsigned int)area
{
  if (area > 2)
  {
    if (area != 3)
    {
      if (area == 4)
      {
LABEL_10:
        v9 = 96;
        return *(&self->super.super.isa + v9);
      }

      if (area != 5)
      {
        goto LABEL_13;
      }
    }

    v9 = 112;
    return *(&self->super.super.isa + v9);
  }

  switch(area)
  {
    case 0u:
      v9 = 120;
      return *(&self->super.super.isa + v9);
    case 1u:
      goto LABEL_10;
    case 2u:
      v9 = 104;
      return *(&self->super.super.isa + v9);
  }

LABEL_13:
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork textStyleForTableArea:]"];
  [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 600, @"illegal table region in style bootstrapping"}];
  return 0;
}

- (void)setCellStyle:(id)style forTableArea:(unsigned int)area
{
  [(TSPObject *)self willModify];
  if (area >= 6)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setCellStyle:forTableArea:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 622, @"illegal table region in style bootstrapping"}];
  }

  else
  {
    v7 = *(&self->super.super.isa + *off_279D4A670[area]);
    if (v7)
    {
    }
  }

  if (area > 2)
  {
    if (area != 3)
    {
      if (area == 4)
      {
LABEL_14:
        styleCopy4 = style;
        v11 = 64;
        goto LABEL_16;
      }

      if (area != 5)
      {
        goto LABEL_17;
      }
    }

    styleCopy4 = style;
    v11 = 80;
    goto LABEL_16;
  }

  switch(area)
  {
    case 0u:
      styleCopy4 = style;
      v11 = 88;
      goto LABEL_16;
    case 1u:
      goto LABEL_14;
    case 2u:
      styleCopy4 = style;
      v11 = 72;
LABEL_16:
      *(&self->super.super.isa + v11) = styleCopy4;
      return;
  }

LABEL_17:
  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setCellStyle:forTableArea:]"];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"];

  [currentHandler2 handleFailureInFunction:v13 file:v14 lineNumber:638 description:@"illegal table region in style bootstrapping"];
}

- (void)setTextStyle:(id)style forTableArea:(unsigned int)area
{
  [(TSPObject *)self willModify];
  if (area >= 6)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setTextStyle:forTableArea:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 658, @"illegal table region in style bootstrapping"}];
  }

  else
  {
    v7 = *(&self->super.super.isa + *off_279D4A6A0[area]);
    if (v7)
    {
    }
  }

  if (area > 2)
  {
    if (area != 3)
    {
      if (area == 4)
      {
LABEL_14:
        styleCopy4 = style;
        v11 = 96;
        goto LABEL_16;
      }

      if (area != 5)
      {
        goto LABEL_17;
      }
    }

    styleCopy4 = style;
    v11 = 112;
    goto LABEL_16;
  }

  switch(area)
  {
    case 0u:
      styleCopy4 = style;
      v11 = 120;
      goto LABEL_16;
    case 1u:
      goto LABEL_14;
    case 2u:
      styleCopy4 = style;
      v11 = 104;
LABEL_16:
      *(&self->super.super.isa + v11) = styleCopy4;
      return;
  }

LABEL_17:
  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setTextStyle:forTableArea:]"];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"];

  [currentHandler2 handleFailureInFunction:v13 file:v14 lineNumber:674 description:@"illegal table region in style bootstrapping"];
}

- (void)setStylesFromTableModel:(id)model
{
  [(TSPObject *)self willModify];
  context = [model context];
  if (context != [(TSPObject *)self context])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setStylesFromTableModel:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 683, @"Cannot set styles from a different context"}];
  }

  self->mPresetIndex = [model presetIndex];
  -[TSTTableStyleNetwork setTableStyle:](self, "setTableStyle:", [model tableStyle]);
  -[TSTTableStyleNetwork setCellStyle:forTableArea:](self, "setCellStyle:forTableArea:", [model bodyCellStyle], 0);
  -[TSTTableStyleNetwork setCellStyle:forTableArea:](self, "setCellStyle:forTableArea:", [model headerRowCellStyle], 1);
  -[TSTTableStyleNetwork setCellStyle:forTableArea:](self, "setCellStyle:forTableArea:", [model headerColumnCellStyle], 2);
  -[TSTTableStyleNetwork setCellStyle:forTableArea:](self, "setCellStyle:forTableArea:", [model footerRowCellStyle], 3);
  -[TSTTableStyleNetwork setTextStyle:forTableArea:](self, "setTextStyle:forTableArea:", [model bodyTextStyle], 0);
  -[TSTTableStyleNetwork setTextStyle:forTableArea:](self, "setTextStyle:forTableArea:", [model headerRowTextStyle], 1);
  -[TSTTableStyleNetwork setTextStyle:forTableArea:](self, "setTextStyle:forTableArea:", [model headerColumnTextStyle], 2);
  -[TSTTableStyleNetwork setTextStyle:forTableArea:](self, "setTextStyle:forTableArea:", [model footerRowTextStyle], 3);
  -[TSTTableStyleNetwork setTableNameStyle:](self, "setTableNameStyle:", [model tableNameStyle]);
  tableNameShapeStyle = [model tableNameShapeStyle];

  [(TSTTableStyleNetwork *)self setTableNameShapeStyle:tableNameShapeStyle];
}

- (id)styleArray
{
  v14 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TSTTableStyleNetwork *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(self);
        }

        [array addObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(TSTTableStyleNetwork *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)dictionaryWithPreset:(unint64_t)preset
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mTableStyle = self->mTableStyle;
  if (mTableStyle)
  {
    [dictionary setObject:mTableStyle forKey:{+[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", preset)}];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v19 = __45__TSTTableStyleNetwork_dictionaryWithPreset___block_invoke;
  v20 = &unk_279D4A628;
  v21 = dictionary;
  presetCopy = preset;
  mBodyCellStyle = self->mBodyCellStyle;
  if (mBodyCellStyle)
  {
    [dictionary setObject:mBodyCellStyle forKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", preset, 0)}];
    v19(v18, self->mHeaderRowCellStyle, 1);
  }

  else
  {
    __45__TSTTableStyleNetwork_dictionaryWithPreset___block_invoke(v18, self->mHeaderRowCellStyle, 1);
  }

  v19(v18, self->mHeaderColumnCellStyle, 2);
  v19(v18, self->mFooterRowCellStyle, 3);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __45__TSTTableStyleNetwork_dictionaryWithPreset___block_invoke_2;
  v15 = &unk_279D4A650;
  v16 = dictionary;
  presetCopy2 = preset;
  mBodyTextStyle = self->mBodyTextStyle;
  if (mBodyTextStyle)
  {
    [dictionary setObject:mBodyTextStyle forKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", preset, 0, v12, v13)}];
    v14(&v12, self->mHeaderRowTextStyle, 1);
  }

  else
  {
    __45__TSTTableStyleNetwork_dictionaryWithPreset___block_invoke_2(&v12, self->mHeaderRowTextStyle, 1);
  }

  v14(&v12, self->mHeaderColumnTextStyle, 2);
  v14(&v12, self->mFooterRowTextStyle, 3);
  mTableNameStyle = self->mTableNameStyle;
  if (mTableNameStyle)
  {
    [dictionary setObject:mTableNameStyle forKey:{+[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", preset)}];
  }

  mTableNameShapeStyle = self->mTableNameShapeStyle;
  if (mTableNameShapeStyle)
  {
    [dictionary setObject:mTableNameShapeStyle forKey:{+[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", preset)}];
  }

  return dictionary;
}

uint64_t __45__TSTTableStyleNetwork_dictionaryWithPreset___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(result + 32);
    v5 = [TSTCellStyle styleIDForPreset:*(result + 40) andTableArea:a3];

    return [v4 setObject:a2 forKey:v5];
  }

  return result;
}

uint64_t __45__TSTTableStyleNetwork_dictionaryWithPreset___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(result + 32);
    v5 = [TSTCellStyle textStyleIDForPreset:*(result + 40) andTableArea:a3];

    return [v4 setObject:a2 forKey:v5];
  }

  return result;
}

- (TSTTableStyleNetwork)initWithContext:(id)context fromDictionary:(id)dictionary withPreset:(unint64_t)preset
{
  v10.receiver = self;
  v10.super_class = TSTTableStyleNetwork;
  v7 = [(TSPObject *)&v10 initWithContext:context];
  v8 = v7;
  if (v7)
  {
    v7->mPresetIndex = preset;
    v7->mTableStyle = [dictionary objectForKey:{+[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", preset)}];
    v8->mBodyCellStyle = [dictionary objectForKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", preset, 0)}];
    v8->mHeaderRowCellStyle = [dictionary objectForKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", preset, 1)}];
    v8->mHeaderColumnCellStyle = [dictionary objectForKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", preset, 2)}];
    v8->mFooterRowCellStyle = [dictionary objectForKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", preset, 3)}];
    v8->mBodyTextStyle = [dictionary objectForKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", preset, 0)}];
    v8->mHeaderRowTextStyle = [dictionary objectForKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", preset, 1)}];
    v8->mHeaderColumnTextStyle = [dictionary objectForKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", preset, 2)}];
    v8->mFooterRowTextStyle = [dictionary objectForKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", preset, 3)}];
    v8->mTableNameStyle = [dictionary objectForKey:{+[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", preset)}];
    v8->mTableNameShapeStyle = [dictionary objectForKey:{+[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", preset)}];
  }

  return v8;
}

@end