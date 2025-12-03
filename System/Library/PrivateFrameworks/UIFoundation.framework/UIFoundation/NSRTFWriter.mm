@interface NSRTFWriter
+ (double)cocoaVersion;
+ (void)initialize;
- (BOOL)_canWriteColor:(_BOOL8)result;
- (_DWORD)RTFD;
- (__CFString)_plainFontNameForFont:(uint64_t)font;
- (const)writeColor:(uint64_t)color type:;
- (const)writeShadow:(const char *)result;
- (id)RTFDFileWrapper;
- (id)_writeTextScalingAndRenderingHint;
- (id)initWithAttributedString:(void *)string;
- (id)writeDefaultTabInterval;
- (id)writeHyphenation;
- (id)writeKeywordsDocumentAttribute;
- (uint64_t)RTF;
- (uint64_t)_addColor:(uint64_t)result;
- (uint64_t)_attachmentData;
- (uint64_t)_markerStringAtCharacterIndex:(uint64_t)index;
- (uint64_t)_mostCompatibleCharset:(uint64_t)result;
- (uint64_t)_setTextScalingConversionSource:(uint64_t)result;
- (uint64_t)_setTextScalingConversionTarget:(uint64_t)result;
- (uint64_t)_writeVersionsAndEncodings;
- (uint64_t)collectResources;
- (uint64_t)textFlowWithAttributes:(NSUInteger *)attributes range:;
- (uint64_t)writeAttachment:(uint64_t)result editableData:editableTypeIdentifier:;
- (uint64_t)writeBaselineOffset:(uint64_t)offset;
- (uint64_t)writeCharacterShape:(uint64_t)result;
- (uint64_t)writeDate:(uint64_t)result;
- (uint64_t)writeDateDocumentAttribute:(uint64_t)result withRTFKeyword:(uint64_t)keyword;
- (uint64_t)writeEscapedUTF8String:(uint64_t)result;
- (uint64_t)writeExpansion:(uint64_t)result;
- (uint64_t)writeGlyphInfo:(uint64_t)result;
- (uint64_t)writeHighlightColorScheme:(uint64_t)result;
- (uint64_t)writeHighlightColorSchemeTable;
- (uint64_t)writeHighlightStyle:(uint64_t)result;
- (uint64_t)writeHighlightStyleTable;
- (uint64_t)writeInfo;
- (uint64_t)writeKern:(uint64_t)result;
- (uint64_t)writeLigature:(uint64_t)ligature;
- (uint64_t)writeObliqueness:(uint64_t)result;
- (uint64_t)writePaperSize;
- (uint64_t)writeRTF;
- (uint64_t)writeStringDocumentAttribute:(uint64_t)result withRTFKeyword:(uint64_t)keyword;
- (uint64_t)writeStrokeWidth:(uint64_t)result;
- (uint64_t)writeSuperscript:(int)superscript;
- (uint64_t)writeTableHeader:(uint64_t)header atIndex:(uint64_t)index nestingLevel:;
- (uint64_t)writeTextFlow:(uint64_t)result;
- (unint64_t)writeCharacterAttributes:(void *)attributes previousAttributes:;
- (unint64_t)writeColorTable;
- (void)_setRTFDFileWrapper:(uint64_t)wrapper;
- (void)dealloc;
- (void)restoreAttributes:(uint64_t)attributes;
- (void)setDocumentAttributes:(uint64_t)attributes;
- (void)writeBackgroundColor;
- (void)writeBody;
- (void)writeCellTerminator:atIndex:nestingLevel:;
- (void)writeFont:forceFontNumber:;
- (void)writeFontTable;
- (void)writeHeader;
- (void)writeImageGlyph:attributes:;
- (void)writeLinkInfo:(uint64_t)info;
- (void)writeListTable;
- (void)writeParagraphStyle:;
- (void)writeStrikethroughStyle:(int)style;
- (void)writeUnderlineStyle:(int)style allowStrikethrough:(int)strikethrough;
@end

@implementation NSRTFWriter

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v3)
    {
      _MergedGlobals = [v3 BOOLValue];
    }

    if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      __NSPreserveNaturalAlignment = 1;
    }
  }
}

- (void)dealloc
{
  NSZoneFree(0, self->_layoutSections);
  v3.receiver = self;
  v3.super_class = NSRTFWriter;
  [(NSRTFWriter *)&v3 dealloc];
}

uint64_t __37__NSRTFWriter_setDocumentAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  location = [a2 objectForKey:@"NSTextLayoutSectionRange"];
  v7 = *(a1 + 32);
  if (location)
  {
    v13.location = [objc_msgSend(a2 objectForKey:{@"NSTextLayoutSectionRange", "rangeValue"}];
    v9 = NSIntersectionRange(v13, *(a1 + 40));
    length = v9.length;
    location = v9.location;
  }

  else
  {
    length = 0;
  }

  v10 = 3 * a3;
  v11 = (v7 + 8 * v10);
  *v11 = location;
  v11[1] = length;
  result = [objc_msgSend(a2 objectForKey:{@"NSTextLayoutSectionOrientation", "unsignedIntegerValue"}];
  *(*(a1 + 32) + 8 * v10 + 16) = result;
  return result;
}

- (uint64_t)_addColor:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      return [(NSRTFWriter *)result _addColor:a2];
    }
  }

  return result;
}

+ (double)cocoaVersion
{
  objc_opt_self();
  if (cocoaVersion_onceToken != -1)
  {
    +[NSRTFWriter cocoaVersion];
  }

  return *&cocoaVersion_cocoaVersion;
}

double __27__NSRTFWriter_cocoaVersion__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    [v0 doubleValue];
    cocoaVersion_cocoaVersion = *&result;
  }

  else
  {
    result = *&cocoaVersion_cocoaVersion;
  }

  if (result < 1.0)
  {
    result = _NSGetUIFoundationVersionNumber() + 1851.0;
    cocoaVersion_cocoaVersion = *&result;
  }

  return result;
}

- (uint64_t)_markerStringAtCharacterIndex:(uint64_t)index
{
  indexCopy = index;
  if (index)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__17;
    v14 = __Block_byref_object_dispose__17;
    v15 = 0;
    v4 = *(index + 240);
    if (!v4)
    {
      v5 = objc_alloc_init(NSTextContentStorage);
      *(indexCopy + 240) = v5;
      [(NSTextContentStorage *)v5 setIncludesTextListMarkers:0];
      [*(indexCopy + 240) setAttributedString:*(indexCopy + 16)];
      v4 = *(indexCopy + 240);
    }

    v6 = [v4 locationFromLocation:objc_msgSend(objc_msgSend(v4 withOffset:{"documentRange"), "location"), a2}];
    if (v6)
    {
      v7 = *(indexCopy + 240);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__NSRTFWriter__markerStringAtCharacterIndex___block_invoke;
      v9[3] = &unk_1E72665C0;
      v9[4] = &v10;
      [v7 enumerateTextElementsFromLocation:v6 options:0 usingBlock:v9];
    }

    indexCopy = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return indexCopy;
}

uint64_t __45__NSRTFWriter__markerStringAtCharacterIndex___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 contentsOnly])
  {
    *(*(*(a1 + 32) + 8) + 40) = [objc_msgSend(a2 "markerAttributedString")];
  }

  return 0;
}

- (uint64_t)writeEscapedUTF8String:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  uTF8String = [a2 UTF8String];
  v4 = uTF8String;
  v5 = uTF8String;
  while (1)
  {
    v6 = *v4;
    if (v6 == 92)
    {
      [*(v2 + 8) appendBytes:? length:?];
      v6 = *v4;
      v5 = v4;
      goto LABEL_7;
    }

    if (!*v4)
    {
      break;
    }

LABEL_7:
    if (v6 == 125 || v6 == 123)
    {
      [*(v2 + 8) appendBytes:v5 length:uTF8String - v5];
      [*(v2 + 8) appendBytes:"\\"" length:1];
      v5 = v4;
    }

    ++v4;
    ++uTF8String;
  }

  v7 = *(v2 + 8);

  return [v7 appendBytes:v5 length:uTF8String - v5];
}

- (uint64_t)_mostCompatibleCharset:(uint64_t)result
{
  if (result)
  {
    LODWORD(result) = CFStringConvertNSStringEncodingToEncoding([a2 mostCompatibleStringEncoding]);
    v2 = result;
    if (result <= 0xFE && (_MergedGlobals & 1) != 0)
    {
      result = result;
      switch(result)
      {
        case 0:
          return result;
        case 1:
          goto LABEL_19;
        case 2:
          goto LABEL_18;
        case 3:
          goto LABEL_17;
        case 4:
          goto LABEL_14;
        case 5:
          goto LABEL_15;
        case 6:
          goto LABEL_16;
        case 7:
          goto LABEL_7;
        default:
          v4 = 77;
          switch(result)
          {
            case 21:
              goto LABEL_11;
            case 22:
            case 23:
            case 24:
            case 26:
            case 27:
            case 28:
              goto LABEL_26;
            case 25:
              goto LABEL_13;
            case 29:
              goto LABEL_9;
            case 30:
              goto LABEL_12;
            default:
              if (result == 35)
              {
                goto LABEL_21;
              }

              goto LABEL_26;
          }
      }
    }

    v3 = result - 1280;
    result = 0;
    switch(v3)
    {
      case 0:
        return result;
      case 1:
LABEL_9:
        result = 238;
        break;
      case 2:
LABEL_7:
        result = 204;
        break;
      case 3:
LABEL_16:
        result = 161;
        break;
      case 4:
LABEL_21:
        result = 162;
        break;
      case 5:
LABEL_15:
        result = 177;
        break;
      case 6:
LABEL_14:
        result = 178;
        break;
      case 7:
        result = 186;
        break;
      case 8:
LABEL_12:
        result = 163;
        break;
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
LABEL_24:
        if (v2 > 0xFE)
        {
          result = 0;
        }

        else
        {
          v4 = v2 + 77;
LABEL_26:
          result = v4;
        }

        break;
      case 16:
        result = 130;
        break;
      default:
        switch(v2)
        {
          case 0x41Du:
LABEL_11:
            result = 222;
            break;
          case 0x41Eu:
          case 0x41Fu:
            goto LABEL_24;
          case 0x420u:
LABEL_19:
            result = 128;
            break;
          case 0x421u:
LABEL_13:
            result = 134;
            break;
          case 0x422u:
LABEL_17:
            result = 129;
            break;
          case 0x423u:
LABEL_18:
            result = 136;
            break;
          default:
            if (v2 != 33)
            {
              goto LABEL_24;
            }

            result = 2;
            break;
        }

        break;
    }
  }

  return result;
}

- (id)initWithAttributedString:(void *)string
{
  stringCopy = string;
  if (string)
  {
    v4 = [string zone];
    v15.receiver = stringCopy;
    v15.super_class = NSRTFWriter;
    stringCopy = objc_msgSendSuper2(&v15, sel_init);
    if (stringCopy)
    {
      *(stringCopy + 1) = [objc_msgSend(MEMORY[0x1E695DF88] allocWithZone:{v4), "init"}];
      *(stringCopy + 2) = a2;
      *(stringCopy + 3) = [a2 length];
      SystemEncoding = CFStringGetSystemEncoding();
      if (SystemEncoding <= 0xFE)
      {
        OUTLINED_FUNCTION_64();
        if (v6)
        {
          OUTLINED_FUNCTION_63();
          if (!v10 & v9)
          {
            switch(v8)
            {
              case 21:
                SystemEncoding = 1053;
                break;
              case 22:
              case 23:
              case 24:
              case 26:
              case 27:
              case 28:
                goto LABEL_21;
              case 25:
                SystemEncoding = 1057;
                break;
              case 29:
                SystemEncoding = 1281;
                break;
              case 30:
                SystemEncoding = 1288;
                break;
              default:
                if (v8 == 35)
                {
                  SystemEncoding = 1284;
                }

                else
                {
LABEL_21:
                  SystemEncoding = 0;
                }

                break;
            }
          }

          else
          {
            v11 = v7;
            SystemEncoding = 1280;
            switch(v11)
            {
              case 1:
                SystemEncoding = 1056;
                break;
              case 2:
                SystemEncoding = 1059;
                break;
              case 3:
                SystemEncoding = 1058;
                break;
              case 4:
                SystemEncoding = 1286;
                break;
              case 5:
                SystemEncoding = 1285;
                break;
              case 6:
                SystemEncoding = 1283;
                break;
              case 7:
                SystemEncoding = 1282;
                break;
              default:
                break;
            }
          }
        }
      }

      *(stringCopy + 20) = 0x407B000000000000;
      v12 = *(stringCopy + 38);
      if (__NSPreserveNaturalAlignment)
      {
        v13 = 16;
      }

      else
      {
        v13 = 0;
      }

      *(stringCopy + 37) = SystemEncoding;
      *(stringCopy + 38) = v12 & 0xFFFFFFEF | v13;
      *(stringCopy + 24) = -1;
      *(stringCopy + 25) = -1;
    }
  }

  return stringCopy;
}

- (_DWORD)RTFD
{
  if (result)
  {
    v1 = result;
    result[38] |= 0x80u;
    result = [-[NSRTFWriter RTFDFileWrapper](result) serializedRepresentation];
    v1[38] &= ~0x80u;
  }

  return result;
}

- (id)RTFDFileWrapper
{
  if (result)
  {
    v1 = result;
    v2 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v3 = [v2 initDirectoryWithFileWrappers:MEMORY[0x1E695E0F8]];
    v4 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v5 = [v4 initRegularFileWithContents:{objc_msgSend(MEMORY[0x1E695DEF0], "data")}];
    v6 = OUTLINED_FUNCTION_25_0();
    [NSRTFWriter _setRTFDFileWrapper:v6];
    [v5 setPreferredFilename:@"TXT.rtf"];
    [v3 addFileWrapper:v5];
    [(NSRTFWriter *)v1 writeRTF];
    v7 = *(v1 + 8);
    [v3 removeFileWrapper:v5];

    [v3 addRegularFileWithContents:v7 preferredFilename:@"TXT.rtf"];

    return v3;
  }

  return result;
}

- (void)_setRTFDFileWrapper:(uint64_t)wrapper
{
  if (wrapper)
  {
    OUTLINED_FUNCTION_22_0();
    v4 = *(v3 + 32);
    if (v4 != v5)
    {

      *(v1 + 32) = v2;
    }
  }
}

- (uint64_t)RTF
{
  if (result)
  {
    v1 = result;
    [(NSRTFWriter *)result writeRTF];
    return *(v1 + 8);
  }

  return result;
}

- (void)setDocumentAttributes:(uint64_t)attributes
{
  if (attributes)
  {
    OUTLINED_FUNCTION_22_0();
    v4 = *(v3 + 168);
    if (v4 != v5)
    {

      v6 = v2;
      *(v1 + 168) = v6;
      v7 = [v6 objectForKey:@"PaperMargin"];
      v8 = *(v1 + 168);
      if (v7)
      {
        v9 = v7;
        v8 = [*(v1 + 168) mutableCopy];
        [v9 UIEdgeInsetsValue];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:"), @"TopMargin"}];
        [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v11), @"LeftMargin"}];
        [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v15), @"RightMargin"}];
        [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v13), @"BottomMargin"}];

        *(v1 + 168) = v8;
      }

      v16 = [v8 objectForKey:@"PaperSize"];
      if (v16)
      {
        [v16 sizeValue];
        v18 = v17;
      }

      else
      {
        v18 = 612.0;
      }

      v19 = [*(v1 + 168) objectForKey:@"LeftMargin"];
      v20 = 90.0;
      v21 = 90.0;
      if (v19)
      {
        [v19 doubleValue];
        v21 = v22;
      }

      v23 = [*(v1 + 168) objectForKey:@"RightMargin"];
      if (v23)
      {
        [v23 doubleValue];
        v20 = v24;
      }

      *(v1 + 160) = v18 - (v21 + v20);
      v25 = [*(v1 + 168) objectForKey:@"NSTextLayoutSectionsAttribute"];
      if ([v25 count])
      {
        v26 = [v25 count];
        v27 = NSAllocateCollectable(24 * v26 + 24, 0);
        *(v1 + 176) = v27;
        if (v27)
        {
          v28 = v27;
          v29 = *(v1 + 24);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __37__NSRTFWriter_setDocumentAttributes___block_invoke;
          v30[3] = &__block_descriptor_56_e15_v32__0_8Q16_B24l;
          v30[4] = v27;
          v30[5] = 0;
          v30[6] = v29;
          [v25 enumerateObjectsUsingBlock:v30];
          CFQSortArray();
          *&v28[24 * v26] = xmmword_18E856180;
        }
      }
    }
  }
}

- (uint64_t)writeRTF
{
  if (result)
  {
    v1 = result;
    if (!*(result + 40))
    {
      [(NSRTFWriter *)result collectResources];
      [v1[1] appendBytes:"{" length:1];
      [(NSRTFWriter *)v1 writeHeader];
      [(NSRTFWriter *)v1 writeBody];
      v2 = v1[1];

      return [v2 appendBytes:"}" length:1];
    }
  }

  return result;
}

- (uint64_t)collectResources
{
  v84 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    [result zone];
    *(v1 + 40) = [objc_msgSend(OUTLINED_FUNCTION_35_0() "allocWithZone:{"initWithCapacity:", 10}")];
    [v1 zone];
    *(v1 + 48) = [objc_msgSend(OUTLINED_FUNCTION_35_0() "allocWithZone:{"initWithCapacity:", 10}")];
    [v1 zone];
    *(v1 + 56) = [objc_msgSend(OUTLINED_FUNCTION_35_0() "allocWithZone:{"initWithCapacity:", 4}")];
    [v1 zone];
    *(v1 + 64) = [objc_msgSend(OUTLINED_FUNCTION_35_0() "allocWithZone:{"initWithCapacity:", 4}")];
    *(v1 + 208) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v1 + 216) = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v1 zone];
    *(v1 + 72) = [objc_msgSend(OUTLINED_FUNCTION_35_0() "allocWithZone:"init"")];
    _rtfBlackColor();
    v2 = OUTLINED_FUNCTION_8_3();
    [(NSRTFWriter *)v2 _addColor:v3];
    _rtfWhiteColor();
    v4 = OUTLINED_FUNCTION_8_3();
    result = [(NSRTFWriter *)v4 _addColor:v5];
    if (*(v1 + 24))
    {
      v70 = 0;
      v6 = 0;
      v73 = 0;
      attribute = *MEMORY[0x1E6965828];
      v72 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v81 = 0;
        v82 = 0;
        v7 = [*(v1 + 16) attributesAtIndex:v6 effectiveRange:&v81];
        v8 = [v7 objectForKeyedSubscript:@"NSParagraphStyle"];
        textBlocks = [v8 textBlocks];
        v10 = [textBlocks count];
        v11 = [v7 objectForKeyedSubscript:@"NSFont"];
        if (v11 || (v11 = NSDefaultFont()) != 0)
        {
          v66 = v11;
          v67 = OUTLINED_FUNCTION_25_0();
          v69 = [(NSRTFWriter *)v67 _plainFontNameForFont:v68];
          if (![*(v1 + 40) objectForKeyedSubscript:v69])
          {
            [*(v1 + 40) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:"), v69}];
            [*(v1 + 48) setObject:v66 forKeyedSubscript:v69];
            ++v70;
          }

          v12 = CTFontCopyAttribute(v66, attribute);
        }

        else
        {
          v12 = 0;
        }

        [v7 objectForKeyedSubscript:@"NSColor"];
        v13 = OUTLINED_FUNCTION_8_3();
        [(NSRTFWriter *)v13 _addColor:v14];
        [v7 objectForKeyedSubscript:@"NSBackgroundColor"];
        v15 = OUTLINED_FUNCTION_8_3();
        [(NSRTFWriter *)v15 _addColor:v16];
        [v7 objectForKeyedSubscript:@"NSStrokeColor"];
        v17 = OUTLINED_FUNCTION_8_3();
        [(NSRTFWriter *)v17 _addColor:v18];
        [v7 objectForKeyedSubscript:@"NSUnderlineColor"];
        v19 = OUTLINED_FUNCTION_8_3();
        [(NSRTFWriter *)v19 _addColor:v20];
        [v7 objectForKeyedSubscript:@"NSStrikethroughColor"];
        v21 = OUTLINED_FUNCTION_8_3();
        [(NSRTFWriter *)v21 _addColor:v22];
        v23 = [v7 objectForKeyedSubscript:@"NSTextHighlightStyle"];
        if (v23)
        {
          v24 = v23;
          [(NSArray *)+[NSRTFReader defaultTextHighlightStyles](NSRTFReader indexOfObject:"indexOfObject:", v23];
          OUTLINED_FUNCTION_62();
          if (v31)
          {
            [*(v1 + 208) indexOfObject:v24];
            OUTLINED_FUNCTION_62();
            if (v31)
            {
              [*(v1 + 208) addObject:v24];
            }
          }

          v25 = [v7 objectForKeyedSubscript:@"NSTextHighlightColorScheme"];
          if (v25)
          {
            v26 = v25;
            if (([v25 isEqualToString:@"NSTextHighlightColorSchemeDefault"] & 1) == 0)
            {
              [(NSArray *)+[NSRTFReader defaultTextHighlightColorSchemes](NSRTFReader indexOfObject:"indexOfObject:", v26];
              OUTLINED_FUNCTION_62();
              if (v31)
              {
                [*(v1 + 216) indexOfObject:v26];
                OUTLINED_FUNCTION_62();
                if (v31)
                {
                  [*(v1 + 216) addObject:v26];
                }
              }
            }
          }
        }

        result = [objc_msgSend(v7 objectForKeyedSubscript:{@"NSShadow", "shadowColor"}];
        if (result)
        {
          v79 = 0.0;
          v80 = 0.0;
          v78 = 0.0;
          [RGBColorForColor(result) getRed:&v80 green:&v79 blue:&v78 alpha:0];
          v28 = v79;
          v27 = v80;
          v29 = v78;
          v30 = off_1ED4DF030();
          v31 = v27 == v28 && v28 == v29;
          if (v31)
          {
            [(objc_class *)v30 colorWithCalibratedWhite:v80 alpha:1.0];
          }

          else
          {
            [(objc_class *)v30 colorWithCalibratedRed:v80 green:v79 blue:v78 alpha:1.0];
          }

          v32 = OUTLINED_FUNCTION_8_3();
          result = [(NSRTFWriter *)v32 _addColor:v33];
        }

        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v35 = [textBlocks objectAtIndex:i];
            [v35 backgroundColor];
            v36 = OUTLINED_FUNCTION_8_3();
            [(NSRTFWriter *)v36 _addColor:v37];
            [v35 borderColorForEdge:0];
            v38 = OUTLINED_FUNCTION_8_3();
            [(NSRTFWriter *)v38 _addColor:v39];
            [v35 borderColorForEdge:2];
            v40 = OUTLINED_FUNCTION_8_3();
            [(NSRTFWriter *)v40 _addColor:v41];
            [v35 borderColorForEdge:1];
            v42 = OUTLINED_FUNCTION_8_3();
            [(NSRTFWriter *)v42 _addColor:v43];
            [v35 borderColorForEdge:3];
            v44 = OUTLINED_FUNCTION_8_3();
            [(NSRTFWriter *)v44 _addColor:v45];
            objc_opt_class();
            OUTLINED_FUNCTION_65();
            result = objc_opt_isKindOfClass();
            if (result)
            {
              table = [v35 table];
              [table backgroundColor];
              v47 = OUTLINED_FUNCTION_8_3();
              [(NSRTFWriter *)v47 _addColor:v48];
              [table borderColorForEdge:0];
              v49 = OUTLINED_FUNCTION_8_3();
              [(NSRTFWriter *)v49 _addColor:v50];
              [table borderColorForEdge:2];
              v51 = OUTLINED_FUNCTION_8_3();
              [(NSRTFWriter *)v51 _addColor:v52];
              [table borderColorForEdge:1];
              v53 = OUTLINED_FUNCTION_8_3();
              [(NSRTFWriter *)v53 _addColor:v54];
              [table borderColorForEdge:3];
              v55 = OUTLINED_FUNCTION_8_3();
              result = [(NSRTFWriter *)v55 _addColor:v56];
            }
          }
        }

        if (v6 >= v72 && v6 - v72 < v73)
        {
          goto LABEL_41;
        }

        result = [v8 textLists];
        if (result)
        {
          v58 = result;
          result = [result count];
          if (result)
          {
            break;
          }
        }

        v72 = 0x7FFFFFFFFFFFFFFFLL;
        v73 = 0;
        if (v12)
        {
LABEL_44:
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          allValues = [v12 allValues];
          result = [allValues countByEnumeratingWithState:&v74 objects:v83 count:16];
          if (result)
          {
            v61 = result;
            v62 = *v75;
            do
            {
              v63 = 0;
              do
              {
                if (*v75 != v62)
                {
                  objc_enumerationMutation(allValues);
                }

                [(objc_class *)off_1ED4DF030() colorWithCGColor:*(*(&v74 + 1) + 8 * v63)];
                v64 = OUTLINED_FUNCTION_8_3();
                [(NSRTFWriter *)v64 _addColor:v65];
                ++v63;
              }

              while (v61 != v63);
              result = [allValues countByEnumeratingWithState:&v74 objects:v83 count:16];
              v61 = result;
            }

            while (result);
          }
        }

LABEL_51:
        v6 = v82 + v81;
        if ((v82 + v81) >= *(v1 + 24))
        {
          return result;
        }
      }

      v72 = [*(v1 + 16) rangeOfTextList:objc_msgSend(v58 atIndex:{"objectAtIndex:", 0), v6}];
      v73 = v59;
      [MEMORY[0x1E696B098] valueWithRange:?];
      result = [OUTLINED_FUNCTION_35_0() addObject:?];
LABEL_41:
      if (v12)
      {
        goto LABEL_44;
      }

      goto LABEL_51;
    }
  }

  return result;
}

