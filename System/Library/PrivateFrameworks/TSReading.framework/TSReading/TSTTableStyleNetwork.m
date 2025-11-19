@interface TSTTableStyleNetwork
+ (id)createStylesInStylesheet:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6;
+ (id)defaultTableNameShapeStyleWithContext:(id)a3;
+ (id)identifiersForPresetIndex:(unint64_t)a3;
+ (id)networkFromStylesheet:(id)a3 presetIndex:(unint64_t)a4;
+ (id)networkFromTableModel:(id)a3;
+ (id)networkFromTheme:(id)a3 presetIndex:(unint64_t)a4;
+ (id)networkWithContext:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)stylesInStylesheet:(id)a3;
- (TSTTableStyleNetwork)initWithContext:(id)a3;
- (TSTTableStyleNetwork)initWithContext:(id)a3 fromArray:(id)a4 presetIndex:(unint64_t)a5;
- (TSTTableStyleNetwork)initWithContext:(id)a3 fromDictionary:(id)a4 withPreset:(unint64_t)a5;
- (id)cellStyleForTableArea:(unsigned int)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithZone:(_NSZone *)a3 context:(id)a4;
- (id)dictionaryWithPreset:(unint64_t)a3;
- (id)styleArray;
- (id)textStyleForTableArea:(unsigned int)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)setBodyCellStyle:(id)a3;
- (void)setBodyTextStyle:(id)a3;
- (void)setCellStyle:(id)a3 forTableArea:(unsigned int)a4;
- (void)setFooterRowCellStyle:(id)a3;
- (void)setFooterRowTextStyle:(id)a3;
- (void)setHeaderColumnCellStyle:(id)a3;
- (void)setHeaderColumnTextStyle:(id)a3;
- (void)setHeaderRowCellStyle:(id)a3;
- (void)setHeaderRowTextStyle:(id)a3;
- (void)setStylesFromTableModel:(id)a3;
- (void)setTableNameShapeStyle:(id)a3;
- (void)setTableNameStyle:(id)a3;
- (void)setTableStyle:(id)a3;
- (void)setTextStyle:(id)a3 forTableArea:(unsigned int)a4;
@end

@implementation TSTTableStyleNetwork

- (void)setTableStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mTableStyle = a3;
}

- (void)setBodyCellStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mBodyCellStyle = a3;
}

- (void)setHeaderColumnCellStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mHeaderColumnCellStyle = a3;
}

- (void)setFooterRowCellStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mFooterRowCellStyle = a3;
}

- (void)setHeaderRowCellStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mHeaderRowCellStyle = a3;
}

- (void)setBodyTextStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mBodyTextStyle = a3;
}

- (void)setHeaderColumnTextStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mHeaderColumnTextStyle = a3;
}

- (void)setFooterRowTextStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mFooterRowTextStyle = a3;
}

- (void)setHeaderRowTextStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mHeaderRowTextStyle = a3;
}

- (void)setTableNameStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mTableNameStyle = a3;
}

- (void)setTableNameShapeStyle:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mTableNameShapeStyle = a3;
}

+ (id)networkFromTableModel:(id)a3
{
  v4 = -[TSTTableStyleNetwork initWithContext:]([TSTTableStyleNetwork alloc], "initWithContext:", [a3 context]);
  [(TSTTableStyleNetwork *)v4 setStylesFromTableModel:a3];
  -[TSTTableStyleNetwork setPresetIndex:](v4, "setPresetIndex:", [a3 presetIndex]);

  return v4;
}

