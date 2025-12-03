@interface SXTextSource
- (NSLocale)locale;
- (SXTextSource)initWithString:(id)string smartFieldFactory:(id)factory dataSource:(id)source documentLanguageProvider:(id)provider fontAttributesConstructor:(id)constructor;
- (SXTextSourceDataSource)dataSource;
- (_NSRange)rangeForRange:(_NSRange)range;
- (_NSRange)rangeInBounds:(_NSRange)bounds maxLength:(unint64_t)length;
- (id)attributesForTextStyle:(id)style onParagraphStyle:(id)paragraphStyle forRange:(_NSRange)range resultingDropCapStyle:(id *)capStyle textResizer:(id)resizer fontFace:(id)face;
- (id)characterStyleFromAttributes:(id)attributes context:(id)context;
- (id)cleanString:(id)string;
- (id)fontDescriptionsForTextStyleFontDescription:(id)description defaultTextStyleFontDesciptions:(id)desciptions;
- (id)fontFaceForTextStyleFontDescription:(id)description defaultTextStyleFontDescription:(id)fontDescription fontAttributes:(id)attributes fontSize:(int64_t)size;
- (id)populateArray:(id)array withValue:(id)value forSize:(unint64_t)size;
- (id)randomColorWithAlpha:(double)alpha;
- (int)listLabelTypeForListType:(unint64_t)type;
- (int)listNumberTypeForListType:(unint64_t)type;
- (int64_t)fontSizeForTextStyle:(id)style;
- (int64_t)scaledFontSizeForFontSize:(int64_t)size;
- (unsigned)paragraphAlignmentForTextAlignment:(int64_t)alignment;
- (void)applyAdditionsOnTextTangierStorage:(id)storage;
- (void)applyListStylingOnTextTangierStorage:(id)storage usingAttributesMap:(id)map;
- (void)applyStylingOnTextTangierStorage:(id)storage;
- (void)transform:(id)transform forTextStyle:(id)style range:(_NSRange)range;
@end

@implementation SXTextSource

- (SXTextSource)initWithString:(id)string smartFieldFactory:(id)factory dataSource:(id)source documentLanguageProvider:(id)provider fontAttributesConstructor:(id)constructor
{
  v32 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  factoryCopy = factory;
  sourceCopy = source;
  providerCopy = provider;
  constructorCopy = constructor;
  v31.receiver = self;
  v31.super_class = SXTextSource;
  v17 = [(SXTextSource *)&v31 init];
  if (v17)
  {
    v18 = +[SXTextSourceDefaults defaults];
    defaults = v17->_defaults;
    v17->_defaults = v18;

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    deletedRangeOffsets = v17->_deletedRangeOffsets;
    v17->_deletedRangeOffsets = indexSet;

    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    insertedRangeOffsets = v17->_insertedRangeOffsets;
    v17->_insertedRangeOffsets = indexSet2;

    indexSet3 = [MEMORY[0x1E696AD50] indexSet];
    rangesExcludedOfParagraphSpacing = v17->_rangesExcludedOfParagraphSpacing;
    v17->_rangesExcludedOfParagraphSpacing = indexSet3;

    objc_storeWeak(&v17->_dataSource, sourceCopy);
    objc_storeStrong(&v17->_smartFieldFactory, factory);
    v26 = objc_alloc_init(SXDefaultFontDescribing);
    defaultFontDescribing = v17->_defaultFontDescribing;
    v17->_defaultFontDescribing = v26;

    objc_storeStrong(&v17->_fontAttributeConstructor, constructor);
    objc_storeStrong(&v17->_documentLanguageProvider, provider);
    v28 = [(SXTextSource *)v17 cleanString:stringCopy];
    string = v17->_string;
    v17->_string = v28;
  }

  return v17;
}