- (void)writeHeader
{
  if (self)
  {
    [(NSRTFWriter *)self _writeVersionsAndEncodings];
    [(NSRTFWriter *)self _writeTextScalingAndRenderingHint];
    [NSRTFWriter writeFontTable];
    [(NSRTFWriter *)self writeColorTable];
    [(NSRTFWriter *)self writeHighlightStyleTable];
    [(NSRTFWriter *)self writeHighlightColorSchemeTable];
    [NSRTFWriter writeListTable];
    [(NSRTFWriter *)self writeInfo];
    [(NSRTFWriter *)self writePaperSize];
    [(NSRTFWriter *)self writeHyphenation];
    [(NSRTFWriter *)self writeDefaultTabInterval];

    [(NSRTFWriter *)self writeBackgroundColor];
  }
}

- (void)writeBody
{
  v175 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v171 = 0;
  v172 = 0;
  v170 = 0;
  memset(v169, 0, sizeof(v169));
  string = [*(self + 16) string];
  v3 = *(self + 24);
  v168 = v3;
  v167 = string;
  if (!v3)
  {
    return;
  }

  v4 = string;
  v5 = v3 >= 0x20 ? 32 : *(self + 24);
  v165 = v5;
  v161 = v169;
  [string getUid("getCharacters:? range:?")];
  v6 = v171;
  v7 = *(self + 24);
  v166 = 1;
  LOWORD(v170) = v169[0];
  if (v171 >= v7)
  {
    return;
  }

  v8 = 0;
  HIDWORD(v162) = 0;
  v9 = 0;
  v159 = 0;
  v151 = 0;
  v152 = 0;
  v10 = 0;
  v155 = v4;
  v156 = @"NSParagraphStyle";
  v11 = @"NSLink";
  v149 = @"CTAdaptiveImageProvider";
  v150 = @"NSAttachment";
  v158 = @"NSWritingDirection";
  v12 = 8236;
  HIDWORD(v157) = 1;
  v153 = @"NSLink";
  do
  {
    v13 = [*(self + 16) attributesAtIndex:v6 longestEffectiveRange:&v171 inRange:0];
    v14 = v13;
    v15 = v171 - v6;
    if (v171 < v6)
    {
      v171 = v6;
      v172 += v15;
    }

    v160 = v13;
    if ((v157 & 0x100000000) != 0)
    {
      v16 = v10;
      v17 = [v13 objectForKey:v156];
      textBlocks = [v17 textBlocks];
      textLists = [v17 textLists];
      if (!v17)
      {
        +[NSParagraphStyle defaultParagraphStyle];
      }

      if (textBlocks)
      {
        v20 = [textBlocks count];
        if (v20)
        {
          v21 = v20;
          if (([textBlocks isEqual:v16] & 1) == 0)
          {
            for (i = 0; i != v21; ++i)
            {
              v128 = [textBlocks objectAtIndex:i];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                table = [v128 table];
                if (table)
                {
                  if ([*(self + 16) _atStartOfTextTableRow:table atIndex:v171])
                  {
                    v130 = OUTLINED_FUNCTION_45();
                    [(NSRTFWriter *)v130 writeTableHeader:v131 atIndex:v132 nestingLevel:i];
                  }
                }
              }
            }
          }
        }
      }

      [NSRTFWriter writeParagraphStyle:];
      if ([textLists count])
      {
        v22 = [*(self + 72) count];
        v12 = 8236;
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          while (1)
          {
            v25 = [objc_msgSend(*(self + 72) objectAtIndex:{v24), "rangeValue"}];
            if (v171 >= v25 && v171 - v25 < v26)
            {
              break;
            }

            if (v23 == ++v24)
            {
              goto LABEL_26;
            }
          }

          snprintf(__str, 0x64uLL, "\\ls%ld\\ilvl%ld", v24 + 1, [textLists count] - 1);
          [*(self + 8) appendBytes:__str length:strlen(__str)];
        }

LABEL_26:
        v10 = textBlocks;
        v4 = v155;
      }

      else
      {
        v10 = textBlocks;
        v4 = v155;
        v12 = 8236;
      }

      v14 = v160;
      v11 = v153;
    }

    v28 = 0x1E696A000uLL;
    if (!v159)
    {
      if ([v14 objectForKey:v11])
      {
        *__str = 0;
        v174 = 0;
        [*(self + 16) attribute:v11 atIndex:v171 longestEffectiveRange:__str inRange:{0, *(self + 24)}];
        v29 = OUTLINED_FUNCTION_8_3();
        [NSRTFWriter writeLinkInfo:v29];
        v31 = v174 + *__str;
        v32 = v151;
        if (v30)
        {
          v32 = v8;
        }

        v151 = v32;
        if (!v30)
        {
          v31 = 0;
        }

        v159 = v31;
      }

      else
      {
        v159 = 0;
      }

      v14 = v160;
    }

    v33 = v14;
    [(NSRTFWriter *)self writeCharacterAttributes:v14 previousAttributes:v8];
    v34 = OUTLINED_FUNCTION_25_0();
    v37 = [(NSRTFWriter *)v34 textFlowWithAttributes:v35 range:v36];
    if (v37 != v152)
    {
      v133 = v37;
      v134 = OUTLINED_FUNCTION_46();
      [(NSRTFWriter *)v134 writeTextFlow:v135];
      v152 = v133;
    }

    v38 = [v33 objectForKey:NSGlyphInfoAttributeName];
    if (v38)
    {
      [*(self + 8) appendBytes:"{" length:1];
      v136 = OUTLINED_FUNCTION_25_0();
      [NSRTFWriter writeGlyphInfo:v136];
    }

    v154 = v38;
    v39 = v166;
    v40 = *(&v168 + 1) + v166 - 1;
    v41 = 1 - (*(&v168 + 1) + v166);
    if (v172)
    {
      v163 = v10;
      v164 = 0;
      v42 = v170;
      v43 = HIDWORD(v157);
      while (1)
      {
        switch(v42)
        {
          case 9:
            if ((v162 & 0x100000000) != 0)
            {
              writeCharacters(*(self + 8), v4, v40, v164 + v41 + v171 + 1, 1u);
              OUTLINED_FUNCTION_41();
              [*(self + 8) appendBytes:"}" length:1];
LABEL_97:
              HIDWORD(v162) = 0;
              goto LABEL_98;
            }

            if ((v43 & 1) == 0 || ![objc_msgSend(objc_msgSend(v160 objectForKey:{v156), "textLists"), "count"}])
            {
              goto LABEL_97;
            }

            v80 = v166;
            if (v166 < v165)
            {
              v81 = ++v166;
              v82 = *(v161 + v80);
LABEL_116:
              LOWORD(v170) = v82;
              goto LABEL_117;
            }

            if (v168 <= v165 + *(&v168 + 1))
            {
              v81 = v165 + 1;
              v166 = v165 + 1;
              v82 = -1;
              goto LABEL_116;
            }

            if (v168 - (v165 + *(&v168 + 1)) >= 0x20)
            {
              v12 = 32;
            }

            else
            {
              v12 = v168 - (v165 + WORD4(v168));
            }

            OUTLINED_FUNCTION_37_0();
            Uid = sel_getUid("getCharacters:range:");
            OUTLINED_FUNCTION_10_3(Uid, v93, v94, v95, v96, v97, v98, v99, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
            LOWORD(v170) = v169[0];
            OUTLINED_FUNCTION_36_0();
LABEL_117:
            v100 = v80 + *(&v168 + 1);
            v101 = v80 + *(&v168 + 1) - 1;
            while (1)
            {
              v102 = v165;
              if (v81 - 1 >= v165)
              {
                break;
              }

              v103 = 0x7FFFFFFFFFFFFFFFLL;
              switch(v82)
              {
                case 9:
                  v103 = *(&v168 + 1) + v81 - 1;
                  goto LABEL_125;
                case 10:
                case 12:
                  goto LABEL_137;
                case 11:
                  goto LABEL_125;
                case 13:
                  v104 = *(&v168 + 1) + v81;
                  if (*(&v168 + 1) + v81 >= [(__CFString *)v4 length]|| [(__CFString *)v4 characterAtIndex:v104]!= 10)
                  {
                    goto LABEL_137;
                  }

                  v102 = v165;
                  v81 = v166;
LABEL_125:
                  if (v81 < v102)
                  {
                    v82 = *(v161 + v81++);
                    v166 = v81;
LABEL_133:
                    LOWORD(v170) = v82;
                    goto LABEL_134;
                  }

                  if (v168 <= *(&v168 + 1) + v102)
                  {
                    v81 = v102 + 1;
                    v166 = v102 + 1;
                    v82 = -1;
                    goto LABEL_133;
                  }

                  if (v168 - (*(&v168 + 1) + v102) >= 0x20)
                  {
                    v12 = 32;
                  }

                  else
                  {
                    v12 = v168 - (WORD4(v168) + v102);
                  }

                  OUTLINED_FUNCTION_37_0();
                  v105 = sel_getUid("getCharacters:range:");
                  OUTLINED_FUNCTION_10_3(v105, v106, v107, v108, v109, v110, v111, v112, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
                  LOWORD(v170) = v169[0];
                  OUTLINED_FUNCTION_36_0();
LABEL_134:
                  if (v103 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_137;
                  }

                  break;
                default:
                  if (DWORD2(v168) != 8233)
                  {
                    goto LABEL_125;
                  }

                  goto LABEL_137;
              }
            }

            v103 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_137:
            v113 = *(&v168 + 1);
            if (*(&v168 + 1) > v101 || v165 + *(&v168 + 1) <= v101)
            {
              if (v101 > 0xF)
              {
                v115 = v168;
                if (v168 - 16 >= v101)
                {
                  v114 = v100 - 17;
                }

                else if (v168 >= 0x20)
                {
                  v114 = v168 - 32;
                }

                else
                {
                  v114 = 0;
                }

                *(&v168 + 1) = v114;
              }

              else
              {
                v114 = 0;
                *(&v168 + 1) = 0;
                v115 = v168;
              }

              v116 = v115 - v114;
              if (v116 >= 0x20)
              {
                v117 = 32;
              }

              else
              {
                v117 = v116;
              }

              v165 = v117;
              [v167 getUid("getCharacters:v161 range:{v114, v117}")];
              LOWORD(v170) = v169[0];
              v113 = *(&v168 + 1);
              v12 = 8236;
              v10 = v163;
            }

            v118 = v101 - v113;
            v166 = v118 + 1;
            LOWORD(v170) = *(v161 + v118);
            if (v100 != 0x8000000000000000 && v103 != 0x7FFFFFFFFFFFFFFFLL && v103 > v100)
            {
              [*(self + 8) appendBytes:"{\\listtext" length:10];
              v43 = 0;
              HIDWORD(v162) = 1;
            }

            else
            {
              HIDWORD(v162) = 0;
              v43 = 0;
            }

            v28 = 0x1E696A000;
LABEL_99:
            v83 = v166;
            if (v166 >= v165)
            {
              if (v168 > *(&v168 + 1) + v165)
              {
                if (v168 - (*(&v168 + 1) + v165) >= 0x20)
                {
                  v12 = 32;
                }

                else
                {
                  v12 = v168 - (WORD4(v168) + v165);
                }

                OUTLINED_FUNCTION_37_0();
                v84 = sel_getUid("getCharacters:range:");
                OUTLINED_FUNCTION_10_3(v84, v85, v86, v87, v88, v89, v90, v91, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
                v42 = LOWORD(v169[0]);
                LOWORD(v170) = v169[0];
                OUTLINED_FUNCTION_36_0();
                goto LABEL_108;
              }

              v39 = v165 + 1;
              v166 = v165 + 1;
              v42 = 0xFFFF;
            }

            else
            {
              v39 = ++v166;
              v42 = *(v161 + v83);
            }

            LOWORD(v170) = v42;
LABEL_108:
            v41 = -v40;
            if (++v164 >= v172)
            {
              goto LABEL_162;
            }

            break;
          case 10:
          case 12:
            goto LABEL_56;
          case 11:
            goto LABEL_51;
          case 13:
            v50 = v39 + *(&v168 + 1);
            HIDWORD(v157) = v43;
            if (v39 + *(&v168 + 1) < [(__CFString *)v4 length])
            {
              v51 = [(__CFString *)v4 characterAtIndex:v50];
              LOBYTE(v43) = BYTE4(v157);
              if (v51 == 10)
              {
                goto LABEL_51;
              }
            }

            goto LABEL_56;
          default:
            if (v42 == 8233)
            {
LABEL_56:
              v59 = [objc_msgSend(v160 objectForKey:{v158), "count"}];
              for (j = OUTLINED_FUNCTION_5_3(); ; j = OUTLINED_FUNCTION_4_2())
              {
                writeCharacters(j, v61, v62, v63, v64);
                if (!v59)
                {
                  break;
                }

                --v59;
                *__str = v12;
                [*(v28 + 3776) stringWithCharacters:__str length:1];
              }

              if ((v162 & 0x100000000) != 0)
              {
                [*(self + 8) appendBytes:"}" length:1];
              }

              OUTLINED_FUNCTION_41();
              if (!v10 || (v65 = [v10 count]) == 0)
              {
                if (v42 == 12)
                {
                  v73 = "\\page ";
                  v74 = 6;
                }

                else
                {
                  v73 = "\\\n";
                  v74 = 2;
                }

                [*(self + 8) appendBytes:v73 length:v74];
                HIDWORD(v162) = 0;
                v43 = 1;
                goto LABEL_99;
              }

              v66 = v65;
              v67 = v159 != 0;
              if (v40 < *(self + 24) && (v68 = [objc_msgSend(*(self + 16) attribute:v156 atIndex:v40 effectiveRange:{0), "textBlocks"}], v69 = objc_msgSend(v68, "count"), v68) && (v66 >= v69 ? (v70 = v69) : (v70 = v66), v69))
              {
                v71 = 0;
                do
                {
                  v72 = [v68 objectAtIndex:v71];
                  if (v72 != [v163 objectAtIndex:v71])
                  {
                    goto LABEL_76;
                  }

                  ++v71;
                }

                while (v70 != v71);
                v71 = v70;
              }

              else
              {
                v71 = 0;
              }

LABEL_76:
              v75 = 0;
              v76 = v66 - 1;
              do
              {
                if (v76 >= v71)
                {
                  if (v67)
                  {
                    [*(self + 8) appendBytes:"}}" length:2];
                  }

                  [v163 objectAtIndex:v76];
                  OUTLINED_FUNCTION_8_3();
                  [NSRTFWriter writeCellTerminator:atIndex:nestingLevel:];
                  v67 = 0;
                  v75 |= v77;
                }

                v9 |= *(self + 24) == v40;
                --v76;
              }

              while (v76 != -1);
              v78 = "\\\n";
              if (v75)
              {
                v78 = "\n";
              }

              if (v42 == 12)
              {
                v79 = "\\page\n";
              }

              else
              {
                v79 = v78;
              }

              [*(self + 8) appendBytes:v79 length:strlen(v79)];
              if (v159 != 0 && !v67)
              {
                [NSRTFWriter restoreAttributes:self];
                v159 = 0;
              }

              HIDWORD(v162) = 0;
              v43 = 1;
              v4 = v155;
              v28 = 0x1E696A000;
              v12 = 8236;
              v10 = v163;
              goto LABEL_99;
            }

            if (v42 == 65532)
            {
              v44 = OUTLINED_FUNCTION_5_3();
              writeCharacters(v44, v45, v46, v47, v48);
              v40 = [v160 objectForKey:v150];
              [v160 objectForKey:NSAttachmentEditableDataAttributeName];
              [v160 objectForKey:NSAttachmentEditableDataTypeIdentifierAttributeName];
              v49 = OUTLINED_FUNCTION_46();
              [NSRTFWriter writeAttachment:v49 editableData:? editableTypeIdentifier:?];
              [v160 objectForKeyedSubscript:v149];
              OUTLINED_FUNCTION_8_3();
              [NSRTFWriter writeImageGlyph:attributes:];
              OUTLINED_FUNCTION_41();
              goto LABEL_99;
            }

LABEL_51:
            if (v43)
            {
              if ([objc_msgSend(objc_msgSend(v160 objectForKey:{v156), "textLists"), "count"}])
              {
                v52 = OUTLINED_FUNCTION_46();
                v54 = [(NSRTFWriter *)v52 _markerStringAtCharacterIndex:v53];
                if ([(__CFString *)v54 length])
                {
                  [(__CFString *)v4 rangeOfString:v54 options:10 range:v40, [(__CFString *)v4 length]- v40];
                  if (!v55)
                  {
                    [*(self + 8) appendBytes:"{\\listtext" length:10];
                    [(__CFString *)v54 length];
                    v56 = OUTLINED_FUNCTION_19_0();
                    writeCharacters(v56, v54, 0, v57, v58);
                    [*(self + 8) appendBytes:"}" length:1];
                  }
                }
              }
            }

LABEL_98:
            v43 = 0;
            goto LABEL_99;
        }
      }
    }

    v43 = HIDWORD(v157);
LABEL_162:
    HIDWORD(v157) = v43;
    v121 = OUTLINED_FUNCTION_5_3();
    writeCharacters(v121, v122, v123, v124, v125);
    if (v154)
    {
      [*(self + 8) appendBytes:"}" length:1];
    }

    v6 = v171 + v172;
    v171 = v6;
    v126 = v160;
    v11 = v153;
    if (v159 == v6)
    {
      [*(self + 8) appendBytes:"}}" length:2];
      [NSRTFWriter restoreAttributes:self];
      v159 = 0;
      v6 = v171;
      v126 = v151;
    }

    v8 = v126;
  }

  while (v6 < *(self + 24));
  if (v126)
  {
    v137 = [objc_msgSend(v126 objectForKey:{v158), "count"}];
    if (v137)
    {
      v138 = v137;
      do
      {
        --v138;
        *__str = 8236;
        [MEMORY[0x1E696AEC0] stringWithCharacters:__str length:1];
        v139 = OUTLINED_FUNCTION_4_2();
        writeCharacters(v139, v140, v141, v142, v143);
      }

      while (v138);
    }
  }

  if (!(v9 & 1 | (v10 == 0)))
  {
    v144 = [v10 count];
    if (v144)
    {
      v145 = v144 - 1;
      do
      {
        [v10 objectAtIndex:v145];
        [NSRTFWriter writeCellTerminator:atIndex:nestingLevel:];
        --v145;
      }

      while (v145 != -1);
    }
  }
}

- (BOOL)_canWriteColor:(_BOOL8)result
{
  if (result)
  {
    getUIColorClass_1[0]();
    OUTLINED_FUNCTION_8_3();
    if (objc_opt_isKindOfClass())
    {
      ColorSpace = CGColorGetColorSpace([a2 CGColor]);
      return CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelPattern;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (__CFString)_plainFontNameForFont:(uint64_t)font
{
  if (!font)
  {
    return 0;
  }

  if (!a2)
  {
    return &stru_1F01AD578;
  }

  if (_plainFontNameForFont__tigerCompatibility == 255)
  {
    v5 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    _plainFontNameForFont__tigerCompatibility = v5;
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!_plainFontNameForFont__tigerCompatibility)
  {
LABEL_10:
    os_unfair_lock_lock_with_options();
    if (!qword_1EAC9B4C0)
    {
      os_unfair_lock_unlock(&stru_1EAC9B4BC);
LABEL_14:
      symbolicTraits = [(UIFontDescriptor *)[(UIFont *)a2 fontDescriptor] symbolicTraits];
      v7 = a2;
      if ((symbolicTraits & 0xFFFFFFC) == 0)
      {
        v7 = a2;
        if ((symbolicTraits & 3) != 0)
        {
          0xF0000000 = [(UIFontDescriptor *)[(UIFont *)a2 fontDescriptor] fontDescriptorWithSymbolicTraits:symbolicTraits & 0xF0000000];
          [(UIFont *)a2 pointSize];
          v9 = [UIFont fontWithDescriptor:0xF0000000 size:?];
          [(UIFontDescriptor *)[(UIFont *)v9 fontDescriptor] fontDescriptorWithSymbolicTraits:[(UIFontDescriptor *)[(UIFont *)v9 fontDescriptor] symbolicTraits]| 3];
          [(UIFont *)v9 pointSize];
          if (-[UIFont isEqual:](v9, "isEqual:", [OUTLINED_FUNCTION_66() fontWithDescriptor:? size:?]))
          {
            v7 = v9;
          }

          else
          {
            v7 = a2;
          }
        }
      }

      fontName = [(UIFont *)v7 fontName];
      if ([(NSString *)fontName isEqualToString:@"LastResort"])
      {
        v10 = NSDefaultFont();
      }

      else if ([(NSString *)fontName isEqualToString:@"AquaKana"])
      {
        v10 = [(UIFont *)NSFont systemFontOfSize:0.0];
      }

      else
      {
        if (![(NSString *)fontName isEqualToString:@"AquaKana-Bold"])
        {
LABEL_26:
          os_unfair_lock_lock_with_options();
          v11 = qword_1EAC9B4C0;
          if (!qword_1EAC9B4C0)
          {
            v12 = *(MEMORY[0x1E696A780] + 16);
            *&keyCallBacks.hash = *MEMORY[0x1E696A780];
            *&keyCallBacks.retain = v12;
            *&keyCallBacks.describe = *(MEMORY[0x1E696A780] + 32);
            v13 = **&MEMORY[0x1E696A788];
            v11 = NSCreateMapTableWithZone(&keyCallBacks, &v13, 0x14uLL, 0);
            qword_1EAC9B4C0 = v11;
          }

          NSMapInsert(v11, a2, fontName);
          os_unfair_lock_unlock(&stru_1EAC9B4BC);
          return fontName;
        }

        v10 = [(UIFont *)NSFont boldSystemFontOfSize:0.0];
      }

      fontName = [(UIFont *)v10 fontName];
      goto LABEL_26;
    }

    fontName = NSMapGet(qword_1EAC9B4C0, a2);
    os_unfair_lock_unlock(&stru_1EAC9B4BC);
    if (!fontName)
    {
      goto LABEL_14;
    }

    return fontName;
  }

LABEL_5:

  return [(UIFont *)a2 fontName];
}

- (void)writeFontTable
{
  OUTLINED_FUNCTION_55();
  v46 = *MEMORY[0x1E69E9840];
  if (v0)
  {
    v1 = v0;
    v2 = [v0[5] count];
    keyEnumerator = [v1[5] keyEnumerator];
    v40 = &v37;
    v11 = MEMORY[0x1EEE9AC00](keyEnumerator, v4, v5, v6, v7, v8, v9, v10);
    v13 = &v37 - v12;
    [v1[1] appendBytes:"{\\fonttbl" length:{9, v11}];
    if (v2)
    {
      bzero(v13, 8 * v2);
    }

    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        *&v13[8 * [objc_msgSend(v1[5] objectForKey:{nextObject2), "unsignedIntegerValue"}]] = nextObject2;
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v17 = *&v13[8 * i];
        v18 = [(UIFont *)NSFont _fontWithName:v17 size:12.0];
        if (!v18)
        {
          v18 = [v1[6] objectForKey:v17];
        }

        v42 = v17;
        snprintf(v45, 0x64uLL, "\\f%ld\\f", i);
        [v1[1] appendBytes:v45 length:strlen(v45)];
        familyName = [v18 familyName];
        if (familyName)
        {
          v41 = v18;
          os_unfair_lock_lock_with_options();
          v20 = qword_1EAC9B4C8;
          if (!qword_1EAC9B4C8)
          {
            v21 = *(MEMORY[0x1E696A780] + 16);
            *&v44.hash = *MEMORY[0x1E696A780];
            *&v44.retain = v21;
            *&v44.describe = *(MEMORY[0x1E696A780] + 32);
            v43 = **&MEMORY[0x1E696A4B0];
            qword_1EAC9B4C8 = NSCreateMapTableWithZone(&v44, &v43, 5uLL, 0);
            NSMapInsertKnownAbsent(qword_1EAC9B4C8, @"Times-Roman", 1);
            NSMapInsertKnownAbsent(qword_1EAC9B4C8, @"Helvetica", 2);
            NSMapInsertKnownAbsent(qword_1EAC9B4C8, @"Courier", 3);
            NSMapInsertKnownAbsent(qword_1EAC9B4C8, @"Symbol", 6);
            NSMapInsertKnownAbsent(qword_1EAC9B4C8, @"Ohlfs", 3);
            v20 = qword_1EAC9B4C8;
          }

          v39 = familyName;
          familyName = NSMapGet(v20, familyName);
          v18 = v41;
          if (!familyName)
          {
            if (_MergedGlobals_476)
            {
              familyName = 0;
            }

            else
            {
              v38 = v2;
              os_unfair_lock_unlock(&stru_1EAC9B4BC);
              v22 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "pathForResource:ofType:", @"NSRTFFontFamilyMappings", @"plist"}];
              if (v22)
              {
                v23 = [objc_allocWithZone(MEMORY[0x1E695DF20]) initWithContentsOfFile:v22];
              }

              else
              {
                v23 = 0;
              }

              os_unfair_lock_lock_with_options();
              if ((_MergedGlobals_476 & 1) == 0)
              {
                _MergedGlobals_476 = 1;
                if (v23)
                {
                  for (j = 1; j != 8; ++j)
                  {
                    v25 = [v23 objectForKey:rtfFontFamilyNames[j]];
                    v26 = [v25 count];
                    if (v26)
                    {
                      v27 = v26 - 1;
                      do
                      {
                        [v25 objectAtIndex:v27];
                        v28 = OUTLINED_FUNCTION_65();
                        NSMapInsert(v28, v29, j);
                        --v27;
                      }

                      while (v27 != -1);
                    }
                  }
                }
              }

              familyName = NSMapGet(qword_1EAC9B4C8, v39);
              v2 = v38;
              v18 = v41;
            }
          }

          os_unfair_lock_unlock(&stru_1EAC9B4BC);
        }

        [(NSRTFWriter *)v1 writeEscapedUTF8String:?];
        v30 = [(NSRTFWriter *)v1 _mostCompatibleCharset:v18];
        snprintf(v45, 0x64uLL, "\\fcharset%d ", v30);
        [v1[1] appendBytes:v45 length:strlen(v45)];
        v31 = v42;
        [(__CFString *)v42 length];
        v32 = OUTLINED_FUNCTION_19_0();
        writeCharacters(v32, v31, 0, v33, v34);
        if (i % 3 == 2)
        {
          v35 = ";\n";
        }

        else
        {
          v35 = ";";
        }

        if (i % 3 == 2)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }

        [v1[1] appendBytes:v35 length:v36];
      }
    }

    [v1[1] appendBytes:"}\n" length:2];
  }

  OUTLINED_FUNCTION_54();
}

