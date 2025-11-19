@interface TSWPShapeInfo
- (BOOL)displaysInstructionalText;
- (BOOL)p_hasContentForRange:(_NSRange)a3;
- (BOOL)p_hasListLabelOrContentForParagraphIndex:(unint64_t)a3;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)a3 size:(id)a4;
- (CGPoint)autosizePositionOffset;
- (CGPoint)autosizePositionOffsetForGeometry:(id)a3 size:(CGSize)a4;
- (CGPoint)transformableObjectAnchorPoint;
- (Class)layoutClass;
- (Class)repClass;
- (NSString)instructionalText;
- (TSWPColumns)columns;
- (TSWPPadding)padding;
- (TSWPShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6;
- (TSWPShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6 wpStorage:(id)a7;
- (TSWPShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 wpStorage:(id)a6;
- (TSWPShapeStyle)tswpShapeStyle;
- (double)pOffsetForParagraphAlignment:(CGSize)a3;
- (double)pOffsetForVerticalAlignment:(CGSize)a3;
- (id)childEnumerator;
- (id)childInfos;
- (id)copyWithContext:(id)a3;
- (id)presetKind;
- (id)propertyMapForNewPreset;
- (id)styleIdentifierTemplateForNewPreset;
- (id)stylesForCopyStyle;
- (id)textureDeliveryStylesLocalized:(BOOL)a3 animationFilter:(id)a4;
- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)a3 byGlyphStyle:(int)a4 animationFilter:(id)a5;
- (unint64_t)p_chunkCountForByBullet;
- (unint64_t)p_chunkCountForByBulletGroup;
- (unsigned)maxLineCount;
- (unsigned)verticalAlignment;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)dealloc;
- (void)fixPositionOfImportedAutosizedShape;
- (void)processSelectedStoragesWithStatisticsController:(id)a3;
- (void)setAllowsLastLineTruncation:(BOOL)a3;
- (void)setContainedStorage:(id)a3;
- (void)setContentWritingDirection:(int64_t)a3;
- (void)setMaxLineCount:(unsigned int)a3;
- (void)setShrinkTextToFit:(BOOL)a3;
- (void)setTextIsVertical:(BOOL)a3;
- (void)setVerticalAlignment:(unsigned int)a3;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPShapeInfo

- (void)setContainedStorage:(id)a3
{
  if (self->_containedStorage != a3)
  {
    if (!a3)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeInfo setContainedStorage:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeInfo.mm"), 178, @"invalid nil value for '%s'", "inStorage"}];
    }

    [(TSPObject *)self willModify];
    [(TSWPStorage *)self->_containedStorage clearBackPointerToParentInfoIfNeeded:self];
    v7 = a3;

    self->_containedStorage = a3;

    [a3 setParentInfo:self];
  }
}

- (void)setAllowsLastLineTruncation:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:154];
}

- (unsigned)maxLineCount
{
  result = [-[TSDShapeInfo style](self "style")];
  if (result)
  {
    v4 = [(TSDShapeInfo *)self style];

    return [v4 intValueForProperty:155];
  }

  return result;
}

- (void)setMaxLineCount:(unsigned int)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&a3];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:155];
}

- (void)setShrinkTextToFit:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:152];
}

- (void)setTextIsVertical:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:153];
}

- (unsigned)verticalAlignment
{
  v2 = [(TSDShapeInfo *)self style];

  return [v2 intValueForProperty:149];
}

- (void)setVerticalAlignment:(unsigned int)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&a3];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:149];
}

- (TSWPColumns)columns
{
  v2 = [(TSDShapeInfo *)self style];

  return [v2 valueForProperty:148];
}

- (TSWPPadding)padding
{
  v2 = [(TSDShapeInfo *)self style];

  return [v2 valueForProperty:146];
}

- (TSWPShapeStyle)tswpShapeStyle
{
  objc_opt_class();
  [(TSDShapeInfo *)self style];

  return TSUDynamicCast();
}

- (void)setContentWritingDirection:(int64_t)a3
{
  containedStorage = self->_containedStorage;
  v6 = [(TSWPStorage *)containedStorage range];

  [(TSWPStorage *)containedStorage setParagraphWritingDirection:a3 forCharRange:v6 undoTransaction:v5, 0];
}

- (void)dealloc
{
  [(TSWPStorage *)self->_containedStorage setParentInfo:0];

  self->mLineHints = 0;
  v3.receiver = self;
  v3.super_class = TSWPShapeInfo;
  [(TSDShapeInfo *)&v3 dealloc];
}