- (id)cleanString:(id)string
{
  v91 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:stringCopy];
  dataSource = [(SXTextSource *)self dataSource];
  v7 = [dataSource componentTextStyleForTextSource:self inheritingFromDefaultStyles:1];

  listStyle = [v7 listStyle];
  v9 = [listStyle count];

  if (!v9)
  {
    v65 = v7;
    v66 = v5;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    indexSet3 = [MEMORY[0x1E696AD50] indexSet];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    dataSource2 = [(SXTextSource *)self dataSource];
    v11 = [dataSource2 inlineTextStylesForTextSource:self];

    v12 = [v11 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v87;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v87 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v86 + 1) + 8 * i);
          dataSource3 = [(SXTextSource *)self dataSource];
          textStyle = [v16 textStyle];
          v19 = [dataSource3 textStyleForIdentifier:textStyle];

          listStyle2 = [v19 listStyle];
          if ([listStyle2 count] && (v21 = objc_msgSend(v16, "range"), v21 < objc_msgSend(stringCopy, "length")))
          {
            [v16 range];
            v23 = v22;

            if (v23 != -1)
            {
              range = [v16 range];
              v26 = -[SXTextSource rangeInBounds:maxLength:](self, "rangeInBounds:maxLength:", range, v25, [stringCopy length]);
              [indexSet3 addIndexesInRange:{v26, v27}];
            }
          }

          else
          {
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v13);
    }

    v28 = [stringCopy length];
    v29 = [stringCopy rangeOfString:@"\n\n" options:0 range:{0, v28}];
    if (v29 == 0x7FFFFFFFFFFFFFFFLL || (v31 = v29, v32 = v30, ![stringCopy length]))
    {
      v34 = 0;
    }

    else
    {
      do
      {
        v33 = [stringCopy length];
        if (([indexSet3 intersectsIndexesInRange:{v31, v32}] & 1) == 0)
        {
          [indexSet addIndexesInRange:{v31, v32}];
        }

        v34 = v31 + v32;
        v28 = v33 - (v31 + v32);
        v35 = [stringCopy rangeOfString:@"\n\n" options:0 range:{v31 + v32, v28}];
        if (v35 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v31 = v35;
        v32 = v36;
      }

      while (v34 < [stringCopy length]);
    }

    v37 = [stringCopy rangeOfString:@"\r\n" options:0 range:{v34, v28}];
    if (v37 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = v37;
      v40 = v38;
      do
      {
        if (v34 >= [stringCopy length])
        {
          break;
        }

        v41 = [stringCopy length];
        if (([indexSet3 intersectsIndexesInRange:{v39, v40}] & 1) == 0)
        {
          [indexSet addIndexesInRange:{v39, v40}];
        }

        v34 = v39 + v40;
        v39 = [stringCopy rangeOfString:@"\r\n" options:0 range:{v39 + v40, v41 - (v39 + v40)}];
        v40 = v42;
      }

      while (v39 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v43 = [stringCopy rangeOfString:@"\n" options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    if (v43 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = v43;
      v46 = v44;
      v47 = 0;
      do
      {
        if (v47 >= [stringCopy length])
        {
          break;
        }

        v48 = [stringCopy length];
        if (([indexSet3 intersectsIndexesInRange:{v45, v46}] & 1) == 0 && (objc_msgSend(indexSet, "intersectsIndexesInRange:", v45, v46) & 1) == 0)
        {
          [indexSet2 addIndexesInRange:{v45, v46}];
        }

        v47 = v45 + v46;
        v45 = [stringCopy rangeOfString:@"\n" options:0 range:{v45 + v46, v48 - (v45 + v46)}];
        v46 = v49;
      }

      while (v45 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __28__SXTextSource_cleanString___block_invoke;
    v84[3] = &unk_1E8502268;
    v84[4] = self;
    v50 = v66;
    v85 = v50;
    [indexSet enumerateRangesUsingBlock:v84];
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __28__SXTextSource_cleanString___block_invoke_2;
    v81[3] = &unk_1E8502290;
    v81[4] = self;
    v51 = indexSet3;
    v82 = v51;
    v52 = v50;
    v83 = v52;
    [indexSet2 enumerateRangesUsingBlock:v81];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __28__SXTextSource_cleanString___block_invoke_3;
    v74[3] = &unk_1E85022B8;
    v72 = indexSet2;
    v75 = v72;
    v70 = indexSet;
    v76 = v70;
    selfCopy = self;
    v78 = v51;
    v53 = v52;
    v79 = v53;
    v54 = stringCopy;
    v80 = v54;
    v68 = v78;
    [v78 enumerateRangesUsingBlock:v74];
    v55 = [v54 rangeOfString:@"\u2028\n" options:0 range:{0, objc_msgSend(v54, "length")}];
    if (v55 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v57 = v55;
      v58 = v56;
      v59 = 0;
      do
      {
        if (v59 >= [v54 length])
        {
          break;
        }

        v59 = v57 + v58;
        v60 = [v54 length] - (v57 + v58);
        v61 = [(SXTextSource *)self rangeForRange:v57, v58];
        [v53 insertString:@"​" atIndex:v61 + 1];
        insertedRangeOffsets = [(SXTextSource *)self insertedRangeOffsets];
        [insertedRangeOffsets addIndex:v61 + 1];

        v57 = [v54 rangeOfString:@"\u2028\n" options:0 range:{v59, v60}];
        v58 = v63;
      }

      while (v57 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __28__SXTextSource_cleanString___block_invoke_4;
    v73[3] = &unk_1E85012F8;
    v73[4] = self;
    [v68 enumerateRangesUsingBlock:v73];

    v7 = v65;
    v5 = v66;
  }

  if ([v5 hasSuffix:@"\u2028\n"])
  {
    [v5 replaceCharactersInRange:objc_msgSend(v5 withString:{"length") - 2, 2, @"\u2028\u2028"}];
  }

  return v5;
}

void __28__SXTextSource_cleanString___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    for (i = 0; i < a3; i += 2)
    {
      v7 = [*(a1 + 32) rangeForRange:{a2 + i, 2}];
      v9 = v8;
      v10 = [*(a1 + 40) length];
      if (v10 >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      [*(a1 + 40) replaceCharactersInRange:v7 withString:{v11, @"\n"}];
      v12 = [*(a1 + 32) deletedRangeOffsets];
      [v12 addIndex:a2 + i];
    }
  }
}

void __28__SXTextSource_cleanString___block_invoke_2(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1[4] rangeForRange:{a2, a3}];
  v8 = v7;
  v9 = [a1[5] intersectsIndexesInRange:{a2, a3 + 1}];
  v10 = [a1[5] intersectsIndexesInRange:{a2 - 1, a3}];
  v11 = [a1[6] length];
  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = a1[6];
  if ((v9 & 1) != 0 || v10)
  {
    [v13 replaceCharactersInRange:v6 withString:{v12, &stru_1F532F6C0}];
    v14 = [a1[4] deletedRangeOffsets];
    [v14 addIndex:a2];
  }

  else
  {

    [v13 replaceCharactersInRange:v6 withString:{v12, @"\u2028"}];
  }
}

void __28__SXTextSource_cleanString___block_invoke_3(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + a3;
  v7 = [a1[4] indexGreaterThanIndex:a2 + a3];
  v8 = [a1[4] indexLessThanIndex:a2];
  v9 = [a1[5] indexGreaterThanIndex:v6];
  v10 = [a1[5] indexLessThanIndex:a2];
  v11 = a1[6];
  v12 = [a1[7] firstRangeAfterIndex:v6];
  v14 = [v11 rangeForRange:{v12, v13}];
  if (a2 && v8 && v10 && v8 != a2 - 1 && v10 != a2 - 1)
  {
    v15 = [a1[6] rangeForRange:{a2, a3}];
    [a1[8] length];
    [a1[8] insertString:@"\n" atIndex:v15];
    v16 = [a1[6] insertedRangeOffsets];
    [v16 addIndex:v15];
  }

  v17 = v6 + 1;
  v19 = v7 == v6 + 1 || v9 == v17 || v14 == v17;
  if (!v19 && v17 < [a1[9] length])
  {
    v20 = [a1[6] rangeForRange:{a2, a3}];
    v22 = v21;
    v23 = [a1[8] length];
    if (v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    [a1[8] insertString:@"\n" atIndex:v24 + v20];
    v25 = [a1[6] insertedRangeOffsets];
    [v25 addIndex:v6];
  }
}

void __28__SXTextSource_cleanString___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) rangeForRange:{a2, a3}];
  v6 = v5;
  v7 = [*(a1 + 32) rangesExcludedOfParagraphSpacing];
  [v7 addIndexesInRange:{v4, v6}];
}

- (_NSRange)rangeForRange:(_NSRange)range
{
  if (range.location | range.length)
  {
    length = range.length;
    location = range.location;
    deletedRangeOffsets = [(SXTextSource *)self deletedRangeOffsets];
    v7 = [deletedRangeOffsets countOfIndexesInRange:{0, location + 1}];

    deletedRangeOffsets2 = [(SXTextSource *)self deletedRangeOffsets];
    v9 = [deletedRangeOffsets2 countOfIndexesInRange:{location, length}];

    insertedRangeOffsets = [(SXTextSource *)self insertedRangeOffsets];
    v11 = [insertedRangeOffsets countOfIndexesInRange:{0, location + 1}];

    insertedRangeOffsets2 = [(SXTextSource *)self insertedRangeOffsets];
    v13 = [insertedRangeOffsets2 countOfIndexesInRange:{location + 1, length}];

    v14 = location - v7 + v11;
    v15 = length - v9 + v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  result.length = v15;
  result.location = v14;
  return result;
}

- (void)applyStylingOnTextTangierStorage:(id)storage
{
  v185 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  dataSource = [(SXTextSource *)self dataSource];
  v161 = [dataSource textResizerForTextSource:self];

  v6 = [SXTextStyleAttributesMap alloc];
  string = [(SXTextSource *)self string];
  v8 = [(SXTextStyleAttributesMap *)v6 initWithString:string];

  v9 = [SXTextStyleAttributes alloc];
  string2 = [(SXTextSource *)self string];
  v11 = -[SXTextStyleAttributes initWithRange:](v9, "initWithRange:", 0, [string2 length]);

  v12 = [SXCharacterStyle stringFromProperty:17];
  v13 = MEMORY[0x1E696AD98];
  defaults = [(SXTextSource *)self defaults];
  v15 = [v13 numberWithDouble:-[SXBlueprintAnalyzerCursor highestMaxY](defaults)];
  [(SXTextStyleAttributes *)v11 addAttribute:v12 value:v15];

  v162 = v8;
  v142 = v11;
  [(SXTextStyleAttributesMap *)v8 addAttributes:v11];
  v159 = storageCopy;
  v16 = [storageCopy paragraphStyleAtParIndex:0 effectiveRange:0];
  documentLanguageProvider = [(SXTextSource *)self documentLanguageProvider];
  language = [documentLanguageProvider language];

  if (language || (-[SXTextSource locale](self, "locale"), v19 = objc_claimAutoreleasedReturnValue(), [v19 localeIdentifier], language = objc_claimAutoreleasedReturnValue(), v19, language))
  {
    [v16 setValue:language forProperty:39];
  }

  v141 = language;
  [v16 setFloatValue:81 forProperty:0.0];
  dataSource2 = [(SXTextSource *)self dataSource];
  v21 = [dataSource2 componentTextStyleForTextSource:self inheritingFromDefaultStyles:1];

  dataSource3 = [(SXTextSource *)self dataSource];
  v23 = [dataSource3 componentTextStyleForTextSource:self inheritingFromDefaultStyles:0];

  dataSource4 = [(SXTextSource *)self dataSource];
  v25 = [dataSource4 defaultComponentTextStyleForTextSource:self];

  dataSource5 = [(SXTextSource *)self dataSource];
  v27 = [dataSource5 defaultComponentTextStylesForTextSource:self];

  v151 = v23;
  selfCopy = self;
  v143 = v25;
  v155 = v16;
  v157 = v27;
  if (v21)
  {
    v28 = [(SXTextSource *)self fontDescriptionsForTextStyleFontDescription:v23 defaultTextStyleFontDesciptions:v27];
    fontAttributeConstructor = [(SXTextSource *)self fontAttributeConstructor];
    v30 = [fontAttributeConstructor fontAttributesForFontDescriptions:v28];

    v31 = [(SXTextSource *)self fontFaceForTextStyleFontDescription:v23 defaultTextStyleFontDescription:v25 fontAttributes:v30 fontSize:[(SXTextSource *)self fontSizeForTextStyle:v23]];
    string3 = [(SXTextSource *)self string];
    v182 = 0;
    v33 = -[SXTextSource attributesForTextStyle:onParagraphStyle:forRange:resultingDropCapStyle:textResizer:fontFace:](self, "attributesForTextStyle:onParagraphStyle:forRange:resultingDropCapStyle:textResizer:fontFace:", v21, v16, 0, [string3 length], &v182, v161, v31);
    v144 = v182;

    [(SXTextStyleAttributesMap *)v162 addAttributes:v33];
    string4 = [(SXTextSource *)self string];
    -[SXTextSource transform:forTextStyle:range:](self, "transform:forTextStyle:range:", v159, v21, 0, [string4 length]);
  }

  else
  {
    v144 = 0;
  }

  v158 = v21;
  linkStyle = [v21 linkStyle];
  if (linkStyle)
  {
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    dataSource6 = [(SXTextSource *)self dataSource];
    v36 = [dataSource6 additionsForTextSource:self];

    v152 = [v36 countByEnumeratingWithState:&v178 objects:v184 count:16];
    if (v152)
    {
      v147 = *v179;
      do
      {
        for (i = 0; i != v152; ++i)
        {
          if (*v179 != v147)
          {
            objc_enumerationMutation(v36);
          }

          range = [*(*(&v178 + 1) + 8 * i) range];
          v40 = [(SXTextSource *)self rangeForRange:range, v39];
          v42 = v41;
          string5 = [(SXTextSource *)self string];
          v44 = -[SXTextSource rangeInBounds:maxLength:](self, "rangeInBounds:maxLength:", v40, v42, [string5 length]);
          v46 = v45;

          linkStyle2 = [v151 linkStyle];
          v48 = [v157 arrayByAddingObject:v158];
          v49 = [(SXTextSource *)self fontDescriptionsForTextStyleFontDescription:linkStyle2 defaultTextStyleFontDesciptions:v48];

          fontAttributeConstructor2 = [(SXTextSource *)self fontAttributeConstructor];
          v51 = [fontAttributeConstructor2 fontAttributesForFontDescriptions:v49];

          linkStyle3 = [v151 linkStyle];
          v53 = [(SXTextSource *)self fontSizeForTextStyle:linkStyle3];

          linkStyle4 = [v151 linkStyle];
          v55 = [(SXTextSource *)self fontFaceForTextStyleFontDescription:linkStyle4 defaultTextStyleFontDescription:v158 fontAttributes:v51 fontSize:v53];

          v56 = [(SXTextSource *)self attributesForTextStyle:linkStyle onParagraphStyle:v155 forRange:v44 resultingDropCapStyle:v46 textResizer:0 fontFace:v161, v55];
          [(SXTextStyleAttributesMap *)v162 addAttributes:v56];
          [(SXTextSource *)self transform:v159 forTextStyle:linkStyle range:v44, v46];
        }

        v152 = [v36 countByEnumeratingWithState:&v178 objects:v184 count:16];
      }

      while (v152);
    }
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  selfCopy2 = self;
  dataSource7 = [(SXTextSource *)self dataSource];
  v59 = [dataSource7 inlineTextStylesForTextSource:self];

  v148 = v59;
  v60 = [v59 countByEnumeratingWithState:&v174 objects:v183 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v175;
    v63 = v144;
    do
    {
      v64 = 0;
      obj = v61;
      do
      {
        if (*v175 != v62)
        {
          objc_enumerationMutation(v148);
        }

        v65 = *(*(&v174 + 1) + 8 * v64);
        range2 = [v65 range];
        v68 = [(SXTextSource *)selfCopy2 rangeForRange:range2, v67];
        v70 = v69;
        string6 = [(SXTextSource *)selfCopy2 string];
        v72 = [string6 length];

        if (v68 < v72)
        {
          string7 = [(SXTextSource *)selfCopy2 string];
          v74 = -[SXTextSource rangeInBounds:maxLength:](selfCopy2, "rangeInBounds:maxLength:", v68, v70, [string7 length]);
          v76 = v75;

          textStyle = [v65 textStyle];
          dataSource8 = [(SXTextSource *)selfCopy2 dataSource];
          v78 = [dataSource8 textStyleForIdentifier:textStyle];

          v79 = [(SXTextSource *)selfCopy2 fontDescriptionsForTextStyleFontDescription:v78 defaultTextStyleFontDesciptions:v157];
          fontAttributeConstructor3 = [(SXTextSource *)selfCopy2 fontAttributeConstructor];
          v81 = [fontAttributeConstructor3 fontAttributesForFontDescriptions:v79];

          v82 = [(SXTextSource *)selfCopy fontFaceForTextStyleFontDescription:v78 defaultTextStyleFontDescription:v158 fontAttributes:v81 fontSize:[(SXTextSource *)selfCopy fontSizeForTextStyle:v78]];
          v173 = v63;
          [(SXTextSource *)selfCopy attributesForTextStyle:v78 onParagraphStyle:v155 forRange:v74 resultingDropCapStyle:v76 textResizer:&v173 fontFace:v161, v82];
          v84 = v83 = v62;
          v85 = v173;
          v86 = v63;
          v63 = v85;

          [(SXTextStyleAttributesMap *)v162 addAttributes:v84];
          [(SXTextSource *)selfCopy transform:v159 forTextStyle:v78 range:v74, v76];

          v62 = v83;
          selfCopy2 = selfCopy;

          v61 = obj;
        }

        ++v64;
      }

      while (v61 != v64);
      v61 = [v148 countByEnumeratingWithState:&v174 objects:v183 count:16];
    }

    while (v61);
  }

  else
  {
    v63 = v144;
  }

  v145 = v63;

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  rangesExcludedOfParagraphSpacing = [(SXTextSource *)selfCopy2 rangesExcludedOfParagraphSpacing];
  v170[0] = MEMORY[0x1E69E9820];
  v170[1] = 3221225472;
  v170[2] = __49__SXTextSource_applyStylingOnTextTangierStorage___block_invoke;
  v170[3] = &unk_1E8502268;
  v89 = v159;
  v171 = v89;
  v90 = indexSet;
  v172 = v90;
  [rangesExcludedOfParagraphSpacing enumerateRangesUsingBlock:v170];

  v167[0] = MEMORY[0x1E69E9820];
  v167[1] = 3221225472;
  v167[2] = __49__SXTextSource_applyStylingOnTextTangierStorage___block_invoke_2;
  v167[3] = &unk_1E85022E0;
  v91 = v155;
  v168 = v91;
  v92 = v89;
  v169 = v92;
  [v90 enumerateIndexesUsingBlock:v167];
  [(SXTextSource *)selfCopy2 applyListStylingOnTextTangierStorage:v92 usingAttributesMap:v162];
  attributedString = [(SXTextStyleAttributesMap *)v162 attributedString];
  v94 = [attributedString length];
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = __49__SXTextSource_applyStylingOnTextTangierStorage___block_invoke_3;
  v165[3] = &unk_1E8502308;
  v165[4] = selfCopy2;
  v95 = v92;
  v166 = v95;
  v96 = v94;
  v97 = v145;
  [attributedString enumerateAttributesInRange:0 options:v96 usingBlock:{0, v165}];
  v98 = [v95 paragraphStyleAtParIndex:0 effectiveRange:0];
  if (!v145)
  {
    v101 = v141;
    v99 = v158;
    goto LABEL_75;
  }

  v99 = v158;
  if ([v145 numberOfCharacters] == 0x7FFFFFFFFFFFFFFFLL)
  {
    numberOfCharacters = 1;
  }

  else
  {
    numberOfCharacters = [v145 numberOfCharacters];
  }

  string8 = [(SXTextSource *)selfCopy string];
  v103 = [string8 length];

  if (numberOfCharacters > v103)
  {
    string9 = [(SXTextSource *)selfCopy string];
    numberOfCharacters = [string9 length];
  }

  v105 = 10;
  if (numberOfCharacters < 10)
  {
    v105 = numberOfCharacters;
  }

  v97 = v145;
  if (numberOfCharacters < 1)
  {
    v101 = v141;
    goto LABEL_75;
  }

  v156 = v105;
  v160 = v90;
  propertyMap = [MEMORY[0x1E69D56A8] propertyMap];
  backgroundColor = [v145 backgroundColor];

  if (backgroundColor)
  {
    v108 = MEMORY[0x1E69D5770];
    backgroundColor2 = [v145 backgroundColor];
    v110 = [v108 colorWithUIColor:backgroundColor2];
    [propertyMap setObject:v110 forProperty:38];

    v97 = v145;
  }

  textColor = [v97 textColor];

  if (textColor)
  {
    v112 = MEMORY[0x1E69D5770];
    textColor2 = [v97 textColor];
    v114 = [v112 colorWithUIColor:textColor2];
    [propertyMap setObject:v114 forProperty:18];

    v97 = v145;
  }

  v115 = selfCopy;
  [(SXTextSource *)selfCopy fontDescriptionsForTextStyleFontDescription:v97 defaultTextStyleFontDesciptions:v157];
  v117 = v116 = propertyMap;
  fontAttributeConstructor4 = [(SXTextSource *)selfCopy fontAttributeConstructor];
  v154 = v117;
  v119 = [fontAttributeConstructor4 fontAttributesForFontDescriptions:v117];

  v120 = [(SXTextSource *)selfCopy fontSizeForTextStyle:v158];
  v164 = v119;
  v121 = v116;
  v122 = [(SXTextSource *)v115 fontFaceForTextStyleFontDescription:v97 defaultTextStyleFontDescription:v143 fontAttributes:v119 fontSize:v120];
  fontDescriptorAttributes = [v122 fontDescriptorAttributes];

  if (fontDescriptorAttributes)
  {
    fontAttributes = [v122 fontAttributes];
    weight = [fontAttributes weight];
    if (weight <= 499)
    {
      if (weight > 299)
      {
        if (weight == 300)
        {
          v126 = MEMORY[0x1E69DB968];
          goto LABEL_63;
        }
      }

      else
      {
        if (weight == 100)
        {
          v126 = MEMORY[0x1E69DB988];
          goto LABEL_63;
        }

        if (weight == 200)
        {
          v126 = MEMORY[0x1E69DB998];
          goto LABEL_63;
        }
      }
    }

    else if (weight <= 699)
    {
      if (weight == 500)
      {
        v126 = MEMORY[0x1E69DB970];
        goto LABEL_63;
      }

      if (weight == 600)
      {
        v126 = MEMORY[0x1E69DB980];
        goto LABEL_63;
      }
    }

    else
    {
      switch(weight)
      {
        case 700:
          v126 = MEMORY[0x1E69DB958];
          goto LABEL_63;
        case 800:
          v126 = MEMORY[0x1E69DB960];
          goto LABEL_63;
        case 900:
          v126 = MEMORY[0x1E69DB950];
LABEL_63:
          v127 = *v126;
          *&v127 = *v126;
          [v121 setFloatValue:50 forProperty:v127];

          fontAttributes2 = [v122 fontAttributes];
          [v121 setBoolValue:(objc_msgSend(fontAttributes2 forProperty:{"style") - 1) < 2, 20}];

          fontDescriptorAttributes2 = [v122 fontDescriptorAttributes];
          [v121 setBoxedObject:fontDescriptorAttributes2 forProperty:53];

          goto LABEL_64;
      }
    }

    v126 = MEMORY[0x1E69DB978];
    goto LABEL_63;
  }

LABEL_64:
  v130 = -[SXTextResizer resizeDropCapNumberOfLines:](v161, [v97 numberOfLines]);
  v131 = v130 / [v97 numberOfLines];
  if ([v97 numberOfRaisedLines] == 0x7FFFFFFFFFFFFFFFLL || (v132 = (v131 * objc_msgSend(v97, "numberOfRaisedLines"))) == 0)
  {
    v132 = [v97 numberOfRaisedLines] >= 1 && objc_msgSend(v97, "numberOfRaisedLines") != 0x7FFFFFFFFFFFFFFFLL;
  }

  v149 = attributedString;
  if (v132 >= v130)
  {
    v133 = v130 - 1;
  }

  else
  {
    v133 = v132;
  }

  v134 = [MEMORY[0x1E69D56D0] dropCapSpacingWithLineCount:v130 elevatedLineCount:v133];
  padding = [v97 padding];
  v136 = 0.0;
  if (padding != 0x7FFFFFFFFFFFFFFFLL)
  {
    v136 = v131 * [v97 padding];
  }

  [v134 setPadding:v136];
  v137 = [MEMORY[0x1E69D56C8] dropCapWithCharCount:v156 characterStyleOverridePropertyMap:v121 spacing:v134];
  stylesheet = [v95 stylesheet];
  v139 = [MEMORY[0x1E69D56A8] propertyMapWithPropertiesAndValues:{109, v137, 0}];
  v140 = [stylesheet variationOfStyle:v91 propertyMap:v139];

  v97 = v145;
  v98 = v140;
  v101 = v141;
  v99 = v158;
  v90 = v160;
  attributedString = v149;
LABEL_75:
  if (v98)
  {
    [v95 setParagraphStyle:v98 atParIndex:0 undoTransaction:0];
  }
}

uint64_t __49__SXTextSource_applyStylingOnTextTangierStorage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) paragraphIndexRangeForCharRange:{a2, a3}];
  v6 = *(a1 + 40);

  return [v6 addIndexesInRange:{v5, v4}];
}

void __49__SXTextSource_applyStylingOnTextTangierStorage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) copy];
  [*(a1 + 40) setParagraphStyle:v4 atParIndex:a2 undoTransaction:0];
}