- (unint64_t)writeColorTable
{
  v55 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = [*(result + 56) count];
    if (result >= 2)
    {
      v2 = result;
      [*(v1 + 8) appendBytes:"{\\colortbl;" length:11];
      for (i = 1; i != v2; ++i)
      {
        v4 = RGBColorForColor([*(v1 + 64) objectAtIndexedSubscript:i]);
        if (v4)
        {
          v49 = 0.0;
          *v50 = 0.0;
          v48 = 0.0;
          [v4 getRed:v50 green:&v49 blue:&v48 alpha:0];
          v5 = *v50;
          if (*v50 >= 0.0)
          {
            if (*v50 > 1.0)
            {
              *v50 = 1.0;
              v5 = 1.0;
            }
          }

          else
          {
            *v50 = 0.0;
            v5 = 0.0;
          }

          v6 = v49;
          if (v49 >= 0.0)
          {
            if (v49 > 1.0)
            {
              v49 = 1.0;
              v6 = 1.0;
            }
          }

          else
          {
            v49 = 0.0;
            v6 = 0.0;
          }

          v7 = v48;
          if (v48 >= 0.0)
          {
            if (v48 > 1.0)
            {
              v48 = 1.0;
              v7 = 1.0;
            }
          }

          else
          {
            v48 = 0.0;
            v7 = 0.0;
          }

          snprintf(__str, 0xC8uLL, "\\red%d\\green%d\\blue%d", (v5 * 255.0 + 0.5), (v6 * 255.0 + 0.5), (v7 * 255.0 + 0.5));
          [*(v1 + 8) appendBytes:__str length:strlen(__str)];
        }

        if (i + -3 - 5 * (i / 5) == 1)
        {
          v8 = ";\n";
        }

        else
        {
          v8 = ";";
        }

        if (i + -3 - 5 * (i / 5) == 1)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        [*(v1 + 8) appendBytes:v8 length:v9];
      }

      [*(v1 + 8) appendBytes:"}\n{\\*\\expandedcolortbl;;" length:24];
      if (v2 != 2)
      {
        v45 = *MEMORY[0x1E695F118];
        v42 = *MEMORY[0x1E695F128];
        v43 = *MEMORY[0x1E695F0E0];
        cf2 = *MEMORY[0x1E695F0B8];
        v41 = *MEMORY[0x1E695F1C0];
        v40 = *MEMORY[0x1E695F110];
        v10 = 2;
        v38 = *MEMORY[0x1E695F1B0];
        v39 = *MEMORY[0x1E695F138];
        v37 = *MEMORY[0x1E695F108];
        v47 = v2;
        while (1)
        {
          v11 = [*(v1 + 64) objectAtIndexedSubscript:v10];
          if (v11)
          {
            break;
          }

LABEL_102:
          if (v10 % 5 == 4)
          {
            v35 = ";\n";
          }

          else
          {
            v35 = ";";
          }

          if (v10 % 5 == 4)
          {
            v36 = 2;
          }

          else
          {
            v36 = 1;
          }

          [*(v1 + 8) appendBytes:v35 length:v36];
          if (++v10 == v2)
          {
            return [*(v1 + 8) appendBytes:"}\n" length:2];
          }
        }

        v12 = v11;
        cGColor = [v11 CGColor];
        if (!cGColor || (v14 = cGColor, (ColorSpace = CGColorGetColorSpace(cGColor)) == 0))
        {
          v20 = 0;
          goto LABEL_37;
        }

        v16 = ColorSpace;
        v17 = CGColorSpaceCopyName(ColorSpace);
        Model = CGColorSpaceGetModel(v16);
        cf = v17;
        if (Model)
        {
          if (Model != kCGColorSpaceModelCMYK)
          {
            if (Model != kCGColorSpaceModelRGB)
            {
              v20 = 0;
              v19 = 0;
LABEL_71:
              v22 = 0;
              goto LABEL_72;
            }

            if (v17)
            {
              if (CFEqual(v17, cf2))
              {
                v19 = 0;
                v20 = 5;
                goto LABEL_65;
              }

              if (CFEqual(v17, v41) || CFEqual(v17, v40))
              {
                v19 = 0;
                v20 = 1;
                goto LABEL_65;
              }

              if (CFEqual(v17, v39))
              {
                v19 = 0;
                v20 = 2;
                goto LABEL_65;
              }

              if (CFEqual(v17, v38) || (v2 = v47, CFEqual(v17, v37)))
              {
                v19 = 0;
                v20 = 3;
                goto LABEL_65;
              }
            }

            v19 = newCGColorByConvertingToColorSpaceWithName(v14, cf2);
            if (v19)
            {
              v20 = 5;
              goto LABEL_64;
            }

LABEL_70:
            v20 = 0;
            goto LABEL_71;
          }

          if (v17 && CFEqual(v17, v45))
          {
            v19 = 0;
            v20 = 6;
            goto LABEL_65;
          }

          v19 = newCGColorByConvertingToColorSpaceWithName(v14, v45);
          if (!v19)
          {
            goto LABEL_70;
          }

          v20 = 6;
        }

        else
        {
          if (v17 && (CFEqual(v17, v42) || CFEqual(v17, v43)))
          {
            v19 = 0;
            v20 = 4;
            goto LABEL_65;
          }

          v19 = newCGColorByConvertingToColorSpaceWithName(v14, v43);
          if (!v19)
          {
            goto LABEL_70;
          }

          v20 = 4;
        }

LABEL_64:
        v14 = v19;
LABEL_65:
        if (CGColorGetComponents(v14) && (NumberOfComponents = CGColorGetNumberOfComponents(v14), NumberOfComponents - 1 <= 4))
        {
          v22 = NumberOfComponents;
          __memcpy_chk();
        }

        else
        {
          v22 = 0;
        }

        v2 = v47;
LABEL_72:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (v22)
        {
LABEL_77:
          if (v22 && v20)
          {
            v24 = snprintf(__str, 0xC8uLL, "\\cs%s", *(&rtfColorSpaceKeyword + v20));
            v25 = 0;
            v26 = &__str[v24];
            do
            {
              v27 = *&v50[v25];
              if (v22 - 1 > v25 || v27 < 1.0)
              {
                v26 += snprintf(v26, &v55 - v26, "\\c%ld", llround(v27 * 100000.0));
              }

              ++v25;
            }

            while (v22 != v25);
            [*(v1 + 8) appendBytes:__str length:strlen(__str)];
            v2 = v47;
          }

          if (objc_opt_respondsToSelector())
          {
            _systemColorName = [v12 _systemColorName];
            if (_systemColorName)
            {
              uTF8String = [_systemColorName UTF8String];
              if (uTF8String)
              {
                v31 = *uTF8String;
                if (*uTF8String)
                {
                  v32 = (uTF8String + 1);
                  while ((v31 & 0xDFu) - 65 < 0x1A || v31 == 95 || (v31 - 58) >= 0xFFFFFFF6)
                  {
                    v34 = *v32++;
                    v31 = v34;
                    if (!v34)
                    {
                      goto LABEL_100;
                    }
                  }
                }

                else
                {
LABEL_100:
                  if (snprintf(__str, 0x64uLL, "\\cname %s", uTF8String) <= 0x63)
                  {
                    [*(v1 + 8) appendBytes:__str length:strlen(__str)];
                  }
                }
              }
            }
          }

          goto LABEL_102;
        }

LABEL_37:
        v21 = [v12 getRed:v50 green:&v51 blue:&v52 alpha:&v53];
        if (v21)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        if (v21)
        {
          v20 = 1;
        }

        goto LABEL_77;
      }

      return [*(v1 + 8) appendBytes:"}\n" length:2];
    }
  }

  return result;
}

- (uint64_t)writeHighlightStyleTable
{
  if (result)
  {
    v5 = result;
    result = [*(result + 208) count];
    if (result)
    {
      v6 = OUTLINED_FUNCTION_38_0();
      v7 = *(v5 + 208);
      result = OUTLINED_FUNCTION_21_0(v8, v9, v6);
      if (result)
      {
        OUTLINED_FUNCTION_32_0();
        do
        {
          v10 = 0;
          do
          {
            OUTLINED_FUNCTION_40_0();
            if (!v11)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(v16 + 8 * v10);
            v13 = [v12 length];
            if (v13)
            {
              v13 = [objc_msgSend(*(v3 + 3520) "defaultTextHighlightStyles")];
              if (v13 == v4)
              {
                if ((v2 & 1) == 0)
                {
                  [*(v5 + 8) appendBytes:"{\\*\\AppleHighlightTable;" length:24];
                }

                v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@;", v12];
                OUTLINED_FUNCTION_52([v15 length]);

                v2 = 1;
              }
            }

            ++v10;
          }

          while (v1 != v10);
          result = OUTLINED_FUNCTION_21_0(v13, v14);
          v1 = result;
        }

        while (result);
        if (v2)
        {
          return [*(v5 + 8) appendBytes:"}\n" length:2];
        }
      }
    }
  }

  return result;
}

- (uint64_t)writeHighlightColorSchemeTable
{
  if (result)
  {
    v5 = result;
    result = [*(result + 216) count];
    if (result)
    {
      v6 = OUTLINED_FUNCTION_38_0();
      v7 = *(v5 + 216);
      result = OUTLINED_FUNCTION_21_0(v8, v9, v6);
      if (result)
      {
        OUTLINED_FUNCTION_32_0();
        do
        {
          v10 = 0;
          do
          {
            OUTLINED_FUNCTION_40_0();
            if (!v11)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(v16 + 8 * v10);
            v13 = [v12 length];
            if (v13)
            {
              v13 = [objc_msgSend(*(v3 + 3520) "defaultTextHighlightColorSchemes")];
              if (v13 == v4)
              {
                if ((v2 & 1) == 0)
                {
                  [*(v5 + 8) appendBytes:"{\\*\\AppleHilightClrSchTbl;" length:26];
                }

                v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@;", v12];
                OUTLINED_FUNCTION_52([v15 length]);

                v2 = 1;
              }
            }

            ++v10;
          }

          while (v1 != v10);
          result = OUTLINED_FUNCTION_21_0(v13, v14);
          v1 = result;
        }

        while (result);
        if (v2)
        {
          return [*(v5 + 8) appendBytes:"}\n" length:2];
        }
      }
    }
  }

  return result;
}

- (void)writeListTable
{
  OUTLINED_FUNCTION_67();
  v273 = *MEMORY[0x1E69E9840];
  if (v1)
  {
    v2 = v1;
    v3 = [v1[9] count];
    if (v3)
    {
      v4 = v3;
      [v2[1] appendBytes:"{\\*\\listtable" length:13];
      v5 = 0;
      v6 = 1;
      v192 = @"NSParagraphStyle";
      v202 = v4;
      do
      {
        _markerSuffix = [objc_msgSend(v2[9] objectAtIndex:{v5), "rangeValue"}];
        v9 = v8;
        array = [MEMORY[0x1E695DEC8] array];
        v18 = OUTLINED_FUNCTION_24_0(array, v11, v12, v13, v14, v15, v16, v17, v5 + 1, v168, v181, v192, v202, v5 + 1, v222, v232, _markerSuffix, 0, v262, __s[0]);
        snprintf(v18, v19, "{\\list\\listtemplateid%lu\\listhybrid", v155);
        v20 = v2[1];
        strlen(__s);
        OUTLINED_FUNCTION_23_0();
        [v20 appendBytes:? length:?];
        v21 = &_markerSuffix[v9];
        while (v252 + v242 < v21)
        {
          _markerSuffix = [objc_msgSend(v2[2] attribute:v193) atIndex:"textLists" effectiveRange:?];
          v22 = [_markerSuffix count];
          if (v22 > [array count])
          {
            array = _markerSuffix;
          }
        }

        v23 = [array count];
        v233 = v23;
        if (v23)
        {
          v31 = 0;
          v32 = 1;
          v223 = v6;
          do
          {
            v33 = [array objectAtIndex:v31];
            markerFormat = [v33 markerFormat];
            [v33 listOptions];
            startingItemNumber = [OUTLINED_FUNCTION_60() startingItemNumber];
            v36 = [(__CFString *)markerFormat length];
            [(__CFString *)markerFormat rangeOfString:@"{decimal}"];
            if (v37)
            {
              v38 = 0;
            }

            else
            {
              [(__CFString *)markerFormat rangeOfString:@"{upper-roman}"];
              if (v39)
              {
                v38 = 1;
              }

              else
              {
                [(__CFString *)markerFormat rangeOfString:@"{lower-roman}"];
                if (v40)
                {
                  v38 = 2;
                }

                else
                {
                  [(__CFString *)markerFormat rangeOfString:@"{upper-alpha}"];
                  if (v41 || ([(__CFString *)markerFormat rangeOfString:@"{upper-latin}"], v42))
                  {
                    v38 = 3;
                  }

                  else
                  {
                    [(__CFString *)markerFormat rangeOfString:@"{lower-alpha}"];
                    if (v130 || ([(__CFString *)markerFormat rangeOfString:@"{lower-latin}"], v131))
                    {
                      v38 = 4;
                    }

                    else
                    {
                      v38 = 23;
                    }
                  }
                }
              }
            }

            snprintf(__s, 0x12CuLL, "{\\listlevel\\levelnfc%lu\\levelnfcn%lu\\leveljc0\\leveljcn0\\levelfollow0\\levelstartat%ld\\levelspace360\\levelindent0", v38, v38, startingItemNumber);
            v43 = v2[1];
            strlen(__s);
            OUTLINED_FUNCTION_23_0();
            [v43 appendBytes:? length:?];
            [v2[1] appendBytes:"{\\*\\levelmarker " length:16];
            if (v36)
            {
              writeCharacters(v2[1], markerFormat, 0, v36, 0x600u);
            }

            v44 = [v2[1] appendBytes:"}" length:1];
            if (v0)
            {
              v44 = [v2[1] appendBytes:"\\levelprepend" length:13];
            }

            v52 = OUTLINED_FUNCTION_24_0(v44, v45, v46, v47, v48, v49, v50, v51, v31 + v6 - 100 * (v32 / 0x64), v170, v183, v193, v203, v212, v223, v233, v242, v252, v263, __s[0]);
            v54 = snprintf(v52, v53, "{\\leveltext\\leveltemplateid%d", v156);
            OUTLINED_FUNCTION_72(v54, v55, v56, v57, v58, v59, v60, v61, v157, v171, v184, v194, v204, v213, v224, v234, v243, v253, v264, __s[0]);
            OUTLINED_FUNCTION_23_0();
            [v36 appendBytes:? length:?];
            if ([v33 isOrdered])
            {
              [v33 _markerPrefix];
              _markerSuffix = [OUTLINED_FUNCTION_60() _markerSuffix];
              v62 = [(__CFString *)v0 length];
              v63 = [_markerSuffix length];
              v71 = OUTLINED_FUNCTION_24_0(v63, v64, v65, v66, v67, v68, v69, v70, v62 + 1 + v63, v172, v185, v195, v205, v214, v225, v235, v244, v254, v265, __s[0]);
              snprintf(v71, v72, "\\'%02x", v158);
              v73 = v2[1];
              strlen(__s);
              OUTLINED_FUNCTION_23_0();
              v74 = [v73 appendBytes:? length:?];
              if (v62)
              {
                v74 = writeCharacters(v2[1], v0, 0, v62, 0x600u);
              }

              v82 = OUTLINED_FUNCTION_24_0(v74, v75, v76, v77, v78, v79, v80, v81, v31, v173, v186, v196, v206, v215, v226, v236, v245, v255, v266, __s[0]);
              snprintf(v82, v83, "\\'%02x", v159);
              v0 = v2[1];
              strlen(__s);
              OUTLINED_FUNCTION_23_0();
              v84 = [__CFString appendBytes:v0 length:"appendBytes:length:"];
              if (v63)
              {
                v84 = OUTLINED_FUNCTION_53();
              }

              v92 = OUTLINED_FUNCTION_24_0(v84, v85, v86, v87, v88, v89, v90, v91, v62 + 1, v174, v187, v197, v207, v216, v227, v237, v246, v256, v267, __s[0]);
              v94 = snprintf(v92, v93, ";}{\\levelnumbers\\'%02x;}", v160);
              OUTLINED_FUNCTION_72(v94, v95, v96, v97, v98, v99, v100, v101, v161, v175, v188, v198, v208, v217, v228, v238, v247, v257, v268, __s[0]);
              OUTLINED_FUNCTION_23_0();
              v102 = [_markerSuffix appendBytes:? length:?];
              LODWORD(v6) = v229;
            }

            else
            {
              _markerSuffix = [v33 markerForItemNumber:1];
              v110 = [_markerSuffix length];
              v118 = OUTLINED_FUNCTION_24_0(v110, v111, v112, v113, v114, v115, v116, v117, v110, v172, v185, v195, v205, v214, v225, v235, v244, v254, v265, __s[0]);
              snprintf(v118, v119, "\\'%02x", v162);
              v0 = v2[1];
              strlen(__s);
              OUTLINED_FUNCTION_23_0();
              [__CFString appendBytes:v0 length:"appendBytes:length:"];
              if (v110)
              {
                OUTLINED_FUNCTION_53();
              }

              v102 = [v2[1] appendBytes:";}{\\levelnumbers;}" length:18];
            }

            v176 = vcvtmd_s64_f64(++v31 * 36.0 * 20.0 + 0.01);
            v120 = OUTLINED_FUNCTION_24_0(v102, v103, v104, v105, v106, v107, v108, v109, v176, v176, v189, v199, v209, v218, v229, v239, v248, v258, v269, __s[0]);
            v122 = snprintf(v120, v121, "\\fi-360\\li%ld\\lin%ld }", v163, v177);
            OUTLINED_FUNCTION_72(v122, v123, v124, v125, v126, v127, v128, v129, v164, v178, v190, v200, v210, v219, v230, v240, v249, v259, v270, __s[0]);
            OUTLINED_FUNCTION_23_0();
            v23 = [_markerSuffix appendBytes:? length:?];
            ++v32;
          }

          while (v233 != v31);
        }

        v5 = v212;
        v132 = OUTLINED_FUNCTION_24_0(v23, v24, v25, v26, v27, v28, v29, v30, v212, v169, v182, v193, v203, v212, v223, v233, v242, v252, v263, __s[0]);
        snprintf(v132, v133, "{\\listname ;}\\listid%lu}", v165);
        v134 = v2[1];
        strlen(__s);
        OUTLINED_FUNCTION_23_0();
        [v134 appendBytes:? length:?];
        v135 = v202;
        if (v5 < v202)
        {
          [v2[1] appendBytes:"\n" length:1];
        }

        v6 = (v6 + 100);
      }

      while (v5 != v202);
      v136 = [v2[1] appendBytes:"}\n{\\*\\listoverridetable" length:23];
      v144 = 1;
      do
      {
        v145 = OUTLINED_FUNCTION_24_0(v136, v137, v138, v139, v140, v141, v142, v143, v144, v144, v181, v192, v202, v220, v222, v232, v250, v260, v262, __s[0]);
        v147 = snprintf(v145, v146, "{\\listoverride\\listid%lu\\listoverridecount0\\ls%lu}", v166, v179);
        OUTLINED_FUNCTION_72(v147, v148, v149, v150, v151, v152, v153, v154, v167, v180, v191, v201, v211, v221, v231, v241, v251, v261, v271, __s[0]);
        OUTLINED_FUNCTION_23_0();
        v136 = [_markerSuffix appendBytes:? length:?];
        ++v144;
        --v135;
      }

      while (v135);
      [v2[1] appendBytes:"}\n" length:2];
    }
  }

  OUTLINED_FUNCTION_68();
}

