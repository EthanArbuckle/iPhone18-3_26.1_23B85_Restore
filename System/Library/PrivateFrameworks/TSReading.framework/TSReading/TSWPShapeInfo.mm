@interface TSWPShapeInfo
- (BOOL)displaysInstructionalText;
- (BOOL)p_hasContentForRange:(_NSRange)range;
- (BOOL)p_hasListLabelOrContentForParagraphIndex:(unint64_t)index;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry size:(id)size;
- (CGPoint)autosizePositionOffset;
- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry size:(CGSize)size;
- (CGPoint)transformableObjectAnchorPoint;
- (Class)layoutClass;
- (Class)repClass;
- (NSString)instructionalText;
- (TSWPColumns)columns;
- (TSWPPadding)padding;
- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source;
- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source wpStorage:(id)storage;
- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style wpStorage:(id)storage;
- (TSWPShapeStyle)tswpShapeStyle;
- (double)pOffsetForParagraphAlignment:(CGSize)alignment;
- (double)pOffsetForVerticalAlignment:(CGSize)alignment;
- (id)childEnumerator;
- (id)childInfos;
- (id)copyWithContext:(id)context;
- (id)presetKind;
- (id)propertyMapForNewPreset;
- (id)styleIdentifierTemplateForNewPreset;
- (id)stylesForCopyStyle;
- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter;
- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style byGlyphStyle:(int)glyphStyle animationFilter:(id)filter;
- (unint64_t)p_chunkCountForByBullet;
- (unint64_t)p_chunkCountForByBulletGroup;
- (unsigned)maxLineCount;
- (unsigned)verticalAlignment;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)dealloc;
- (void)fixPositionOfImportedAutosizedShape;
- (void)processSelectedStoragesWithStatisticsController:(id)controller;
- (void)setAllowsLastLineTruncation:(BOOL)truncation;
- (void)setContainedStorage:(id)storage;
- (void)setContentWritingDirection:(int64_t)direction;
- (void)setMaxLineCount:(unsigned int)count;
- (void)setShrinkTextToFit:(BOOL)fit;
- (void)setTextIsVertical:(BOOL)vertical;
- (void)setVerticalAlignment:(unsigned int)alignment;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPShapeInfo

- (void)setContainedStorage:(id)storage
{
  if (self->_containedStorage != storage)
  {
    if (!storage)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeInfo setContainedStorage:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeInfo.mm"), 178, @"invalid nil value for '%s'", "inStorage"}];
    }

    [(TSPObject *)self willModify];
    [(TSWPStorage *)self->_containedStorage clearBackPointerToParentInfoIfNeeded:self];
    storageCopy = storage;

    self->_containedStorage = storage;

    [storage setParentInfo:self];
  }
}

- (void)setAllowsLastLineTruncation:(BOOL)truncation
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:truncation];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:154];
}

- (unsigned)maxLineCount
{
  result = [-[TSDShapeInfo style](self "style")];
  if (result)
  {
    style = [(TSDShapeInfo *)self style];

    return [style intValueForProperty:155];
  }

  return result;
}

- (void)setMaxLineCount:(unsigned int)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&count];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:155];
}

- (void)setShrinkTextToFit:(BOOL)fit
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:fit];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:152];
}

- (void)setTextIsVertical:(BOOL)vertical
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:vertical];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:153];
}

- (unsigned)verticalAlignment
{
  style = [(TSDShapeInfo *)self style];

  return [style intValueForProperty:149];
}

- (void)setVerticalAlignment:(unsigned int)alignment
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&alignment];

  [(TSDStyledInfo *)self setBoxedValue:v4 forProperty:149];
}

- (TSWPColumns)columns
{
  style = [(TSDShapeInfo *)self style];

  return [style valueForProperty:148];
}

- (TSWPPadding)padding
{
  style = [(TSDShapeInfo *)self style];

  return [style valueForProperty:146];
}

- (TSWPShapeStyle)tswpShapeStyle
{
  objc_opt_class();
  [(TSDShapeInfo *)self style];

  return TSUDynamicCast();
}