void __49__SXTextSource_applyStylingOnTextTangierStorage___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a2;
  v10 = [v8 context];
  v11 = [v7 characterStyleFromAttributes:v9 context:v10];

  [*(a1 + 40) setCharacterStyle:v11 range:a3 undoTransaction:{a4, 0}];
}

- (void)applyAdditionsOnTextTangierStorage:(id)storage
{
  v33 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  dataSource = [(SXTextSource *)self dataSource];
  selfCopy = self;
  v6 = [dataSource additionsForTextSource:self];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = objc_opt_class();
        if (v12 != objc_opt_class() && [v11 range] != 0x7FFFFFFFFFFFFFFFLL)
        {
          range = [v11 range];
          v15 = [(SXTextSource *)selfCopy rangeForRange:range, v14];
          v17 = v16;
          string = [(SXTextSource *)selfCopy string];
          v19 = -[SXTextSource rangeInBounds:maxLength:](selfCopy, "rangeInBounds:maxLength:", v15, v17, [string length]);
          v21 = v20;

          smartFieldFactory = [(SXTextSource *)selfCopy smartFieldFactory];
          [storageCopy context];
          v24 = v23 = storageCopy;
          v25 = [smartFieldFactory smartFieldForAddition:v11 withContext:v24];

          storageCopy = v23;
          if (v25)
          {
            [v23 addSmartField:v25 toRange:v19 dolcContext:v21 undoTransaction:{0, 0}];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }
}

- (void)applyListStylingOnTextTangierStorage:(id)storage usingAttributesMap:(id)map
{
  v142 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  mapCopy = map;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  dataSource = [(SXTextSource *)self dataSource];
  v8 = [dataSource inlineTextStylesForTextSource:self];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v134 objects:v141 count:16];
  if (v9)
  {
    v10 = v9;
    v100 = *v135;
    v118 = storageCopy;
    selfCopy = self;
    do
    {
      v11 = 0;
      v96 = v10;
      do
      {
        if (*v135 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v105 = v11;
        v12 = *(*(&v134 + 1) + 8 * v11);
        range = [v12 range];
        v15 = [(SXTextSource *)self rangeForRange:range, v14];
        v17 = v16;
        string = [(SXTextSource *)self string];
        v19 = -[SXTextSource rangeInBounds:maxLength:](self, "rangeInBounds:maxLength:", v15, v17, [string length]);
        v21 = v20;

        v102 = v21;
        v103 = v19;
        v22 = [storageCopy paragraphIndexRangeForCharRange:{v19, v21}];
        v24 = v23;
        textStyle = [v12 textStyle];
        dataSource2 = [(SXTextSource *)self dataSource];
        v104 = textStyle;
        v27 = [dataSource2 textStyleForIdentifier:textStyle];

        listStyle = [v27 listStyle];
        if (listStyle)
        {
          v29 = listStyle;
          listStyle2 = [v27 listStyle];
          v31 = [listStyle2 count];

          if (v31)
          {
            v32 = MEMORY[0x1E69D5710];
            context = [storageCopy context];
            v98 = [v32 defaultStyleWithContext:context];

            array = [MEMORY[0x1E695DF70] array];
            v109 = [(SXTextSource *)self populateArray:array withValue:&unk_1F538A4F0 forSize:9];

            array2 = [MEMORY[0x1E695DF70] array];
            v110 = [(SXTextSource *)self populateArray:array2 withValue:&stru_1F532F6C0 forSize:9];

            array3 = [MEMORY[0x1E695DF70] array];
            v108 = [(SXTextSource *)self populateArray:array3 withValue:&unk_1F538A4F0 forSize:9];

            array4 = [MEMORY[0x1E695DF70] array];
            v101 = [(SXTextSource *)self populateArray:array4 withValue:&unk_1F538A508 forSize:9];

            v38 = [storageCopy paragraphIndexAtCharIndex:v103];
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            listStyle3 = [v27 listStyle];
            v99 = v27;
            v112 = [listStyle3 countByEnumeratingWithState:&v130 objects:v140 count:16];
            if (!v112)
            {
              goto LABEL_44;
            }

            v111 = *v131;
            while (1)
            {
              for (i = 0; i != v112; ++i)
              {
                if (*v131 != v111)
                {
                  objc_enumerationMutation(listStyle3);
                }

                v40 = *(*(&v130 + 1) + 8 * i);
                v114 = -[SXTextSource listLabelTypeForListType:](self, "listLabelTypeForListType:", [v40 style]);
                v41 = -[SXTextSource listNumberTypeForListType:](self, "listNumberTypeForListType:", [v40 style]);
                v115 = @"  ";
                if ([v40 style] != 1)
                {
                  if ([v40 style] == 2)
                  {
                    8226 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 8226];
                  }

                  else
                  {
                    v115 = &stru_1F532F6C0;
                    if ([v40 style] != 8)
                    {
                      goto LABEL_19;
                    }

                    8226 = [v40 character];
                  }

                  v115 = 8226;
                }

LABEL_19:
                if ([v40 depth] && objc_msgSend(v40, "depth") != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v40, "indices"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "count"), v43, v44))
                {
                  indices = [v40 indices];
                  v46 = [indices count];

                  if (!v46)
                  {
                    goto LABEL_42;
                  }

                  v113 = i;
                  if ([v40 style] == 1)
                  {
                    v47 = MEMORY[0x1E69D5710];
                    context2 = [storageCopy context];
                    v49 = [v47 defaultStyleWithContext:context2];

                    array5 = [MEMORY[0x1E695DF70] array];
                    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v41];
                    v52 = [(SXTextSource *)self populateArray:array5 withValue:v51 forSize:9];
                    [v49 setValue:v52 forProperty:184];

                    array6 = [MEMORY[0x1E695DF70] array];
                    v54 = [(SXTextSource *)self populateArray:array6 withValue:v115 forSize:9];
                    [v49 setValue:v54 forProperty:183];

                    array7 = [MEMORY[0x1E695DF70] array];
                    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v114];
                    v57 = [(SXTextSource *)self populateArray:array7 withValue:v56 forSize:9];
                    [v49 setValue:v57 forProperty:180];

                    array8 = [MEMORY[0x1E695DF70] array];
                    v59 = [(SXTextSource *)self populateArray:array8 withValue:&unk_1F538A508 forSize:9];
                    [v49 setValue:v59 forProperty:176];
                  }

                  else
                  {
                    depth = [v40 depth];
                    v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v114];
                    [v109 replaceObjectAtIndex:depth withObject:v65];

                    [v110 replaceObjectAtIndex:objc_msgSend(v40 withObject:{"depth"), v115}];
                    depth2 = [v40 depth];
                    array8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v41];
                    [v108 replaceObjectAtIndex:depth2 withObject:array8];
                    v49 = 0;
                  }

                  v128 = 0u;
                  v129 = 0u;
                  v126 = 0u;
                  v127 = 0u;
                  indices2 = [v40 indices];
                  v68 = [indices2 countByEnumeratingWithState:&v126 objects:v139 count:16];
                  if (v68)
                  {
                    v69 = v68;
                    v70 = *v127;
                    do
                    {
                      for (j = 0; j != v69; ++j)
                      {
                        if (*v127 != v70)
                        {
                          objc_enumerationMutation(indices2);
                        }

                        v72 = [*(*(&v126 + 1) + 8 * j) integerValue] + v38;
                        if (v72 >= v22 && v72 - v22 < v24)
                        {
                          [v118 setParagraphLevel:objc_msgSend(v40 atParIndex:"depth") undoTransaction:{v72, 0}];
                          if (v49)
                          {
                            v74 = [MEMORY[0x1E696AD98] numberWithInteger:v72];
                            [dictionary setObject:v49 forKey:v74];
                          }
                        }
                      }

                      v69 = [indices2 countByEnumeratingWithState:&v126 objects:v139 count:16];
                    }

                    while (v69);
                  }

                  storageCopy = v118;
                  self = selfCopy;
                }

                else
                {
                  v113 = i;
                  v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v114];
                  v61 = [(SXTextSource *)self populateArray:v109 withValue:v60 forSize:9];

                  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v41];
                  v63 = [(SXTextSource *)self populateArray:v108 withValue:v62 forSize:9];

                  v49 = v110;
                  [(SXTextSource *)self populateArray:v110 withValue:v115 forSize:9];
                  v108 = v63;
                  v110 = v109 = v61;
                }

                i = v113;