+ (id)networkWithContext:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6
{
  v6 = *&a6;
  v10 = [[TSTTableStyleNetwork alloc] initWithContext:a3];
  v11 = objc_alloc_init(TSSPropertyMap);
  [TSTTableStyle initDefaultPropertyMap:v11 presetIndex:a4 colors:a5 alternate:v6];
  v12 = [[TSTTableStyle alloc] initWithContext:a3 name:0 overridePropertyMap:v11 isVariation:0];

  [(TSTTableStyleNetwork *)v10 setTableStyle:v12];
  v13 = 0;
  do
  {
    v14 = objc_alloc_init(TSSPropertyMap);
    [TSTCellStyle initDefaultPropertyMap:v14 forTableArea:v13 presetIndex:a4 colors:a5 alternate:v6];
    v15 = [(TSSStyle *)[TSTCellStyle alloc] initWithContext:a3 name:0 overridePropertyMap:v14 isVariation:0];
    [(TSTTableStyleNetwork *)v10 setCellStyle:v15 forTableArea:v13];

    v16 = [TSWPParagraphStyle defaultStyleWithContext:a3];
    [v16 setValue:+[TSWPParagraphStyle defaultValueForProperty:](TSWPParagraphStyle forProperty:{"defaultValueForProperty:", 16), 16}];
    [v16 setCGFloatValue:17 forProperty:15.0];
    [(TSTTableStyleNetwork *)v10 setTextStyle:v16 forTableArea:v13];
    v13 = (v13 + 1);
  }

  while (v13 != 4);
  v17 = [TSWPParagraphStyle defaultStyleWithContext:a3];
  [v17 setValue:+[TSWPParagraphStyle defaultValueForProperty:](TSWPParagraphStyle forProperty:{"defaultValueForProperty:", 16), 16}];
  [v17 setCGFloatValue:17 forProperty:15.0];
  [(TSTTableStyleNetwork *)v10 setTableNameStyle:v17];
  [(TSTTableStyleNetwork *)v10 setPresetIndex:a4];

  return v10;
}