- (void)setContentWritingDirection:(int64_t)direction
{
  containedStorage = self->_containedStorage;
  range = [(TSWPStorage *)containedStorage range];

  [(TSWPStorage *)containedStorage setParagraphWritingDirection:direction forCharRange:range undoTransaction:v5, 0];
}

- (void)dealloc
{
  [(TSWPStorage *)self->_containedStorage setParentInfo:0];

  self->mLineHints = 0;
  v3.receiver = self;
  v3.super_class = TSWPShapeInfo;
  [(TSDShapeInfo *)&v3 dealloc];
}

- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source wpStorage:(id)storage
{
  v11.receiver = self;
  v11.super_class = TSWPShapeInfo;
  v8 = [(TSDShapeInfo *)&v11 initWithContext:context geometry:geometry style:style pathSource:source];
  v9 = v8;
  if (v8)
  {
    [(TSWPShapeInfo *)v8 setContainedStorage:storage];
    [(TSWPShapeInfo *)v9 setTextUserEditable:1];
  }

  return v9;
}

- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style wpStorage:(id)storage
{
  [geometry size];
  v13 = [TSDScalarPathSource roundedRectangleWithScalar:0.0 naturalSize:v11, v12];

  return [(TSWPShapeInfo *)self initWithContext:context geometry:geometry style:style pathSource:v13 wpStorage:storage];
}

- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source
{
  objc_opt_class();
  v11 = TSUDynamicCast();
  documentRoot = [context documentRoot];
  defaultParagraphStyle = [v11 defaultParagraphStyle];
  if (!defaultParagraphStyle)
  {
    v14 = [objc_msgSend(context "documentRoot")];
    objc_opt_class();
    [v14 presetOfKind:String index:0];
    defaultParagraphStyle = [TSUDynamicCast() defaultParagraphStyle];
  }

  v15 = -[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:]([TSWPStorage alloc], "initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:", context, 0, 3, [documentRoot stylesheet], defaultParagraphStyle, objc_msgSend(defaultParagraphStyle, "initialListStyle"), 0, 0);
  v16 = [(TSWPShapeInfo *)self initWithContext:context geometry:geometry style:style pathSource:source wpStorage:v15];

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

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  [mapper pushMappingContext:self];
  v7.receiver = self;
  v7.super_class = TSWPShapeInfo;
  [(TSDStyledInfo *)&v7 adoptStylesheet:stylesheet withMapper:mapper];
  [(TSWPStorage *)self->_containedStorage adoptStylesheet:stylesheet withMapper:mapper];
  [mapper popMappingContext:self];
}

- (BOOL)displaysInstructionalText
{
  presetKind = [(TSWPShapeInfo *)self presetKind];
  v3 = String;

  return [presetKind isEqual:v3];
}