LABEL_42:
              }

              v112 = [listStyle3 countByEnumeratingWithState:&v130 objects:v140 count:16];
              if (!v112)
              {
LABEL_44:

                [v98 setValue:v108 forProperty:184];
                [v98 setValue:v110 forProperty:183];
                [v98 setValue:v109 forProperty:180];
                [v98 setValue:v101 forProperty:176];
                v75 = [mapCopy attributesMapWithAttributesForRange:{v103, v102}];
                v125[0] = 0;
                v125[1] = 0;
                v116 = v75;
                attributedString = [v75 attributedString];
                v77 = [attributedString attributesAtIndex:v103 effectiveRange:v125];

                v123[0] = MEMORY[0x1E69E9820];
                v123[1] = 3221225472;
                v123[2] = __72__SXTextSource_applyListStylingOnTextTangierStorage_usingAttributesMap___block_invoke;
                v123[3] = &unk_1E8502330;
                v78 = v98;
                v124 = v78;
                [v77 enumerateKeysAndObjectsUsingBlock:v123];
                [storageCopy setListStyle:v78 forCharRange:v103 undoTransaction:{v102, 0}];
                v79 = v22 + 1;
                if (v22 + 1 < v22 + v24)
                {
                  v80 = v24 - 1;
                  do
                  {
                    v81 = [storageCopy paragraphStyleAtParIndex:v79 effectiveRange:0];
                    context3 = [v81 context];
                    v83 = [v81 copyWithContext:context3];

                    [v83 setFloatValue:87 forProperty:0.0];
                    [v118 setParagraphStyle:v83 atParIndex:v79 undoTransaction:0];

                    storageCopy = v118;
                    ++v79;
                    --v80;
                  }

                  while (v80);
                }

                if (v22 < v22 + v24 - 1)
                {
                  v84 = v24 - 1;
                  do
                  {
                    v85 = [storageCopy paragraphStyleAtParIndex:v22 effectiveRange:0];
                    context4 = [v85 context];
                    v87 = [v85 copyWithContext:context4];

                    [v87 setFloatValue:88 forProperty:0.0];
                    [storageCopy setParagraphStyle:v87 atParIndex:v22 undoTransaction:0];

                    ++v22;
                    --v84;
                  }

                  while (v84);
                }

                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v88 = dictionary;
                v89 = [v88 countByEnumeratingWithState:&v119 objects:v138 count:16];
                v27 = v99;
                if (v89)
                {
                  v90 = v89;
                  v91 = *v120;
                  do
                  {
                    for (k = 0; k != v90; ++k)
                    {
                      if (*v120 != v91)
                      {
                        objc_enumerationMutation(v88);
                      }

                      v93 = *(*(&v119 + 1) + 8 * k);
                      v94 = [v88 objectForKey:v93];
                      [storageCopy setListStyle:v94 atParIndex:objc_msgSend(v93 undoTransaction:{"intValue"), 0}];
                    }

                    v90 = [v88 countByEnumeratingWithState:&v119 objects:v138 count:16];
                  }

                  while (v90);
                }

                self = selfCopy;
                v10 = v96;
                break;
              }
            }
          }
        }

        v11 = v105 + 1;
      }

      while (v105 + 1 != v10);
      v10 = [obj countByEnumeratingWithState:&v134 objects:v141 count:16];
    }

    while (v10);
  }
}