+ (id)createStylesInStylesheet:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6
{
  v6 = *&a6;
  v10 = [a3 context];
  v11 = objc_alloc_init(TSSPropertyMap);
  v25 = a5;
  [TSTTableStyle initDefaultPropertyMap:v11 presetIndex:a4 colors:a5 alternate:v6];
  [a3 addStyle:-[TSTTableStyle initWithContext:name:overridePropertyMap:isVariation:]([TSTTableStyle alloc] withIdentifier:{"initWithContext:name:overridePropertyMap:isVariation:", v10, 0, v11, 0), +[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", a4)}];

  v12 = 0;
  v26 = v6;
  v14 = v6 == 2 || (v6 & 0xFFFFFFFD) == 4;
  v24 = !v14;
  do
  {
    v15 = [TSTCellStyle styleIDForPreset:a4 andTableArea:v12];
    v16 = [TSTCellStyle textStyleIDForPreset:a4 andTableArea:v12];
    v17 = objc_alloc_init(TSSPropertyMap);
    [TSTCellStyle initDefaultPropertyMap:v17 forTableArea:v12 presetIndex:a4 colors:v25 alternate:v26];
    v18 = [(TSSStyle *)[TSTCellStyle alloc] initWithContext:v10 name:0 overridePropertyMap:v17 isVariation:0];
    v19 = [TSWPParagraphStyle defaultStyleWithContext:v10];
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

    [a3 addStyle:v18 withIdentifier:v15];
    [a3 addStyle:v19 withIdentifier:v16];

    v12 = (v12 + 1);
  }

  while (v12 != 4);
  v21 = [TSWPParagraphStyle defaultStyleWithContext:v10];
  [v21 setValue:+[TSWPParagraphStyle defaultValueForProperty:](TSWPParagraphStyle forProperty:{"defaultValueForProperty:", 16), 16}];
  [v21 setCGFloatValue:17 forProperty:15.0];
  [a3 addStyle:v21 withIdentifier:{+[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", a4)}];
  [a3 addStyle:+[TSTTableStyleNetwork defaultTableNameShapeStyleWithContext:](TSTTableStyleNetwork withIdentifier:{"defaultTableNameShapeStyleWithContext:", v10), +[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", a4)}];

  return [a1 networkFromStylesheet:a3 presetIndex:a4];
}

+ (id)networkFromStylesheet:(id)a3 presetIndex:(unint64_t)a4
{
  v6 = -[TSTTableStyleNetwork initWithContext:]([TSTTableStyleNetwork alloc], "initWithContext:", [a3 context]);
  v7 = [a3 cascadedStyleWithIdentifier:{+[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", a4)}];
  if (v7)
  {
    [(TSTTableStyleNetwork *)v6 setTableStyle:v7];
    objc_opt_class();
    [a3 cascadedStyleWithIdentifier:{+[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", a4)}];
    v8 = TSUDynamicCast();
    if (!v8)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 244, @"invalid nil value for '%s'", "nameStyle"}];
    }

    [(TSTTableStyleNetwork *)v6 setTableNameStyle:v8];
    objc_opt_class();
    [a3 cascadedStyleWithIdentifier:{+[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", a4)}];
    v11 = TSUDynamicCast();
    if (!v11)
    {
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 251, @"invalid nil value for '%s'", "tableNameShapeStyle"}];
    }

    [(TSTTableStyleNetwork *)v6 setTableNameShapeStyle:v11];
    v14 = 0;
    do
    {
      v15 = [TSTCellStyle styleIDForPreset:a4 andTableArea:v14];
      v16 = [a3 cascadedStyleWithIdentifier:v15];
      if (!v16)
      {
        v21 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
        [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 261, @"no default cell style for id %@ in stylesheet %p", v15, a3}];
        return 0;
      }

      [(TSTTableStyleNetwork *)v6 setCellStyle:v16 forTableArea:v14];
      v17 = [a3 cascadedStyleWithIdentifier:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a4, v14)}];
      if (!v17)
      {
        v23 = [MEMORY[0x277D6C290] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
        [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 271, @"no default cell style for id %@ in stylesheet %p", v15, a3}];
        return 0;
      }

      [(TSTTableStyleNetwork *)v6 setTextStyle:v17 forTableArea:v14];
      v14 = (v14 + 1);
    }

    while (v14 != 4);
    [(TSTTableStyleNetwork *)v6 setPresetIndex:a4];

    return v6;
  }

  else
  {
    v19 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromStylesheet:presetIndex:]"];
    [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 232, @"no default table style in stylesheet %p", a3, v25}];
    return 0;
  }
}

+ (id)networkFromTheme:(id)a3 presetIndex:(unint64_t)a4
{
  if (!a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyleNetwork networkFromTheme:presetIndex:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 285, @"invalid nil value for '%s'", "theme"}];
  }

  objc_opt_class();
  [a3 presetOfKind:String index:a4];
  v8 = TSUDynamicCast();

  return [v8 styleNetwork];
}

+ (id)defaultTableNameShapeStyleWithContext:(id)a3
{
  v3 = [(TSSStyle *)TSWPShapeStyle defaultStyleWithContext:a3];
  [v3 setIntValue:1 forProperty:149];
  [v3 setValue:+[TSDStroke emptyStroke](TSDStroke forProperty:{"emptyStroke"), 517}];
  [v3 setValue:+[TSWPPadding padding](TSWPPadding forProperty:{"padding"), 146}];
  return v3;
}

- (TSTTableStyleNetwork)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSTTableStyleNetwork;
  return [(TSPObject *)&v4 initWithContext:a3];
}

- (TSTTableStyleNetwork)initWithContext:(id)a3 fromArray:(id)a4 presetIndex:(unint64_t)a5
{
  v22[11] = *MEMORY[0x277D85DE8];
  v7 = [(TSTTableStyleNetwork *)self initWithContext:a3];
  if ([a4 count] != 11)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork initWithContext:fromArray:presetIndex:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 330, @"expected equality between %s and %s", "[array count]", "11"}];
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
    v10 = [a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(a4);
          }

          v12 = v15 + 1;
          *v22[v15++] = *(*(&v17 + 1) + 8 * v14++);
        }

        while (v11 != v14);
        v11 = [a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v7->mPresetIndex = a5;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3 context:(id)a4
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithContext:", a4}];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(TSPObject *)self context];

  return [(TSTTableStyleNetwork *)self copyWithZone:a3 context:v5];
}

- (id)copy
{
  v3 = [(TSPObject *)self context];

  return [(TSTTableStyleNetwork *)self copyWithZone:0 context:v3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableStyleNetwork;
  [(TSTTableStyleNetwork *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    v6 = [(TSTTableStyleNetwork *)self presetIndex];
    if (v6 == [v5 presetIndex] && (v7 = -[TSTTableStyleNetwork tableStyle](self, "tableStyle"), v7 == objc_msgSend(v5, "tableStyle")) && (v8 = -[TSTTableStyleNetwork bodyCellStyle](self, "bodyCellStyle"), v8 == objc_msgSend(v5, "bodyCellStyle")) && (v9 = -[TSTTableStyleNetwork headerColumnCellStyle](self, "headerColumnCellStyle"), v9 == objc_msgSend(v5, "headerColumnCellStyle")) && (v10 = -[TSTTableStyleNetwork footerRowCellStyle](self, "footerRowCellStyle"), v10 == objc_msgSend(v5, "footerRowCellStyle")) && (v11 = -[TSTTableStyleNetwork headerRowCellStyle](self, "headerRowCellStyle"), v11 == objc_msgSend(v5, "headerRowCellStyle")) && (v12 = -[TSTTableStyleNetwork bodyTextStyle](self, "bodyTextStyle"), v12 == objc_msgSend(v5, "bodyTextStyle")) && (v13 = -[TSTTableStyleNetwork headerColumnTextStyle](self, "headerColumnTextStyle"), v13 == objc_msgSend(v5, "headerColumnTextStyle")) && (v14 = -[TSTTableStyleNetwork footerRowTextStyle](self, "footerRowTextStyle"), v14 == objc_msgSend(v5, "footerRowTextStyle")) && (v15 = -[TSTTableStyleNetwork headerRowTextStyle](self, "headerRowTextStyle"), v15 == objc_msgSend(v5, "headerRowTextStyle")) && (v16 = -[TSTTableStyleNetwork tableNameStyle](self, "tableNameStyle"), v16 == objc_msgSend(v5, "tableNameStyle")) && (v17 = -[TSTTableStyleNetwork tableNameShapeStyle](self, "tableNameShapeStyle"), v17 == objc_msgSend(v5, "tableNameShapeStyle")))
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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
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
  var0 = a3->var0;
  if (11 - a3->var0 >= a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 11 - a3->var0;
  }

  v15[10] = self->mTableNameShapeStyle;
  if (v11)
  {
    memcpy(a4, &v15[var0], 8 * v11);
    a3->var0 += v11;
    a3->var1 = a4;
    a3->var2 = &a3->var2;
  }

  return v11;
}

+ (id)identifiersForPresetIndex:(unint64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{+[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", a3), +[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a3, 1), +[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a3, 2), +[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a3, 3), +[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a3, 0), +[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a3, 1), +[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a3, 2), +[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a3, 3), +[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a3, 0), +[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", a3), +[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", a3), 0}];

  return v3;
}

- (BOOL)stylesInStylesheet:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(TSPObject *)self context];
  if (v5 == [a3 context])
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
        v6 = [a3 containsStyle:v11];
        if (!v6)
        {
          break;
        }

        if ([v11 stylesheet] != a3)
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

- (id)cellStyleForTableArea:(unsigned int)a3
{
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
LABEL_10:
        v9 = 64;
        return *(&self->super.super.isa + v9);
      }

      if (a3 != 5)
      {
        goto LABEL_13;
      }
    }

    v9 = 80;
    return *(&self->super.super.isa + v9);
  }

  switch(a3)
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
  v11 = [MEMORY[0x277D6C290] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork cellStyleForTableArea:]"];
  [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 581, @"illegal table region in style bootstrapping"}];
  return 0;
}

- (id)textStyleForTableArea:(unsigned int)a3
{
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
LABEL_10:
        v9 = 96;
        return *(&self->super.super.isa + v9);
      }

      if (a3 != 5)
      {
        goto LABEL_13;
      }
    }

    v9 = 112;
    return *(&self->super.super.isa + v9);
  }

  switch(a3)
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
  v11 = [MEMORY[0x277D6C290] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork textStyleForTableArea:]"];
  [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 600, @"illegal table region in style bootstrapping"}];
  return 0;
}