- (TSWPShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6 wpStorage:(id)a7
{
  v11.receiver = self;
  v11.super_class = TSWPShapeInfo;
  v8 = [(TSDShapeInfo *)&v11 initWithContext:a3 geometry:a4 style:a5 pathSource:a6];
  v9 = v8;
  if (v8)
  {
    [(TSWPShapeInfo *)v8 setContainedStorage:a7];
    [(TSWPShapeInfo *)v9 setTextUserEditable:1];
  }

  return v9;
}

- (TSWPShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 wpStorage:(id)a6
{
  [a4 size];
  v13 = [TSDScalarPathSource roundedRectangleWithScalar:0.0 naturalSize:v11, v12];

  return [(TSWPShapeInfo *)self initWithContext:a3 geometry:a4 style:a5 pathSource:v13 wpStorage:a6];
}

- (TSWPShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6
{
  objc_opt_class();
  v11 = TSUDynamicCast();
  v12 = [a3 documentRoot];
  v13 = [v11 defaultParagraphStyle];
  if (!v13)
  {
    v14 = [objc_msgSend(a3 "documentRoot")];
    objc_opt_class();
    [v14 presetOfKind:String index:0];
    v13 = [TSUDynamicCast() defaultParagraphStyle];
  }

  v15 = -[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:]([TSWPStorage alloc], "initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:", a3, 0, 3, [v12 stylesheet], v13, objc_msgSend(v13, "initialListStyle"), 0, 0);
  v16 = [(TSWPShapeInfo *)self initWithContext:a3 geometry:a4 style:a5 pathSource:a6 wpStorage:v15];

  return v16;
}

- (id)presetKind
{
  v3 = String;
  objc_opt_class();
  [(TSDShapeInfo *)self style];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return v3;
  }

  return [v4 presetKind];
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  [a4 pushMappingContext:self];
  v7.receiver = self;
  v7.super_class = TSWPShapeInfo;
  [(TSDStyledInfo *)&v7 adoptStylesheet:a3 withMapper:a4];
  [(TSWPStorage *)self->_containedStorage adoptStylesheet:a3 withMapper:a4];
  [a4 popMappingContext:self];
}

- (BOOL)displaysInstructionalText
{
  v2 = [(TSWPShapeInfo *)self presetKind];
  v3 = String;

  return [v2 isEqual:v3];
}

- (NSString)instructionalText
{
  v2 = [(TSWPShapeInfo *)self presetKind];
  if (![v2 isEqual:String])
  {
    return &stru_287D36338;
  }

  result = TSWPDefaultInstructionalText;
  if (!TSWPDefaultInstructionalText)
  {
    v4 = TSWPBundle();

    return [v4 localizedStringForKey:@"Text" value:&stru_287D36338 table:@"TSText"];
  }

  return result;
}

- (double)pOffsetForParagraphAlignment:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TSWPShapeInfo *)self containedStorage];
  v7 = [(TSWPShapeInfo *)self textIsVertical];
  v8 = 0.0;
  if ([(TSWPStorage *)v6 paragraphCount])
  {
    v9 = [(TSWPStorage *)v6 paragraphStyleAtParIndex:0 effectiveRange:0];
    if (v9)
    {
      v10 = [v9 intValueForProperty:86];
      switch(v10)
      {
        case 1:
          if (v7)
          {
            return height;
          }

          else
          {
            return width;
          }

        case 2:
          if (v7)
          {
            v13 = height;
          }

          else
          {
            v13 = width;
          }

          return v13 * 0.5;
        case 4:
          v11 = [(TSWPStorage *)v6 isWritingDirectionRightToLeftForParagraphAtParIndex:0];
          if (v7)
          {
            v12 = height;
          }

          else
          {
            v12 = width;
          }

          if (v11)
          {
            return v12;
          }

          else
          {
            return 0.0;
          }
      }
    }
  }

  return v8;
}

- (double)pOffsetForVerticalAlignment:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TSWPShapeInfo *)self textIsVertical];
  objc_opt_class();
  [(TSDShapeInfo *)self style];
  v7 = TSUDynamicCast();
  if (!v7)
  {
LABEL_7:
    result = 0.0;
    if (v6)
    {
      return width;
    }

    return result;
  }

  v8 = [v7 intValueForProperty:149];
  if (v8 != 1)
  {
    if (v8 == 2)
    {
      result = 0.0;
      if (!v6)
      {
        return height;
      }

      return result;
    }

    goto LABEL_7;
  }

  if (v6)
  {
    v10 = width;
  }

  else
  {
    v10 = height;
  }

  return v10 * 0.5;
}