- (uint64_t)writePaperSize
{
  v46 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [*(result + 168) objectForKey:@"PaperSize"];
    if (v2)
    {
      [v2 sizeValue];
      v4 = v3;
      v6 = v5;
    }

    else
    {
      v4 = 612.0;
      v6 = 792.0;
    }

    v7 = [*(v1 + 168) objectForKey:@"ViewSize"];
    v8 = MEMORY[0x1E696AA88];
    if (v7)
    {
      [v7 sizeValue];
      v10 = v9;
      v12 = v11;
    }

    else
    {
      v10 = *MEMORY[0x1E696AA88];
      v12 = *(MEMORY[0x1E696AA88] + 8);
    }

    v13 = [*(v1 + 168) objectForKey:@"LeftMargin"];
    v14 = 90.0;
    v15 = 90.0;
    if (v13)
    {
      [v13 doubleValue];
      v15 = v16;
    }

    v17 = [*(v1 + 168) objectForKey:@"RightMargin"];
    if (v17)
    {
      [v17 doubleValue];
      v14 = v18;
    }

    v19 = [*(v1 + 168) objectForKey:@"BottomMargin"];
    if (v19)
    {
      [v19 doubleValue];
      v21 = v20;
    }

    else
    {
      v21 = 72.0;
    }

    v22 = [*(v1 + 168) objectForKey:@"TopMargin"];
    if (v22)
    {
      [v22 doubleValue];
      v24 = v23;
    }

    else
    {
      v24 = 72.0;
    }

    v25 = [*(v1 + 168) objectForKey:@"ViewZoom"];
    if (v25)
    {
      [v25 doubleValue];
      v27 = v26;
    }

    else
    {
      v27 = -1;
    }

    integerValue = [*(v1 + 168) objectForKey:@"ViewMode"];
    if (integerValue)
    {
      integerValue = [integerValue integerValue];
      v35 = integerValue;
    }

    else
    {
      v35 = -1;
    }

    __s[0] = 0;
    v36 = __s;
    if (v4 != 612.0 || v6 != 792.0)
    {
      OUTLINED_FUNCTION_57(integerValue, v29, "\\paperw%ld\\paperh%ld", v30, v31, v32, v33, v34, vcvtmd_s64_f64(v4 * 20.0 + 0.01), vcvtmd_s64_f64(v6 * 20.0 + 0.01), __s[0]);
      v36 = &__s[strlen(__s)];
    }

    if (v15 != 90.0)
    {
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_51("\\margl%ld", v37);
      v36 += strlen(v36);
    }

    if (v14 != 90.0)
    {
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_51("\\margr%ld", v38);
      v36 += strlen(v36);
    }

    if (v21 != 72.0)
    {
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_51("\\margb%ld", v39);
      v36 += strlen(v36);
    }

    if (v24 != 72.0)
    {
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_51("\\margt%ld", v40);
      v36 += strlen(v36);
    }

    v47.width = v10;
    v47.height = v12;
    result = NSEqualSizes(v47, *v8);
    if ((result & 1) == 0)
    {
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_51("\\vieww%ld\\viewh%ld", v41);
      result = strlen(v36);
      v36 += result;
    }

    if ((v35 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_51("\\viewkind%ld", v42);
      result = strlen(v36);
    }

    if (v27 >= 1)
    {
      OUTLINED_FUNCTION_30_0();
      result = OUTLINED_FUNCTION_51("\\viewscale%ld", v43);
    }

    if (__s[0])
    {
      v44 = *(v1 + 8);
      strlen(__s);
      OUTLINED_FUNCTION_13_1();
      [v44 appendBytes:? length:?];
      return [*(v1 + 8) appendBytes:"\n" length:1];
    }
  }

  return result;
}

- (id)writeHyphenation
{
  if (result)
  {
    v1 = result;
    result = [result[21] objectForKey:@"HyphenationFactor"];
    if (result)
    {
      result = [result doubleValue];
      if (v2 > 0.0)
      {
        v3 = OUTLINED_FUNCTION_61(v2, 100.0);
        v11 = OUTLINED_FUNCTION_57(v4, v5, "\\hyphauto1\\hyphfactor%ld\n", v6, v7, v8, v9, v10, v3, v20, 0);
        OUTLINED_FUNCTION_49(v11, v12, v13, v14, v15, v16, v17, v18, v19, v21, __s);
        OUTLINED_FUNCTION_13_1();
        return [v1 appendBytes:? length:?];
      }
    }
  }

  return result;
}

- (id)writeDefaultTabInterval
{
  if (result)
  {
    v1 = result;
    v2 = [result[21] objectForKey:@"DefaultTabInterval"];
    if (v2)
    {
      result = [v2 doubleValue];
      goto LABEL_4;
    }

    result = [v1[2] length];
    if (result)
    {
      result = [v1[2] attribute:@"NSParagraphStyle" atIndex:0 effectiveRange:0];
      if (result)
      {
        result = [result defaultTabInterval];
LABEL_4:
        if (v3 > 0.0)
        {
          OUTLINED_FUNCTION_3_3(v3, 0.01);
          v11 = OUTLINED_FUNCTION_57(v4, v5, "\\deftab%ld\n", v6, v7, v8, v9, v10, v19, v21, 0);
          OUTLINED_FUNCTION_49(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, __s);
          OUTLINED_FUNCTION_13_1();
          return [v1 appendBytes:? length:?];
        }
      }
    }
  }

  return result;
}

- (void)writeBackgroundColor
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [*(self + 168) objectForKey:@"BackgroundColor"];
    if (v2)
    {
      v3 = RGBColorForColor(v2);
      if (v3)
      {
        v10 = 0.0;
        v11 = 0.0;
        v8 = 0;
        v9 = 0.0;
        __str[0] = 0;
        [v3 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
        v4 = OUTLINED_FUNCTION_61(v11, 255.0);
        v7 = (vcvtmd_s64_f64(v6 + v10 * v5) << 8) | (vcvtmd_s64_f64(v6 + v9 * v5) << 16) | vcvtmd_s64_f64(v4);
        if (v7 != 0xFFFFFF)
        {
          snprintf(__str, 0x1F4uLL, "{\\*\\background {\\shp{\\*\\shpinst\\shpleft0\\shptop0\\shpright0\\shpbottom0\\shpfhdr0\\shpbxmargin\\shpbymargin\\shpwr0\\shpwrk0\\shpfblwtxt1\\shpz0\\shplid1025{\\sp{\\sn shapeType}{\\sv 1}}{\\sp{\\sn fFlipH}{\\sv 0}}{\\sp{\\sn fFlipV}{\\sv 0}}{\\sp{\\sn fillColor}{\\sv %d}}{\\sp{\\sn fFilled}{\\sv 1}}{\\sp{\\sn lineWidth}{\\sv 0}}{\\sp{\\sn fLine}{\\sv 0}}{\\sp{\\sn bWMode}{\\sv 9}}{\\sp{\\sn fBackground}{\\sv 1}}}}}\n", v7);
          [*(self + 8) appendBytes:__str length:strlen(__str)];
        }
      }
    }
  }
}

- (uint64_t)_setTextScalingConversionTarget:(uint64_t)result
{
  if (result)
  {
    *(result + 200) = a2;
  }

  return result;
}

- (uint64_t)_setTextScalingConversionSource:(uint64_t)result
{
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

- (uint64_t)_writeVersionsAndEncodings
{
  v34 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [*(result + 168) objectForKey:@"ReadOnly"];
    if (v2)
    {
      integerValue = [v2 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v4 = [*(v1 + 168) objectForKey:@"NoCocoaVersion"];
    if (v4)
    {
      v5 = [v4 integerValue] < 1;
    }

    else
    {
      v5 = 1;
    }

    objc_opt_class();
    v6 = +[NSRTFWriter cocoaVersion];
    SystemEncoding = CFStringGetSystemEncoding();
    if (SystemEncoding <= 0xFE && (OUTLINED_FUNCTION_64(), (v8 & 1) != 0))
    {
      OUTLINED_FUNCTION_63();
      if (!(!v12 & v11))
      {
        v13 = v9;
        SystemEncoding = 1280;
        switch(v13)
        {
          case 1:
            SystemEncoding = 1056;
            if (!v5)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          case 2:
            SystemEncoding = 1059;
            if (!v5)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          case 3:
            SystemEncoding = 1058;
            if (!v5)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          case 4:
            SystemEncoding = 1286;
            if (!v5)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          case 5:
            SystemEncoding = 1285;
            if (!v5)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          case 6:
            SystemEncoding = 1283;
            goto LABEL_37;
          case 7:
            SystemEncoding = 1282;
            if (!v5)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          default:
            goto LABEL_37;
        }
      }

      switch(v10)
      {
        case 21:
          SystemEncoding = 1053;
          if (!v5)
          {
            break;
          }

          goto LABEL_38;
        case 22:
        case 23:
        case 24:
        case 26:
        case 27:
        case 28:
          goto LABEL_45;
        case 25:
          SystemEncoding = 1057;
          if (!v5)
          {
            break;
          }

          goto LABEL_38;
        case 29:
          SystemEncoding = 1281;
          if (!v5)
          {
            break;
          }

          goto LABEL_38;
        case 30:
          SystemEncoding = 1288;
          if (!v5)
          {
            break;
          }

          goto LABEL_38;
        default:
          if (v10 == 35)
          {
            SystemEncoding = 1284;
            if (v5)
            {
              goto LABEL_38;
            }
          }

          else
          {
LABEL_45:
            SystemEncoding = 0;
            if (v5)
            {
              goto LABEL_38;
            }
          }

          break;
      }
    }

    else
    {
LABEL_37:
      if (v5)
      {
LABEL_38:
        v14 = floor(v6);
        v16 = floor(OUTLINED_FUNCTION_61(v6 - v14, 1000.0));
        if (v15 >= 0xFF)
        {
          v17 = "ansi";
        }

        else
        {
          v17 = "mac";
        }

        v18 = CFStringConvertEncodingToWindowsCodepage(v15);
        if (v16 >= 1.0)
        {
          v31 = v14;
          v32 = v16;
          v30 = v18;
          v19 = snprintf(__str, 0xC8uLL, "\\rtf1\\%s\\ansicpg%ld\\cocoartf%ld\\cocoasubrtf%ld\n");
        }

        else
        {
          v30 = v18;
          v31 = v14;
          v19 = snprintf(__str, 0xC8uLL, "\\rtf1\\%s\\ansicpg%ld\\cocoartf%ld\n");
        }

        *(v1 + 152) |= 0x40u;
        goto LABEL_50;
      }
    }

LABEL_46:
    if (SystemEncoding >= 0xFF)
    {
      v17 = "ansi";
    }

    else
    {
      v17 = "mac";
    }

    v27 = CFStringConvertEncodingToWindowsCodepage(SystemEncoding);
    v19 = snprintf(__str, 0xC8uLL, "\\rtf1\\%s\\ansicpg%ld\n", v17, v27);
LABEL_50:
    OUTLINED_FUNCTION_74(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31, v32, __str[0]);
    OUTLINED_FUNCTION_33_0();
    result = [v17 appendBytes:? length:?];
    if (integerValue)
    {
      snprintf(__str, 0xC8uLL, "\\readonlydoc%ld", integerValue);
      v28 = *(v1 + 8);
      strlen(__str);
      OUTLINED_FUNCTION_33_0();
      return [v28 appendBytes:? length:?];
    }
  }

  return result;
}

- (id)_writeTextScalingAndRenderingHint
{
  if (result)
  {
    v1 = result;
    result = [result[21] objectForKey:0x1F01B4978];
    if ((v1[19] & 0x40) != 0 || result && (result = [result doubleValue], v2 >= 2466.0))
    {
      v3 = _NSTextScalingTypeForCurrentEnvironment();
      v4 = [v1[21] objectForKey:@"TextScaling"];
      if (v4)
      {
        integerValue = [v4 integerValue];
        if (integerValue < 2)
        {
          v3 = integerValue;
        }
      }

      v6 = v1[25];
      if (v6 <= 1)
      {
        *(v1 + 38) |= 0x20u;
        v3 = v6;
      }

      v7 = _NSTextScalingTypeForCurrentEnvironment();
      v14 = OUTLINED_FUNCTION_48(v7, v8, "\\cocoatextscaling%ld\\cocoaplatform%ld", v9, v10, v11, v12, v13, v3, v7, *v34, v34[4]);
      v22 = OUTLINED_FUNCTION_56(v14, v15, v16, v17, v18, v19, v20, v21, v30, v32, v35, v37);
      return OUTLINED_FUNCTION_29_0(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33, v36, v38);
    }
  }

  return result;
}

- (uint64_t)writeStringDocumentAttribute:(uint64_t)result withRTFKeyword:(uint64_t)keyword
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = OUTLINED_FUNCTION_69(result, keyword);
    if (result)
    {
      v10 = result;
      OUTLINED_FUNCTION_48(result, v4, "\n{%s ", v5, v6, v7, v8, v9, v3, v14, v15, __s[0]);
      [*(v2 + 8) appendBytes:__s length:strlen(__s)];
      [(__CFString *)v10 length];
      v11 = OUTLINED_FUNCTION_19_0();
      writeCharacters(v11, v10, 0, v12, v13);
      return [*(v2 + 8) appendBytes:"}" length:1];
    }
  }

  return result;
}

- (uint64_t)writeDateDocumentAttribute:(uint64_t)result withRTFKeyword:(uint64_t)keyword
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = OUTLINED_FUNCTION_69(result, keyword);
    if (result)
    {
      OUTLINED_FUNCTION_48(result, v4, "\n{%s", v5, v6, v7, v8, v9, v3, v11, v12, __s[0]);
      [*(v2 + 8) appendBytes:__s length:strlen(__s)];
      v10 = OUTLINED_FUNCTION_25_0();
      [NSRTFWriter writeDate:v10];
      return [*(v2 + 8) appendBytes:"}" length:1];
    }
  }

  return result;
}

- (uint64_t)writeDate:(uint64_t)result
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    OUTLINED_FUNCTION_22_0();
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = objc_alloc(MEMORY[0x1E695DEE8]);
    v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v8 = [v7 components:252 fromDate:v2];

    snprintf(__str, 0x12CuLL, "\\yr%d\\mo%d\\dy%d\\hr%d\\min%d\\sec%d", [v8 year], objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "hour"), objc_msgSend(v8, "minute"), objc_msgSend(v8, "second"));
    result = [*(v1 + 8) appendBytes:__str length:strlen(__str)];
    if (v5 < 2147483650.0)
    {
      snprintf(__str, 0x12CuLL, "\\timesinceref%ld", v5);
      return [*(v1 + 8) appendBytes:__str length:strlen(__str)];
    }
  }

  return result;
}

- (id)writeKeywordsDocumentAttribute
{
  if (result)
  {
    v1 = result;
    result = [result[21] objectForKey:@"NSKeywordsDocumentAttribute"];
    if (result)
    {
      v2 = result;
      result = [result count];
      if (result)
      {
        v3 = [v2 componentsJoinedByString:{@", "}];
        [v1[1] appendBytes:"\n{\\keywords " length:12];
        [(__CFString *)v3 length];
        v4 = OUTLINED_FUNCTION_19_0();
        writeCharacters(v4, v3, 0, v5, v6);
        v7 = v1[1];

        return [v7 appendBytes:"}" length:1];
      }
    }
  }

  return result;
}

- (uint64_t)writeInfo
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 8) length];
    [v1[1] appendBytes:"{\\info" length:6];
    v3 = [v1[1] length];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSTitleDocumentAttribute"];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSSubjectDocumentAttribute"];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSCommentDocumentAttribute"];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSAuthorDocumentAttribute"];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSEditorDocumentAttribute"];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSManagerDocumentAttribute"];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSCompanyDocumentAttribute"];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSCopyrightDocumentAttribute"];
    [NSRTFWriter writeStringDocumentAttribute:v1 withRTFKeyword:@"NSCategoryDocumentAttribute"];
    [NSRTFWriter writeDateDocumentAttribute:v1 withRTFKeyword:@"NSCreationTimeDocumentAttribute"];
    [NSRTFWriter writeDateDocumentAttribute:v1 withRTFKeyword:@"NSModificationTimeDocumentAttribute"];
    [(NSRTFWriter *)v1 writeKeywordsDocumentAttribute];
    v4 = [v1[1] length];
    v5 = v1[1];
    if (v4 == v3)
    {

      return [v5 setLength:v2];
    }

    else
    {

      return [v5 appendBytes:"}" length:1];
    }
  }

  return result;
}

- (const)writeColor:(uint64_t)color type:
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a2)
  {
    v5 = [*(result + 7) objectForKey:a2];
  }

  else
  {
    v5 = 0;
  }

  if (*(v4 + 11))
  {
    v6 = [*(v4 + 7) objectForKey:?];
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    unsignedIntegerValue = 1;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v6 = 0;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_7:
  unsignedIntegerValue = [v5 unsignedIntegerValue];
  v8 = unsignedIntegerValue;
  if (v6)
  {
LABEL_8:
    unsignedIntegerValue2 = [v6 unsignedIntegerValue];
    goto LABEL_12;
  }

LABEL_11:
  unsignedIntegerValue2 = 0;
LABEL_12:
  result = "\\cf%ld ";
  switch(color)
  {
    case 0:
      goto LABEL_28;
    case 1:
      result = "\\cb%ld ";
      goto LABEL_27;
    case 2:
      if (!v5)
      {
        v8 = unsignedIntegerValue2;
      }

      result = "\\strokec%ld ";
      goto LABEL_28;
    case 3:
      if (!v5)
      {
        v8 = unsignedIntegerValue2;
      }

      result = "\\ulc%ld ";
      goto LABEL_28;
    case 4:
      if (!v5)
      {
        v8 = unsignedIntegerValue2;
      }

      result = "\\strikec%ld ";
      goto LABEL_28;
    case 5:
      result = "\\shadc%ld ";
      goto LABEL_28;
    case 6:
      result = "\\brdrcf%ld ";
      goto LABEL_28;
    case 7:
      result = "\\clcbpat%ld ";
      goto LABEL_27;
    case 8:
      result = "\\trcbpat%ld ";
LABEL_27:
      v8 = unsignedIntegerValue;
LABEL_28:
      v10 = fmtcheck(result, "%ld");
      v17 = OUTLINED_FUNCTION_48(v10, v11, v10, v12, v13, v14, v15, v16, v8, v35, *v38, v38[4]);
      v25 = OUTLINED_FUNCTION_56(v17, v18, v19, v20, v21, v22, v23, v24, v33, v36, v39, v41);
      result = OUTLINED_FUNCTION_29_0(v25, v26, v27, v28, v29, v30, v31, v32, v34, v37, v40, v42);
      break;
    default:
      return result;
  }

  return result;
}