- (void)setCellStyle:(id)a3 forTableArea:(unsigned int)a4
{
  [(TSPObject *)self willModify];
  if (a4 >= 6)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setCellStyle:forTableArea:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 622, @"illegal table region in style bootstrapping"}];
  }

  else
  {
    v7 = *(&self->super.super.isa + *off_279D4A670[a4]);
    if (v7)
    {
    }
  }

  if (a4 > 2)
  {
    if (a4 != 3)
    {
      if (a4 == 4)
      {
LABEL_14:
        v10 = a3;
        v11 = 64;
        goto LABEL_16;
      }

      if (a4 != 5)
      {
        goto LABEL_17;
      }
    }

    v10 = a3;
    v11 = 80;
    goto LABEL_16;
  }

  switch(a4)
  {
    case 0u:
      v10 = a3;
      v11 = 88;
      goto LABEL_16;
    case 1u:
      goto LABEL_14;
    case 2u:
      v10 = a3;
      v11 = 72;
LABEL_16:
      *(&self->super.super.isa + v11) = v10;
      return;
  }

LABEL_17:
  v12 = [MEMORY[0x277D6C290] currentHandler];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setCellStyle:forTableArea:]"];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"];

  [v12 handleFailureInFunction:v13 file:v14 lineNumber:638 description:@"illegal table region in style bootstrapping"];
}