void __72__SXTextSource_applyListStylingOnTextTangierStorage_usingAttributesMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E69D5710] properties];
  v7 = [v6 containsProperty:{+[SXCharacterStyle propertyFromString:](SXCharacterStyle, "propertyFromString:", v8)}];

  if (v7)
  {
    [*(a1 + 32) setValue:v5 forProperty:{+[SXCharacterStyle propertyFromString:](SXCharacterStyle, "propertyFromString:", v8)}];
  }
}

- (id)populateArray:(id)array withValue:(id)value forSize:(unint64_t)size
{
  arrayCopy = array;
  valueCopy = value;
  if (size)
  {
    v9 = 0;
    do
    {
      if ([arrayCopy count] <= v9)
      {
        [arrayCopy addObject:valueCopy];
      }

      else
      {
        [arrayCopy replaceObjectAtIndex:v9 withObject:valueCopy];
      }

      ++v9;
    }

    while (size != v9);
  }

  return arrayCopy;
}

- (int)listLabelTypeForListType:(unint64_t)type
{
  if (type <= 8 && ((1 << type) & 0x106) != 0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (int)listNumberTypeForListType:(unint64_t)type
{
  if (type - 4 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1D83924B0[type - 4];
  }
}

- (id)characterStyleFromAttributes:(id)attributes context:(id)context
{
  contextCopy = context;
  attributesCopy = attributes;
  v7 = [(TSSStyle *)[SXCharacterStyle alloc] initWithContext:contextCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__SXTextSource_characterStyleFromAttributes_context___block_invoke;
  v10[3] = &unk_1E8502330;
  v8 = v7;
  v11 = v8;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:v10];

  return v8;
}

void __53__SXTextSource_characterStyleFromAttributes_context___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = [SXCharacterStyle propertyFromString:a2];
  v6 = [SXCharacterStyle typeOfProperty:v5];
  if (v6 <= 1)
  {
    if (v6)
    {
      v7 = v6 == 1;
      v8 = v11;
      if (!v7)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) setIntValue:objc_msgSend(v11 forProperty:{"intValue"), v5}];
    }

    else
    {
      [*(a1 + 32) setValue:v11 forProperty:v5];
    }

LABEL_12:
    v8 = v11;
    goto LABEL_13;
  }

  if (v6 == 3)
  {
    v10 = *(a1 + 32);
    [v11 doubleValue];
    [v10 setDoubleValue:v5 forProperty:?];
    goto LABEL_12;
  }

  v7 = v6 == 2;
  v8 = v11;
  if (v7)
  {
    v9 = *(a1 + 32);
    [v11 floatValue];
    [v9 setFloatValue:v5 forProperty:?];
    goto LABEL_12;
  }