- (CGPoint)autosizePositionOffsetForGeometry:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = [(TSWPShapeInfo *)self textIsVertical];
  if ([a3 widthValid])
  {
    if (([a3 heightValid] & 1) == 0)
    {
      if (!v10)
      {
        goto LABEL_9;
      }

LABEL_7:
      [(TSWPShapeInfo *)self pOffsetForParagraphAlignment:width, height];
LABEL_10:
      v9 = v12;
    }
  }

  else if (v10)
  {
    [(TSWPShapeInfo *)self pOffsetForVerticalAlignment:width, height];
    v8 = v11;
    if (([a3 heightValid] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [(TSWPShapeInfo *)self pOffsetForParagraphAlignment:width, height];
    v8 = v13;
    if (([a3 heightValid] & 1) == 0)
    {
LABEL_9:
      [(TSWPShapeInfo *)self pOffsetForVerticalAlignment:width, height];
      goto LABEL_10;
    }
  }

  v14 = v8;
  v15 = v9;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)a3 size:(id)a4
{
  height = a5.height;
  width = a5.width;
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  v12 = [a4 widthValid];
  v13 = [a4 heightValid];
  memset(&v19[1], 0, sizeof(CGAffineTransform));
  if (a4)
  {
    if (v13)
    {
      v14 = height;
    }

    else
    {
      v14 = 0.0;
    }

    if (v12)
    {
      v15 = width;
    }

    else
    {
      v15 = 0.0;
    }

    [a4 transformBasedOnRect:{v10, v11, v15, v14}];
  }

  [(TSWPShapeInfo *)self autosizePositionOffsetForGeometry:a4 size:width, height];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v19[0] = v19[1];
  return CGAffineTransformTranslate(retstr, v19, -v16, -v17);
}

- (CGPoint)autosizePositionOffset
{
  v3 = [(TSDDrawableInfo *)self geometry];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  [(TSDInfoGeometry *)v3 size];
  if (self)
  {
    [(TSWPShapeInfo *)self autosizedTransformForInfoGeometry:v3 size:?];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v4 = [(TSDInfoGeometry *)v3 mutableCopy];
  [v4 setWidthValid:1];
  [v4 setHeightValid:1];
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [v4 size];
  if (self)
  {
    [(TSWPShapeInfo *)self autosizedTransformForInfoGeometry:v4 size:?];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  v5 = *(MEMORY[0x277CBF348] + 8);
  v6 = vaddq_f64(v11, vmlaq_n_f64(vmulq_n_f64(v10, v5), v9, *MEMORY[0x277CBF348]));
  v7 = TSDSubtractPoints(v6.f64[0], v6.f64[1], vaddq_f64(v14, vmlaq_n_f64(vmulq_n_f64(v13, v5), v12, *MEMORY[0x277CBF348])).f64[0]);
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)fixPositionOfImportedAutosizedShape
{
  v3 = [(TSDDrawableInfo *)self geometry];
  if (![(TSDInfoGeometry *)v3 widthValid]|| ![(TSDInfoGeometry *)v3 heightValid])
  {
    [(TSWPShapeInfo *)self autosizePositionOffset];
    v5 = v4;
    v8 = [(TSDInfoGeometry *)v3 mutableCopy];
    [v8 position];
    [v8 setPosition:{TSDAddPoints(v6, v7, v5)}];
    [(TSDShapeInfo *)self setGeometry:v8];
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSWPShapeInfo;
  [TSDDrawableInfo willBeAddedToDocumentRoot:sel_willBeAddedToDocumentRoot_context_ context:?];
  [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] willBeAddedToDocumentRoot:a3 dolcContext:a4];
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSWPShapeInfo;
  [TSDDrawableInfo wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] wasAddedToDocumentRoot:a3 dolcContext:a4];
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWPShapeInfo;
  [(TSDDrawableInfo *)&v5 willBeRemovedFromDocumentRoot:?];
  [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] willBeRemovedFromDocumentRoot:a3];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWPShapeInfo;
  [(TSDDrawableInfo *)&v5 wasRemovedFromDocumentRoot:?];
  [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] wasRemovedFromDocumentRoot:a3];
}

- (id)childEnumerator
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(TSWPShapeInfo *)self containedStorage])
  {
    v5[0] = [(TSWPShapeInfo *)self containedStorage];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return [v3 objectEnumerator];
}