- (void)setTextStyle:(id)a3 forTableArea:(unsigned int)a4
{
  [(TSPObject *)self willModify];
  if (a4 >= 6)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setTextStyle:forTableArea:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 658, @"illegal table region in style bootstrapping"}];
  }

  else
  {
    v7 = *(&self->super.super.isa + *off_279D4A6A0[a4]);
    if (v7)
    {
    }
  }

  if (a4 > 2)
  {
    if (a4 != 3)
    {
      if (a4 == 4)
      {
LABEL_14:
        v10 = a3;
        v11 = 96;
        goto LABEL_16;
      }

      if (a4 != 5)
      {
        goto LABEL_17;
      }
    }

    v10 = a3;
    v11 = 112;
    goto LABEL_16;
  }

  switch(a4)
  {
    case 0u:
      v10 = a3;
      v11 = 120;
      goto LABEL_16;
    case 1u:
      goto LABEL_14;
    case 2u:
      v10 = a3;
      v11 = 104;
LABEL_16:
      *(&self->super.super.isa + v11) = v10;
      return;
  }

LABEL_17:
  v12 = [MEMORY[0x277D6C290] currentHandler];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setTextStyle:forTableArea:]"];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"];

  [v12 handleFailureInFunction:v13 file:v14 lineNumber:674 description:@"illegal table region in style bootstrapping"];
}

- (void)setStylesFromTableModel:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = [a3 context];
  if (v5 != [(TSPObject *)self context])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyleNetwork setStylesFromTableModel:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyleNetwork.mm"), 683, @"Cannot set styles from a different context"}];
  }

  self->mPresetIndex = [a3 presetIndex];
  -[TSTTableStyleNetwork setTableStyle:](self, "setTableStyle:", [a3 tableStyle]);
  -[TSTTableStyleNetwork setCellStyle:forTableArea:](self, "setCellStyle:forTableArea:", [a3 bodyCellStyle], 0);
  -[TSTTableStyleNetwork setCellStyle:forTableArea:](self, "setCellStyle:forTableArea:", [a3 headerRowCellStyle], 1);
  -[TSTTableStyleNetwork setCellStyle:forTableArea:](self, "setCellStyle:forTableArea:", [a3 headerColumnCellStyle], 2);
  -[TSTTableStyleNetwork setCellStyle:forTableArea:](self, "setCellStyle:forTableArea:", [a3 footerRowCellStyle], 3);
  -[TSTTableStyleNetwork setTextStyle:forTableArea:](self, "setTextStyle:forTableArea:", [a3 bodyTextStyle], 0);
  -[TSTTableStyleNetwork setTextStyle:forTableArea:](self, "setTextStyle:forTableArea:", [a3 headerRowTextStyle], 1);
  -[TSTTableStyleNetwork setTextStyle:forTableArea:](self, "setTextStyle:forTableArea:", [a3 headerColumnTextStyle], 2);
  -[TSTTableStyleNetwork setTextStyle:forTableArea:](self, "setTextStyle:forTableArea:", [a3 footerRowTextStyle], 3);
  -[TSTTableStyleNetwork setTableNameStyle:](self, "setTableNameStyle:", [a3 tableNameStyle]);
  v8 = [a3 tableNameShapeStyle];

  [(TSTTableStyleNetwork *)self setTableNameShapeStyle:v8];
}