LABEL_13:
}

- (id)attributesForTextStyle:(id)style onParagraphStyle:(id)paragraphStyle forRange:(_NSRange)range resultingDropCapStyle:(id *)capStyle textResizer:(id)resizer fontFace:(id)face
{
  length = range.length;
  location = range.location;
  styleCopy = style;
  paragraphStyleCopy = paragraphStyle;
  faceCopy = face;
  v16 = [SXTextStyleAttributes attributesWithRange:location, length];
  v17 = [(SXTextSource *)self fontSizeForTextStyle:styleCopy];
  v18 = [(SXTextSource *)self scaledFontSizeForFontSize:v17];
  objc_opt_class();
  v131 = faceCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_41;
  }

  capStyleCopy = capStyle;
  v19 = styleCopy;
  dataSource = [(SXTextSource *)self dataSource];
  v21 = [dataSource textRulesForTextSource:self];
  if ([v21 shouldHyphenate] && !objc_msgSend(v19, "hyphenation"))
  {
  }

  else
  {
    hyphenation = [v19 hyphenation];

    if (hyphenation != 1)
    {
      v23 = 0;
      goto LABEL_8;
    }
  }

  v23 = 1;
LABEL_8:
  faceCopy = v131;
  [paragraphStyleCopy setIntValue:v23 forProperty:{93, capStyleCopy}];
  [paragraphStyleCopy setIntValue:objc_msgSend(v19 forProperty:{"hyphenationMinimumCharactersBefore"), String()}];
  [paragraphStyleCopy setIntValue:objc_msgSend(v19 forProperty:{"hyphenationMinimumCharactersAfter"), String()}];
  [paragraphStyleCopy setIntValue:objc_msgSend(v19 forProperty:{"hyphenationMinimumWordLength"), String()}];
  [v19 hyphenationZone];
  v25 = v24;
  v26 = String();
  *&v27 = v25;
  [paragraphStyleCopy setFloatValue:v26 forProperty:v27];
  [v19 relativeLineHeight];
  v29 = v28;
  exactLineHeight = [v19 exactLineHeight];
  if ([v19 lineHeight] != 0x7FFFFFFFFFFFFFFFLL)
  {
    lineHeight = [v19 lineHeight];
LABEL_13:
    v32 = lineHeight;
    v33 = v18 / v17;
    goto LABEL_14;
  }

  if (v29 == 1.79769313e308 || exactLineHeight != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (exactLineHeight == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = 1.79769313e308;
      goto LABEL_15;
    }

    lineHeight = [v19 exactLineHeight];
    goto LABEL_13;
  }

  [v19 relativeLineHeight];
  v32 = (v31 + -1.0) * v17 + v17 * 1.25;
  v33 = v18 / v17;
LABEL_14:
  v35 = v33 * v32;