- (NSString)instructionalText
{
  presetKind = [(TSWPShapeInfo *)self presetKind];
  if (![presetKind isEqual:String])
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

- (double)pOffsetForParagraphAlignment:(CGSize)alignment
{
  height = alignment.height;
  width = alignment.width;
  containedStorage = [(TSWPShapeInfo *)self containedStorage];
  textIsVertical = [(TSWPShapeInfo *)self textIsVertical];
  v8 = 0.0;
  if ([(TSWPStorage *)containedStorage paragraphCount])
  {
    v9 = [(TSWPStorage *)containedStorage paragraphStyleAtParIndex:0 effectiveRange:0];
    if (v9)
    {
      v10 = [v9 intValueForProperty:86];
      switch(v10)
      {
        case 1:
          if (textIsVertical)
          {
            return height;
          }

          else
          {
            return width;
          }

        case 2:
          if (textIsVertical)
          {
            v13 = height;
          }

          else
          {
            v13 = width;
          }

          return v13 * 0.5;
        case 4:
          v11 = [(TSWPStorage *)containedStorage isWritingDirectionRightToLeftForParagraphAtParIndex:0];
          if (textIsVertical)
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

- (double)pOffsetForVerticalAlignment:(CGSize)alignment
{
  height = alignment.height;
  width = alignment.width;
  textIsVertical = [(TSWPShapeInfo *)self textIsVertical];
  objc_opt_class();
  [(TSDShapeInfo *)self style];
  v7 = TSUDynamicCast();
  if (!v7)
  {
LABEL_7:
    result = 0.0;
    if (textIsVertical)
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
      if (!textIsVertical)
      {
        return height;
      }

      return result;
    }

    goto LABEL_7;
  }

  if (textIsVertical)
  {
    v10 = width;
  }

  else
  {
    v10 = height;
  }

  return v10 * 0.5;
}

- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  textIsVertical = [(TSWPShapeInfo *)self textIsVertical];
  if ([geometry widthValid])
  {
    if (([geometry heightValid] & 1) == 0)
    {
      if (!textIsVertical)
      {
        goto LABEL_9;
      }

LABEL_7:
      [(TSWPShapeInfo *)self pOffsetForParagraphAlignment:width, height];
LABEL_10:
      v9 = v12;
    }
  }

  else if (textIsVertical)
  {
    [(TSWPShapeInfo *)self pOffsetForVerticalAlignment:width, height];
    v8 = v11;
    if (([geometry heightValid] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [(TSWPShapeInfo *)self pOffsetForParagraphAlignment:width, height];
    v8 = v13;
    if (([geometry heightValid] & 1) == 0)
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

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry size:(id)size
{
  height = a5.height;
  width = a5.width;
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  widthValid = [size widthValid];
  heightValid = [size heightValid];
  memset(&v19[1], 0, sizeof(CGAffineTransform));
  if (size)
  {
    if (heightValid)
    {
      v14 = height;
    }

    else
    {
      v14 = 0.0;
    }

    if (widthValid)
    {
      v15 = width;
    }

    else
    {
      v15 = 0.0;
    }

    [size transformBasedOnRect:{v10, v11, v15, v14}];
  }

  [(TSWPShapeInfo *)self autosizePositionOffsetForGeometry:size size:width, height];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v19[0] = v19[1];
  return CGAffineTransformTranslate(retstr, v19, -v16, -v17);
}

- (CGPoint)autosizePositionOffset
{
  geometry = [(TSDDrawableInfo *)self geometry];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  [(TSDInfoGeometry *)geometry size];
  if (self)
  {
    [(TSWPShapeInfo *)self autosizedTransformForInfoGeometry:geometry size:?];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v4 = [(TSDInfoGeometry *)geometry mutableCopy];
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
  geometry = [(TSDDrawableInfo *)self geometry];
  if (![(TSDInfoGeometry *)geometry widthValid]|| ![(TSDInfoGeometry *)geometry heightValid])
  {
    [(TSWPShapeInfo *)self autosizePositionOffset];
    v5 = v4;
    v8 = [(TSDInfoGeometry *)geometry mutableCopy];
    [v8 position];
    [v8 setPosition:{TSDAddPoints(v6, v7, v5)}];
    [(TSDShapeInfo *)self setGeometry:v8];
  }
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  v7.receiver = self;
  v7.super_class = TSWPShapeInfo;
  [TSDDrawableInfo willBeAddedToDocumentRoot:sel_willBeAddedToDocumentRoot_context_ context:?];
  [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] willBeAddedToDocumentRoot:root dolcContext:context];
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  v7.receiver = self;
  v7.super_class = TSWPShapeInfo;
  [TSDDrawableInfo wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] wasAddedToDocumentRoot:root dolcContext:context];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v5.receiver = self;
  v5.super_class = TSWPShapeInfo;
  [(TSDDrawableInfo *)&v5 willBeRemovedFromDocumentRoot:?];
  [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] willBeRemovedFromDocumentRoot:root];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v5.receiver = self;
  v5.super_class = TSWPShapeInfo;
  [(TSDDrawableInfo *)&v5 wasRemovedFromDocumentRoot:?];
  [(TSWPStorage *)[(TSWPShapeInfo *)self containedStorage] wasRemovedFromDocumentRoot:root];
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

- (id)copyWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = TSWPShapeInfo;
  v5 = [(TSDShapeInfo *)&v8 copyWithContext:?];
  if (v5)
  {
    v6 = [(TSWPStorage *)self->_containedStorage copyWithContext:context];
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

- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter
{
  localizedCopy = localized;
  v19.receiver = self;
  v19.super_class = TSWPShapeInfo;
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDDrawableInfo textureDeliveryStylesLocalized:animationFilter:](&v19, sel_textureDeliveryStylesLocalized_animationFilter_, localized, filter)}];
  v7 = v6;
  if (localizedCopy)
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
  geometry = [(TSDDrawableInfo *)self geometry];
  if (![(TSDInfoGeometry *)geometry widthValid])
  {
    [(TSDInfoGeometry *)geometry position];
    v4 = v8;
  }

  if (![(TSDInfoGeometry *)geometry heightValid])
  {
    [(TSDInfoGeometry *)geometry position];
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
  fullPropertyMap = [v7 fullPropertyMap];
  [fullPropertyMap setObject:v6 forProperty:108];
  v9 = [v4 variationOfStyle:objc_msgSend(v7 propertyMap:{"firstIdentifiedAncestor"), fullPropertyMap}];
  [v4 setIsLocked:1];
  [v3 setObject:v9 forProperty:212];
  return v3;
}

- (id)styleIdentifierTemplateForNewPreset
{
  objc_opt_class();
  [(TSDShapeInfo *)self pathSource];
  v3 = TSUDynamicCast();
  presetKind = [(TSWPShapeInfo *)self presetKind];
  v5 = String;
  if (presetKind != String)
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

- (BOOL)p_hasContentForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  containedStorage = [(TSWPShapeInfo *)self containedStorage];
  v6 = location + length;
  if (location >= location + length)
  {
    return 0;
  }

  v7 = containedStorage;
  if (!IsWhitespaceCharacter([(TSWPStorage *)containedStorage characterAtIndex:location]))
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

- (BOOL)p_hasListLabelOrContentForParagraphIndex:(unint64_t)index
{
  containedStorage = [(TSWPShapeInfo *)self containedStorage];
  v6 = [(TSWPStorage *)containedStorage textRangeIgnoringTrailingLineBreaksForParagraphAtIndex:index];
  v8 = v7;
  v9 = 0;
  if ([(TSWPStorage *)containedStorage paragraphHasListLabelAtCharIndex:v6]&& !v8)
  {
    v9 = [(TSWPStorage *)containedStorage paragraphCount]- 1 == index;
  }

  return (v9 | [(TSWPShapeInfo *)self p_hasContentForRange:v6, v8]) & 1;
}

- (unint64_t)p_chunkCountForByBullet
{
  containedStorage = [(TSWPShapeInfo *)self containedStorage];

  return [(TSWPStorage *)containedStorage paragraphCount];
}

- (unint64_t)p_chunkCountForByBulletGroup
{
  containedStorage = [(TSWPShapeInfo *)self containedStorage];
  v3 = 0;
  if ([(TSWPStorage *)containedStorage paragraphCount])
  {
    v4 = 0;
    do
    {
      if ([(TSWPStorage *)containedStorage paragraphLevelAtParIndex:v4])
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

    while (v4 < [(TSWPStorage *)containedStorage paragraphCount]);
  }

  return v3;
}

- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style byGlyphStyle:(int)glyphStyle animationFilter:(id)filter
{
  v8 = [(TSWPShapeInfo *)self containedStorage:style];
  if (glyphStyle == 2)
  {
    result = [(TSWPStorage *)v8 wordCount];
  }

  else if (glyphStyle == 1)
  {
    [(TSWPStorage *)v8 range];
    result = v9;
  }

  else if (style == 2)
  {
    result = [(TSWPShapeInfo *)self p_chunkCountForByBulletGroup];
  }

  else if ((style & 0xFFFFFFFFFFFFFFFDLL) == 1)
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

- (void)processSelectedStoragesWithStatisticsController:(id)controller
{
  containedStorage = [(TSWPShapeInfo *)self containedStorage];
  if (containedStorage)
  {

    [controller processStorageForStatistics:containedStorage processSelection:0];
  }
}

@end