- (id)styleArray
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
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

        [v3 addObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(TSTTableStyleNetwork *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)dictionaryWithPreset:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  mTableStyle = self->mTableStyle;
  if (mTableStyle)
  {
    [v5 setObject:mTableStyle forKey:{+[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", a3)}];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v19 = __45__TSTTableStyleNetwork_dictionaryWithPreset___block_invoke;
  v20 = &unk_279D4A628;
  v21 = v5;
  v22 = a3;
  mBodyCellStyle = self->mBodyCellStyle;
  if (mBodyCellStyle)
  {
    [v5 setObject:mBodyCellStyle forKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a3, 0)}];
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
  v16 = v5;
  v17 = a3;
  mBodyTextStyle = self->mBodyTextStyle;
  if (mBodyTextStyle)
  {
    [v5 setObject:mBodyTextStyle forKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a3, 0, v12, v13)}];
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
    [v5 setObject:mTableNameStyle forKey:{+[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", a3)}];
  }

  mTableNameShapeStyle = self->mTableNameShapeStyle;
  if (mTableNameShapeStyle)
  {
    [v5 setObject:mTableNameShapeStyle forKey:{+[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", a3)}];
  }

  return v5;
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

- (TSTTableStyleNetwork)initWithContext:(id)a3 fromDictionary:(id)a4 withPreset:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = TSTTableStyleNetwork;
  v7 = [(TSPObject *)&v10 initWithContext:a3];
  v8 = v7;
  if (v7)
  {
    v7->mPresetIndex = a5;
    v7->mTableStyle = [a4 objectForKey:{+[TSTTableStyle styleIDForPreset:](TSTTableStyle, "styleIDForPreset:", a5)}];
    v8->mBodyCellStyle = [a4 objectForKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a5, 0)}];
    v8->mHeaderRowCellStyle = [a4 objectForKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a5, 1)}];
    v8->mHeaderColumnCellStyle = [a4 objectForKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a5, 2)}];
    v8->mFooterRowCellStyle = [a4 objectForKey:{+[TSTCellStyle styleIDForPreset:andTableArea:](TSTCellStyle, "styleIDForPreset:andTableArea:", a5, 3)}];
    v8->mBodyTextStyle = [a4 objectForKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a5, 0)}];
    v8->mHeaderRowTextStyle = [a4 objectForKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a5, 1)}];
    v8->mHeaderColumnTextStyle = [a4 objectForKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a5, 2)}];
    v8->mFooterRowTextStyle = [a4 objectForKey:{+[TSTCellStyle textStyleIDForPreset:andTableArea:](TSTCellStyle, "textStyleIDForPreset:andTableArea:", a5, 3)}];
    v8->mTableNameStyle = [a4 objectForKey:{+[TSTTableStyleNetwork tableNameStyleIDForPreset:](TSTTableStyleNetwork, "tableNameStyleIDForPreset:", a5)}];
    v8->mTableNameShapeStyle = [a4 objectForKey:{+[TSTTableStyleNetwork tableNameShapeStyleIDForPreset:](TSTTableStyleNetwork, "tableNameShapeStyleIDForPreset:", a5)}];
  }

  return v8;
}

@end