- (Class)layoutClass
{
  if (self->_containedStorage)
  {

    return objc_opt_class();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = TSWPShapeInfo;
    return [(TSDShapeInfo *)&v5 layoutClass];
  }
}

- (Class)repClass
{
  if (self->_containedStorage)
  {

    return objc_opt_class();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = TSWPShapeInfo;
    return [(TSDShapeInfo *)&v5 repClass];
  }
}

- (id)copyWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSWPShapeInfo;
  v5 = [(TSDShapeInfo *)&v8 copyWithContext:?];
  if (v5)
  {
    v6 = [(TSWPStorage *)self->_containedStorage copyWithContext:a3];
    v5[22] = v6;
    [v6 setParentInfo:v5];
    v5[24] = self->mLineHints;
  }

  return v5;
}

- (id)childInfos
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (!self->_containedStorage)
  {
    return 0;
  }

  v3[0] = self->_containedStorage;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (id)textureDeliveryStylesLocalized:(BOOL)a3 animationFilter:(id)a4
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TSWPShapeInfo;
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDDrawableInfo textureDeliveryStylesLocalized:animationFilter:](&v19, sel_textureDeliveryStylesLocalized_animationFilter_, a3, a4)}];
  v7 = v6;
  if (v4)
  {
    v18 = xmmword_26CA639B0;
    containedStorage = self->_containedStorage;
    if (containedStorage)
    {
      v9 = [(TSWPStorage *)containedStorage listStyleAtCharIndex:0 effectiveRange:&v18];
      containedStorage = self->_containedStorage;
    }

    else
    {
      v9 = 0;
    }

    v11 = [v9 effectiveTypeForLevel:{-[TSWPStorage paragraphLevelAtParIndex:](containedStorage, "paragraphLevelAtParIndex:", 0, v18)}];
    v12 = TSWPBundle();
    v13 = v11 == 0;
    if (v11)
    {
      v14 = @"By Bullet";
    }

    else
    {
      v14 = @"By Paragraph";
    }

    if (v11)
    {
      v15 = @"By Bullet Group";
    }

    else
    {
      v15 = @"By Paragraph Group";
    }

    if (v13)
    {
      v16 = @"By Highlighted Paragraph";
    }

    else
    {
      v16 = @"By Highlighted Bullet";
    }

    [v7 addObject:{objc_msgSend(v12, "localizedStringForKey:value:table:", v14, &stru_287D36338, @"TSText"}];
    [v7 addObject:{objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", v15, &stru_287D36338, @"TSText"}];
    v10 = [TSWPBundle() localizedStringForKey:v16 value:&stru_287D36338 table:@"TSText"];
  }

  else
  {
    [v6 addObject:@"By Paragraph"];
    [v7 addObject:@"By Bullet Group"];
    v10 = @"By Highlighted Bullet";
  }

  [v7 addObject:v10];
  return v7;
}

- (CGPoint)transformableObjectAnchorPoint
{
  v12.receiver = self;
  v12.super_class = TSWPShapeInfo;
  [(TSDDrawableInfo *)&v12 transformableObjectAnchorPoint];
  v4 = v3;
  v6 = v5;
  v7 = [(TSDDrawableInfo *)self geometry];
  if (![(TSDInfoGeometry *)v7 widthValid])
  {
    [(TSDInfoGeometry *)v7 position];
    v4 = v8;
  }

  if (![(TSDInfoGeometry *)v7 heightValid])
  {
    [(TSDInfoGeometry *)v7 position];
    v6 = v9;
  }

  v10 = v4;
  v11 = v6;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)propertyMapForNewPreset
{
  v3 = [-[TSDShapeInfo style](self "style")];
  v4 = [objc_msgSend(-[TSPObjectContext documentRoot](-[TSPObject context](self "context")];
  [v4 setIsLocked:0];
  v5 = [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] listStyleAtParIndex:0 effectiveRange:0];
  v6 = [v4 variationOfStyleMatchingStyle:v5 withNewParentStyle:{objc_msgSend(v5, "firstIdentifiedAncestor")}];
  v7 = [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] paragraphStyleAtParIndex:0 effectiveRange:0];
  v8 = [v7 fullPropertyMap];
  [v8 setObject:v6 forProperty:108];
  v9 = [v4 variationOfStyle:objc_msgSend(v7 propertyMap:{"firstIdentifiedAncestor"), v8}];
  [v4 setIsLocked:1];
  [v3 setObject:v9 forProperty:212];
  return v3;
}

- (id)styleIdentifierTemplateForNewPreset
{
  objc_opt_class();
  [(TSDShapeInfo *)self pathSource];
  v3 = TSUDynamicCast();
  v4 = [(TSWPShapeInfo *)self presetKind];
  v5 = String;
  if (v4 != String)
  {
    if (!v3)
    {
      v8.receiver = self;
      v8.super_class = TSWPShapeInfo;
      return [(TSDStyledInfo *)&v8 styleIdentifierTemplateForNewPreset];
    }

    if ([v3 isClosed])
    {
      v6 = &String;
    }

    else
    {
      v6 = &String;
    }

    v5 = *v6;
  }

  return TSWPShapeStyleIdentifierString(v5, 0);
}

- (id)stylesForCopyStyle
{
  v5.receiver = self;
  v5.super_class = TSWPShapeInfo;
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDStyledInfo stylesForCopyStyle](&v5, sel_stylesForCopyStyle)}];
  [v3 tsu_addObjects:{-[TSWPStorage paragraphStyleAtParIndex:effectiveRange:](-[TSWPShapeInfo containedStorage](self, "containedStorage"), "paragraphStyleAtParIndex:effectiveRange:", 0, 0), -[TSWPStorage listStyleAtParIndex:effectiveRange:](-[TSWPShapeInfo containedStorage](self, "containedStorage"), "listStyleAtParIndex:effectiveRange:", 0, 0), 0}];
  return v3;
}