LABEL_15:
  v36 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
  [paragraphStyleCopy setValue:v36 forProperty:17];

  v37 = 1.79769313e308;
  if (v35 != 1.79769313e308)
  {
    if (v35 >= 1.0)
    {
      v37 = v35;
    }

    else
    {
      v37 = 1.0;
    }

    v38 = [objc_alloc(MEMORY[0x1E69D5708]) initWithMode:2 amount:v37];
    [paragraphStyleCopy setValue:v38 forProperty:85];
  }

  if ([v19 textAlignment])
  {
    [paragraphStyleCopy setIntValue:-[SXTextSource paragraphAlignmentForTextAlignment:](self forProperty:{"paragraphAlignmentForTextAlignment:", objc_msgSend(v19, "textAlignment")), 86}];
  }

  if ([v19 paragraphSpacingBefore] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = v18 / v17 * [v19 paragraphSpacingBefore];
    *&v39 = v39;
    [paragraphStyleCopy setFloatValue:87 forProperty:v39];
  }

  if ([v19 paragraphSpacingAfter] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = v18 / v17 * [v19 paragraphSpacingAfter];
    *&v40 = v40;
    [paragraphStyleCopy setFloatValue:88 forProperty:v40];
  }

  if ([v19 paragraphSpacingBefore] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v19, "paragraphSpacingAfter") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = v18 * 1.25;
    if (v37 != 1.79769313e308)
    {
      v41 = v37;
    }

    *&v41 = v41;
    [paragraphStyleCopy setFloatValue:88 forProperty:v41];
  }

  dropCapStyle = [v19 dropCapStyle];

  if (v130 && dropCapStyle)
  {
    *v130 = [v19 dropCapStyle];
  }

  if ([v19 firstLineIndent] != 0x7FFFFFFFFFFFFFFFLL)
  {
    *&v43 = [v19 firstLineIndent];
    [paragraphStyleCopy setFloatValue:80 forProperty:v43];
  }

  if ([v19 hangingPunctuation])
  {
    [paragraphStyleCopy setIntValue:1 forProperty:110];
  }

  if ([v19 lineBalancing])
  {
    [paragraphStyleCopy setIntValue:1 forProperty:51];
  }

LABEL_41:
  fontDescriptorAttributes = [faceCopy fontDescriptorAttributes];

  if (fontDescriptorAttributes)
  {
    v45 = [SXCharacterStyle stringFromProperty:50];
    v46 = MEMORY[0x1E696AD98];
    fontAttributes = [faceCopy fontAttributes];
    weight = [fontAttributes weight];
    if (weight <= 499)
    {
      if (weight > 299)
      {
        if (weight == 300)
        {
          v49 = MEMORY[0x1E69DB968];
          goto LABEL_65;
        }
      }

      else
      {
        if (weight == 100)
        {
          v49 = MEMORY[0x1E69DB988];
          goto LABEL_65;
        }

        if (weight == 200)
        {
          v49 = MEMORY[0x1E69DB998];
          goto LABEL_65;
        }
      }
    }

    else if (weight <= 699)
    {
      if (weight == 500)
      {
        v49 = MEMORY[0x1E69DB970];
        goto LABEL_65;
      }

      if (weight == 600)
      {
        v49 = MEMORY[0x1E69DB980];
        goto LABEL_65;
      }
    }

    else
    {
      switch(weight)
      {
        case 700:
          v49 = MEMORY[0x1E69DB958];
          goto LABEL_65;
        case 800:
          v49 = MEMORY[0x1E69DB960];
          goto LABEL_65;
        case 900:
          v49 = MEMORY[0x1E69DB950];
LABEL_65:
          v50 = [v46 numberWithDouble:*v49];
          [v16 addAttribute:v45 value:v50];

          v51 = [SXCharacterStyle stringFromProperty:20];
          v52 = MEMORY[0x1E696AD98];
          fontAttributes2 = [faceCopy fontAttributes];
          v54 = [v52 numberWithBool:{(objc_msgSend(fontAttributes2, "style") - 1) < 2}];
          [v16 addAttribute:v51 value:v54];

          v55 = [SXCharacterStyle stringFromProperty:53];
          fontDescriptorAttributes2 = [faceCopy fontDescriptorAttributes];
          [v16 addAttribute:v55 value:fontDescriptorAttributes2];

          goto LABEL_66;
      }
    }

    v49 = MEMORY[0x1E69DB978];
    goto LABEL_65;
  }

LABEL_66:
  if (v18 && v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v57 = [SXCharacterStyle stringFromProperty:17];
    v58 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
    [v16 addAttribute:v57 value:v58];
  }

  textColor = [styleCopy textColor];

  if (textColor)
  {
    v60 = [SXCharacterStyle stringFromProperty:18];
    v61 = MEMORY[0x1E69D5770];
    textColor2 = [styleCopy textColor];
    v63 = [v61 colorWithUIColor:textColor2];
    [v16 addAttribute:v60 value:v63];
  }

  backgroundColor = [styleCopy backgroundColor];

  if (backgroundColor)
  {
    v65 = [SXCharacterStyle stringFromProperty:37];
    v66 = MEMORY[0x1E69D5770];
    backgroundColor2 = [styleCopy backgroundColor];
    v68 = [v66 colorWithUIColor:backgroundColor2];
    [v16 addAttribute:v65 value:v68];
  }

  if ([styleCopy textTransform] == 4)
  {
    v69 = [SXCharacterStyle stringFromProperty:48];
    [v16 addAttribute:v69 value:&unk_1F538A520];

    v70 = [SXCharacterStyle stringFromProperty:21];
    [v16 addAttribute:v70 value:&unk_1F538A508];
  }

  [styleCopy tracking];
  if (v71 != 1.79769313e308)
  {
    v72 = [SXCharacterStyle stringFromProperty:35];
    v73 = MEMORY[0x1E696AD98];
    [styleCopy tracking];
    v74 = [v73 numberWithDouble:?];
    [v16 addAttribute:v72 value:v74];

    [styleCopy tracking];
    if (v75 != 0.0)
    {
      v76 = [SXCharacterStyle stringFromProperty:41];
      [v16 addAttribute:v76 value:&unk_1F538A4F0];
    }
  }

  if ([styleCopy verticalAlignment])
  {
    verticalAlignment = [styleCopy verticalAlignment];
    if (verticalAlignment == 3)
    {
      v78 = 2;
    }

    else
    {
      v78 = verticalAlignment == 2;
    }

    v79 = [SXCharacterStyle stringFromProperty:36];
    v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v78];
    [v16 addAttribute:v79 value:v80];
  }

  textShadow = [styleCopy textShadow];

  if (textShadow)
  {
    textShadow2 = [styleCopy textShadow];
    tSDShadow = [textShadow2 TSDShadow];

    v84 = [SXCharacterStyle stringFromProperty:40];
    [v16 addAttribute:v84 value:tSDShadow];
  }

  strikethrough = [styleCopy strikethrough];

  if (strikethrough)
  {
    v86 = [SXCharacterStyle stringFromProperty:26];
    [v16 addAttribute:v86 value:&unk_1F538A520];

    strikethrough2 = [styleCopy strikethrough];
    color = [strikethrough2 color];

    if (color)
    {
      v89 = [SXCharacterStyle stringFromProperty:28];
      v90 = MEMORY[0x1E69D5770];
      strikethrough3 = [styleCopy strikethrough];
      color2 = [strikethrough3 color];
      v93 = [v90 colorWithUIColor:color2];
      [v16 addAttribute:v89 value:v93];
    }

    strikethrough4 = [styleCopy strikethrough];
    width = [strikethrough4 width];

    if (width == 0x7FFFFFFFFFFFFFFFLL)
    {
      v96 = 1;
    }

    else
    {
      v96 = width;
    }

    v97 = [SXCharacterStyle stringFromProperty:27];
    v98 = [MEMORY[0x1E696AD98] numberWithInteger:v96];
    [v16 addAttribute:v97 value:v98];
  }

  underline = [styleCopy underline];

  if (underline)
  {
    v100 = [SXCharacterStyle stringFromProperty:22];
    [v16 addAttribute:v100 value:&unk_1F538A520];

    underline2 = [styleCopy underline];
    color3 = [underline2 color];

    if (color3)
    {
      v103 = [SXCharacterStyle stringFromProperty:24];
      v104 = MEMORY[0x1E69D5770];
      underline3 = [styleCopy underline];
      color4 = [underline3 color];
      v107 = [v104 colorWithUIColor:color4];
      [v16 addAttribute:v103 value:v107];
    }

    underline4 = [styleCopy underline];
    width2 = [underline4 width];

    if (width2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v110 = 1;
    }

    else
    {
      v110 = width2;
    }

    v111 = [SXCharacterStyle stringFromProperty:23];
    v112 = [MEMORY[0x1E696AD98] numberWithInteger:v110];
    [v16 addAttribute:v111 value:v112];
  }

  stroke = [styleCopy stroke];

  if (stroke)
  {
    stroke2 = [styleCopy stroke];
    [stroke2 width];
    if (v115 == 9.22337204e18)
    {
      v118 = 1;
    }

    else
    {
      stroke3 = [styleCopy stroke];
      [stroke3 width];
      v118 = v117;
    }

    stroke4 = [styleCopy stroke];
    color5 = [stroke4 color];
    if (color5)
    {
      stroke5 = [styleCopy stroke];
      color6 = [stroke5 color];
    }

    else
    {
      color6 = 0;
    }

    v123 = [SXCharacterStyle stringFromProperty:31];
    v124 = [MEMORY[0x1E696AD98] numberWithInteger:v118];
    [v16 addAttribute:v123 value:v124];

    if (color6)
    {
      v125 = [SXCharacterStyle stringFromProperty:32];
      v126 = [MEMORY[0x1E69D5770] colorWithUIColor:color6];
      [v16 addAttribute:v125 value:v126];

      v127 = [SXCharacterStyle stringFromProperty:49];
      [v16 addAttribute:v127 value:&unk_1F538A520];
    }
  }

  return v16;
}