- (uint64_t)writeTableHeader:(uint64_t)header atIndex:(uint64_t)index nestingLevel:
{
  v2120 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v2117 = 0;
  v2118 = 0;
  v2115 = 0;
  v2116 = 0;
  v903 = &v2116;
  v935 = 0;
  v839 = 0;
  v871 = &v2115;
  v805 = &v2117;
  v1065 = [a2 _rowArrayForBlock:0 atIndex:header text:*(result + 16) layoutManager:0 containerWidth:1 withRepetitions:0 collapseBorders:432.0 rowCharRange:? indexInRow:? startingRow:? startingColumn:? previousRowBlockHelper:?];
  v7 = [v1065 count];
  result = [a2 numberOfColumns];
  v1097 = result;
  if (!result || !v7)
  {
    return result;
  }

  v8 = [*(v6 + 16) _atStartOfTextTable:a2 atIndex:v2117];
  indexCopy = index;
  if (v2118 + v2117)
  {
    v9 = [*(v6 + 16) _atEndOfTextTable:a2 atIndex:v2118 + v2117 - 1] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  if (!a2)
  {
    goto LABEL_60;
  }

  LODWORD(v1911) = v8;
  LODWORD(v2047) = v9;
  _tableFlags = [a2 _tableFlags];
  [OUTLINED_FUNCTION_15_1() valueForDimension:?];
  v12 = v11;
  [OUTLINED_FUNCTION_18_0() valueForDimension:?];
  v14 = v13;
  [a2 valueForDimension:2];
  v16 = v15;
  [a2 valueForDimension:4];
  v18 = v17;
  [a2 valueForDimension:5];
  v20 = v19;
  [a2 valueForDimension:6];
  v1741 = v21;
  v22 = [OUTLINED_FUNCTION_15_1() valueTypeForDimension:?];
  [OUTLINED_FUNCTION_18_0() valueTypeForDimension:?];
  [a2 valueTypeForDimension:2];
  [a2 valueTypeForDimension:4];
  [a2 valueTypeForDimension:5];
  v1299 = [a2 valueTypeForDimension:6];
  backgroundColor = [a2 backgroundColor];
  [OUTLINED_FUNCTION_18_0() widthForLayer:? edge:?];
  v25 = v24;
  [OUTLINED_FUNCTION_18_0() widthForLayer:? edge:?];
  v1843 = v26;
  [OUTLINED_FUNCTION_18_0() widthForLayer:? edge:?];
  v1809 = v27;
  [OUTLINED_FUNCTION_18_0() widthForLayer:? edge:?];
  v1775 = v28;
  v1265 = [OUTLINED_FUNCTION_18_0() widthValueTypeForLayer:? edge:?];
  v1401 = [OUTLINED_FUNCTION_18_0() widthValueTypeForLayer:? edge:?];
  v1367 = [OUTLINED_FUNCTION_18_0() widthValueTypeForLayer:? edge:?];
  v1333 = [OUTLINED_FUNCTION_18_0() widthValueTypeForLayer:? edge:?];
  [OUTLINED_FUNCTION_15_1() widthForLayer:? edge:?];
  v1435 = v29;
  [OUTLINED_FUNCTION_15_1() widthForLayer:? edge:?];
  v31 = v30;
  [OUTLINED_FUNCTION_15_1() widthForLayer:? edge:?];
  v1877 = v32;
  [OUTLINED_FUNCTION_15_1() widthForLayer:? edge:?];
  v34 = v33;
  v1129 = [OUTLINED_FUNCTION_15_1() widthValueTypeForLayer:? edge:?];
  v1537 = [OUTLINED_FUNCTION_15_1() widthValueTypeForLayer:? edge:?];
  v1197 = [OUTLINED_FUNCTION_15_1() widthValueTypeForLayer:? edge:?];
  v1469 = [OUTLINED_FUNCTION_15_1() widthValueTypeForLayer:? edge:?];
  v1163 = [OUTLINED_FUNCTION_18_0() borderColorForEdge:?];
  v1605 = [a2 borderColorForEdge:2];
  v1231 = [a2 borderColorForEdge:3];
  v1503 = [OUTLINED_FUNCTION_15_1() borderColorForEdge:?];
  [OUTLINED_FUNCTION_26_0() widthForLayer:? edge:?];
  v1945 = v35;
  [OUTLINED_FUNCTION_26_0() widthForLayer:? edge:?];
  v2081 = v36;
  [OUTLINED_FUNCTION_26_0() widthForLayer:? edge:?];
  v2013 = v37;
  [OUTLINED_FUNCTION_26_0() widthForLayer:? edge:?];
  v1979 = v38;
  v1571 = [OUTLINED_FUNCTION_26_0() widthValueTypeForLayer:? edge:?];
  v1707 = [OUTLINED_FUNCTION_26_0() widthValueTypeForLayer:? edge:?];
  v1673 = [OUTLINED_FUNCTION_26_0() widthValueTypeForLayer:? edge:?];
  v1639 = [OUTLINED_FUNCTION_26_0() widthValueTypeForLayer:? edge:?];
  snprintf(__str, 0x3E8uLL, "\n\\itap%ld\\trowd \\taflags%ld \\trgaph108\\trleft-108 ", indexCopy + 1, _tableFlags);
  v39 = *(v6 + 8);
  strlen(__str);
  OUTLINED_FUNCTION_7_3();
  [v39 appendBytes:? length:?];
  if (backgroundColor)
  {
    v803 = OUTLINED_FUNCTION_45();
    [(NSRTFWriter *)v803 writeColor:v804 type:8];
  }

  if (v12 > 0.0)
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_0_7();
    v45 = snprintf(v42, v43, v44);
    OUTLINED_FUNCTION_50(v45, v46, v47, v48, v49, v50, v51, v52, v805, v839, &v2115, &v2116, 0, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_7_3();
    [v22 appendBytes:? length:?];
  }

  if (v14 > 0.0)
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_0_7();
    v56 = snprintf(v53, v54, v55);
    OUTLINED_FUNCTION_50(v56, v57, v58, v59, v60, v61, v62, v63, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_7_3();
    [v22 appendBytes:? length:?];
  }

  if (v16 > 0.0)
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_0_7();
    v67 = snprintf(v64, v65, v66);
    v75 = OUTLINED_FUNCTION_28_0(v67, v68, v69, v70, v71, v72, v73, v74, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v75, v76, v77, v78, v79, v80, v81, v82, v806, v840, v872, v904, v936, v968, v1000, v1033, v1066, v1098, v1130, v1164, v1198, v1232, v1266, v1300, v1334, v1368, v1402, v1436, v1470, v1504, v1538, v1572, v1606, v1640, v1674, v1708, v1742, v1776, v1810, v1844, v1878, v1912, v1946, v1980, v2014, v2048, v2082, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (v18 > 0.0)
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_0_7();
    v86 = snprintf(v83, v84, v85);
    v94 = OUTLINED_FUNCTION_28_0(v86, v87, v88, v89, v90, v91, v92, v93, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v94, v95, v96, v97, v98, v99, v100, v101, v807, v841, v873, v905, v937, v969, v1001, v1034, v1067, v1099, v1131, v1165, v1199, v1233, v1267, v1301, v1335, v1369, v1403, v1437, v1471, v1505, v1539, v1573, v1607, v1641, v1675, v1709, v1743, v1777, v1811, v1845, v1879, v1913, v1947, v1981, v2015, v2049, v2083, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (v20 > 0.0)
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_0_7();
    v105 = snprintf(v102, v103, v104);
    v113 = OUTLINED_FUNCTION_28_0(v105, v106, v107, v108, v109, v110, v111, v112, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v113, v114, v115, v116, v117, v118, v119, v120, v808, v842, v874, v906, v938, v970, v1002, v1035, v1068, v1100, v1132, v1166, v1200, v1234, v1268, v1302, v1336, v1370, v1404, v1438, v1472, v1506, v1540, v1574, v1608, v1642, v1676, v1710, v1744, v1778, v1812, v1846, v1880, v1914, v1948, v1982, v2016, v2050, v2084, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (*&v1741 > 0.0)
  {
    OUTLINED_FUNCTION_1_6(0.01, v40, v41, *&v1741);
    OUTLINED_FUNCTION_0_7();
    v124 = snprintf(v121, v122, v123);
    v132 = OUTLINED_FUNCTION_28_0(v124, v125, v126, v127, v128, v129, v130, v131, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v132, v133, v134, v135, v136, v137, v138, v139, v809, v843, v875, v907, v939, v971, v1003, v1036, v1069, v1101, v1133, v1167, v1201, v1235, v1269, v1303, v1337, v1371, v1405, v1439, v1473, v1507, v1541, v1575, v1609, v1643, v1677, v1711, v1745, v1779, v1813, v1847, v1881, v1915, v1949, v1983, v2017, v2051, v2085, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (v25 > 0.0)
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_0_7();
    v143 = snprintf(v140, v141, v142);
    v151 = OUTLINED_FUNCTION_28_0(v143, v144, v145, v146, v147, v148, v149, v150, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v151, v152, v153, v154, v155, v156, v157, v158, v810, v844, v876, v908, v940, v972, v1004, v1037, v1070, v1102, v1134, v1168, v1202, v1236, v1270, v1304, v1338, v1372, v1406, v1440, v1474, v1508, v1542, v1576, v1610, v1644, v1678, v1712, v1746, v1780, v1814, v1848, v1882, v1916, v1950, v1984, v2018, v2052, v2086, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (*&v1775 > 0.0)
  {
    OUTLINED_FUNCTION_1_6(0.01, v40, v41, *&v1775);
    OUTLINED_FUNCTION_0_7();
    v162 = snprintf(v159, v160, v161);
    v170 = OUTLINED_FUNCTION_28_0(v162, v163, v164, v165, v166, v167, v168, v169, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v170, v171, v172, v173, v174, v175, v176, v177, v811, v845, v877, v909, v941, v973, v1005, v1038, v1071, v1103, v1135, v1169, v1203, v1237, v1271, v1305, v1339, v1373, v1407, v1441, v1475, v1509, v1543, v1577, v1611, v1645, v1679, v1713, v1747, v1781, v1815, v1849, v1883, v1917, v1951, v1985, v2019, v2053, v2087, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (*&v1809 > 0.0)
  {
    OUTLINED_FUNCTION_1_6(0.01, v40, v41, *&v1809);
    OUTLINED_FUNCTION_0_7();
    v181 = snprintf(v178, v179, v180);
    v189 = OUTLINED_FUNCTION_28_0(v181, v182, v183, v184, v185, v186, v187, v188, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v189, v190, v191, v192, v193, v194, v195, v196, v812, v846, v878, v910, v942, v974, v1006, v1039, v1072, v1104, v1136, v1170, v1204, v1238, v1272, v1306, v1340, v1374, v1408, v1442, v1476, v1510, v1544, v1578, v1612, v1646, v1680, v1714, v1748, v1782, v1816, v1850, v1884, v1918, v1952, v1986, v2020, v2054, v2088, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (*&v1843 > 0.0)
  {
    OUTLINED_FUNCTION_1_6(0.01, v40, v41, *&v1843);
    OUTLINED_FUNCTION_0_7();
    v200 = snprintf(v197, v198, v199);
    v208 = OUTLINED_FUNCTION_28_0(v200, v201, v202, v203, v204, v205, v206, v207, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v208, v209, v210, v211, v212, v213, v214, v215, v813, v847, v879, v911, v943, v975, v1007, v1040, v1073, v1105, v1137, v1171, v1205, v1239, v1273, v1307, v1341, v1375, v1409, v1443, v1477, v1511, v1545, v1579, v1613, v1647, v1681, v1715, v1749, v1783, v1817, v1851, v1885, v1919, v1953, v1987, v2021, v2055, v2089, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (v1911)
  {
    if (*&v1435 <= 0.0)
    {
      v236 = *(v6 + 8);
      v237 = "\\trbrdrt\\brdrnil ";
      v238 = 17;
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_1_6(0.01, v40, v41, *&v1435);
    OUTLINED_FUNCTION_0_7();
    v219 = snprintf(v216, v217, v218);
    v227 = OUTLINED_FUNCTION_28_0(v219, v220, v221, v222, v223, v224, v225, v226, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    v235 = OUTLINED_FUNCTION_6_3(v227, v228, v229, v230, v231, v232, v233, v234, v814, v848, v880, v912, v944, v976, v1008, v1041, v1074, v1106, v1138, v1172, v1206, v1240, v1274, v1308, v1342, v1376, v1410, v1444, v1478, v1512, v1546, v1580, v1614, v1648, v1682, v1716, v1750, v1784, v1818, v1852, v1886, v1920, v1954, v1988, v2022, v2056, v2090, v2115, v2116, v2117, v2118, __str[0]);
    if (!v1163)
    {
      v236 = *(v6 + 8);
      v237 = "\\brdrcfnil ";
      v238 = 11;
LABEL_35:
      [v236 appendBytes:v237 length:v238];
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_43(v235, v1163);
  }

LABEL_36:
  if (v34 <= 0.0)
  {
    v259 = *(v6 + 8);
    v260 = "\\trbrdrl\\brdrnil ";
    v261 = 17;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_0_7();
  v242 = snprintf(v239, v240, v241);
  v250 = OUTLINED_FUNCTION_28_0(v242, v243, v244, v245, v246, v247, v248, v249, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
  v258 = OUTLINED_FUNCTION_6_3(v250, v251, v252, v253, v254, v255, v256, v257, v815, v849, v881, v913, v945, v977, v1009, v1042, v1075, v1107, v1139, v1173, v1207, v1241, v1275, v1309, v1343, v1377, v1411, v1445, v1479, v1513, v1547, v1581, v1615, v1649, v1683, v1717, v1751, v1785, v1819, v1853, v1887, v1921, v1955, v1989, v2023, v2057, v2091, v2115, v2116, v2117, v2118, __str[0]);
  if (!v1503)
  {
    v259 = *(v6 + 8);
    v260 = "\\brdrcfnil ";
    v261 = 11;
LABEL_40:
    [v259 appendBytes:v260 length:v261];
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_43(v258, v1503);
LABEL_41:
  if (v2047)
  {
    goto LABEL_47;
  }

  if (*&v1877 <= 0.0)
  {
    v284 = *(v6 + 8);
    v285 = "\\trbrdrt\\brdrnil ";
    v286 = 17;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_1_6(0.01, v262, v263, *&v1877);
  OUTLINED_FUNCTION_0_7();
  v267 = snprintf(v264, v265, v266);
  v275 = OUTLINED_FUNCTION_28_0(v267, v268, v269, v270, v271, v272, v273, v274, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
  v283 = OUTLINED_FUNCTION_6_3(v275, v276, v277, v278, v279, v280, v281, v282, v816, v850, v882, v914, v946, v978, v1010, v1043, v1076, v1108, v1140, v1174, v1208, v1242, v1276, v1310, v1344, v1378, v1412, v1446, v1480, v1514, v1548, v1582, v1616, v1650, v1684, v1718, v1752, v1786, v1820, v1854, v1888, v1922, v1956, v1990, v2024, v2058, v2092, v2115, v2116, v2117, v2118, __str[0]);
  if (!v1231)
  {
    v284 = *(v6 + 8);
    v285 = "\\brdrcfnil ";
    v286 = 11;
LABEL_46:
    [v284 appendBytes:v285 length:v286];
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_43(v283, v1231);
LABEL_47:
  if (v31 <= 0.0)
  {
    v307 = *(v6 + 8);
    v308 = "\\trbrdrr\\brdrnil ";
    v309 = 17;
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_0_7();
    v290 = snprintf(v287, v288, v289);
    v298 = OUTLINED_FUNCTION_28_0(v290, v291, v292, v293, v294, v295, v296, v297, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    v306 = OUTLINED_FUNCTION_6_3(v298, v299, v300, v301, v302, v303, v304, v305, v817, v851, v883, v915, v947, v979, v1011, v1044, v1077, v1109, v1141, v1175, v1209, v1243, v1277, v1311, v1345, v1379, v1413, v1447, v1481, v1515, v1549, v1583, v1617, v1651, v1685, v1719, v1753, v1787, v1821, v1855, v1889, v1923, v1957, v1991, v2025, v2059, v2093, v2115, v2116, v2117, v2118, __str[0]);
    if (v1605)
    {
      OUTLINED_FUNCTION_43(v306, v1605);
      goto LABEL_52;
    }

    v307 = *(v6 + 8);
    v308 = "\\brdrcfnil ";
    v309 = 11;
  }

  [v307 appendBytes:v308 length:v309];
LABEL_52:
  if (*&v1945 > 0.0)
  {
    OUTLINED_FUNCTION_1_6(0.01, v310, v311, *&v1945);
    OUTLINED_FUNCTION_0_7();
    v315 = snprintf(v312, v313, v314);
    v323 = OUTLINED_FUNCTION_28_0(v315, v316, v317, v318, v319, v320, v321, v322, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v323, v324, v325, v326, v327, v328, v329, v330, v818, v852, v884, v916, v948, v980, v1012, v1045, v1078, v1110, v1142, v1176, v1210, v1244, v1278, v1312, v1346, v1380, v1414, v1448, v1482, v1516, v1550, v1584, v1618, v1652, v1686, v1720, v1754, v1788, v1822, v1856, v1890, v1924, v1958, v1992, v2026, v2060, v2094, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (*&v1979 > 0.0)
  {
    OUTLINED_FUNCTION_1_6(0.01, v310, v311, *&v1979);
    OUTLINED_FUNCTION_0_7();
    v334 = snprintf(v331, v332, v333);
    v342 = OUTLINED_FUNCTION_28_0(v334, v335, v336, v337, v338, v339, v340, v341, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v342, v343, v344, v345, v346, v347, v348, v349, v819, v853, v885, v917, v949, v981, v1013, v1046, v1079, v1111, v1143, v1177, v1211, v1245, v1279, v1313, v1347, v1381, v1415, v1449, v1483, v1517, v1551, v1585, v1619, v1653, v1687, v1721, v1755, v1789, v1823, v1857, v1891, v1925, v1959, v1993, v2027, v2061, v2095, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (*&v2013 > 0.0)
  {
    OUTLINED_FUNCTION_1_6(0.01, v310, v311, *&v2013);
    OUTLINED_FUNCTION_0_7();
    v353 = snprintf(v350, v351, v352);
    v361 = OUTLINED_FUNCTION_28_0(v353, v354, v355, v356, v357, v358, v359, v360, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v361, v362, v363, v364, v365, v366, v367, v368, v820, v854, v886, v918, v950, v982, v1014, v1047, v1080, v1112, v1144, v1178, v1212, v1246, v1280, v1314, v1348, v1382, v1416, v1450, v1484, v1518, v1552, v1586, v1620, v1654, v1688, v1722, v1756, v1790, v1824, v1858, v1892, v1926, v1960, v1994, v2028, v2062, v2096, v2115, v2116, v2117, v2118, __str[0]);
  }

  if (*&v2081 > 0.0)
  {
    OUTLINED_FUNCTION_1_6(0.01, v310, v311, *&v2081);
    OUTLINED_FUNCTION_0_7();
    v372 = snprintf(v369, v370, v371);
    v380 = OUTLINED_FUNCTION_28_0(v372, v373, v374, v375, v376, v377, v378, v379, v805, v839, v871, v903, v935, indexCopy, v999, v1032, v1065, v1097, v1129, v1163, v1197, v1231, v1265, v1299, v1333, v1367, v1401, v1435, v1469, v1503, v1537, v1571, v1605, v1639, v1673, v1707, v1741, v1775, v1809, v1843, v1877, v1911, v1945, v1979, v2013, v2047, v2081, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v380, v381, v382, v383, v384, v385, v386, v387, v821, v855, v887, v919, v951, v983, v1015, v1048, v1081, v1113, v1145, v1179, v1213, v1247, v1281, v1315, v1349, v1383, v1417, v1451, v1485, v1519, v1553, v1587, v1621, v1655, v1689, v1723, v1757, v1791, v1825, v1859, v1893, v1927, v1961, v1995, v2029, v2063, v2097, v2115, v2116, v2117, v2118, __str[0]);
  }

LABEL_60:
  v388 = 0;
  v1049 = v1097;
  v1016 = 0x407B000000000000;
  do
  {
    v389 = *([v1065 objectAtIndex:v388] + 8);
    verticalAlignment = [v389 verticalAlignment];
    [OUTLINED_FUNCTION_16_1() valueForDimension:?];
    v392 = v391;
    [OUTLINED_FUNCTION_20_0() valueForDimension:?];
    v394 = v393;
    [v389 valueForDimension:2];
    v396 = v395;
    [v389 valueForDimension:4];
    v398 = v397;
    [v389 valueForDimension:5];
    v400 = v399;
    [v389 valueForDimension:6];
    v1758 = v401;
    v402 = [OUTLINED_FUNCTION_16_1() valueTypeForDimension:?];
    [OUTLINED_FUNCTION_20_0() valueTypeForDimension:?];
    [v389 valueTypeForDimension:2];
    [v389 valueTypeForDimension:4];
    v1146 = [v389 valueTypeForDimension:5];
    v1214 = [v389 valueTypeForDimension:6];
    backgroundColor2 = [v389 backgroundColor];
    [OUTLINED_FUNCTION_20_0() widthForLayer:? edge:?];
    v405 = v404;
    [OUTLINED_FUNCTION_20_0() widthForLayer:? edge:?];
    v1860 = v406;
    [OUTLINED_FUNCTION_20_0() widthForLayer:? edge:?];
    v1792 = v407;
    [OUTLINED_FUNCTION_20_0() widthForLayer:? edge:?];
    v409 = v408;
    v1180 = [OUTLINED_FUNCTION_20_0() widthValueTypeForLayer:? edge:?];
    v1384 = [OUTLINED_FUNCTION_20_0() widthValueTypeForLayer:? edge:?];
    v1282 = [OUTLINED_FUNCTION_20_0() widthValueTypeForLayer:? edge:?];
    v1248 = [OUTLINED_FUNCTION_20_0() widthValueTypeForLayer:? edge:?];
    [OUTLINED_FUNCTION_16_1() widthForLayer:? edge:?];
    v1826 = v410;
    [OUTLINED_FUNCTION_16_1() widthForLayer:? edge:?];
    v1996 = v411;
    [OUTLINED_FUNCTION_16_1() widthForLayer:? edge:?];
    v1928 = v412;
    [OUTLINED_FUNCTION_16_1() widthForLayer:? edge:?];
    v1894 = v413;
    v1316 = [OUTLINED_FUNCTION_16_1() widthValueTypeForLayer:? edge:?];
    v1588 = [OUTLINED_FUNCTION_16_1() widthValueTypeForLayer:? edge:?];
    v1486 = [OUTLINED_FUNCTION_16_1() widthValueTypeForLayer:? edge:?];
    v1418 = [OUTLINED_FUNCTION_16_1() widthValueTypeForLayer:? edge:?];
    v1350 = [OUTLINED_FUNCTION_20_0() borderColorForEdge:?];
    v1656 = [v389 borderColorForEdge:2];
    v1520 = [v389 borderColorForEdge:3];
    v1452 = [OUTLINED_FUNCTION_16_1() borderColorForEdge:?];
    [OUTLINED_FUNCTION_27_0() widthForLayer:? edge:?];
    v1962 = v414;
    [OUTLINED_FUNCTION_27_0() widthForLayer:? edge:?];
    v2098 = v415;
    [OUTLINED_FUNCTION_27_0() widthForLayer:? edge:?];
    v2064 = v416;
    [OUTLINED_FUNCTION_27_0() widthForLayer:? edge:?];
    v2030 = v417;
    v1554 = [OUTLINED_FUNCTION_27_0() widthValueTypeForLayer:? edge:?];
    v1724 = [OUTLINED_FUNCTION_27_0() widthValueTypeForLayer:? edge:?];
    v1690 = [OUTLINED_FUNCTION_27_0() widthValueTypeForLayer:? edge:?];
    v1622 = [OUTLINED_FUNCTION_27_0() widthValueTypeForLayer:? edge:?];
    [*(v6 + 8) appendBytes:"\n" length:1];
    startingRow = [v389 startingRow];
    v419 = "\\clvmrg ";
    if (startingRow < v2115 || (v420 = [v389 rowSpan], v419 = "\\clvmgf ", v420 >= 2))
    {
      [*(v6 + 8) appendBytes:v419 length:8];
    }

    startingColumn = [v389 startingColumn];
    v422 = "\\clmrg ";
    if (startingColumn < v388 || (v423 = [v389 columnSpan], v422 = "\\clmgf ", v423 >= 2))
    {
      [*(v6 + 8) appendBytes:v422 length:7];
    }

    switch(verticalAlignment)
    {
      case 1:
        v424 = "\\clvertalc ";
        break;
      case 3:
        v424 = "\\clvertalt\\clvertalbase ";
        v425 = 24;
        goto LABEL_75;
      case 2:
        v424 = "\\clvertalb ";
        break;
      default:
        v424 = "\\clvertalt ";
        break;
    }

    v425 = 11;
LABEL_75:
    [*(v6 + 8) appendBytes:v424 length:v425];
    if (backgroundColor2)
    {
      v791 = OUTLINED_FUNCTION_45();
      [(NSRTFWriter *)v791 writeColor:v792 type:7];
    }

    else
    {
      [*(v6 + 8) appendBytes:"\\clshdrawnil " length:13];
    }

    if (v392 > 0.0)
    {
      OUTLINED_FUNCTION_0_7();
      v431 = snprintf(v428, v429, v430);
      OUTLINED_FUNCTION_50(v431, v432, v433, v434, v435, v436, v437, v438, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_7_3();
      [v402 appendBytes:? length:?];
    }

    if (v394 > 0.0)
    {
      OUTLINED_FUNCTION_0_7();
      v442 = snprintf(v439, v440, v441);
      OUTLINED_FUNCTION_50(v442, v443, v444, v445, v446, v447, v448, v449, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_7_3();
      [v402 appendBytes:? length:?];
    }

    if (v396 > 0.0)
    {
      OUTLINED_FUNCTION_0_7();
      v453 = snprintf(v450, v451, v452);
      OUTLINED_FUNCTION_50(v453, v454, v455, v456, v457, v458, v459, v460, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_7_3();
      [v402 appendBytes:? length:?];
    }

    if (v398 > 0.0)
    {
      OUTLINED_FUNCTION_0_7();
      v464 = snprintf(v461, v462, v463);
      OUTLINED_FUNCTION_50(v464, v465, v466, v467, v468, v469, v470, v471, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_7_3();
      [v402 appendBytes:? length:?];
    }

    if (v400 > 0.0)
    {
      OUTLINED_FUNCTION_14_1(v1146, v400 * 50.0 + 0.01);
      OUTLINED_FUNCTION_0_7();
      v475 = snprintf(v472, v473, v474);
      v483 = OUTLINED_FUNCTION_28_0(v475, v476, v477, v478, v479, v480, v481, v482, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v483, v484, v485, v486, v487, v488, v489, v490, v822, v856, v888, v920, v952, v984, v1017, v1050, v1082, v1114, v1147, v1181, v1215, v1249, v1283, v1317, v1351, v1385, v1419, v1453, v1487, v1521, v1555, v1589, v1623, v1657, v1691, v1725, v1759, v1793, v1827, v1861, v1895, v1929, v1963, v1997, v2031, v2065, v2099, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (*&v1758 > 0.0)
    {
      OUTLINED_FUNCTION_2_5(v426, v427, *&v1758);
      OUTLINED_FUNCTION_14_1(v1214, v491);
      OUTLINED_FUNCTION_0_7();
      v495 = snprintf(v492, v493, v494);
      v503 = OUTLINED_FUNCTION_28_0(v495, v496, v497, v498, v499, v500, v501, v502, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v503, v504, v505, v506, v507, v508, v509, v510, v823, v857, v889, v921, v953, v985, v1018, v1051, v1083, v1115, v1148, v1182, v1216, v1250, v1284, v1318, v1352, v1386, v1420, v1454, v1488, v1522, v1556, v1590, v1624, v1658, v1692, v1726, v1760, v1794, v1828, v1862, v1896, v1930, v1964, v1998, v2032, v2066, v2100, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (v405 > 0.0)
    {
      OUTLINED_FUNCTION_14_1(v1180, v405 * 50.0 + 0.01);
      OUTLINED_FUNCTION_0_7();
      v514 = snprintf(v511, v512, v513);
      v522 = OUTLINED_FUNCTION_28_0(v514, v515, v516, v517, v518, v519, v520, v521, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v522, v523, v524, v525, v526, v527, v528, v529, v824, v858, v890, v922, v954, v986, v1019, v1052, v1084, v1116, v1149, v1183, v1217, v1251, v1285, v1319, v1353, v1387, v1421, v1455, v1489, v1523, v1557, v1591, v1625, v1659, v1693, v1727, v1761, v1795, v1829, v1863, v1897, v1931, v1965, v1999, v2033, v2067, v2101, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (v409 > 0.0)
    {
      OUTLINED_FUNCTION_14_1(v1248, v409 * 50.0 + 0.01);
      OUTLINED_FUNCTION_0_7();
      v533 = snprintf(v530, v531, v532);
      v541 = OUTLINED_FUNCTION_28_0(v533, v534, v535, v536, v537, v538, v539, v540, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v541, v542, v543, v544, v545, v546, v547, v548, v825, v859, v891, v923, v955, v987, v1020, v1053, v1085, v1117, v1150, v1184, v1218, v1252, v1286, v1320, v1354, v1388, v1422, v1456, v1490, v1524, v1558, v1592, v1626, v1660, v1694, v1728, v1762, v1796, v1830, v1864, v1898, v1932, v1966, v2000, v2034, v2068, v2102, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (*&v1792 > 0.0)
    {
      OUTLINED_FUNCTION_2_5(v426, v427, *&v1792);
      OUTLINED_FUNCTION_14_1(v1282, v549);
      OUTLINED_FUNCTION_0_7();
      v553 = snprintf(v550, v551, v552);
      v561 = OUTLINED_FUNCTION_28_0(v553, v554, v555, v556, v557, v558, v559, v560, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v561, v562, v563, v564, v565, v566, v567, v568, v826, v860, v892, v924, v956, v988, v1021, v1054, v1086, v1118, v1151, v1185, v1219, v1253, v1287, v1321, v1355, v1389, v1423, v1457, v1491, v1525, v1559, v1593, v1627, v1661, v1695, v1729, v1763, v1797, v1831, v1865, v1899, v1933, v1967, v2001, v2035, v2069, v2103, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (*&v1860 > 0.0)
    {
      OUTLINED_FUNCTION_2_5(v426, v427, *&v1860);
      OUTLINED_FUNCTION_14_1(v1384, v569);
      OUTLINED_FUNCTION_0_7();
      v573 = snprintf(v570, v571, v572);
      v581 = OUTLINED_FUNCTION_28_0(v573, v574, v575, v576, v577, v578, v579, v580, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v581, v582, v583, v584, v585, v586, v587, v588, v827, v861, v893, v925, v957, v989, v1022, v1055, v1087, v1119, v1152, v1186, v1220, v1254, v1288, v1322, v1356, v1390, v1424, v1458, v1492, v1526, v1560, v1594, v1628, v1662, v1696, v1730, v1764, v1798, v1832, v1866, v1900, v1934, v1968, v2002, v2036, v2070, v2104, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (*&v1826 <= 0.0)
    {
      v610 = *(v6 + 8);
      v611 = "\\clbrdrt\\brdrnil ";
      v612 = 17;
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_2_5(v426, v427, *&v1826);
    OUTLINED_FUNCTION_14_1(v1316, v589);
    OUTLINED_FUNCTION_0_7();
    v593 = snprintf(v590, v591, v592);
    v601 = OUTLINED_FUNCTION_28_0(v593, v594, v595, v596, v597, v598, v599, v600, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
    v609 = OUTLINED_FUNCTION_6_3(v601, v602, v603, v604, v605, v606, v607, v608, v828, v862, v894, v926, v958, v990, v1023, v1056, v1088, v1120, v1153, v1187, v1221, v1255, v1289, v1323, v1357, v1391, v1425, v1459, v1493, v1527, v1561, v1595, v1629, v1663, v1697, v1731, v1765, v1799, v1833, v1867, v1901, v1935, v1969, v2003, v2037, v2071, v2105, v2115, v2116, v2117, v2118, __str[0]);
    if (!v1350)
    {
      v610 = *(v6 + 8);
      v611 = "\\brdrcfnil ";
      v612 = 11;
LABEL_101:
      [v610 appendBytes:v611 length:v612];
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_43(v609, v1350);
LABEL_102:
    if (*&v1894 <= 0.0)
    {
      v636 = *(v6 + 8);
      v637 = "\\clbrdrl\\brdrnil ";
      v638 = 17;
      goto LABEL_106;
    }

    OUTLINED_FUNCTION_2_5(v613, v614, *&v1894);
    OUTLINED_FUNCTION_14_1(v1418, v615);
    OUTLINED_FUNCTION_0_7();
    v619 = snprintf(v616, v617, v618);
    v627 = OUTLINED_FUNCTION_28_0(v619, v620, v621, v622, v623, v624, v625, v626, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
    v635 = OUTLINED_FUNCTION_6_3(v627, v628, v629, v630, v631, v632, v633, v634, v829, v863, v895, v927, v959, v991, v1024, v1057, v1089, v1121, v1154, v1188, v1222, v1256, v1290, v1324, v1358, v1392, v1426, v1460, v1494, v1528, v1562, v1596, v1630, v1664, v1698, v1732, v1766, v1800, v1834, v1868, v1902, v1936, v1970, v2004, v2038, v2072, v2106, v2115, v2116, v2117, v2118, __str[0]);
    if (!v1452)
    {
      v636 = *(v6 + 8);
      v637 = "\\brdrcfnil ";
      v638 = 11;
LABEL_106:
      [v636 appendBytes:v637 length:v638];
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_43(v635, v1452);
LABEL_107:
    if (*&v1928 <= 0.0)
    {
      v662 = *(v6 + 8);
      v663 = "\\clbrdrb\\brdrnil ";
      v664 = 17;
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_2_5(v639, v640, *&v1928);
    OUTLINED_FUNCTION_14_1(v1486, v641);
    OUTLINED_FUNCTION_0_7();
    v645 = snprintf(v642, v643, v644);
    v653 = OUTLINED_FUNCTION_28_0(v645, v646, v647, v648, v649, v650, v651, v652, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
    v661 = OUTLINED_FUNCTION_6_3(v653, v654, v655, v656, v657, v658, v659, v660, v830, v864, v896, v928, v960, v992, v1025, v1058, v1090, v1122, v1155, v1189, v1223, v1257, v1291, v1325, v1359, v1393, v1427, v1461, v1495, v1529, v1563, v1597, v1631, v1665, v1699, v1733, v1767, v1801, v1835, v1869, v1903, v1937, v1971, v2005, v2039, v2073, v2107, v2115, v2116, v2117, v2118, __str[0]);
    if (!v1520)
    {
      v662 = *(v6 + 8);
      v663 = "\\brdrcfnil ";
      v664 = 11;
LABEL_111:
      [v662 appendBytes:v663 length:v664];
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_43(v661, v1520);
LABEL_112:
    if (*&v1996 <= 0.0)
    {
      v688 = *(v6 + 8);
      v689 = "\\clbrdrr\\brdrnil ";
      v690 = 17;
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_2_5(v665, v666, *&v1996);
    OUTLINED_FUNCTION_14_1(v1588, v667);
    OUTLINED_FUNCTION_0_7();
    v671 = snprintf(v668, v669, v670);
    v679 = OUTLINED_FUNCTION_28_0(v671, v672, v673, v674, v675, v676, v677, v678, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
    v687 = OUTLINED_FUNCTION_6_3(v679, v680, v681, v682, v683, v684, v685, v686, v831, v865, v897, v929, v961, v993, v1026, v1059, v1091, v1123, v1156, v1190, v1224, v1258, v1292, v1326, v1360, v1394, v1428, v1462, v1496, v1530, v1564, v1598, v1632, v1666, v1700, v1734, v1768, v1802, v1836, v1870, v1904, v1938, v1972, v2006, v2040, v2074, v2108, v2115, v2116, v2117, v2118, __str[0]);
    if (!v1656)
    {
      v688 = *(v6 + 8);
      v689 = "\\brdrcfnil ";
      v690 = 11;
LABEL_116:
      [v688 appendBytes:v689 length:v690];
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_43(v687, v1656);
LABEL_117:
    if (*&v1962 > 0.0)
    {
      OUTLINED_FUNCTION_2_5(v691, v692, *&v1962);
      OUTLINED_FUNCTION_14_1(v1554, v693);
      OUTLINED_FUNCTION_0_7();
      v697 = snprintf(v694, v695, v696);
      v705 = OUTLINED_FUNCTION_28_0(v697, v698, v699, v700, v701, v702, v703, v704, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v705, v706, v707, v708, v709, v710, v711, v712, v832, v866, v898, v930, v962, v994, v1027, v1060, v1092, v1124, v1157, v1191, v1225, v1259, v1293, v1327, v1361, v1395, v1429, v1463, v1497, v1531, v1565, v1599, v1633, v1667, v1701, v1735, v1769, v1803, v1837, v1871, v1905, v1939, v1973, v2007, v2041, v2075, v2109, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (*&v2030 >= 0.0)
    {
      OUTLINED_FUNCTION_2_5(v691, v692, *&v2030);
      OUTLINED_FUNCTION_14_1(v1622, v713);
      OUTLINED_FUNCTION_0_7();
      v717 = snprintf(v714, v715, v716);
      v725 = OUTLINED_FUNCTION_28_0(v717, v718, v719, v720, v721, v722, v723, v724, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v725, v726, v727, v728, v729, v730, v731, v732, v833, v867, v899, v931, v963, v995, v1028, v1061, v1093, v1125, v1158, v1192, v1226, v1260, v1294, v1328, v1362, v1396, v1430, v1464, v1498, v1532, v1566, v1600, v1634, v1668, v1702, v1736, v1770, v1804, v1838, v1872, v1906, v1940, v1974, v2008, v2042, v2076, v2110, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (*&v2064 > 0.0)
    {
      OUTLINED_FUNCTION_2_5(v691, v692, *&v2064);
      OUTLINED_FUNCTION_14_1(v1690, v733);
      OUTLINED_FUNCTION_0_7();
      v737 = snprintf(v734, v735, v736);
      v745 = OUTLINED_FUNCTION_28_0(v737, v738, v739, v740, v741, v742, v743, v744, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v745, v746, v747, v748, v749, v750, v751, v752, v834, v868, v900, v932, v964, v996, v1029, v1062, v1094, v1126, v1159, v1193, v1227, v1261, v1295, v1329, v1363, v1397, v1431, v1465, v1499, v1533, v1567, v1601, v1635, v1669, v1703, v1737, v1771, v1805, v1839, v1873, v1907, v1941, v1975, v2009, v2043, v2077, v2111, v2115, v2116, v2117, v2118, __str[0]);
    }

    if (*&v2098 >= 0.0)
    {
      OUTLINED_FUNCTION_2_5(v691, v692, *&v2098);
      OUTLINED_FUNCTION_14_1(v1724, v753);
      OUTLINED_FUNCTION_0_7();
      v757 = snprintf(v754, v755, v756);
      v765 = OUTLINED_FUNCTION_28_0(v757, v758, v759, v760, v761, v762, v763, v764, v805, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_6_3(v765, v766, v767, v768, v769, v770, v771, v772, v835, v869, v901, v933, v965, v997, v1030, v1063, v1095, v1127, v1160, v1194, v1228, v1262, v1296, v1330, v1364, v1398, v1432, v1466, v1500, v1534, v1568, v1602, v1636, v1670, v1704, v1738, v1772, v1806, v1840, v1874, v1908, v1942, v1976, v2010, v2044, v2078, v2112, v2115, v2116, v2117, v2118, __str[0]);
    }

    ++v388;
    OUTLINED_FUNCTION_0_7();
    v775 = snprintf(v773, v774, "\\gaph\\cellx%ld", v805);
    v783 = OUTLINED_FUNCTION_28_0(v775, v776, v777, v778, v779, v780, v781, v782, v836, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1146, v1180, v1214, v1248, v1282, v1316, v1350, v1384, v1418, v1452, v1486, v1520, v1554, v1588, v1622, v1656, v1690, v1724, v1758, v1792, v1826, v1860, v1894, v1928, v1962, v1996, v2030, v2064, v2098, v2115, v2116, v2117, v2118, __str[0]);
    OUTLINED_FUNCTION_6_3(v783, v784, v785, v786, v787, v788, v789, v790, v837, v870, v902, v934, v966, v998, v1031, v1064, v1096, v1128, v1161, v1195, v1229, v1263, v1297, v1331, v1365, v1399, v1433, v1467, v1501, v1535, v1569, v1603, v1637, v1671, v1705, v1739, v1773, v1807, v1841, v1875, v1909, v1943, v1977, v2011, v2045, v2079, v2113, v2115, v2116, v2117, v2118, __str[0]);
  }

  while (v1097 != v388);
  result = [*(v6 + 8) appendBytes:"\n" length:1];
  if (v2116)
  {
    v793 = 0;
    v794 = indexCopy + 1;
    do
    {
      v795 = snprintf(__str, 0x3E8uLL, "\\pard\\intbl\\itap%ld\\cell\n", v794);
      OUTLINED_FUNCTION_50(v795, v796, v797, v798, v799, v800, v801, v802, v838, v839, v871, v903, v935, indexCopy, v1016, *&v1049, v1065, v1097, v1162, v1196, v1230, v1264, v1298, v1332, v1366, v1400, v1434, v1468, v1502, v1536, v1570, v1604, v1638, v1672, v1706, v1740, v1774, v1808, v1842, v1876, v1910, v1944, v1978, v2012, v2046, v2080, v2114, v2115, v2116, v2117, v2118, __str[0]);
      OUTLINED_FUNCTION_7_3();
      result = [v402 appendBytes:? length:?];
      ++v793;
    }

    while (v793 < v2116);
  }

  return result;
}

- (void)writeCellTerminator:atIndex:nestingLevel:
{
  OUTLINED_FUNCTION_55();
  v28 = *MEMORY[0x1E69E9840];
  if (v0)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = v0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      table = [v6 table];
      startingColumn = [v6 startingColumn];
      columnSpan = [v6 columnSpan];
      if (table)
      {
        v11 = columnSpan;
        numberOfColumns = [table numberOfColumns];
        v13 = [*(v7 + 16) _atEndOfTextTableRow:table atIndex:v5];
        v14 = [*(v7 + 16) _atEndOfTextTable:table atIndex:v5];
        v15 = v14;
        if (v13)
        {
          v26 = v14;
          if (numberOfColumns - startingColumn > v11)
          {
            v11 = numberOfColumns - startingColumn;
          }

          v16 = 1;
        }

        else
        {
          v17 = v5 + 1;
          if (v17 >= [*(v7 + 16) length])
          {
            v16 = 1;
            v26 = 1;
          }

          else
          {
            v18 = [objc_msgSend(*(v7 + 16) attribute:@"NSParagraphStyle" atIndex:v17 effectiveRange:{0), "textBlocks"}];
            v26 = v15;
            if (v18 && (v19 = v18, [v18 count] > v4) && (v20 = objc_msgSend(v19, "objectAtIndex:", v4), objc_msgSend(v20, "startingColumn") - startingColumn > v11))
            {
              v16 = 0;
              v11 = [v20 startingColumn] - startingColumn;
            }

            else
            {
              v16 = 0;
            }
          }
        }

        if (v11 >= 1)
        {
          v21 = 0;
          if (v4)
          {
            v22 = "\\nestcell ";
          }

          else
          {
            v22 = "\\cell ";
          }

          if (v4)
          {
            v23 = 10;
          }

          else
          {
            v23 = 6;
          }

          do
          {
            if (v21)
            {
              snprintf(__str, 0x3E8uLL, "\n\\pard\\intbl\\itap%ld", v4 + 1);
              [*(v7 + 8) appendBytes:__str length:strlen(__str)];
            }

            [*(v7 + 8) appendBytes:v22 length:v23];
            ++v21;
          }

          while (v11 != v21);
        }

        if (v16)
        {
          if (v26)
          {
            [*(v7 + 8) appendBytes:"\\lastrow" length:8];
          }

          if (v4)
          {
            v24 = "\\nestrow";
          }

          else
          {
            v24 = "\\row";
          }

          if (v4)
          {
            v25 = 8;
          }

          else
          {
            v25 = 4;
          }

          [*(v7 + 8) appendBytes:v24 length:v25];
        }
      }
    }
  }

  OUTLINED_FUNCTION_54();
}

- (void)writeParagraphStyle:
{
  OUTLINED_FUNCTION_67();
  v93[0] = *MEMORY[0x1E69E9840];
  if (!v0)
  {
    goto LABEL_90;
  }

  v2 = v1;
  v3 = v0;
  if (*(v0 + 104) == v1)
  {
    goto LABEL_90;
  }

  v4 = [objc_msgSend(v1 "textBlocks")];
  strcpy(__s, "\\pard");
  v5 = strlen(__s);
  v6 = &__s[v5];
  if (v4)
  {
    snprintf(&__s[v5], 1000 - v5, "\\intbl\\itap%ld", v4);
    v6 += strlen(v6);
  }

  if (v2)
  {
    v88 = v2;
    v89 = v3;
    tabStops = [v2 tabStops];
    v8 = [tabStops count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [tabStops objectAtIndex:i];
        alignment = [v11 alignment];
        options = [v11 options];
        v14 = options;
        if (alignment || [options count])
        {
          if (![v14 count] || (v15 = objc_msgSend(v11, "tabStopType"), v16 = "\\tqdec", v15 != 3))
          {
            v16 = "";
            if (alignment == 1)
            {
              v16 = "\\tqc";
            }

            if (alignment == 2)
            {
              v16 = "\\tqr";
            }
          }

          snprintf(v6, v93 - v6, "%s", v16);
          v6 += strlen(v6);
        }

        [v11 location];
        snprintf(v6, v93 - v6, "\\tx%ld", vcvtmd_s64_f64(v17 * 20.0 + 0.01));
        v6 += strlen(v6);
        if (v6 - __s >= 801)
        {
          snprintf(v6, 1000 - (v6 - __s), "\n");
          v6 = __s;
          [*(v89 + 8) appendBytes:__s length:strlen(__s)];
        }
      }
    }

    v2 = v88;
    [v88 defaultTabInterval];
    if (v18 > 0.0)
    {
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_12_2(v19, 0.01);
      v82 = v20;
      OUTLINED_FUNCTION_31_0("\\pardeftab%ld", v21);
      v6 += strlen(v6);
    }

    v3 = v89;
    [v88 headIndent];
    v23 = v22;
    if (v22 != 0.0)
    {
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_31_0("\\li%ld", v24);
      v6 += strlen(v6);
    }

    [v88 firstLineHeadIndent];
    if (v25 != v23)
    {
      [v88 firstLineHeadIndent];
      OUTLINED_FUNCTION_3_3(v26 - v23, 0.01);
      snprintf(v6, __s - v6 + 1000, "\\fi%ld", v83);
      v6 += strlen(v6);
    }

    [v88 tailIndent];
    if (v27 <= 0.0)
    {
      if (v27 >= 0.0)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_11_3();
      v30 = -v31;
    }

    else
    {
      OUTLINED_FUNCTION_11_3();
      v30 = v29 - v28;
    }

    OUTLINED_FUNCTION_3_3(v30, 0.01);
    snprintf(v6, v32, "\\ri%ld", v83);
    v6 += strlen(v6);
LABEL_31:
    [v88 minimumLineHeight];
    v34 = v33;
    [v88 maximumLineHeight];
    v36 = v35;
    [v88 lineHeightMultiple];
    v38 = v36 >= 10000000.0 || v36 == 0.0;
    if (v37 > 0.0 && v37 != 1.0)
    {
      OUTLINED_FUNCTION_11_3();
      if (v42)
      {
        v44 = vcvtmd_s64_f64(v43 * 12.0 * 20.0 + 0.01);
        if (v34 <= 0.0)
        {
          v83 = v44;
          v40 = "\\sl%ld\\slmult1";
        }

        else
        {
          v83 = v44;
          v86 = vcvtmd_s64_f64(v34 * 20.0 + 0.01);
          v40 = "\\sl%ld\\slmult1\\slminimum%ld";
        }

        goto LABEL_52;
      }

      if (v36 != v34)
      {
        OUTLINED_FUNCTION_12_2(v43 * 12.0, 0.01);
        v86 = vcvtmd_s64_f64(v46 + v34 * v47);
        v87 = vcvtmd_s64_f64(v46 + v36 * v47);
        v83 = v48;
        v40 = "\\sl%ld\\slmult1\\slminimum%ld\\slmaximum%ld";
        goto LABEL_52;
      }

      v45 = vcvtmd_s64_f64(v34 * 20.0 + 0.01);
      goto LABEL_49;
    }

    if (v38)
    {
      if (v34 <= 0.0)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_17_1();
      v40 = "\\sl%ld";
    }

    else
    {
      OUTLINED_FUNCTION_11_3();
      v45 = vcvtmd_s64_f64(v34 * 20.0 + 0.01);
      if (v36 == v34)
      {
LABEL_49:
        v83 = v45;
        v40 = "\\sl-%ld";
        goto LABEL_52;
      }

      v83 = v45;
      v86 = vcvtmd_s64_f64(v36 * 20.0 + 0.01);
      v40 = "\\sl%ld\\slmaximum%ld";
    }

LABEL_52:
    OUTLINED_FUNCTION_31_0(v40, v41);
LABEL_53:
    v49 = &v6[strlen(v6)];
    [v88 lineSpacing];
    if (v50 != 0.0)
    {
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_12_2(v51, 0.01);
      v83 = v52;
      OUTLINED_FUNCTION_31_0("\\slleading%ld", v53);
      v49 += strlen(v49);
    }

    [v88 paragraphSpacingBefore];
    v55 = v54;
    [v88 paragraphSpacing];
    v57 = v56;
    if (v55 > 0.0)
    {
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_31_0("\\sb%ld", v58);
      v49 += strlen(v49);
    }

    if (v57 > 0.0)
    {
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_31_0("\\sa%ld", v59);
      v49 += strlen(v49);
    }

    baseWritingDirection = [v88 baseWritingDirection];
    if (baseWritingDirection)
    {
      OUTLINED_FUNCTION_11_3();
      if (baseWritingDirection == NSWritingDirectionRightToLeft)
      {
        v62 = "\\rtlpar";
      }

      else
      {
        v62 = "\\pardirnatural";
      }

      OUTLINED_FUNCTION_31_0(v62, v61);
      v49 += strlen(v49);
    }

    alignment2 = [v88 alignment];
    if ((*(v89 + 152) & 0x10) != 0 || alignment2 != 4)
    {
      if ((alignment2 - 1) > 3)
      {
LABEL_73:
        [v88 hyphenationFactor];
        v66 = v65;
        if (v65 > 0.0 && v65 <= 1.0)
        {
          if (![v88 usesDefaultHyphenation] || (+[NSParagraphStyle _defaultHyphenationFactor](NSParagraphStyle, "_defaultHyphenationFactor"), v66 != v68))
          {
            OUTLINED_FUNCTION_11_3();
            OUTLINED_FUNCTION_12_2(v69, 0.01);
            v84 = v70;
            OUTLINED_FUNCTION_31_0("\\parhyphenfactor%ld", v71);
            v49 += strlen(v49);
          }
        }

        [v88 tighteningFactorForTruncation];
        v73 = vcvtmd_s64_f64(v72 * 20.0 + 0.01);
        if (v73 != 1)
        {
          snprintf(v49, __s - v49 + 1000, "\\partightenfactor%ld", v73);
          v49 += strlen(v49);
        }

        if ([v88 spansAllLines])
        {
          OUTLINED_FUNCTION_11_3();
          OUTLINED_FUNCTION_31_0("\\parspansalllines", v74);
          v49 += strlen(v49);
        }

        v91 = 2;
        v90 = 0;
        v75 = NSTextAlignmentToCTTextAlignment([v88 alignment]);
        _NSCTTextAlignmentToHorizontalAlignment(v75, &v91, &v90);
        horizontalAlignment = [v88 horizontalAlignment];
        if (horizontalAlignment != v91)
        {
          OUTLINED_FUNCTION_11_3();
          v85 = v77;
          OUTLINED_FUNCTION_31_0("\\parhorizalign%ld", v78);
          v49 += strlen(v49);
        }

        isFullyJustified = [v88 isFullyJustified];
        if (v90 != isFullyJustified)
        {
          OUTLINED_FUNCTION_11_3();
          OUTLINED_FUNCTION_31_0("\\pfullyjustified", v80);
          strlen(v49);
        }

        goto LABEL_88;
      }

      v64 = off_1E726E4B8[alignment2 - 1];
    }

    else
    {
      if (baseWritingDirection == NSWritingDirectionNatural)
      {
        baseWritingDirection = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
      }

      if (baseWritingDirection != NSWritingDirectionRightToLeft)
      {
        goto LABEL_73;
      }

      v64 = "\\qr";
    }

    snprintf(v49, __s - v49 + 1000, "%s", v64);
    v49 += strlen(v49);
    goto LABEL_73;
  }

LABEL_88:
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_31_0("\n", v81);
  [*(v3 + 8) appendBytes:__s length:strlen(__s)];

  *(v3 + 104) = v2;
  if (([*(v3 + 88) isEqual:{-[objc_class blackColor](off_1ED4DF030(), "blackColor")}] & 1) == 0)
  {
    *(v3 + 152) |= 1u;
  }

LABEL_90:
  OUTLINED_FUNCTION_68();
}

- (void)writeFont:forceFontNumber:
{
  OUTLINED_FUNCTION_67();
  v64[0] = *MEMORY[0x1E69E9840];
  if (!v0)
  {
    goto LABEL_3;
  }

  v3 = v1;
  if (!v1)
  {
    goto LABEL_3;
  }

  v4 = v2;
  v5 = v0;
  if ([(UIFont *)v1 _isHiraginoFont])
  {
    fontName = [(UIFont *)v3 fontName];
    if ([(NSString *)fontName isEqualToString:@"AquaKana"])
    {
      [(UIFont *)v3 pointSize];
      v7 = [(UIFont *)NSFont systemFontOfSize:?];
LABEL_9:
      v3 = v7;
      goto LABEL_10;
    }

    if ([(NSString *)fontName isEqualToString:@"AquaKana-Bold"])
    {
      [(UIFont *)v3 pointSize];
      v7 = [(UIFont *)NSFont boldSystemFontOfSize:?];
      goto LABEL_9;
    }
  }

LABEL_10:
  v8 = OUTLINED_FUNCTION_25_0();
  v10 = [(NSRTFWriter *)v8 _plainFontNameForFont:v9];
  v11 = [(NSRTFWriter *)v5 _plainFontNameForFont:?];
  v63[0] = 0;
  if ((v4 & 1) != 0 || ([(__CFString *)v10 isEqualToString:v11]& 1) == 0)
  {
    snprintf(v63, 0x64uLL, "\\f%ld", [objc_msgSend(*(v5 + 40) objectForKey:{v10), "unsignedIntegerValue"}]);
    v12 = &v63[strlen(v63)];
  }

  else
  {
    v12 = v63;
  }

  traits = [(UIFont *)v3 traits];
  v14 = *(v5 + 144);
  if ((traits & 1) != (v14 & 1))
  {
    OUTLINED_FUNCTION_44();
    snprintf(v12, v15 + 100, "\\i%s", v60);
    v12 += strlen(v12);
    v14 = *(v5 + 144);
  }

  if ((traits & 2) != (v14 & 2))
  {
    OUTLINED_FUNCTION_44();
    snprintf(v12, v16 + 100, "\\b%s", v60);
    v12 += strlen(v12);
  }

  *(v5 + 144) = traits;
  [(UIFont *)v3 pointSize];
  v18 = v17;
  if ((*(v5 + 152) & 0x20) != 0)
  {
    v19 = *(v5 + 200);
    if (v19 <= 1)
    {
      v18 = _NSTextScalingConvertFontPointSize(*(v5 + 192), v19, v17);
    }
  }

  v20 = *(v5 + 80);
  if (!v20 || (v4 & 1) != 0 || ([v20 pointSize], v18 != v21))
  {
    snprintf(v12, v64 - v12, "\\fs%ld", (v18 + v18));
    if (vcvtd_n_f64_s64((v18 + v18), 1uLL) != v18)
    {
      v22 = strlen(v12);
      snprintf(&v12[v22], v64 - &v12[v22], "\\fsmilli%ld", (v18 * 1000.0 + 0.5));
    }
  }

  if (v63[0])
  {
    [*(v5 + 8) appendBytes:"\n" length:1];
    [*(v5 + 8) appendBytes:v63 length:strlen(v63)];
    [*(v5 + 8) appendBytes:" " length:1];
  }

  v23 = CTFontCopyFeatureSettings(v3);
  if (v23)
  {
    v24 = v23;
    Count = CFArrayGetCount(v23);
    [*(v5 + 8) appendBytes:"\\AppleTypeServices" length:18];
    if (Count >= 1)
    {
      v26 = 0;
      v27 = *MEMORY[0x1E69657B0];
      v28 = *MEMORY[0x1E69657A0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v24, v26);
        Value = CFDictionaryGetValue(ValueAtIndex, v27);
        v31 = CFDictionaryGetValue(ValueAtIndex, v28);
        if (Value && v31)
        {
          snprintf(__str, 0x64uLL, "\\AppleTypeServicesF%ld", [v31 integerValue] | (objc_msgSend(Value, "integerValue") << 16));
          [*(v5 + 8) appendBytes:__str length:strlen(__str)];
        }

        ++v26;
      }

      while (Count != v26);
    }

    [*(v5 + 8) appendBytes:" " length:1];
    CFRelease(v24);
    v32 = *(v5 + 152) | 2;
  }

  else
  {
    v33 = *(v5 + 152);
    if ((v33 & 2) != 0)
    {
      [*(v5 + 8) appendBytes:"\\AppleTypeServices " length:19];
      v33 = *(v5 + 152);
    }

    v32 = v33 & 0xFFFFFFFD;
  }

  *(v5 + 152) = v32;
  v34 = CTFontCopyAttribute(v3, *MEMORY[0x1E6965820]);
  if (v34)
  {
    v35 = v34;
    snprintf(__str, 0x64uLL, "\\AppleFontPalette%ld ", [v34 integerValue]);
    [*(v5 + 8) appendBytes:__str length:strlen(__str)];
    CFRelease(v35);
    v36 = *(v5 + 152) | 4;
  }

  else
  {
    if ((*(v5 + 152) & 4) == 0)
    {
      goto LABEL_44;
    }

    [*(v5 + 8) appendBytes:"\\AppleFontPalette0 " length:19];
    v36 = *(v5 + 152) & 0xFFFFFFFB;
  }

  *(v5 + 152) = v36;
LABEL_44:
  v37 = CTFontCopyAttribute(v3, *MEMORY[0x1E6965828]);
  if (v37)
  {
    v38 = v37;
    [*(v5 + 8) appendBytes:"\\AppleFontPaletteColors" length:23];
    v39 = OUTLINED_FUNCTION_38_0();
    v42 = OUTLINED_FUNCTION_70(v40, v41, v39);
    if (v42)
    {
      v43 = v42;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          OUTLINED_FUNCTION_40_0();
          if (!v45)
          {
            objc_enumerationMutation(v38);
          }

          v46 = *(v61 + 8 * i);
          v47 = [v38 objectForKeyedSubscript:v46];
          v48 = [(objc_class *)off_1ED4DF030() colorWithCGColor:v47];
          if (v48 && (v49 = [*(v5 + 56) objectForKey:v48]) != 0)
          {
            unsignedIntegerValue = [v49 unsignedIntegerValue];
          }

          else
          {
            unsignedIntegerValue = 0;
          }

          snprintf(__str, 0x64uLL, "\\AppleFontPaletteColorsMapping%ld", unsignedIntegerValue | ([v46 integerValue] << 16));
          v51 = [*(v5 + 8) appendBytes:__str length:strlen(__str)];
        }

        v43 = OUTLINED_FUNCTION_70(v51, v52);
      }

      while (v43);
    }

    [*(v5 + 8) appendBytes:" " length:1];
    v53 = *(v5 + 152) | 8;
  }

  else
  {
    if ((*(v5 + 152) & 8) == 0)
    {
      goto LABEL_60;
    }

    [*(v5 + 8) appendBytes:"\\AppleFontPaletteColors " length:24];
    v53 = *(v5 + 152) & 0xFFFFFFF7;
  }

  *(v5 + 152) = v53;
LABEL_60:
  v54 = CFStringConvertNSStringEncodingToEncoding([(UIFont *)v3 mostCompatibleStringEncoding]);
  if (v54 <= 0xFE)
  {
    OUTLINED_FUNCTION_64();
    if (v55)
    {
      OUTLINED_FUNCTION_63();
      if (!v45 & v58)
      {
        switch(v57)
        {
          case 21:
            v54 = 1053;
            break;
          case 22:
          case 23:
          case 24:
          case 26:
          case 27:
          case 28:
            goto LABEL_78;
          case 25:
            v54 = 1057;
            break;
          case 29:
            v54 = 1281;
            break;
          case 30:
            v54 = 1288;
            break;
          default:
            if (v57 == 35)
            {
              v54 = 1284;
            }

            else
            {
LABEL_78:
              v54 = 0;
            }

            break;
        }
      }

      else
      {
        v59 = v56;
        v54 = 1280;
        switch(v59)
        {
          case 1:
            v54 = 1056;
            break;
          case 2:
            v54 = 1059;
            break;
          case 3:
            v54 = 1058;
            break;
          case 4:
            v54 = 1286;
            break;
          case 5:
            v54 = 1285;
            break;
          case 6:
            v54 = 1283;
            break;
          case 7:
            v54 = 1282;
            break;
          default:
            break;
        }
      }
    }
  }

  *(v5 + 148) = v54;
LABEL_3:
  OUTLINED_FUNCTION_68();
}

- (uint64_t)writeKern:(uint64_t)result
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (a2)
    {
      doubleValue = [a2 doubleValue];
      if (v11 == 0.0)
      {
        strcpy(v24, "\\expnd0\\expndtw0\\kerning0\n");
      }

      else
      {
        OUTLINED_FUNCTION_12_2(v11, 0.01);
        doubleValue = OUTLINED_FUNCTION_58(v13, v14, "\\kerning1\\expnd%ld\\expndtw%ld\n", v15, v16, v17, v18, v19, v20, v21, v24[0]);
      }

      OUTLINED_FUNCTION_49(doubleValue, v4, v5, v6, v7, v8, v9, v10, v22, v23, v24[0]);
      OUTLINED_FUNCTION_13_1();
      return [v2 appendBytes:? length:?];
    }

    else
    {
      v12 = *(result + 8);

      return [v12 appendBytes:"\\kerning1\\expnd0\\expndtw0 " length:26];
    }
  }

  return result;
}

- (void)writeUnderlineStyle:(int)style allowStrikethrough:(int)strikethrough
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  if (!a2)
  {
    v11 = 0;
    selfCopy2 = 0;
    goto LABEL_7;
  }

  self = [a2 unsignedIntegerValue];
  selfCopy2 = self;
  v11 = self & 0xF00;
  if ((self & 0xF) == 0)
  {
LABEL_7:
    strcpy(v36, "\\ulnone ");
    goto LABEL_20;
  }

  if ((self & 0x8F0F) == 0x8001)
  {
    strcpy(&v36[4], " ");
    v12 = 2003596636;
  }

  else
  {
    if ((self & 0xF0F) != 9)
    {
      if ((self & 0xF) == 1)
      {
        v13 = "";
      }

      else
      {
        v13 = "th";
      }

      switch((v11 - 256) >> 8)
      {
        case 0uLL:
          LODWORD(self) = OUTLINED_FUNCTION_58(self, a2, "\\ul%sd ", strikethrough, a5, a6, a7, a8, v13, v33, v36[0]);
          break;
        case 1uLL:
          LODWORD(self) = OUTLINED_FUNCTION_58(self, a2, "\\ul%sdash ", strikethrough, a5, a6, a7, a8, v13, v33, v36[0]);
          break;
        case 2uLL:
          LODWORD(self) = OUTLINED_FUNCTION_58(self, a2, "\\ul%sdashd ", strikethrough, a5, a6, a7, a8, v13, v33, v36[0]);
          break;
        case 3uLL:
          LODWORD(self) = OUTLINED_FUNCTION_58(self, a2, "\\ul%sdashdd ", strikethrough, a5, a6, a7, a8, v13, v33, v36[0]);
          break;
        default:
          LODWORD(self) = OUTLINED_FUNCTION_58(self, a2, "\\ul%s ", strikethrough, a5, a6, a7, a8, v13, v33, v36[0]);
          break;
      }

      goto LABEL_20;
    }

    strcpy(&v36[3], "db ");
    v12 = 1684829532;
  }

  *v36 = v12;
LABEL_20:
  OUTLINED_FUNCTION_73(self, a2, style, strikethrough, a5, a6, a7, a8, v31, v33, v36[0]);
  OUTLINED_FUNCTION_13_1();
  v14 = [v8 appendBytes:? length:?];
  if (selfCopy2 > 9 || (OUTLINED_FUNCTION_59(), v21))
  {
    v21 = selfCopy2 == 32769 || selfCopy2 == (v11 | 1);
    if (!v21 && selfCopy2 != (v11 | 2))
    {
      v23 = OUTLINED_FUNCTION_58(v14, v15, "\\ulstyle%ld ", v16, v17, v18, v19, v20, selfCopy2, v34, v36[0]);
      OUTLINED_FUNCTION_49(v23, v24, v25, v26, v27, v28, v29, v30, v32, v35, v36[0]);
      OUTLINED_FUNCTION_13_1();
      [selfCopy appendBytes:? length:?];
    }
  }
}

- (void)writeStrikethroughStyle:(int)style
{
  v34 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  if (a2)
  {
    self = [a2 unsignedIntegerValue];
    selfCopy2 = self;
    if ((self & 0xF) == 9)
    {
      strcpy(&__s[7], "d1 ");
      v11 = "\\striked1 ";
LABEL_11:
      *__s = *v11;
      goto LABEL_12;
    }

    if ((self & 0xF) != 0)
    {
      if ((self & 0x8000) != 0)
      {
        strcpy(&__s[8], " ");
        v11 = "\\strikew ";
      }

      else
      {
        __s[8] = 0;
        v11 = "\\strike ";
      }

      goto LABEL_11;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  strcpy(__s, "\\strike0\\striked0 ");
LABEL_12:
  OUTLINED_FUNCTION_73(self, a2, style, a4, a5, a6, a7, a8, v28, v30, __s[0]);
  OUTLINED_FUNCTION_13_1();
  v12 = [v8 appendBytes:? length:?];
  if (selfCopy2 > 9 || (OUTLINED_FUNCTION_59(), v19))
  {
    if (selfCopy2 != 32769)
    {
      v20 = OUTLINED_FUNCTION_58(v12, v13, "\\strikestyle%ld ", v14, v15, v16, v17, v18, selfCopy2, v31, __s[0]);
      OUTLINED_FUNCTION_49(v20, v21, v22, v23, v24, v25, v26, v27, v29, v32, __s[0]);
      OUTLINED_FUNCTION_13_1();
      [selfCopy appendBytes:? length:?];
    }
  }
}

- (uint64_t)writeSuperscript:(int)superscript
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v8 = result;
    if (a2)
    {
      result = [a2 integerValue];
      if (result == -1)
      {
        strcpy(v13, "\\sub ");
        goto LABEL_16;
      }

      if (result == 1)
      {
        strcpy(v13, "\\super ");
        goto LABEL_16;
      }

      if (result)
      {
        if (result >= 0)
        {
          v9 = "\\super%ld ";
        }

        else
        {
          v9 = "\\sub%ld ";
        }

        if (result >= 0)
        {
          v10 = result;
        }

        else
        {
          v10 = -result;
        }

        LODWORD(result) = OUTLINED_FUNCTION_58(result, a2, v9, a4, a5, a6, a7, a8, v10, v12, v13[0]);
        goto LABEL_16;
      }
    }

    strcpy(v13, "\\nosupersub ");
LABEL_16:
    OUTLINED_FUNCTION_49(result, a2, superscript, a4, a5, a6, a7, a8, v11, v12, v13[0]);
    OUTLINED_FUNCTION_13_1();
    return [v8 appendBytes:? length:?];
  }

  return result;
}

- (uint64_t)writeHighlightStyle:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_22_0();
    v4 = [v3 length];
    if (v4)
    {
      v4 = [(NSArray *)+[NSRTFReader defaultTextHighlightStyles](NSRTFReader indexOfObject:"indexOfObject:", v2];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [*(v1 + 208) indexOfObject:v2];
        if (v4 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 0;
        }

        else
        {
          v11 = v4 + 1;
        }
      }

      else
      {
        v11 = ~v4;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = OUTLINED_FUNCTION_48(v4, v5, "\\AppleHighlight%ld ", v6, v7, v8, v9, v10, v11, v30, *v33, v33[4]);
    v20 = OUTLINED_FUNCTION_56(v12, v13, v14, v15, v16, v17, v18, v19, v28, v31, v34, v36);
    return OUTLINED_FUNCTION_29_0(v20, v21, v22, v23, v24, v25, v26, v27, v29, v32, v35, v37);
  }

  return result;
}

- (uint64_t)writeHighlightColorScheme:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_22_0();
    v4 = [v3 length];
    if (v4)
    {
      v4 = [(NSArray *)+[NSRTFReader defaultTextHighlightColorSchemes](NSRTFReader indexOfObject:"indexOfObject:", v2];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [*(v1 + 216) indexOfObject:v2];
        if (v4 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 0;
        }

        else
        {
          v11 = v4 + 1;
        }
      }

      else
      {
        v11 = ~v4;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = OUTLINED_FUNCTION_48(v4, v5, "\\AppleHilightClrSch%ld ", v6, v7, v8, v9, v10, v11, v30, *v33, v33[4]);
    v20 = OUTLINED_FUNCTION_56(v12, v13, v14, v15, v16, v17, v18, v19, v28, v31, v34, v36);
    return OUTLINED_FUNCTION_29_0(v20, v21, v22, v23, v24, v25, v26, v27, v29, v32, v35, v37);
  }

  return result;
}

- (uint64_t)writeBaselineOffset:(uint64_t)offset
{
  if (result)
  {
    if (a2)
    {
      LODWORD(result) = [a2 doubleValue];
      v9 = vcvtmd_s64_f64(v8 * 2.0 + 0.01);
      if (v9 < 0)
      {
        v10 = OUTLINED_FUNCTION_48(result, a2, "\\dn%ld ", a4, a5, a6, a7, a8, -v9, v28, *v31, v31[4]);
LABEL_7:
        v18 = OUTLINED_FUNCTION_56(v10, v11, v12, v13, v14, v15, v16, v17, v26, v29, *v32, v32[4]);
        return OUTLINED_FUNCTION_29_0(v18, v19, v20, v21, v22, v23, v24, v25, v27, v30, v33, v34);
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = OUTLINED_FUNCTION_48(result, a2, "\\up%ld ", a4, a5, a6, a7, a8, v9, v28, *v31, v31[4]);
    goto LABEL_7;
  }

  return result;
}

- (uint64_t)writeLigature:(uint64_t)ligature
{
  if (result)
  {
    if (a2)
    {
      integerValue = [a2 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    v9 = OUTLINED_FUNCTION_75(integerValue, a2, "\\CocoaLigature%ld ", a4, a5, a6, a7, a8, integerValue, v20);
    v17 = OUTLINED_FUNCTION_71(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21);
    return OUTLINED_FUNCTION_34_0(v17, v18);
  }

  return result;
}

- (uint64_t)writeCharacterShape:(uint64_t)result
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    snprintf(__str, 0x20uLL, "\\AppleTypeServices%c%ld ", 85, [a2 integerValue]);
    return [*(v2 + 8) appendBytes:__str length:strlen(__str)];
  }

  return result;
}

- (uint64_t)writeStrokeWidth:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      [a2 doubleValue];
    }

    else
    {
      v2 = 0.0;
    }

    OUTLINED_FUNCTION_3_3(v2, 0.01);
    v11 = OUTLINED_FUNCTION_75(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23);
    v19 = OUTLINED_FUNCTION_71(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24);
    return OUTLINED_FUNCTION_34_0(v19, v20);
  }

  return result;
}

- (uint64_t)writeObliqueness:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      [a2 doubleValue];
      v3 = v2 * 100.0;
    }

    else
    {
      v3 = 0.0;
    }

    OUTLINED_FUNCTION_3_3(v3, 0.01);
    v11 = OUTLINED_FUNCTION_75(v4, v5, "\\obliqueness%ld ", v6, v7, v8, v9, v10, v21, v23);
    v19 = OUTLINED_FUNCTION_71(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24);
    return OUTLINED_FUNCTION_34_0(v19, v20);
  }

  return result;
}

- (uint64_t)writeExpansion:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      [a2 doubleValue];
      v3 = v2 * 100.0;
    }

    else
    {
      v3 = 0.0;
    }

    OUTLINED_FUNCTION_3_3(v3, 0.01);
    v11 = OUTLINED_FUNCTION_75(v4, v5, "\\expansion%ld ", v6, v7, v8, v9, v10, v21, v23);
    v19 = OUTLINED_FUNCTION_71(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24);
    return OUTLINED_FUNCTION_34_0(v19, v20);
  }

  return result;
}

- (const)writeShadow:(const char *)result
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    OUTLINED_FUNCTION_22_0();
    v19 = 0.0;
    v20 = 0.0;
    v17 = 0.333333333;
    v18 = 0.0;
    if (!v3 || ([v2 shadowOffset], v5 = v4, v7 = v6, objc_msgSend(v2, "shadowBlurRadius"), v9 = v8, (v10 = objc_msgSend(v2, "shadowColor")) == 0) || v5 == 0.0 && v7 == 0.0 && v9 == 0.0)
    {
      strcpy(__s, "\\shad0 ");
      return [*(v1 + 8) appendBytes:__s length:strlen(__s)];
    }

    else
    {
      [RGBColorForColor(v10) getRed:&v20 green:&v19 blue:&v18 alpha:&v17];
      v11 = OUTLINED_FUNCTION_61(v17, 255.0);
      snprintf(__s, 0xC8uLL, "\\shad\\shadx%ld\\shady%ld\\shadr%ld\\shado%ld ", v12, v13, v14, v11);
      [*(v1 + 8) appendBytes:__s length:strlen(__s)];
      [(objc_class *)off_1ED4DF030() colorWithCalibratedRed:v20 green:v19 blue:v18 alpha:1.0];
      v15 = OUTLINED_FUNCTION_8_3();
      return [(NSRTFWriter *)v15 writeColor:v16 type:5];
    }
  }

  return result;
}

- (void)restoreAttributes:(uint64_t)attributes
{
  if (attributes)
  {
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_22_0();
    v4 = [v3 objectForKey:@"NSFont"];
    if (!v4)
    {
      v4 = NSDefaultFont();
    }

    v5 = [v2 objectForKey:@"NSColor"];
    v6 = [v2 objectForKey:@"NSBackgroundColor"];
    v7 = [v2 objectForKey:@"NSKern"];
    v8 = [v2 objectForKey:@"NSBaselineOffset"];
    v9 = [v2 objectForKey:@"NSSuperScript"];
    v10 = [v2 objectForKey:@"NSUnderline"];
    v11 = [v2 objectForKeyedSubscript:@"NSTextHighlightStyle"];
    v12 = [v2 objectForKeyedSubscript:@"NSTextHighlightColorScheme"];
    v13 = *(v1 + 80);
    if (v4 != v13)
    {

      v14 = [v4 copyWithZone:0];
      *(v1 + 80) = v14;
      *(v1 + 144) = [v14 traits];
      v15 = CFStringConvertNSStringEncodingToEncoding([*(v1 + 80) mostCompatibleStringEncoding]);
      if (v15 <= 0xFE)
      {
        OUTLINED_FUNCTION_64();
        if (v16)
        {
          OUTLINED_FUNCTION_63();
          if (!v20 & v19)
          {
            switch(v18)
            {
              case 21:
                v15 = 1053;
                break;
              case 22:
              case 23:
              case 24:
              case 26:
              case 27:
              case 28:
                goto LABEL_23;
              case 25:
                v15 = 1057;
                break;
              case 29:
                v15 = 1281;
                break;
              case 30:
                v15 = 1288;
                break;
              default:
                if (v18 == 35)
                {
                  v15 = 1284;
                }

                else
                {
LABEL_23:
                  v15 = 0;
                }

                break;
            }
          }

          else
          {
            v21 = v17;
            v15 = 1280;
            switch(v21)
            {
              case 1:
                v15 = 1056;
                break;
              case 2:
                v15 = 1059;
                break;
              case 3:
                v15 = 1058;
                break;
              case 4:
                v15 = 1286;
                break;
              case 5:
                v15 = 1285;
                break;
              case 6:
                v15 = 1283;
                break;
              case 7:
                v15 = 1282;
                break;
              default:
                break;
            }
          }
        }
      }

      *(v1 + 148) = v15;
      v22 = CTFontCopyFeatureSettings(*(v1 + 80));
      v23 = *(v1 + 152) & 0xFFFFFFFD;
      *(v1 + 152) = v23;
      if (v22)
      {
        v24 = v22;
        if (CFArrayGetCount(v22) >= 1)
        {
          *(v1 + 152) |= 2u;
        }

        CFRelease(v24);
        v23 = *(v1 + 152);
      }

      *(v1 + 152) = v23 & 0xFFFFFFFB;
      v25 = CTFontCopyAttribute(*(v1 + 80), *MEMORY[0x1E6965820]);
      if (v25)
      {
        *(v1 + 152) |= 4u;
        CFRelease(v25);
      }
    }

    v26 = *(v1 + 88);
    if (v5 != v26)
    {

      *(v1 + 88) = [v5 copyWithZone:0];
    }

    v27 = *(v1 + 96);
    if (v6 != v27)
    {

      *(v1 + 96) = [v6 copyWithZone:0];
    }

    v28 = *(v1 + 112);
    if (v7 != v28)
    {

      *(v1 + 112) = [v7 copyWithZone:0];
    }

    v29 = *(v1 + 120);
    if (v8 != v29)
    {

      *(v1 + 120) = [v8 copyWithZone:0];
    }

    v30 = *(v1 + 128);
    if (v9 != v30)
    {

      *(v1 + 128) = [OUTLINED_FUNCTION_15_1() copyWithZone:?];
    }

    v31 = *(v1 + 136);
    if (v10 != v31)
    {

      *(v1 + 136) = [OUTLINED_FUNCTION_16_1() copyWithZone:?];
    }

    v32 = *(v1 + 224);
    if (v11 != v32)
    {

      v11 = [v11 copy];
      *(v1 + 224) = v11;
    }

    if (!v11 || [v12 isEqualToString:@"NSTextHighlightColorSchemeDefault"])
    {
      v12 = 0;
    }

    v33 = *(v1 + 232);
    if (v12 != v33)
    {

      *(v1 + 232) = [v12 copy];
    }

    OUTLINED_FUNCTION_54();
  }
}

- (unint64_t)writeCharacterAttributes:(void *)attributes previousAttributes:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [a2 objectForKey:@"NSFont"];
  if (!v6)
  {
    v6 = NSDefaultFont();
  }

  v7 = [a2 objectForKey:@"NSColor"];
  v104 = [a2 objectForKey:@"NSBackgroundColor"];
  v105 = [a2 objectForKey:@"NSKern"];
  v89 = [a2 objectForKey:@"NSBaselineOffset"];
  v90 = [a2 objectForKey:@"NSSuperScript"];
  v91 = [a2 objectForKey:@"NSUnderline"];
  v103 = [a2 objectForKey:NSCharacterShapeAttributeName];
  v102 = [attributes objectForKey:NSCharacterShapeAttributeName];
  v101 = OUTLINED_FUNCTION_39_0();
  v96 = OUTLINED_FUNCTION_42();
  v86 = OUTLINED_FUNCTION_39_0();
  v83 = OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_39_0();
  v9 = OUTLINED_FUNCTION_42();
  v88 = OUTLINED_FUNCTION_39_0();
  v84 = OUTLINED_FUNCTION_42();
  v99 = OUTLINED_FUNCTION_39_0();
  v93 = OUTLINED_FUNCTION_42();
  v87 = OUTLINED_FUNCTION_39_0();
  v85 = OUTLINED_FUNCTION_42();
  v100 = OUTLINED_FUNCTION_39_0();
  v95 = OUTLINED_FUNCTION_42();
  v98 = OUTLINED_FUNCTION_39_0();
  v94 = OUTLINED_FUNCTION_42();
  v97 = OUTLINED_FUNCTION_39_0();
  v92 = OUTLINED_FUNCTION_42();
  v10 = [a2 objectForKey:@"NSWritingDirection"];
  v11 = [attributes objectForKey:@"NSWritingDirection"];
  v12 = [a2 objectForKeyedSubscript:@"NSTextHighlightStyle"];
  v19 = [a2 objectForKeyedSubscript:@"NSTextHighlightColorScheme"];
  if (attributes)
  {
    v20 = *(v5 + 80);
  }

  else
  {
    v21 = NSDefaultFont();
    v20 = *(v5 + 80);
    if (v21 == v20)
    {
LABEL_92:
      [NSRTFWriter writeFont:forceFontNumber:];

      *(v5 + 80) = [v6 copyWithZone:0];
      goto LABEL_8;
    }
  }

  if (v6 != v20)
  {
    goto LABEL_92;
  }

LABEL_8:
  if (v7 != *(v5 + 88) || (*(v5 + 152) & 1) != 0)
  {
    [(NSRTFWriter *)v5 writeColor:v7 type:0];

    v22 = 0;
    *(v5 + 88) = [v7 copyWithZone:0];
    *(v5 + 152) &= ~1u;
  }

  else
  {
    v22 = 1;
  }

  if (v104 != *(v5 + 96))
  {
    [(NSRTFWriter *)v5 writeColor:v104 type:1];

    *(v5 + 96) = [v104 copyWithZone:0];
  }

  if (v105 != *(v5 + 112))
  {
    [(NSRTFWriter *)v5 writeKern:v105];

    *(v5 + 112) = [v105 copyWithZone:0];
  }

  if (v89 != *(v5 + 120))
  {
    [(NSRTFWriter *)v5 writeBaselineOffset:v89, v13, v14, v15, v16, v17, v18];

    *(v5 + 120) = [v89 copyWithZone:0];
  }

  if (v90 != *(v5 + 128))
  {
    v53 = OUTLINED_FUNCTION_45();
    [(NSRTFWriter *)v53 writeSuperscript:v54, v55, v56, v57, v58, v59, v60];

    *(v5 + 128) = [v90 copyWithZone:0];
  }

  if (v12 == *(v5 + 224))
  {
    if (v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v61 = OUTLINED_FUNCTION_46();
    [NSRTFWriter writeHighlightStyle:v61];

    v62 = [v12 copy];
    *(v5 + 224) = v62;
    if (v62)
    {
LABEL_21:
      if (![v19 isEqualToString:@"NSTextHighlightColorSchemeDefault"])
      {
        goto LABEL_23;
      }
    }
  }

  v19 = 0;
LABEL_23:
  if (v19 != *(v5 + 232))
  {
    v63 = OUTLINED_FUNCTION_47();
    [NSRTFWriter writeHighlightColorScheme:v63];

    *(v5 + 232) = [v19 copy];
  }

  if (v91 != *(v5 + 136))
  {
    v64 = OUTLINED_FUNCTION_47();
    [(NSRTFWriter *)v64 writeUnderlineStyle:v65 allowStrikethrough:0, v66, v67, v68, v69, v70];

    *(v5 + 136) = [v91 copyWithZone:0];
  }

  if ([v91 unsignedIntegerValue])
  {
    v23 = v86 ? 1 : v22;
    if (v86 != v83 || (v23 & 1) == 0)
    {
      [(NSRTFWriter *)v5 writeColor:v86 type:3];
    }
  }

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  if (unsignedIntegerValue != [v9 unsignedIntegerValue])
  {
    [(NSRTFWriter *)v5 writeStrikethroughStyle:v8, v25, v26, v27, v28, v29, v30];
  }

  if (![v8 unsignedIntegerValue] || (v88 ? (v31 = 1) : (v31 = v22), v88 == v84 && v31 && (v32 = objc_msgSend(v8, "unsignedIntegerValue"), v32 == objc_msgSend(v9, "unsignedIntegerValue"))))
  {
    if (v101)
    {
LABEL_43:
      integerValue = [v101 integerValue];
      goto LABEL_47;
    }
  }

  else
  {
    [(NSRTFWriter *)v5 writeColor:v88 type:4];
    if (v101)
    {
      goto LABEL_43;
    }
  }

  integerValue = 1;
LABEL_47:
  if (v96)
  {
    integerValue2 = [v96 integerValue];
  }

  else
  {
    integerValue2 = 1;
  }

  if (integerValue != integerValue2)
  {
    v71 = OUTLINED_FUNCTION_45();
    [(NSRTFWriter *)v71 writeLigature:v72, v73, v74, v75, v76, v77, v78];
  }

  integerValue3 = [v103 integerValue];
  result = [v102 integerValue];
  if (integerValue3 != result)
  {
    v79 = OUTLINED_FUNCTION_46();
    result = [(NSRTFWriter *)v79 writeCharacterShape:v80];
  }

  if (v99 == v93)
  {
    if (!v99)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v81 = OUTLINED_FUNCTION_47();
    result = [(NSRTFWriter *)v81 writeStrokeWidth:v82];
    if (!v99)
    {
      goto LABEL_61;
    }
  }

  if (v87)
  {
    v36 = 1;
  }

  else
  {
    v36 = v22;
  }

  if (v87 != v85 || (v36 & 1) == 0)
  {
    result = [(NSRTFWriter *)v5 writeColor:v87 type:2];
  }

LABEL_61:
  if (v100 != v95)
  {
    result = [(NSRTFWriter *)v5 writeObliqueness:v100];
  }

  if (v98 != v94)
  {
    result = [(NSRTFWriter *)v5 writeExpansion:v98];
  }

  if (v97 != v92)
  {
    result = [NSRTFWriter writeShadow:v5];
  }

  if (v10 != v11)
  {
    result = [v10 isEqual:v11];
    if ((result & 1) == 0)
    {
      v37 = [v10 count];
      result = [v11 count];
      v38 = result;
      v39 = 0;
      if (result >= v37)
      {
        v40 = v37;
      }

      else
      {
        v40 = result;
      }

      if (v40)
      {
        while (1)
        {
          result = [objc_msgSend(v10 objectAtIndex:{v39), "isEqual:", objc_msgSend(v11, "objectAtIndex:", v39)}];
          if (!result)
          {
            break;
          }

          if (v40 == ++v39)
          {
            v39 = v40;
            break;
          }
        }
      }

      v41 = v38 - v39;
      if (v38 > v39)
      {
        do
        {
          v107[0] = 8236;
          [MEMORY[0x1E696AEC0] stringWithCharacters:v107 length:1];
          v42 = OUTLINED_FUNCTION_4_2();
          result = writeCharacters(v42, v43, v44, v45, v46);
          --v41;
        }

        while (v41);
      }

      if (v39 < v37)
      {
        do
        {
          v106 = 8234;
          v47 = [objc_msgSend(v10 objectAtIndex:{v39), "unsignedIntegerValue"}];
          if (v47)
          {
            ++v106;
          }

          if ((v47 & 2) != 0)
          {
            v106 += 3;
          }

          [MEMORY[0x1E696AEC0] stringWithCharacters:&v106 length:1];
          v48 = OUTLINED_FUNCTION_4_2();
          result = writeCharacters(v48, v49, v50, v51, v52);
          ++v39;
        }

        while (v37 != v39);
      }
    }
  }

  return result;
}

- (uint64_t)_attachmentData
{
  if (result)
  {
    v1 = result;
    result = *(result + 184);
    if (!result)
    {
      v2 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
      *(v1 + 184) = v2;
      [objc_msgSend(v2 "keyPointerFunctions")];
      return *(v1 + 184);
    }
  }

  return result;
}

- (uint64_t)writeAttachment:(uint64_t)result editableData:editableTypeIdentifier:
{
  *&__str[1032] = *MEMORY[0x1E69E9840];
  if (result)
  {
    OUTLINED_FUNCTION_22_0();
    v5 = *(v4 + 32);
    fileWrapper = [v6 fileWrapper];
    result = [fileWrapper isRegularFile];
    if (result)
    {
      result = [(NSRTFWriter *)v1 _attachmentData];
      v8 = result;
      if (!v2)
      {
        return result;
      }
    }

    else
    {
      v8 = 0;
      if (!v2)
      {
        return result;
      }
    }

    if (v5 && fileWrapper)
    {
      if (v8)
      {
        [fileWrapper regularFileContents];
        v9 = [OUTLINED_FUNCTION_60() objectForKey:v3];
        if (!v9)
        {
          v9 = [OUTLINED_FUNCTION_66() addFileWrapper:?];
          [v8 setObject:v9 forKey:v3];
        }
      }

      else
      {
        v9 = [OUTLINED_FUNCTION_66() addFileWrapper:?];
      }

      if ([v2 attachmentCell])
      {
        [objc_msgSend(v2 "attachmentCell")];
      }

      else
      {
        image = [v2 image];
        if (!image)
        {
          v11 = *MEMORY[0x1E696AA88];
          v12 = *(MEMORY[0x1E696AA88] + 8);
LABEL_19:
          [*(v1 + 8) appendBytes:"{{\\NeXTGraphic " length:15];
          v15 = OUTLINED_FUNCTION_47();
          [(NSRTFWriter *)v15 writeEscapedUTF8String:v16];
          v17 = snprintf(__str, 0x400uLL, " \\width%ld \\height%ld", vcvtmd_s64_f64(v11 * 20.0 + 0.01), vcvtmd_s64_f64(v12 * 20.0 + 0.01));
          OUTLINED_FUNCTION_74(v17, v18, v19, v20, v21, v22, v23, v24, v52, v55, v58, v61, __str[0]);
          OUTLINED_FUNCTION_33_0();
          [v9 appendBytes:? length:?];
          [v2 lineLayoutPadding];
          v26 = vcvtmd_s64_f64(v25 * 20.0 + 0.01);
          embeddingType = [v2 embeddingType];
          v28 = [v2 standaloneAlignment] - 1;
          if (v28 > 2)
          {
            v29 = 108;
          }

          else
          {
            v29 = dword_18E856830[v28];
          }

          allowsTextAttachmentView = [v2 allowsTextAttachmentView];
          v31 = " \\applenoattachmentview";
          if (allowsTextAttachmentView)
          {
            v31 = "";
          }

          v32 = snprintf(__str, 0x400uLL, " \\appleattachmentpadding%ld \\appleembedtype%ld \\appleaq%c%s", v26, embeddingType, v29, v31);
          OUTLINED_FUNCTION_74(v32, v33, v34, v35, v36, v37, v38, v39, v53, v56, v59, v62, __str[0]);
          OUTLINED_FUNCTION_33_0();
          [embeddingType appendBytes:? length:?];
          adaptiveImageGlyph = [v2 adaptiveImageGlyph];
          if (adaptiveImageGlyph)
          {
            v41 = [objc_msgSend(adaptiveImageGlyph "contentIdentifier")];
            if (v41)
            {
              strcpy(&__str[8], "mojiimage ");
              OUTLINED_FUNCTION_74(v41, v42, v43, v44, v45, v46, v47, v48, v54, v57, v60, v63, aAppleemojiimag_0[0]);
              OUTLINED_FUNCTION_33_0();
              [embeddingType appendBytes:? length:?];
              v50 = OUTLINED_FUNCTION_25_0();
              [(NSRTFWriter *)v50 writeEscapedUTF8String:v51];
            }
          }

          snprintf(__str, 0x400uLL, "\n}%c}", 172);
          v49 = *(v1 + 8);
          strlen(__str);
          OUTLINED_FUNCTION_33_0();
          return [v49 appendBytes:? length:?];
        }

        [image size];
      }

      v11 = v13;
      v12 = v14;
      goto LABEL_19;
    }
  }

  return result;
}

- (void)writeImageGlyph:attributes:
{
  OUTLINED_FUNCTION_55();
  *&__str[1032] = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    goto LABEL_4;
  }

  v4 = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v5 = v1;
  if (!*(v1 + 32))
  {
    goto LABEL_4;
  }

  v6 = v3;
  if ((*(v1 + 152) & 0x80) != 0)
  {
    v3 = 0;
  }

  v7 = [v2 _configuredFileWrapperForAttributes:v3];
  if ([v7 isRegularFile])
  {
    _attachmentData = [(NSRTFWriter *)v5 _attachmentData];
    if (_attachmentData)
    {
      [v7 regularFileContents];
      v9 = [OUTLINED_FUNCTION_60() objectForKey:v0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
    _attachmentData = 0;
  }

  v9 = [OUTLINED_FUNCTION_66() addFileWrapper:?];
  [_attachmentData setObject:v9 forKey:v0];
LABEL_12:
  [v5[1] appendBytes:"{{\\NeXTGraphic " length:15];
  [(NSRTFWriter *)v5 writeEscapedUTF8String:v9];
  [v4 _imageSizeForAttributes:v6];
  v12 = snprintf(__str, 0x400uLL, " \\width%ld \\height%ld", vcvtmd_s64_f64(v10 * 20.0 + 0.01), vcvtmd_s64_f64(v11 * 20.0 + 0.01));
  OUTLINED_FUNCTION_73(v12, v13, v14, v15, v16, v17, v18, v19, v38, v41, __str[0]);
  OUTLINED_FUNCTION_13_1();
  [v6 appendBytes:? length:?];
  v20 = [objc_msgSend(v4 "contentIdentifier")];
  if (v20)
  {
    strcpy(&__str[8], "mojiimage ");
    OUTLINED_FUNCTION_73(v20, v21, v22, v23, v24, v25, v26, v27, v39, v42, aAppleemojiimag_0[0]);
    OUTLINED_FUNCTION_13_1();
    [v6 appendBytes:? length:?];
    v36 = OUTLINED_FUNCTION_25_0();
    [(NSRTFWriter *)v36 writeEscapedUTF8String:v37];
  }

  v28 = snprintf(__str, 0x400uLL, "\n}%c}", 172);
  OUTLINED_FUNCTION_49(v28, v29, v30, v31, v32, v33, v34, v35, v40, v42, __str[0]);
  OUTLINED_FUNCTION_13_1();
  [v5 appendBytes:? length:?];
LABEL_4:
  OUTLINED_FUNCTION_54();
}

- (uint64_t)writeGlyphInfo:(uint64_t)result
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    OUTLINED_FUNCTION_22_0();
    glyphName = [v3 glyphName];
    if (glyphName)
    {
      strcpy(__s, "{}{\\*\\glid ");
    }

    else
    {
      if ([v2 characterCollection])
      {
        characterIdentifier = [v2 characterIdentifier];
      }

      else
      {
        characterIdentifier = [v2 _glyph];
      }

      OUTLINED_FUNCTION_57(characterIdentifier, v6, "{}{\\*\\glid%ld ", v7, v8, v9, v10, v11, characterIdentifier, v25, __s[0]);
    }

    v12 = *(v1 + 8);
    strlen(__s);
    OUTLINED_FUNCTION_13_1();
    [v12 appendBytes:? length:?];
    [v2 _baseString];
    v13 = OUTLINED_FUNCTION_8_3();
    [(NSRTFWriter *)v13 writeEscapedUTF8String:v14];
    if (glyphName)
    {
      [*(v1 + 8) appendBytes:"\\glnam " length:7];
      v23 = OUTLINED_FUNCTION_47();
      [(NSRTFWriter *)v23 writeEscapedUTF8String:v24];
    }

    else if ([v2 characterCollection])
    {
      characterCollection = [v2 characterCollection];
      OUTLINED_FUNCTION_57(characterCollection, v16, "\\glcol%ld", v17, v18, v19, v20, v21, characterCollection, v25, __s[0]);
      v22 = *(v1 + 8);
      strlen(__s);
      OUTLINED_FUNCTION_13_1();
      [v22 appendBytes:? length:?];
    }

    return [*(v1 + 8) appendBytes:"}" length:1];
  }

  return result;
}

- (void)writeLinkInfo:(uint64_t)info
{
  if (info)
  {
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_22_0();
    objc_opt_class();
    OUTLINED_FUNCTION_65();
    if (objc_opt_isKindOfClass())
    {
      v2 = [MEMORY[0x1E695DFF8] URLWithString:v2];
    }

    else
    {
      objc_opt_class();
      OUTLINED_FUNCTION_65();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_20:
        OUTLINED_FUNCTION_54();
        return;
      }
    }

    if (v2)
    {
      v3 = CFURLCreateData(0, v2, 0x8000100u, 1u);
      if (v3)
      {
        v4 = v3;
        [*(v1 + 8) appendBytes:"{\\field{\\*\\fldinst{HYPERLINK " length:30];
        v5 = *(v1 + 8);
        BytePtr = CFDataGetBytePtr(v4);
        Length = CFDataGetLength(v4);
        if (Length >= 1)
        {
          v8 = Length;
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = BytePtr[v9] - 92;
            v12 = v11 > 0x21;
            v13 = (1 << v11) & 0x280000001;
            if (!v12 && v13 != 0)
            {
              if (v10 < v9)
              {
                [v5 appendBytes:&BytePtr[v10] length:v9 - v10];
              }

              [v5 appendBytes:"\\"" length:1];
              v10 = v9;
            }

            ++v9;
          }

          while (v8 != v9);
          if (v8 > v10)
          {
            [v5 appendBytes:&BytePtr[v10] length:v8 - v10];
          }
        }

        [*(v1 + 8) appendBytes:"}}{\\fldrslt " length:13];
        CFRelease(v4);
      }
    }

    goto LABEL_20;
  }
}

- (uint64_t)textFlowWithAttributes:(NSUInteger *)attributes range:
{
  if (!self)
  {
    return 0;
  }

  v5 = [a2 objectForKey:@"CTVerticalForms"];
  v6 = v5;
  v7 = *(self + 176);
  if (!v7)
  {
    v13 = 0;
    v14 = 0;
    if (!v5)
    {
      return v14;
    }

    goto LABEL_16;
  }

  v8.length = *(v7 + 8);
  if (v8.length)
  {
    v9 = 0;
    v10 = (v7 + 16);
    do
    {
      v11.length = attributes[1];
      v8.location = *(v10 - 2);
      if (v11.length + *attributes < v8.location)
      {
        break;
      }

      v11.location = *attributes;
      v12 = NSIntersectionRange(v8, v11);
      if (v12.length)
      {
        if (v12.location == *attributes)
        {
          v9 = *v10;
          attributes[1] = v12.length;
        }

        else
        {
          attributes[1] = v12.location - *attributes;
        }
      }

      v8.length = v10[2];
      v10 += 3;
    }

    while (v8.length);
    v13 = v9 == 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if (v6)
  {
LABEL_16:
    if ([v6 integerValue] == 1 && !v13)
    {
      return 4;
    }
  }

  return v14;
}

- (uint64_t)writeTextFlow:(uint64_t)result
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    snprintf(__str, 0x32uLL, "\\stextflow%ld ", a2);
    return [*(v2 + 8) appendBytes:__str length:strlen(__str)];
  }

  return result;
}

- (uint64_t)_addColor:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  result = [(NSRTFWriter *)a1 _canWriteColor:a2];
  if (result)
  {
    result = [*(a1 + 56) objectForKeyedSubscript:a2];
    if (!result)
    {
      v5 = [*(a1 + 64) count];
      [*(a1 + 56) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", v5), a2}];
      v6 = *(a1 + 64);

      return [v6 addObject:a2];
    }
  }

  return result;
}

@end