- (BOOL)p_hasContentForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSWPShapeInfo *)self containedStorage];
  v6 = location + length;
  if (location >= location + length)
  {
    return 0;
  }

  v7 = v5;
  if (!IsWhitespaceCharacter([(TSWPStorage *)v5 characterAtIndex:location]))
  {
    return 1;
  }

  v8 = location + 1;
  v9 = length - 1;
  do
  {
    v10 = v8;
    if (!v9)
    {
      break;
    }

    v11 = IsWhitespaceCharacter([(TSWPStorage *)v7 characterAtIndex:v8]);
    v8 = v10 + 1;
    --v9;
  }

  while ((v11 & 1) != 0);
  return v10 < v6;
}

- (BOOL)p_hasListLabelOrContentForParagraphIndex:(unint64_t)a3
{
  v5 = [(TSWPShapeInfo *)self containedStorage];
  v6 = [(TSWPStorage *)v5 textRangeIgnoringTrailingLineBreaksForParagraphAtIndex:a3];
  v8 = v7;
  v9 = 0;
  if ([(TSWPStorage *)v5 paragraphHasListLabelAtCharIndex:v6]&& !v8)
  {
    v9 = [(TSWPStorage *)v5 paragraphCount]- 1 == a3;
  }

  return (v9 | [(TSWPShapeInfo *)self p_hasContentForRange:v6, v8]) & 1;
}

- (unint64_t)p_chunkCountForByBullet
{
  v2 = [(TSWPShapeInfo *)self containedStorage];

  return [(TSWPStorage *)v2 paragraphCount];
}

- (unint64_t)p_chunkCountForByBulletGroup
{
  v2 = [(TSWPShapeInfo *)self containedStorage];
  v3 = 0;
  if ([(TSWPStorage *)v2 paragraphCount])
  {
    v4 = 0;
    do
    {
      if ([(TSWPStorage *)v2 paragraphLevelAtParIndex:v4])
      {
        v5 = v4 == 0;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        ++v3;
      }

      ++v4;
    }

    while (v4 < [(TSWPStorage *)v2 paragraphCount]);
  }

  return v3;
}

- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)a3 byGlyphStyle:(int)a4 animationFilter:(id)a5
{
  v8 = [(TSWPShapeInfo *)self containedStorage:a3];
  if (a4 == 2)
  {
    result = [(TSWPStorage *)v8 wordCount];
  }

  else if (a4 == 1)
  {
    [(TSWPStorage *)v8 range];
    result = v9;
  }

  else if (a3 == 2)
  {
    result = [(TSWPShapeInfo *)self p_chunkCountForByBulletGroup];
  }

  else if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    result = [(TSWPShapeInfo *)self p_chunkCountForByBullet];
  }

  else
  {
    result = 0;
  }

  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (void)processSelectedStoragesWithStatisticsController:(id)a3
{
  v4 = [(TSWPShapeInfo *)self containedStorage];
  if (v4)
  {

    [a3 processStorageForStatistics:v4 processSelection:0];
  }
}

@end