- (void)transform:(id)transform forTextStyle:(id)style range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  transformCopy = transform;
  styleCopy = style;
  if ([styleCopy textTransform])
  {
    v9 = [transformCopy substringWithRange:{location, length}];
    textTransform = [styleCopy textTransform];
    switch(textTransform)
    {
      case 1:
        localizedUppercaseString = [v9 localizedUppercaseString];
        break;
      case 3:
        localizedUppercaseString = [v9 localizedCapitalizedString];
        break;
      case 2:
        localizedUppercaseString = [v9 localizedLowercaseString];
        break;
      default:
LABEL_9:
        [transformCopy replaceCharactersInRange:location withString:length undoTransaction:{v9, 0}];

        goto LABEL_10;
    }

    v12 = localizedUppercaseString;

    v9 = v12;
    goto LABEL_9;
  }

LABEL_10:
}

- (NSLocale)locale
{
  documentLanguageProvider = [(SXTextSource *)self documentLanguageProvider];
  language = [documentLanguageProvider language];

  if (language)
  {
    v4 = language;
  }

  else
  {
    v4 = @"en";
  }

  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];

  return v5;
}

- (_NSRange)rangeInBounds:(_NSRange)bounds maxLength:(unint64_t)length
{
  if (bounds.location >= length - 1)
  {
    location = length - 1;
  }

  else
  {
    location = bounds.location;
  }

  if (bounds.length >= length - location)
  {
    length = length - location;
  }

  else
  {
    length = bounds.length;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (id)fontFaceForTextStyleFontDescription:(id)description defaultTextStyleFontDescription:(id)fontDescription fontAttributes:(id)attributes fontSize:(int64_t)size
{
  descriptionCopy = description;
  fontDescriptionCopy = fontDescription;
  attributesCopy = attributes;
  fontAttributes = [descriptionCopy fontAttributes];
  if (fontAttributes || ([fontDescriptionCopy fontAttributes], (fontAttributes = objc_claimAutoreleasedReturnValue()) != 0))
  {

    if (attributesCopy)
    {
      if (size == 0x7FFFFFFFFFFFFFFFLL)
      {
        defaults = [(SXTextSource *)self defaults];
        highestMaxY = [(SXBlueprintAnalyzerCursor *)defaults highestMaxY];
      }

      else
      {
        highestMaxY = [(SXTextSource *)self scaledFontSizeForFontSize:size];
      }

      fontAttributeConstructor = [(SXTextSource *)self fontAttributeConstructor];
      v18 = [fontAttributeConstructor fontFaceForAttributes:attributesCopy size:highestMaxY];
      goto LABEL_11;
    }
  }

  fontName = [descriptionCopy fontName];
  if (fontName || ([fontDescriptionCopy fontName], (fontName = objc_claimAutoreleasedReturnValue()) != 0))
  {
    fontAttributeConstructor = fontName;
    v18 = [SXTextSourceFontFace fontFaceWithFontName:fontName];
LABEL_11:
    v19 = v18;

    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (id)fontDescriptionsForTextStyleFontDescription:(id)description defaultTextStyleFontDesciptions:(id)desciptions
{
  descriptionCopy = description;
  desciptionsCopy = desciptions;
  array = [MEMORY[0x1E695DF70] array];
  v9 = array;
  if (descriptionCopy)
  {
    [array addObject:descriptionCopy];
  }

  [v9 addObjectsFromArray:desciptionsCopy];
  defaultFontDescribing = [(SXTextSource *)self defaultFontDescribing];
  [v9 addObject:defaultFontDescribing];

  v11 = [v9 copy];

  return v11;
}

- (unsigned)paragraphAlignmentForTextAlignment:(int64_t)alignment
{
  if ((alignment - 2) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1D83924C0[alignment - 2];
  }
}

- (int64_t)scaledFontSizeForFontSize:(int64_t)size
{
  if (size == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  dataSource = [(SXTextSource *)self dataSource];
  v7 = [dataSource textRulesForTextSource:self];

  dataSource2 = [(SXTextSource *)self dataSource];
  v9 = [dataSource2 textResizerForTextSource:self];

  dataSource3 = [(SXTextSource *)self dataSource];
  v11 = [dataSource3 contentSizeCategoryForTextSource:self];

  [v7 fontResizingTresholdFactor];
  v13 = v12;
  [v7 fontSizeConstant];
  v15 = v14;
  fontTextStyle = [v7 fontTextStyle];
  v17 = [(SXTextResizer *)v9 resizeTextSize:size fontResizingThreshold:v11 fontSizeConstant:fontTextStyle contentSizeCategory:v13 fontTextStyle:v15];

  return v17;
}

- (int64_t)fontSizeForTextStyle:(id)style
{
  styleCopy = style;
  fontSize = [styleCopy fontSize];
  if (fontSize == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      defaults = [(SXTextSource *)self defaults];
      fontSize = [(SXBlueprintAnalyzerCursor *)defaults highestMaxY];
    }

    else
    {
      fontSize = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return fontSize;
}

- (id)randomColorWithAlpha:(double)alpha
{
  v4 = vcvtd_n_f64_u32(arc4random(), 8uLL);
  v5 = vcvtd_n_f64_u32(arc4random() & 0x7F, 8uLL) + 0.5;
  v6 = vcvtd_n_f64_u32(arc4random() & 0x7F, 8uLL) + 0.5;
  v7 = MEMORY[0x1E69DC888];

  return [v7 colorWithHue:v4 saturation:v5 brightness:v6 alpha:alpha];
}

- (SXTextSourceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)initWithString:(void *)a3 smartFieldFactory:dataSource:documentLanguageProvider:fontAttributesConstructor:.cold.1(void *a1, uint8_t *buf, void *a3)
{
  *buf = 136315906;
  *(buf + 4) = "[SXTextSource initWithString:smartFieldFactory:dataSource:documentLanguageProvider:fontAttributesConstructor:]";
  *(buf + 6) = 2080;
  *(buf + 14) = "SXTextSource.m";
  *(buf + 11) = 1024;
  *(buf + 6) = 142;
  *(buf + 14) = 2114;
  *(buf + 30) = a1;
  _os_log_fault_impl(&dword_1D825C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: StringCleaning) : %s %s:%d %{public}@", buf, 0x26u);
}

@end