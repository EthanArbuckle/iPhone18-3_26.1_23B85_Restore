@interface NSHTMLReader
+ (BOOL)allowsAttributedStringAgentForOptions:(id)a3;
+ (id)defaultParagraphStyle;
+ (void)initialize;
- (BOOL)_addAttachmentForElement:(id)a3 URL:(id)a4 needsParagraph:(BOOL)a5 usePlaceholder:(BOOL)a6;
- (BOOL)_elementHasOwnBackgroundColor:(id)a3;
- (BOOL)_elementIsBlockLevel:(id)a3;
- (BOOL)_enterElement:(id)a3 tag:(id)a4 display:(id)a5 depth:(int64_t)a6 embedded:(BOOL)a7;
- (BOOL)_getComputedFloat:(double *)a3 forNode:(id)a4 property:(id)a5;
- (BOOL)_getFloat:(double *)a3 forNode:(id)a4 property:(id)a5;
- (BOOL)_processElement:(id)a3 tag:(id)a4 display:(id)a5 depth:(int64_t)a6;
- (BOOL)_sanitizeWebArchiveArray:(id)a3;
- (BOOL)_sanitizeWebArchiveDictionary:(id)a3;
- (Class)_DOMHTMLTableCellElementClass;
- (Class)_webArchiveClass;
- (Class)_webViewClass;
- (NSHTMLReader)initWithDOMRange:(id)a3;
- (NSHTMLReader)initWithData:(id)a3 options:(id)a4;
- (NSHTMLReader)initWithPath:(id)a3 options:(id)a4;
- (id)_attributesForElement:(id)a3;
- (id)_childrenForNode:(id)a3;
- (id)_colorForNode:(id)a3 property:(id)a4;
- (id)_computedAttributesForElement:(id)a3;
- (id)_computedColorForNode:(id)a3 property:(id)a4;
- (id)_computedStringForNode:(id)a3 property:(id)a4;
- (id)_computedStyleForElement:(id)a3;
- (id)_createWebArchiveForData:(id)a3;
- (id)_specifiedStyleForElement:(id)a3;
- (id)_stringForNode:(id)a3 property:(id)a4;
- (id)_webPreferences;
- (id)attributedString;
- (id)documentAttributes;
- (void)_addMarkersToList:(id)a3 range:(_NSRange)a4;
- (void)_addQuoteForElement:(id)a3 opening:(BOOL)a4 level:(int64_t)a5;
- (void)_addTableCellForElement:(id)a3;
- (void)_addTableForElement:(id)a3;
- (void)_addValue:(id)a3 forElement:(id)a4;
- (void)_adjustTrailingNewline;
- (void)_exitElement:(id)a3 tag:(id)a4 display:(id)a5 depth:(int64_t)a6 startIndex:(unint64_t)a7;
- (void)_fillInBlock:(id)a3 forElement:(id)a4 backgroundColor:(id)a5 extraMargin:(double)a6 extraPadding:(double)a7 isTable:(BOOL)a8;
- (void)_load;
- (void)_loadFromDOMRange;
- (void)_loadUsingWebKit;
- (void)_loadUsingWebKitOnMainThread;
- (void)_newLineForElement:(id)a3;
- (void)_newParagraphForElement:(id)a3 tag:(id)a4 allowEmpty:(BOOL)a5 suppressTrailingSpace:(BOOL)a6 isEntering:(BOOL)a7;
- (void)_newTabForElement:(id)a3;
- (void)_processHeadElement:(id)a3;
- (void)_processMetaElementWithName:(id)a3 content:(id)a4;
- (void)_processText:(id)a3;
- (void)_traverseFooterNode:(id)a3 depth:(int64_t)a4;
- (void)_traverseNode:(id)a3 depth:(int64_t)a4 embedded:(BOOL)a5;
- (void)dealloc;
- (void)setMutableAttributedString:(id)a3;
@end

@implementation NSHTMLReader

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    __NSLoadWebKit();
  }
}

- (Class)_webViewClass
{
  result = _webViewClass__webViewClass;
  if (!_webViewClass__webViewClass)
  {
    result = objc_lookUpClass("WebView");
    _webViewClass__webViewClass = result;
    if (!result)
    {
      __NSLoadWebKit();
      result = objc_lookUpClass("WebView");
      _webViewClass__webViewClass = result;
      if (!result)
      {
        NSLog(@"Could not dynamically load the WebKit framework.");
        return _webViewClass__webViewClass;
      }
    }
  }

  return result;
}

- (Class)_webArchiveClass
{
  result = _webArchiveClass__webArchiveClass;
  if (!_webArchiveClass__webArchiveClass)
  {
    result = objc_lookUpClass("WebArchive");
    _webArchiveClass__webArchiveClass = result;
    if (!result)
    {
      __NSLoadWebKit();
      result = objc_lookUpClass("WebArchive");
      _webArchiveClass__webArchiveClass = result;
      if (!result)
      {
        NSLog(@"Could not dynamically load the WebKit framework.");
        return _webArchiveClass__webArchiveClass;
      }
    }
  }

  return result;
}

- (Class)_DOMHTMLTableCellElementClass
{
  result = _DOMHTMLTableCellElementClass__DOMHTMLTableCellElementClass;
  if (!_DOMHTMLTableCellElementClass__DOMHTMLTableCellElementClass)
  {
    result = objc_lookUpClass("DOMHTMLTableCellElement");
    _DOMHTMLTableCellElementClass__DOMHTMLTableCellElementClass = result;
  }

  return result;
}

- (id)_webPreferences
{
  v2 = _webPreferences__webPreferences;
  if (!_webPreferences__webPreferences)
  {
    v2 = [objc_alloc(objc_lookUpClass("WebPreferences")) initWithIdentifier:@"com.apple.UIFoundationHTMLReader"];
    [v2 setDefaultFontSize:12];
    [v2 setDefaultFixedFontSize:12];
    [v2 setUserStyleSheetEnabled:0];
    [v2 setJavaEnabled:0];
    [v2 setJavaScriptEnabled:0];
    [v2 setJavaScriptCanOpenWindowsAutomatically:0];
    [v2 setPlugInsEnabled:0];
    [v2 setAllowsAnimatedImages:1];
    [v2 setAllowsAnimatedImageLooping:1];
    [v2 setLoadsImagesAutomatically:1];
    [v2 setAutosaves:0];
    [v2 setUsesPageCache:0];
    [v2 setCacheModel:0];
    _webPreferences__webPreferences = v2;
  }

  return v2;
}

+ (id)defaultParagraphStyle
{
  result = defaultParagraphStyle_defaultParagraphStyle_0;
  if (!defaultParagraphStyle_defaultParagraphStyle_0)
  {
    defaultParagraphStyle_defaultParagraphStyle_0 = [+[NSParagraphStyle defaultParagraphStyle](NSParagraphStyle mutableCopy];
    [defaultParagraphStyle_defaultParagraphStyle_0 setDefaultTabInterval:36.0];
    [defaultParagraphStyle_defaultParagraphStyle_0 setTabStops:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
    return defaultParagraphStyle_defaultParagraphStyle_0;
  }

  return result;
}

+ (BOOL)allowsAttributedStringAgentForOptions:(id)a3
{
  if (allowsAttributedStringAgentForOptions__onceToken != -1)
  {
    +[NSHTMLReader allowsAttributedStringAgentForOptions:];
  }

  return allowsAttributedStringAgentForOptions__triesAgent == 1 && ([a1 _usesLibXML2ForOptions:a3] & 1) == 0 && !objc_msgSend(a3, "objectForKeyedSubscript:", NSWebPreferencesDocumentOption) && !objc_msgSend(a3, "objectForKeyedSubscript:", NSWebResourceLoadDelegateDocumentOption) && !objc_msgSend(a3, "objectForKeyedSubscript:", __NSHTMLReaderDelegateDocumentOption) && objc_msgSend(a3, "objectForKeyedSubscript:", @"WebPolicyDelegate") == 0;
}

void *__54__NSHTMLReader_allowsAttributedStringAgentForOptions___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    result = [result BOOLValue];
    allowsAttributedStringAgentForOptions__triesAgent = result;
  }

  return result;
}

- (id)_childrenForNode:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [a3 firstChild];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v4 addObject:v6];
      v6 = [v6 nextSibling];
    }

    while (v6);
  }

  return v4;
}

- (id)_computedStyleForElement:(id)a3
{
  v5 = [a3 ownerDocument];
  if ((_computedStyleForElement__checkedSelector & 1) == 0)
  {
    v6 = objc_lookUpClass("DOMDocument");
    if (v6 && [(objc_class *)v6 instancesRespondToSelector:sel_getComputedStyle_pseudoElement_])
    {
      _computedStyleForElement__useNewSelector = 1;
    }

    _computedStyleForElement__checkedSelector = 1;
  }

  v7 = [(NSMutableDictionary *)self->_computedStylesForElements objectForKey:a3];
  if (v7)
  {
    v8 = v7;
    if ([objc_msgSend(MEMORY[0x1E695DFB0] "null")])
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (_computedStyleForElement__useNewSelector == 1)
    {
      v10 = [v5 getComputedStyle:a3 pseudoElement:&stru_1F01AD578];
    }

    else
    {
      v10 = [v5 getComputedStyle:a3 :&stru_1F01AD578];
    }

    v9 = v10;
    computedStylesForElements = self->_computedStylesForElements;
    v12 = v10;
    if (!v10)
    {
      v12 = [MEMORY[0x1E695DFB0] null];
    }

    [(NSMutableDictionary *)computedStylesForElements setObject:v12 forKey:a3];
  }

  return v9;
}

- (id)_specifiedStyleForElement:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_specifiedStylesForElements objectForKey:?];
  if (v5)
  {
    v6 = v5;
    if ([objc_msgSend(MEMORY[0x1E695DFB0] "null")])
    {
      return 0;
    }
  }

  else
  {
    v6 = [a3 style];
    specifiedStylesForElements = self->_specifiedStylesForElements;
    v8 = v6;
    if (!v6)
    {
      v8 = [MEMORY[0x1E695DFB0] null];
    }

    [(NSMutableDictionary *)specifiedStylesForElements setObject:v8 forKey:a3];
  }

  return v6;
}

- (id)_computedStringForNode:(id)a3 property:(id)a4
{
  if (!a3 || [a3 nodeType] != 1)
  {
    goto LABEL_122;
  }

  v7 = [(NSHTMLReader *)self _computedStyleForElement:a3];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 getPropertyCSSValue:a4];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 cssValueType];
      if (v11 == 2)
      {
        v15 = [v8 getPropertyValue:a4];
        goto LABEL_12;
      }

      if (v11 == 1)
      {
        v12 = [v10 primitiveType];
        if ((v12 - 19) <= 3)
        {
          v13 = [v10 getStringValue];
          if (v13)
          {
            v14 = v13;
            if ([(__CFString *)v13 length])
            {
              goto LABEL_127;
            }
          }

          goto LABEL_16;
        }

        if (v12 == 2)
        {
          [v10 getFloatValue:2];
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%g%%", v16];
LABEL_12:
          v14 = v15;
          if (v15)
          {
            goto LABEL_127;
          }
        }
      }
    }
  }

LABEL_16:
  v17 = [(NSHTMLReader *)self _specifiedStyleForElement:a3];
  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 getPropertyCSSValue:a4];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = v19;
  v21 = [v19 cssValueType];
  if (!v21)
  {
    v23 = 1;
LABEL_26:
    if ([@"display" isEqualToString:a4])
    {
      v24 = [a3 tagName];
      if ([@"HEAD" isEqualToString:v24] & 1) != 0 || (objc_msgSend(@"SCRIPT", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"APPLET", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"NOFRAMES", "isEqualToString:", v24))
      {
        v14 = @"none";
        goto LABEL_127;
      }

      if ([@"ADDRESS" isEqualToString:v24] & 1) != 0 || (objc_msgSend(@"BLOCKQUOTE", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"BODY", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"CENTER", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"DD", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"DIR", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"DIV", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"DL", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"DT", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"FIELDSET", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"FORM", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"FRAME", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"FRAMESET", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"HR", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"HTML", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"H1", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"H2", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"H3", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"H4", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"H5", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"H6", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"IFRAME", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"MENU", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"NOSCRIPT", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"OL", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"P", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"PRE", "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(@"UL", "isEqualToString:", v24))
      {
        v14 = @"block";
        goto LABEL_127;
      }

      if ([@"LI" isEqualToString:v24])
      {
        v14 = @"list-item";
        goto LABEL_127;
      }

      if ([@"TABLE" isEqualToString:v24])
      {
        v14 = @"table";
        goto LABEL_127;
      }

      if ([@"TR" isEqualToString:v24])
      {
        v14 = @"table-row";
        goto LABEL_127;
      }

      if ([@"TH" isEqualToString:v24] & 1) != 0 || (objc_msgSend(@"TD", "isEqualToString:", v24))
      {
        v14 = @"table-cell";
        goto LABEL_127;
      }

      if ([@"THEAD" isEqualToString:v24])
      {
        v14 = @"table-header-group";
        goto LABEL_127;
      }

      if ([@"TBODY" isEqualToString:v24])
      {
        v14 = @"table-row-group";
        goto LABEL_127;
      }

      if ([@"TFOOT" isEqualToString:v24])
      {
        v14 = @"table-footer-group";
        goto LABEL_127;
      }

      if ([@"COL" isEqualToString:v24])
      {
        v14 = @"table-column";
        goto LABEL_127;
      }

      if ([@"COLGROUP" isEqualToString:v24])
      {
        v14 = @"table-column-group";
        goto LABEL_127;
      }

      v25 = [@"CAPTION" isEqualToString:v24];
      v26 = @"table-caption";
LABEL_34:
      if (v25)
      {
        v14 = v26;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        goto LABEL_126;
      }

      goto LABEL_123;
    }

    if ([@"white-space" isEqualToString:a4])
    {
      v25 = [@"PRE" isEqualToString:{objc_msgSend(a3, "tagName")}];
      v23 |= v25 ^ 1;
      v26 = @"pre";
      goto LABEL_34;
    }

    if ([@"font-style" isEqualToString:a4])
    {
      v27 = [a3 tagName];
      if ([@"I" isEqualToString:v27] & 1) != 0 || (objc_msgSend(@"CITE", "isEqualToString:", v27) & 1) != 0 || (objc_msgSend(@"EM", "isEqualToString:", v27))
      {
        v14 = @"italic";
        goto LABEL_127;
      }

      v14 = @"italic";
      if ([@"VAR" isEqualToString:v27])
      {
        goto LABEL_127;
      }

      v28 = @"ADDRESS";
LABEL_88:
      v29 = [(__CFString *)v28 isEqualToString:v27];
      v23 |= v29 ^ 1;
      if (!v29)
      {
        v14 = 0;
      }

      if (v14)
      {
        goto LABEL_126;
      }

      goto LABEL_123;
    }

    if ([@"font-weight" isEqualToString:a4])
    {
      v27 = [a3 tagName];
      if ([@"B" isEqualToString:v27])
      {
        v14 = @"bolder";
        goto LABEL_127;
      }

      v14 = @"bolder";
      if ([@"STRONG" isEqualToString:v27])
      {
        goto LABEL_127;
      }

      goto LABEL_82;
    }

    if ([@"text-decoration" isEqualToString:a4])
    {
      v27 = [a3 tagName];
      if ([@"U" isEqualToString:v27] & 1) != 0 || (objc_msgSend(@"INS", "isEqualToString:", v27))
      {
        v14 = @"underline";
        goto LABEL_127;
      }

      if ([@"S" isEqualToString:v27])
      {
        v14 = @"line-through";
        goto LABEL_127;
      }

      v14 = @"line-through";
      if ([@"STRIKE" isEqualToString:v27])
      {
        goto LABEL_127;
      }

      v28 = @"DEL";
      goto LABEL_88;
    }

    if ([@"text-align" isEqualToString:a4])
    {
      v27 = [a3 tagName];
      if ([@"CENTER" isEqualToString:v27])
      {
        v14 = @"center";
        goto LABEL_127;
      }

      v14 = @"center";
      if ([@"CAPTION" isEqualToString:v27])
      {
        goto LABEL_127;
      }

LABEL_82:
      v28 = @"TH";
      goto LABEL_88;
    }

    if ([@"vertical-align" isEqualToString:a4])
    {
      v30 = [a3 tagName];
      if ([@"SUP" isEqualToString:v30])
      {
        v14 = @"super";
        goto LABEL_127;
      }

      if ([@"SUB" isEqualToString:v30])
      {
        v14 = @"sub";
        goto LABEL_127;
      }

      if ([@"THEAD" isEqualToString:v30] & 1) != 0 || (objc_msgSend(@"TBODY", "isEqualToString:", v30) & 1) != 0 || (objc_msgSend(@"TFOOT", "isEqualToString:", v30))
      {
        v14 = @"middle";
        goto LABEL_127;
      }

      if ([@"TR" isEqualToString:v30] & 1) != 0 || (objc_msgSend(@"TH", "isEqualToString:", v30))
      {
        goto LABEL_122;
      }

      v31 = @"TD";
      v32 = v30;
    }

    else
    {
      if ([@"font-family" isEqualToString:a4] & 1) != 0 || (objc_msgSend(@"font-variant", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"font-effect", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"text-transform", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"text-shadow", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"visibility", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"border-collapse", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"empty-cells", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"word-spacing", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"list-style-type", "isEqualToString:", a4))
      {
        goto LABEL_122;
      }

      v31 = @"direction";
      v32 = a4;
    }

    if (![(__CFString *)v31 isEqualToString:v32])
    {
      v14 = 0;
LABEL_123:
      if (v23)
      {
        v33 = [a3 parentNode];
        if (!v33)
        {
          return 0;
        }

        v14 = [(NSHTMLReader *)self _stringForNode:v33 property:a4];
      }

LABEL_126:
      if (v14)
      {
        goto LABEL_127;
      }

      return 0;
    }

LABEL_122:
    v14 = 0;
    v23 = 1;
    goto LABEL_123;
  }

  if (v21 == 2)
  {
    goto LABEL_24;
  }

  if (v21 != 1 || [v20 primitiveType] - 19 > 3)
  {
    goto LABEL_25;
  }

  v22 = [v20 getStringValue];
  if (!v22 || (v14 = v22, ![(__CFString *)v22 length]))
  {
LABEL_24:
    v14 = [v18 getPropertyValue:a4];
    if (!v14)
    {
LABEL_25:
      v23 = 0;
      goto LABEL_26;
    }
  }

LABEL_127:

  return [(__CFString *)v14 lowercaseString];
}

- (id)_stringForNode:(id)a3 property:(id)a4
{
  v7 = [(NSMutableDictionary *)self->_stringsForNodes objectForKey:?];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_stringsForNodes setObject:v7 forKey:a3];
  }

  v8 = [v7 objectForKey:a4];
  if (v8)
  {
    v9 = v8;
    if ([&stru_1F01AD578 isEqualToString:v8])
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v11 = [(NSHTMLReader *)self _computedStringForNode:a3 property:a4];
    v10 = v11;
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &stru_1F01AD578;
    }

    [v7 setObject:v12 forKey:a4];
  }

  return v10;
}

- (BOOL)_getComputedFloat:(double *)a3 forNode:(id)a4 property:(id)a5
{
  v31 = 0.0;
  if (!a4 || [a4 nodeType] != 1)
  {
    goto LABEL_30;
  }

  v9 = [(NSHTMLReader *)self _computedStyleForElement:a4];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = [v9 getPropertyCSSValue:a5];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  if ([v10 cssValueType] != 1)
  {
    goto LABEL_14;
  }

  v12 = [v11 primitiveType];
  if (v12 > 7)
  {
    switch(v12)
    {
      case 8:
        goto LABEL_41;
      case 9:
        goto LABEL_44;
      case 10:
LABEL_39:
        [v11 getFloatValue:10];
        v23 = v22;
        v24 = 16.0;
LABEL_42:
        v26 = v23 * v24;
        goto LABEL_46;
    }

LABEL_14:
    v13 = [(NSHTMLReader *)self _specifiedStyleForElement:a4];
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = [v13 getPropertyCSSValue:a5];
    if (!v14)
    {
      goto LABEL_23;
    }

    v11 = v14;
    v15 = [v14 cssValueType];
    if (!v15)
    {
      v17 = 1;
      goto LABEL_24;
    }

    if (v15 != 1)
    {
LABEL_23:
      v17 = 0;
      goto LABEL_24;
    }

    v16 = [v11 primitiveType];
    v17 = 0;
    if (v16 <= 7)
    {
      if (v16 != 5)
      {
        if (v16 != 6)
        {
          if (v16 == 7)
          {
            goto LABEL_22;
          }

          goto LABEL_24;
        }

LABEL_43:
        [v11 getFloatValue:6];
        v19 = v28 * 96.0;
        v20 = 2.54;
        goto LABEL_45;
      }

LABEL_40:
      [v11 getFloatValue:5];
      v26 = v25;
      goto LABEL_46;
    }

    if (v16 != 8)
    {
      if (v16 != 9)
      {
        if (v16 == 10)
        {
          goto LABEL_39;
        }

LABEL_24:
        if (([@"text-indent" isEqualToString:a5] & 1) == 0 && (objc_msgSend(@"letter-spacing", "isEqualToString:", a5) & 1) == 0 && (objc_msgSend(@"word-spacing", "isEqualToString:", a5) & 1) == 0 && (objc_msgSend(@"line-height", "isEqualToString:", a5) & 1) == 0 && (objc_msgSend(@"widows", "isEqualToString:", a5) & 1) == 0 && (v17 | objc_msgSend(@"orphans", "isEqualToString:", a5)) != 1)
        {
          LOBYTE(v21) = 0;
          return v21;
        }

LABEL_30:
        v21 = [a4 parentNode];
        if (!v21)
        {
          return v21;
        }

        LODWORD(v21) = [(NSHTMLReader *)self _getFloat:&v31 forNode:v21 property:a5];
        if (!a3)
        {
          return v21;
        }

        goto LABEL_32;
      }

LABEL_44:
      [v11 getFloatValue:9];
      v19 = v29 * 4.0;
      v20 = 3.0;
      goto LABEL_45;
    }

LABEL_41:
    [v11 getFloatValue:8];
    v23 = v27;
    v24 = 96.0;
    goto LABEL_42;
  }

  if (v12 == 5)
  {
    goto LABEL_40;
  }

  if (v12 == 6)
  {
    goto LABEL_43;
  }

  if (v12 != 7)
  {
    goto LABEL_14;
  }

LABEL_22:
  [v11 getFloatValue:7];
  v19 = v18 * 96.0;
  v20 = 25.4;
LABEL_45:
  v26 = v19 / v20;
LABEL_46:
  v31 = v26;
  LODWORD(v21) = 1;
  if (!a3)
  {
    return v21;
  }

LABEL_32:
  if (v21)
  {
    *a3 = v31;
    LOBYTE(v21) = 1;
  }

  return v21;
}

- (BOOL)_getFloat:(double *)a3 forNode:(id)a4 property:(id)a5
{
  v16 = 0.0;
  v9 = [(NSMutableDictionary *)self->_floatsForNodes objectForKey:a4];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_floatsForNodes setObject:v9 forKey:a4];
  }

  v10 = [v9 objectForKey:a5];
  if (v10)
  {
    v11 = v10;
    if ([objc_msgSend(MEMORY[0x1E695DFB0] "null")])
    {
      LOBYTE(v12) = 0;
      return v12;
    }

    [v11 doubleValue];
    v16 = v14;
    v12 = 1;
    if (!a3)
    {
      return v12;
    }

    goto LABEL_12;
  }

  v12 = [(NSHTMLReader *)self _getComputedFloat:&v16 forNode:a4 property:a5];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  }

  else
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  [v9 setObject:v13 forKey:a5];
  if (a3)
  {
LABEL_12:
    if (v12)
    {
      *a3 = v16;
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (BOOL)_elementIsBlockLevel:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_elementIsBlockLevel objectForKey:?];
  if (!v5)
  {
    v7 = [(NSHTMLReader *)self _stringForNode:a3 property:@"display"];
    v8 = [(NSHTMLReader *)self _stringForNode:a3 property:@"float"];
    if (!v8 || (v9 = v8, ([@"left" isEqualToString:v8] & 1) == 0) && (objc_msgSend(@"right", "isEqualToString:", v9) & 1) == 0)
    {
      if (!v7)
      {
LABEL_12:
        -[NSMutableDictionary setObject:forKey:](self->_elementIsBlockLevel, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v7], a3);
        return v7;
      }

      if (([@"block" isEqualToString:v7] & 1) == 0 && (objc_msgSend(@"list-item", "isEqualToString:", v7) & 1) == 0)
      {
        v7 = [v7 hasPrefix:@"table"];
        goto LABEL_12;
      }
    }

    v7 = 1;
    goto LABEL_12;
  }

  return [v5 BOOLValue];
}

- (BOOL)_elementHasOwnBackgroundColor:(id)a3
{
  v5 = [(NSHTMLReader *)self _elementIsBlockLevel:?];
  if (v5)
  {
    v6 = [a3 tagName];
    v7 = [(NSHTMLReader *)self _stringForNode:a3 property:@"display"];
    if (([@"HTML" isEqualToString:v6] & 1) != 0 || (objc_msgSend(@"BODY", "isEqualToString:", v6) & 1) != 0 || (v5 = objc_msgSend(v7, "hasPrefix:", @"table")) != 0)
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (id)_computedColorForNode:(id)a3 property:(id)a4
{
  v7 = [@"color" isEqualToString:a4];
  v8 = [@"background-color" isEqualToString:a4];
  if (!a3 || [a3 nodeType] != 1)
  {
    goto LABEL_16;
  }

  v9 = [(NSHTMLReader *)self _computedStyleForElement:a3];
  if (v9)
  {
    v10 = [v9 getPropertyCSSValue:a4];
    if (v10)
    {
      v11 = v10;
      if ([v10 cssValueType] == 1 && objc_msgSend(v11, "primitiveType") == 25)
      {
        goto LABEL_12;
      }
    }
  }

  v12 = [(NSHTMLReader *)self _specifiedStyleForElement:a3];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = [v12 getPropertyCSSValue:a4];
  v11 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [v13 cssValueType];
  if (!v14)
  {
    LOBYTE(v11) = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_16:
    result = [a3 parentNode];
    if (!result)
    {
      return result;
    }

    v17 = result;
    if (!v8)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (v14 == 1 && [v11 primitiveType] == 25)
  {
LABEL_12:
    v15 = [v11 getRGBColorValue];
    result = [getUIColorClass_0[0]() colorWithCGColor:{objc_msgSend(v15, "color")}];
    if (((result == 0) & v8) == 0)
    {
      return result;
    }

    LOBYTE(v11) = 0;
    goto LABEL_23;
  }

LABEL_14:
  LOBYTE(v11) = 0;
LABEL_15:
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_22:
  if (v8)
  {
LABEL_23:
    v18 = [(NSHTMLReader *)self _elementHasOwnBackgroundColor:a3];
    if ((v11 & 1) == 0 && v18)
    {
      return 0;
    }

    result = [a3 parentNode];
    v17 = result;
    if (!result)
    {
      return result;
    }

LABEL_18:
    if ([v17 nodeType] == 1 && -[NSHTMLReader _elementHasOwnBackgroundColor:](self, "_elementHasOwnBackgroundColor:", v17))
    {
      return 0;
    }

    goto LABEL_29;
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  result = [a3 parentNode];
  v17 = result;
  if (!result)
  {
    return result;
  }

LABEL_29:

  return [(NSHTMLReader *)self _colorForNode:v17 property:a4];
}

- (id)_colorForNode:(id)a3 property:(id)a4
{
  v7 = [(NSMutableDictionary *)self->_colorsForNodes objectForKey:?];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_colorsForNodes setObject:v7 forKey:a3];
  }

  v8 = [v7 objectForKey:a4];
  if (!v8)
  {
    v8 = [(NSHTMLReader *)self _computedColorForNode:a3 property:a4];
    v9 = v8;
    if (!v8)
    {
      v9 = [(objc_class *)getNSColorClass_4() clearColor];
    }

    [v7 setObject:v9 forKey:a4];
  }

  if ([-[objc_class clearColor](getNSColorClass_4() "clearColor")])
  {
    return 0;
  }

  [v8 alphaComponent];
  if (v10 == 0.0)
  {
    return 0;
  }

  return v8;
}

- (id)_computedAttributesForElement:(id)a3
{
  v150[16] = *MEMORY[0x1E69E9840];
  v5 = [(NSHTMLReader *)self _blockLevelElementForNode:?];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v136 = [(NSHTMLReader *)self _stringForNode:a3 property:@"font-effect"];
  v7 = [(NSHTMLReader *)self _stringForNode:a3 property:@"text-decoration"];
  v8 = [(NSHTMLReader *)self _stringForNode:a3 property:@"vertical-align"];
  v9 = [(NSHTMLReader *)self _stringForNode:a3 property:@"text-shadow"];
  v135 = [(NSHTMLReader *)self _stringForNode:a3 property:@"font-variant-ligatures"];
  *&v134 = [(NSHTMLReader *)self _stringForNode:a3 property:@"font-kerning"];
  v10 = [(NSHTMLReader *)self _stringForNode:a3 property:@"letter-spacing"];
  v144 = 0.0;
  v145 = 0.0;
  v143 = 0.0;
  v132 = [(NSHTMLReader *)self _colorForNode:a3 property:@"color"];
  v137 = [(NSHTMLReader *)self _colorForNode:a3 property:@"background-color"];
  v133 = [(NSHTMLReader *)self _colorForNode:a3 property:@"-webkit-text-stroke-color"];
  v11 = [a3 _font];
  if (![(NSHTMLReader *)self _getFloat:&v145 forNode:a3 property:@"font-size"]|| (defaultFontSize = v145, v145 <= 0.0))
  {
    defaultFontSize = self->_defaultFontSize;
  }

  v13 = self->_textSizeMultiplier * defaultFontSize;
  v145 = v13;
  minimumFontSize = self->_minimumFontSize;
  if (v13 < minimumFontSize)
  {
    v145 = self->_minimumFontSize;
    v13 = minimumFontSize;
  }

  v15 = floor(v13 * 2.0 + 0.5) * 0.5;
  if (vabdd_f64(v15, v13) >= 0.05)
  {
    v16 = floor(v13 * 10.0 + 0.5) / 10.0;
    if (vabdd_f64(v16, v13) < 0.005)
    {
      v145 = v16;
      v13 = v16;
    }
  }

  else
  {
    v145 = v15;
    v13 = v15;
  }

  *(&v134 + 1) = v10;
  if (v13 <= 0.0)
  {
    v145 = 12.0;
    v13 = 12.0;
  }

  if (v11)
  {
    v17 = [v11 fontWithSize:v13];
    if (v17)
    {
      goto LABEL_81;
    }
  }

  v131 = v7;
  standardFontFamily = [-[NSHTMLReader _stringForNode:property:](self _stringForNode:a3 property:{@"font-family", v13), "capitalizedString"}];
  v130 = [(NSHTMLReader *)self _stringForNode:a3 property:@"font-style"];
  v19 = [(NSHTMLReader *)self _stringForNode:a3 property:@"font-weight"];
  v20 = 0x1E7264000uLL;
  if (!standardFontFamily)
  {
    standardFontFamily = self->_standardFontFamily;
    if (!standardFontFamily)
    {
LABEL_19:
      v17 = [NSFont fontWithName:@"Times" size:v145];
      goto LABEL_72;
    }
  }

  v21 = v145;
  fontCache = self->_fontCache;
  v22 = [(NSMutableDictionary *)fontCache objectForKey:standardFontFamily];
  if (v22)
  {
    v17 = [v22 fontWithSize:v21];
    goto LABEL_18;
  }

  v23 = [UIFont fontWithName:standardFontFamily size:v21];
  if (!v23)
  {
    v125 = v19;
    v126 = v8;
    v127 = v5;
    v24 = +[UIFont familyNames];
    v25 = [(NSString *)standardFontFamily rangeOfString:@" " options:4];
    v27 = v26;
    v28 = [(NSString *)standardFontFamily rangeOfString:@"-" options:4];
    v128 = v6;
    if (v27 && v29)
    {
      if (v25 <= v28)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v25 <= v28)
      {
        v31 = v28;
      }

      else
      {
        v31 = v25;
      }
    }

    else
    {
      if (v27)
      {
        v30 = v27;
      }

      else
      {
        v30 = v29;
      }

      if (v27)
      {
        v31 = v25;
      }

      else
      {
        v31 = v28;
      }

      if (!v30)
      {
        goto LABEL_134;
      }
    }

    v32 = [(NSString *)standardFontFamily substringToIndex:v31];
    if (![(NSArray *)v24 containsObject:v32])
    {
      do
      {
        v31 = [(NSString *)v32 rangeOfString:@" " options:4];
        v34 = v33;
        v35 = [(NSString *)v32 rangeOfString:@"-" options:4];
        if (v34)
        {
          v37 = v36 == 0;
        }

        else
        {
          v37 = 1;
        }

        if (v37)
        {
          if (v34)
          {
            v30 = v34;
          }

          else
          {
            v30 = v36;
          }

          if (!v34)
          {
            v31 = v35;
          }

          if (!v30)
          {
            goto LABEL_134;
          }
        }

        else
        {
          if (v31 <= v35)
          {
            v30 = v36;
          }

          else
          {
            v30 = v34;
          }

          if (v31 <= v35)
          {
            v31 = v35;
          }
        }

        v32 = [(NSString *)standardFontFamily substringToIndex:v31];
      }

      while (![(NSArray *)v24 containsObject:v32]);
    }

    v124 = v9;
    v38 = [(NSString *)standardFontFamily substringFromIndex:v30 + v31];
    v39 = [UIFont fontNamesForFamilyName:v32];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v40 = [(NSArray *)v39 countByEnumeratingWithState:&v146 objects:v150 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v147;
LABEL_58:
      v43 = 0;
      while (1)
      {
        if (*v147 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v146 + 1) + 8 * v43);
        if (![v44 compare:v38 options:1])
        {
          break;
        }

        if (v41 == ++v43)
        {
          v41 = [(NSArray *)v39 countByEnumeratingWithState:&v146 objects:v150 count:16];
          if (v41)
          {
            goto LABEL_58;
          }

          goto LABEL_67;
        }
      }

      v45 = [UIFont fontWithName:v44 size:v21];
      if (!v45)
      {
        goto LABEL_67;
      }

      v17 = v45;
      v5 = v127;
      v6 = v128;
      v9 = v124;
      v8 = v126;
      v20 = 0x1E7264000;
      goto LABEL_70;
    }

LABEL_67:
    v9 = v124;
    v20 = 0x1E7264000uLL;
    if ([(NSArray *)v39 count])
    {
      v46 = [UIFont fontWithName:v32 size:v21];
      if (v46)
      {
        v17 = v46;
        v5 = v127;
        v6 = v128;
        v8 = v126;
LABEL_70:
        v19 = v125;
        goto LABEL_71;
      }
    }

LABEL_134:
    v17 = [UIFont systemFontOfSize:v21];
    v5 = v127;
    v6 = v128;
    v19 = v125;
    v8 = v126;
LABEL_18:
    [(NSMutableDictionary *)fontCache setObject:v17 forKey:standardFontFamily];
    if (v17)
    {
      goto LABEL_72;
    }

    goto LABEL_19;
  }

  v17 = v23;
LABEL_71:
  [(NSMutableDictionary *)fontCache setObject:v17 forKey:standardFontFamily];
LABEL_72:
  if (([@"italic" isEqualToString:v130] & 1) != 0 || objc_msgSend(@"oblique", "isEqualToString:", v130))
  {
    v47 = v19;
    v48 = *(v20 + 3848);
    v49 = [(UIFont *)v17 familyName];
    [(UIFont *)v17 pointSize];
    v50 = v48;
    v19 = v47;
    v51 = [v50 fontWithFamilyName:v49 traits:1 size:?];
    if (v51)
    {
      v17 = v51;
    }
  }

  v7 = v131;
  if (([v19 hasPrefix:@"bold"] & 1) != 0 || objc_msgSend(v19, "integerValue") >= 700)
  {
    v52 = [(UIFont *)v17 familyName];
    [(UIFont *)v17 pointSize];
    v53 = [UIFont fontWithFamilyName:v52 traits:2 size:?];
    if (v53)
    {
      v17 = v53;
    }
  }

  if (v17)
  {
LABEL_81:
    [v6 setObject:v17 forKey:@"NSFont"];
  }

  if (v132)
  {
    [v6 setObject:v132 forKey:@"NSColor"];
  }

  if (v137 && ![(NSHTMLReader *)self _elementHasOwnBackgroundColor:a3])
  {
    [v6 setObject:v137 forKey:@"NSBackgroundColor"];
  }

  if ([(NSHTMLReader *)self _getFloat:&v143 forNode:a3 property:@"-webkit-text-stroke-width"])
  {
    v54 = v143;
    [(UIFont *)v17 pointSize];
    *&v55 = v54 / (v55 * 0.01);
    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", *&v55), @"NSStrokeWidth"}];
  }

  if (v133)
  {
    [v6 setObject:v133 forKey:@"NSStrokeColor"];
  }

  if (v136)
  {
    if ([v136 rangeOfString:@"outline"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", 3.0), @"NSStrokeWidth"}];
    }

    if ([v136 rangeOfString:@"emboss"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setObject:objc_alloc_init(NSShadow) forKey:@"NSShadow"];
    }
  }

  if (v134 != 0)
  {
    if ([v136 rangeOfString:@"none"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v57 = &unk_1F01CC378;
LABEL_104:
      [v6 setObject:v57 forKey:@"NSKern"];
      goto LABEL_105;
    }

    if (*(&v134 + 1))
    {
      [*(&v134 + 1) doubleValue];
    }

    else
    {
      v56 = 0.0;
    }

    if (fabs(v56) >= 2.22044605e-16)
    {
      v57 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      goto LABEL_104;
    }
  }

LABEL_105:
  if (v135 && [v136 rangeOfString:@"normal"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v136 rangeOfString:@"common-ligatures"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v58 = &unk_1F01CC330;
      goto LABEL_111;
    }

    if ([v136 rangeOfString:@"no-common-ligatures"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v58 = &unk_1F01CC348;
LABEL_111:
      [v6 setObject:v58 forKey:@"NSLigature"];
    }
  }

  if (v7 && [v7 length] >= 5)
  {
    if ([v7 rangeOfString:@"underline"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", 1), @"NSUnderline"}];
    }

    if ([v7 rangeOfString:@"line-through"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", 1), @"NSStrikethrough"}];
    }
  }

  if (v8)
  {
    if ([v8 rangeOfString:@"super"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", 1), @"NSSuperScript"}];
    }

    if ([v8 rangeOfString:@"sub"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -1), @"NSSuperScript"}];
    }
  }

  if ([(NSHTMLReader *)self _getFloat:&v144 forNode:a3 property:@"vertical-align"])
  {
    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v144), @"NSBaselineOffset"}];
  }

  if (v9)
  {
    if ([v9 length] >= 5)
    {
      v138 = [v9 length];
      v61 = objc_msgSend(v9, "rangeOfString:", @"(");
      v63 = v62;
      v64 = [v9 rangeOfString:@""]);
      v66 = v65;
      v67 = objc_msgSend(v9, "rangeOfString:", @"rgba(");
      if (v63)
      {
        if (v66)
        {
          v59 = v61 + v63;
          v60 = v64 - (v61 + v63);
          if (v64 > v61 + v63)
          {
            v68 = v67;
            v69 = [objc_msgSend(v9 substringWithRange:{v59, v60), "componentsSeparatedByString:", @", "}];
            if ([v69 count] >= 3)
            {
              v70 = v9;
              [objc_msgSend(v69 objectAtIndex:{0), "floatValue"}];
              v72 = v71 / 255.0;
              [objc_msgSend(v69 objectAtIndex:{1), "floatValue"}];
              v74 = v73 / 255.0;
              [objc_msgSend(v69 objectAtIndex:{2), "floatValue"}];
              v76 = v75 / 255.0;
              v77 = 1.0;
              if ([v69 count] < 4)
              {
                v78 = v9;
              }

              else
              {
                v78 = v9;
                if (v68 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [objc_msgSend(v69 objectAtIndex:{3), "floatValue"}];
                  v77 = v79;
                }
              }

              v80 = [(objc_class *)getNSColorClass_4() colorWithCalibratedRed:v72 green:v74 blue:v76 alpha:v77];
              v81 = [v78 rangeOfString:@"px"];
              v83 = v81;
              v84 = v82;
              if (v82)
              {
                if (v138 > v81 + v82)
                {
                  v85 = [v70 rangeOfString:@"px" options:0 range:{v81 + v82, v138 - (v81 + v82)}];
LABEL_141:
                  if (v82)
                  {
                    if (v138 <= v85 + v82)
                    {
                      v86 = 0;
                      v87 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v87 = [v70 rangeOfString:@"px" options:0 range:{v85 + v82, v138 - (v85 + v82)}];
                    }

                    if (v83 && v84 && v86)
                    {
                      v88 = [v70 rangeOfString:@" " options:4 range:{0, v83}];
                      v90 = v89 ? v88 : 0;
                      [objc_msgSend(v70 substringWithRange:{v90 + v89, v83 - (v90 + v89)), "floatValue"}];
                      v92 = v91;
                      v93 = [v70 rangeOfString:@" " options:4 range:{0, v85}];
                      v95 = v94 ? v93 : 0;
                      [objc_msgSend(v70 substringWithRange:{v95 + v94, v85 - (v95 + v94)), "floatValue"}];
                      v97 = v96;
                      v98 = [v70 rangeOfString:@" " options:4 range:{0, v87}];
                      v100 = v99 ? v98 : 0;
                      [objc_msgSend(v70 substringWithRange:{v100 + v99, v87 - (v100 + v99)), "floatValue"}];
                      v102 = v101;
                      v103 = objc_alloc_init(NSShadow);
                      [(NSShadow *)v103 setShadowColor:v80];
                      [(NSShadow *)v103 setShadowOffset:v92, v97];
                      [(NSShadow *)v103 setShadowBlurRadius:v102];
                      if (v103)
                      {
                        [v6 setObject:v103 forKey:@"NSShadow"];
                      }
                    }
                  }

                  goto LABEL_159;
                }

                v82 = 0;
              }

              v85 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_141;
            }
          }
        }
      }
    }
  }

LABEL_159:
  if (v5 != a3 && [(NSMutableArray *)self->_writingDirectionArray count:v59])
  {
    [v6 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithArray:", self->_writingDirectionArray), @"NSWritingDirection"}];
  }

  if (v5)
  {
    v104 = [objc_msgSend(objc_opt_class() "defaultParagraphStyle")];
    v105 = [v5 tagName];
    if ([@"P" isEqualToString:v105] & 1) != 0 || (objc_msgSend(@"LI", "isEqualToString:", v105))
    {
      v106 = 1;
    }

    else
    {
      if (![v105 hasPrefix:@"H"])
      {
        v139 = 0;
LABEL_167:
        v107 = [@"BLOCKQUOTE" isEqualToString:v105];
        v108 = v5;
        v109 = [(NSHTMLReader *)self _stringForNode:v5 property:@"text-align"];
        v110 = [(NSHTMLReader *)self _stringForNode:v108 property:@"direction"];
        v111 = v108;
        v112 = [(NSHTMLReader *)self _stringForNode:v108 property:@"-webkit-hyphens"];
        v150[0] = 0.0;
        *&v146 = 0;
        v141 = 0.0;
        v142 = 0.0;
        v140 = 0.0;
        if (!v109)
        {
          goto LABEL_180;
        }

        if ([v109 hasSuffix:@"left"])
        {
          v113 = 0;
        }

        else if ([v109 hasSuffix:@"right"])
        {
          v113 = 2;
        }

        else if ([v109 hasSuffix:@"center"])
        {
          v113 = 1;
        }

        else
        {
          if (![v109 hasSuffix:@"justify"])
          {
            goto LABEL_180;
          }

          v113 = 3;
        }

        [v104 setAlignment:v113];
LABEL_180:
        if (v110)
        {
          if ([v110 isEqualToString:@"ltr"])
          {
            v114 = 0;
LABEL_185:
            [v104 setBaseWritingDirection:v114];
            goto LABEL_186;
          }

          if ([v110 isEqualToString:@"rtl"])
          {
            v114 = 1;
            goto LABEL_185;
          }
        }

LABEL_186:
        if (v112)
        {
          v115 = [v112 isEqualToString:@"auto"];
          v116 = 0.0;
          if (v115)
          {
            *&v116 = 1.0;
          }

          [v104 setHyphenationFactor:v116];
        }

        if ([v105 hasPrefix:@"H"])
        {
          if ([v105 length] == 2)
          {
            v117 = [v105 characterAtIndex:1];
            if (v117 - 49 <= 5)
            {
              [v104 setHeaderLevel:v117 - 48];
            }
          }
        }

        if (v107)
        {
          v118 = [MEMORY[0x1E696AE28] blockQuoteIntentWithIdentity:1 nestedInsideIntent:0];
          [v6 setObject:v118 forKey:*MEMORY[0x1E696A7D0]];
        }

        if (v139)
        {
          if ([(NSHTMLReader *)self _getFloat:v150 forNode:v111 property:@"margin-left"])
          {
            v119 = v150[0];
            if (v150[0] > 0.0)
            {
              [v104 setHeadIndent:v150[0]];
            }
          }

          if ([(NSHTMLReader *)self _getFloat:&v141 forNode:v111 property:@"text-indent", v119])
          {
            [v104 headIndent];
            [v104 setFirstLineHeadIndent:v120 + v141];
          }

          if ([(NSHTMLReader *)self _getFloat:&v146 forNode:v111 property:@"margin-right"])
          {
            v121 = *&v146;
            if (*&v146 > 0.0)
            {
              [v104 setTailIndent:-*&v146];
            }
          }

          if ([(NSHTMLReader *)self _getFloat:&v142 forNode:v111 property:@"margin-bottom", v121]&& v142 > 0.0)
          {
            [v104 setParagraphSpacing:v142];
          }
        }

        webViewTextSizeMultiplier = self->_webViewTextSizeMultiplier;
        if (webViewTextSizeMultiplier > 0.0)
        {
          if ([(NSHTMLReader *)self _getFloat:&v140 forNode:a3 property:@"line-height"])
          {
            webViewTextSizeMultiplier = v140;
            if (v140 > 0.0)
            {
              [v104 setMinimumLineHeight:v140 / self->_webViewTextSizeMultiplier];
            }
          }
        }

        if ([(NSMutableArray *)self->_textLists count])
        {
          [v104 setTextLists:self->_textLists];
        }

        if ([(NSMutableArray *)self->_textBlocks count])
        {
          [v104 setTextBlocks:self->_textBlocks];
        }

        [v6 setObject:v104 forKey:@"NSParagraphStyle"];

        return v6;
      }

      v106 = [v105 length] == 2;
    }

    v139 = v106;
    goto LABEL_167;
  }

  return v6;
}

- (id)_attributesForElement:(id)a3
{
  if (a3)
  {
    v6 = [(NSMutableDictionary *)self->_attributesForElements objectForKey:?];
    if (!v6)
    {
      v6 = [(NSHTMLReader *)self _computedAttributesForElement:a3];
      [(NSMutableDictionary *)self->_attributesForElements setObject:v6 forKey:a3];
    }

    return v6;
  }

  else
  {
    v8 = MEMORY[0x1E695DF20];

    return [v8 dictionary];
  }
}

- (void)_newParagraphForElement:(id)a3 tag:(id)a4 allowEmpty:(BOOL)a5 suppressTrailingSpace:(BOOL)a6 isEntering:(BOOL)a7
{
  v8 = a6;
  v13 = [(NSMutableAttributedString *)self->_attrStr length];
  if (v13)
  {
    v14 = [-[NSMutableAttributedString string](self->_attrStr "string")];
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 10;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  if ((*&self->_flags & 1) == 0 || v14 != 8232 && v14 != 32)
  {
LABEL_9:
    v15 = 0;
    if (!a5 && v14 == 10)
    {
      return;
    }

    goto LABEL_11;
  }

  --v13;
  v15 = 1;
LABEL_11:
  v16 = &stru_1F01AD578;
  if (([@"BODY" isEqualToString:a4] & 1) == 0 && !objc_msgSend(@"HTML", "isEqualToString:", a4))
  {
    v16 = @"\n";
  }

  [(NSMutableArray *)self->_writingDirectionArray removeAllObjects];
  [(NSMutableAttributedString *)self->_attrStr replaceCharactersInRange:v13 withString:v15, v16];
  if (v13 < self->_domRangeStartIndex)
  {
    self->_domRangeStartIndex += [(__CFString *)v16 length]- v15;
  }

  v17 = [(__CFString *)v16 length];
  flags = self->_flags;
  if ((*&flags & 8) == 0 && !a7)
  {
    v19 = v17;
    v20 = [(NSHTMLReader *)self _attributesForElement:a3];
    flags = self->_flags;
    if ((*&flags & 0x10) == 0)
    {
      if (v19)
      {
        [(NSMutableAttributedString *)self->_attrStr setAttributes:v20 range:v13, v19];
        flags = self->_flags;
      }
    }
  }

  self->_flags = (*&flags | 1);
}

- (void)_newLineForElement:(id)a3
{
  v11 = 8232;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v11 length:1];
  v6 = [(NSMutableAttributedString *)self->_attrStr length];
  [(NSMutableAttributedString *)self->_attrStr replaceCharactersInRange:v6 withString:0, v5];
  v7 = [v5 length];
  v8 = v7;
  domRangeStartIndex = self->_domRangeStartIndex;
  if (v6 < domRangeStartIndex)
  {
    self->_domRangeStartIndex = domRangeStartIndex + v7;
  }

  if ((*&self->_flags & 8) == 0)
  {
    v10 = [(NSHTMLReader *)self _attributesForElement:a3];
    if ((*&self->_flags & 0x10) == 0)
    {
      if (v8)
      {
        [(NSMutableAttributedString *)self->_attrStr setAttributes:v10 range:v6, v8];
      }
    }
  }

  *&self->_flags |= 1u;
}

- (void)_newTabForElement:(id)a3
{
  v5 = [(NSMutableAttributedString *)self->_attrStr length];
  if (v5)
  {
    p_flags = &self->_flags;
    v7 = *&self->_flags & ([-[NSMutableAttributedString string](self->_attrStr "string")] == 32);
    v5 -= v7;
  }

  else
  {
    v7 = 0;
    p_flags = &self->_flags;
  }

  [(NSMutableAttributedString *)self->_attrStr replaceCharactersInRange:v5 withString:v7, @"\t"];
  v8 = [@"\t" length];
  v9 = v8;
  domRangeStartIndex = self->_domRangeStartIndex;
  if (v5 < domRangeStartIndex)
  {
    self->_domRangeStartIndex = domRangeStartIndex + v8;
  }

  if ((*p_flags & 8) == 0)
  {
    v11 = [(NSHTMLReader *)self _attributesForElement:a3];
    if ((*&self->_flags & 0x10) == 0)
    {
      if (v9)
      {
        [(NSMutableAttributedString *)self->_attrStr setAttributes:v11 range:v5, v9];
      }
    }
  }

  *p_flags |= 1u;
}

- (BOOL)_addAttachmentForElement:(id)a3 URL:(id)a4 needsParagraph:(BOOL)a5 usePlaceholder:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = [objc_msgSend(objc_msgSend(a3 "ownerDocument")];
  if ((*&self->_flags & 8) != 0)
  {
    return 0;
  }

  v12 = v11;
  v13 = [(NSDictionary *)self->_options objectForKey:__NSHTMLReaderDelegateDocumentOption];
  if (!v13 || (v14 = v13, (objc_opt_respondsToSelector() & 1) == 0) || (v15 = [v14 fileWrapperForURL:a4]) == 0)
  {
    if (![a4 isFileURL] || !objc_msgSend(objc_msgSend(a4, "path"), "stringByStandardizingPath") || (v15 = objc_msgSend(objc_alloc(MEMORY[0x1E696AC38]), "initWithURL:options:error:", a4, 0, 0)) == 0)
    {
      v18 = [v12 subresourceForURL:a4];
      if (!v18)
      {
        v18 = [(WebDataSource *)self->_dataSource subresourceForURL:a4];
      }

      v19 = 0;
      if (v6 && v18)
      {
        v19 = [@"text/html" isEqual:{-[WebResource MIMEType](v18, "MIMEType")}];
      }

      v16 = 0;
      if ((v19 & 1) == 0 && v18)
      {
        v16 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:{-[WebResource data](v18, "data")}];
        [v16 setPreferredFilename:{objc_msgSend(a4, "_web_suggestedFilenameWithMIMEType:", -[WebResource MIMEType](v18, "MIMEType"))}];
      }

      v17 = v16 == 0;
      if (v16 || v6)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }

  v16 = v15;
  v17 = 0;
LABEL_20:
  v21 = [(NSMutableAttributedString *)self->_attrStr length];
  v22 = [[NSTextAttachment alloc] initWithFileWrapper:v16];
  v23 = [a3 getAttribute:@"aria-label"];
  if ([v23 length])
  {
    [(NSTextAttachment *)v22 setAccessibilityLabel:v23];
  }

  v24 = [a3 getAttribute:@"alt"];
  if ([v24 length])
  {
    [(NSTextAttachment *)v22 setAccessibilityLabel:v24];
  }

  v25 = [(NSHTMLReader *)self _stringForNode:a3 property:@"vertical-align"];
  [-[NSHTMLReader _stringForNode:property:](self _stringForNode:a3 property:{@"horizontal-align", "floatValue"}];
  v27 = v26 / 100.0 * [a3 clientWidth];
  [v25 floatValue];
  -[NSTextAttachment setBounds:](v22, "setBounds:", v27, v28 / 100.0 * [a3 clientHeight], objc_msgSend(a3, "clientWidth"), objc_msgSend(a3, "clientHeight"));
  if (v7)
  {
    v29 = @"\uFFFC\n";
  }

  else
  {
    v29 = @"\uFFFC";
  }

  if (v17)
  {
    v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.WebKit"];
    if (!v30)
    {
      v30 = [-[NSArray firstObject](NSSearchPathForDirectoriesInDomains(NSLibraryDirectory 8uLL];
      if (v30)
      {
        v30 = [MEMORY[0x1E696AAE8] bundleWithPath:v30];
      }
    }

    v31 = [v30 URLForResource:@"missing_image" withExtension:@"tiff"];
    if (v31)
    {
      -[NSTextAttachment setFileWrapper:](v22, "setFileWrapper:", [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v31 options:0 error:0]);
    }
  }

  [(NSMutableAttributedString *)self->_attrStr replaceCharactersInRange:v21 withString:0, v29];
  v32 = [(__CFString *)v29 length];
  v33 = v32;
  domRangeStartIndex = self->_domRangeStartIndex;
  if (v21 < domRangeStartIndex)
  {
    self->_domRangeStartIndex = domRangeStartIndex + v32;
  }

  v35 = [(NSHTMLReader *)self _attributesForElement:a3];
  if ((*&self->_flags & 0x10) == 0)
  {
    if (v33)
    {
      [(NSMutableAttributedString *)self->_attrStr setAttributes:v35 range:v21, v33];
      [(NSMutableAttributedString *)self->_attrStr addAttribute:@"NSAttachment" value:v22 range:v21, 1];
    }
  }

  *&self->_flags &= ~1u;
  return 1;
}

- (void)_addQuoteForElement:(id)a3 opening:(BOOL)a4 level:(int64_t)a5
{
  if (a4)
  {
    v7 = 8220;
  }

  else
  {
    v7 = 8221;
  }

  if (a4)
  {
    v8 = 8216;
  }

  else
  {
    v8 = 8217;
  }

  if (a5)
  {
    v7 = v8;
  }

  v15 = v7;
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v15 length:1];
  v10 = [(NSMutableAttributedString *)self->_attrStr length];
  [(NSMutableAttributedString *)self->_attrStr replaceCharactersInRange:v10 withString:0, v9];
  v11 = [v9 length];
  v12 = v11;
  domRangeStartIndex = self->_domRangeStartIndex;
  if (v10 < domRangeStartIndex)
  {
    self->_domRangeStartIndex = domRangeStartIndex + v11;
  }

  if ((*&self->_flags & 8) == 0)
  {
    v14 = [(NSHTMLReader *)self _attributesForElement:a3];
    if ((*&self->_flags & 0x10) == 0)
    {
      if (v12)
      {
        [(NSMutableAttributedString *)self->_attrStr setAttributes:v14 range:v10, v12];
      }
    }
  }

  *&self->_flags &= ~1u;
}

- (void)_addValue:(id)a3 forElement:(id)a4
{
  v7 = [(NSMutableAttributedString *)self->_attrStr length];
  v8 = [a3 length];
  if (v8)
  {
    v9 = v8;
    [(NSMutableAttributedString *)self->_attrStr replaceCharactersInRange:v7 withString:0, a3];
    domRangeStartIndex = self->_domRangeStartIndex;
    if (v7 < domRangeStartIndex)
    {
      self->_domRangeStartIndex = domRangeStartIndex + v9;
    }

    flags = self->_flags;
    if ((*&flags & 8) == 0)
    {
      v12 = [(NSHTMLReader *)self _attributesForElement:a4];
      flags = self->_flags;
      if ((*&flags & 0x10) == 0)
      {
        [(NSMutableAttributedString *)self->_attrStr setAttributes:v12 range:v7, v9];
        flags = self->_flags;
      }
    }

    self->_flags = (*&flags & 0xFFFFFFFE);
  }
}

- (void)_fillInBlock:(id)a3 forElement:(id)a4 backgroundColor:(id)a5 extraMargin:(double)a6 extraPadding:(double)a7 isTable:(BOOL)a8
{
  v39 = 0.0;
  [(NSHTMLReader *)self _DOMHTMLTableCellElementClass];
  if (objc_opt_isKindOfClass())
  {
    v15 = [a4 width];
    v16 = [a4 height];
  }

  else
  {
    v15 = [a4 getAttribute:@"width"];
    v16 = [a4 getAttribute:@"height"];
  }

  v17 = v16;
  if ((v15 && [v15 length] || !a8) && -[NSHTMLReader _getFloat:forNode:property:](self, "_getFloat:forNode:property:", &v39, a4, @"width"))
  {
    [a3 setValue:0 type:0 forDimension:v39];
  }

  if (v17)
  {
    [v17 length];
  }

  if ([(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"min-width"])
  {
    [a3 setValue:0 type:1 forDimension:v39];
  }

  if ([(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"max-width"])
  {
    [a3 setValue:0 type:2 forDimension:v39];
  }

  if ([(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"min-height"])
  {
    [a3 setValue:0 type:5 forDimension:v39];
  }

  if ([(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"max-height"])
  {
    [a3 setValue:0 type:6 forDimension:v39];
  }

  v18 = [(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"padding-left"];
  v19 = v39 + a7;
  if (!v18)
  {
    v19 = a7;
  }

  [a3 setWidth:0 type:-1 forLayer:0 edge:v19];
  v20 = [(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"padding-top"];
  v21 = v39 + a7;
  if (!v20)
  {
    v21 = a7;
  }

  [a3 setWidth:0 type:-1 forLayer:1 edge:v21];
  v22 = [(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"padding-right"];
  v23 = v39 + a7;
  if (!v22)
  {
    v23 = a7;
  }

  [a3 setWidth:0 type:-1 forLayer:2 edge:v23];
  v24 = [(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"padding-bottom"];
  v25 = v39 + a7;
  if (!v24)
  {
    v25 = a7;
  }

  [a3 setWidth:0 type:-1 forLayer:3 edge:v25];
  if ([(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"border-left-width"])
  {
    [a3 setWidth:0 type:0 forLayer:0 edge:v39];
  }

  if ([(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"border-top-width"])
  {
    [a3 setWidth:0 type:0 forLayer:1 edge:v39];
  }

  if ([(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"border-right-width"])
  {
    [a3 setWidth:0 type:0 forLayer:2 edge:v39];
  }

  if ([(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"border-bottom-width"])
  {
    [a3 setWidth:0 type:0 forLayer:3 edge:v39];
  }

  v26 = [(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"margin-left"];
  v27 = v39 + a6;
  if (!v26)
  {
    v27 = a6;
  }

  [a3 setWidth:0 type:1 forLayer:0 edge:v27];
  v28 = [(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"margin-top"];
  v29 = v39 + a6;
  if (!v28)
  {
    v29 = a6;
  }

  [a3 setWidth:0 type:1 forLayer:1 edge:v29];
  v30 = [(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"margin-right"];
  v31 = v39 + a6;
  if (!v30)
  {
    v31 = a6;
  }

  [a3 setWidth:0 type:1 forLayer:2 edge:v31];
  v32 = [(NSHTMLReader *)self _getFloat:&v39 forNode:a4 property:@"margin-bottom"];
  v33 = v39 + a6;
  if (!v32)
  {
    v33 = a6;
  }

  [a3 setWidth:0 type:1 forLayer:3 edge:v33];
  v34 = [(NSHTMLReader *)self _colorForNode:a4 property:@"background-color"];
  if (v34 || (v34 = a5) != 0)
  {
    [a3 setBackgroundColor:v34];
  }

  v35 = [(NSHTMLReader *)self _colorForNode:a4 property:@"border-left-color"];
  if (v35)
  {
    [a3 setBorderColor:v35 forEdge:0];
  }

  v36 = [(NSHTMLReader *)self _colorForNode:a4 property:@"border-top-color"];
  if (v36)
  {
    [a3 setBorderColor:v36 forEdge:1];
  }

  v37 = [(NSHTMLReader *)self _colorForNode:a4 property:@"border-right-color"];
  if (v37)
  {
    [a3 setBorderColor:v37 forEdge:2];
  }

  v38 = [(NSHTMLReader *)self _colorForNode:a4 property:@"border-bottom-color"];
  if (v38)
  {
    [a3 setBorderColor:v38 forEdge:3];
  }
}

- (void)_processMetaElementWithName:(id)a3 content:(id)a4
{
  if ([@"CocoaVersion" compare:a3 options:1])
  {
    if (![@"Generator" compare:a3 options:1])
    {
      v14 = &NSGeneratorDocumentAttribute;
      if (!a4)
      {
        return;
      }

      goto LABEL_44;
    }

    if ([@"Keywords" compare:a3 options:1])
    {
      if (![@"Author" compare:a3 options:1])
      {
        v14 = &NSAuthorDocumentAttribute;
        if (!a4)
        {
          return;
        }

        goto LABEL_44;
      }

      if (![@"LastAuthor" compare:a3 options:1])
      {
        v14 = &NSEditorDocumentAttribute;
        if (!a4)
        {
          return;
        }

        goto LABEL_44;
      }

      if (![@"Company" compare:a3 options:1])
      {
        v14 = &NSCompanyDocumentAttribute;
        if (!a4)
        {
          return;
        }

        goto LABEL_44;
      }

      if (![@"Copyright" compare:a3 options:1])
      {
        v14 = &NSCopyrightDocumentAttribute;
        if (!a4)
        {
          return;
        }

        goto LABEL_44;
      }

      if (![@"Subject" compare:a3 options:1])
      {
        v14 = &NSSubjectDocumentAttribute;
        if (!a4)
        {
          return;
        }

        goto LABEL_44;
      }

      if (![@"Description" compare:a3 options:1] || !objc_msgSend(@"Comment", "compare:options:", a3, 1))
      {
        v14 = &NSCommentDocumentAttribute;
        if (!a4)
        {
          return;
        }

        goto LABEL_44;
      }

      if ([@"CreationTime" compare:a3 options:1])
      {
        if ([@"ModificationTime" compare:a3 options:1])
        {
          if ([@"DisplayName" compare:a3 options:1] && objc_msgSend(@"IndexTitle", "compare:options:", a3, 1))
          {
            if ([@"robots" compare:a3 options:1])
            {
              return;
            }

            [a4 rangeOfString:@"noindex" options:1];
            if (!v7)
            {
              return;
            }

            documentAttrs = self->_documentAttrs;
            v9 = [MEMORY[0x1E696AD98] numberWithInteger:1];
            v10 = NSNoIndexDocumentAttribute;
            goto LABEL_20;
          }

          v14 = &NSDisplayNameDocumentAttribute;
          if (!a4)
          {
            return;
          }

LABEL_44:
          v21 = *v14;
          if (!*v14 || ![a4 length])
          {
            return;
          }

          v13 = self->_documentAttrs;
          v9 = a4;
          v10 = v21;
          goto LABEL_47;
        }

        if (!a4)
        {
          return;
        }

        if (![a4 length])
        {
          return;
        }

        v23 = _dateForString(a4);
        if (!v23)
        {
          return;
        }

        v9 = v23;
        v13 = self->_documentAttrs;
        v20 = &NSModificationTimeDocumentAttribute;
      }

      else
      {
        if (!a4)
        {
          return;
        }

        if (![a4 length])
        {
          return;
        }

        v22 = _dateForString(a4);
        if (!v22)
        {
          return;
        }

        v9 = v22;
        v13 = self->_documentAttrs;
        v20 = &NSCreationTimeDocumentAttribute;
      }
    }

    else
    {
      if (!a4 || ![a4 length])
      {
        return;
      }

      [a4 rangeOfString:{@", "}];
      if (v15 || (v17 = @",", [a4 rangeOfString:{@", "}], !v18))
      {
        [a4 rangeOfString:{@", "}];
        if (v16 || (v17 = @" ", [a4 rangeOfString:@" "], !v19))
        {
          v17 = @", ";
        }
      }

      v9 = [a4 componentsSeparatedByString:v17];
      v13 = self->_documentAttrs;
      v20 = &NSKeywordsDocumentAttribute;
    }

    v10 = *v20;
    goto LABEL_47;
  }

  [a4 doubleValue];
  if (v11 <= 0.0)
  {
    return;
  }

  v12 = v11;
  [(NSMutableDictionary *)self->_documentAttrs removeObjectForKey:NSConvertedDocumentAttribute];
  documentAttrs = self->_documentAttrs;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v10 = @"CocoaRTFVersion";
LABEL_20:
  v13 = documentAttrs;
LABEL_47:

  [(NSMutableDictionary *)v13 setObject:v9 forKey:v10];
}

- (void)_processHeadElement:(id)a3
{
  v4 = [(NSHTMLReader *)self _childrenForNode:a3];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [v4 objectAtIndex:i];
      if ([v8 nodeType] == 1)
      {
        if ([@"META" isEqualToString:{objc_msgSend(v8, "tagName")}])
        {
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            v9 = [v8 name];
            v10 = [v8 content];
            if (v9)
            {
              if (v10)
              {
                [(NSHTMLReader *)self _processMetaElementWithName:v9 content:v10];
              }
            }
          }
        }
      }
    }
  }
}

- (BOOL)_enterElement:(id)a3 tag:(id)a4 display:(id)a5 depth:(int64_t)a6 embedded:(BOOL)a7
{
  if ([@"HEAD" isEqualToString:a4] && !a7)
  {
    [(NSHTMLReader *)self _processHeadElement:a3];
    return 0;
  }

  if (a5 && (([@"none" isEqualToString:a5] & 1) != 0 || (objc_msgSend(@"table-column", "isEqualToString:", a5) & 1) != 0 || (objc_msgSend(@"table-column-group", "isEqualToString:", a5) & 1) != 0))
  {
    return 0;
  }

  if (!-[NSHTMLReader _elementIsBlockLevel:](self, "_elementIsBlockLevel:", a3) || ([@"BR" isEqualToString:a4] & 1) != 0 || objc_msgSend(@"table-cell", "isEqualToString:", a5) && !-[NSMutableArray count](self->_textTables, "count") || -[NSMutableArray count](self->_textLists, "count") && objc_msgSend(@"block", "isEqualToString:", a5) && (objc_msgSend(@"LI", "isEqualToString:", a4) & 1) == 0 && (objc_msgSend(@"UL", "isEqualToString:", a4) & 1) == 0 && !objc_msgSend(@"OL", "isEqualToString:", a4))
  {
    return 1;
  }

  v12 = 1;
  [(NSHTMLReader *)self _newParagraphForElement:a3 tag:a4 allowEmpty:0 suppressTrailingSpace:1 isEntering:1];
  return v12;
}

- (void)_addTableForElement:(id)a3
{
  v16 = objc_alloc_init(NSTextTable);
  [(NSTextTable *)v16 setNumberOfColumns:1];
  [(NSTextTable *)v16 setLayoutAlgorithm:0];
  [(NSTextTable *)v16 setCollapsesBorders:0];
  [(NSTextTable *)v16 setHidesEmptyCells:0];
  if (a3)
  {
    v5 = [(NSHTMLReader *)self _stringForNode:a3 property:@"border-collapse"];
    v6 = [(NSHTMLReader *)self _stringForNode:a3 property:@"empty-cells"];
    v7 = [(NSHTMLReader *)self _stringForNode:a3 property:@"table-layout"];
    v8 = 1.0;
    v9 = 1.0;
    if (objc_opt_respondsToSelector())
    {
      v10 = [a3 cellSpacing];
      if (v10)
      {
        v11 = v10;
        if ([v10 length])
        {
          if (([v11 hasSuffix:@"%"] & 1) == 0)
          {
            [v11 doubleValue];
            v9 = v12;
          }
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [a3 cellPadding];
      if (v13)
      {
        v14 = v13;
        if ([v13 length])
        {
          if (([v14 hasSuffix:@"%"] & 1) == 0)
          {
            [v14 doubleValue];
            v8 = v15;
          }
        }
      }
    }

    [(NSHTMLReader *)self _fillInBlock:v16 forElement:a3 backgroundColor:0 extraMargin:1 extraPadding:0.0 isTable:0.0];
    if ([@"collapse" isEqualToString:v5])
    {
      [(NSTextTable *)v16 setCollapsesBorders:1];
      v9 = 0.0;
    }

    if ([@"hide" isEqualToString:v6])
    {
      [(NSTextTable *)v16 setHidesEmptyCells:1];
    }

    if ([@"fixed" isEqualToString:v7])
    {
      [(NSTextTable *)v16 setLayoutAlgorithm:1];
    }
  }

  else
  {
    v8 = 1.0;
    v9 = 1.0;
  }

  [(NSMutableArray *)self->_textTables addObject:v16];
  -[NSMutableArray addObject:](self->_textTableSpacings, "addObject:", [MEMORY[0x1E696AD98] numberWithDouble:v9]);
  -[NSMutableArray addObject:](self->_textTablePaddings, "addObject:", [MEMORY[0x1E696AD98] numberWithDouble:v8]);
  -[NSMutableArray addObject:](self->_textTableRows, "addObject:", [MEMORY[0x1E696AD98] numberWithInteger:0]);
  -[NSMutableArray addObject:](self->_textTableRowArrays, "addObject:", [MEMORY[0x1E695DF70] array]);
}

- (void)_addTableCellForElement:(id)a3
{
  v5 = [(NSMutableArray *)self->_textTables lastObject];
  v6 = [-[NSMutableArray lastObject](self->_textTableRows "lastObject")];
  v7 = [(NSMutableArray *)self->_textTableRowArrays lastObject];
  v8 = [v7 count];
  if ([(NSMutableArray *)self->_textTableRowBackgroundColors count])
  {
    v9 = [(NSMutableArray *)self->_textTableRowBackgroundColors lastObject];
  }

  else
  {
    v9 = 0;
  }

  [-[NSMutableArray lastObject](self->_textTableSpacings "lastObject")];
  v11 = v10;
  if ([v9 isEqual:{-[objc_class clearColor](getNSColorClass_4(), "clearColor")}])
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  v26 = v12;
  v13 = 0;
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v15 = [v7 objectAtIndex:{i, v26}];
      if (v13 >= [v15 startingColumn])
      {
        v16 = [v15 startingColumn];
        if (v13 < [v15 columnSpan] + v16)
        {
          v17 = [v15 startingColumn];
          v13 = [v15 columnSpan] + v17;
        }
      }
    }
  }

  if (a3)
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [a3 rowSpan];
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }
    }

    else
    {
      v19 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [a3 colSpan];
      if (v21 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v21;
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
    v19 = 1;
  }

  v22 = [[NSTextTableBlock alloc] initWithTable:v5 startingRow:v6 rowSpan:v19 startingColumn:v13 columnSpan:v20];
  v27 = v22;
  if (a3)
  {
    v23 = [(NSHTMLReader *)self _stringForNode:a3 property:@"vertical-align"];
    [(NSHTMLReader *)self _fillInBlock:v27 forElement:a3 backgroundColor:v26 extraMargin:0 extraPadding:v11 * 0.5 isTable:0.0];
    if ([@"middle" isEqualToString:v23])
    {
      v24 = 1;
LABEL_32:
      v22 = v27;
LABEL_33:
      [(NSTextBlock *)v22 setVerticalAlignment:v24, v26];
      v22 = v27;
      goto LABEL_34;
    }

    if ([@"bottom" isEqualToString:v23])
    {
      v24 = 2;
      goto LABEL_32;
    }

    if ([@"baseline" isEqualToString:v23])
    {
      v24 = 3;
      goto LABEL_32;
    }

    v25 = [@"top" isEqualToString:v23];
    v22 = v27;
    if (v25)
    {
      v24 = 0;
      goto LABEL_33;
    }
  }

LABEL_34:
  [(NSMutableArray *)self->_textBlocks addObject:v22, v26];
  [v7 addObject:v27];
  [v7 sortUsingFunction:_colCompare context:0];
}

- (BOOL)_processElement:(id)a3 tag:(id)a4 display:(id)a5 depth:(int64_t)a6
{
  v11 = [(NSHTMLReader *)self _elementIsBlockLevel:?];
  if (v11)
  {
    [(NSMutableArray *)self->_writingDirectionArray removeAllObjects];
  }

  else
  {
    v12 = [(NSHTMLReader *)self _stringForNode:a3 property:@"unicode-bidi"];
    if (v12)
    {
      v13 = v12;
      if ([v12 isEqualToString:@"embed"])
      {
        v14 = [-[NSHTMLReader _stringForNode:property:](self _stringForNode:a3 property:{@"direction", "isEqualToString:", @"rtl"}];
      }

      else
      {
        if (![v13 isEqualToString:@"bidi-override"])
        {
          goto LABEL_11;
        }

        if ([-[NSHTMLReader _stringForNode:property:](self _stringForNode:a3 property:{@"direction", "isEqualToString:", @"rtl"}])
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }
      }

      -[NSMutableArray addObject:](self->_writingDirectionArray, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14]);
    }
  }

LABEL_11:
  if (([@"table" isEqualToString:a5] & 1) != 0 || !-[NSMutableArray count](self->_textTables, "count") && objc_msgSend(@"table-row-group", "isEqualToString:", a5))
  {
    if ([@"table-row-group" isEqualToString:a5])
    {
      v15 = -[NSHTMLReader _blockLevelElementForNode:](self, "_blockLevelElementForNode:", [a3 parentNode]);
      if ([@"table" isEqualToString:{-[NSHTMLReader _stringForNode:property:](self, "_stringForNode:property:", v15, @"display"}])
      {
        a3 = v15;
      }
    }

    while (1)
    {
      v16 = [(NSMutableArray *)self->_textTables count];
      if (v16 <= [(NSMutableArray *)self->_textBlocks count])
      {
        break;
      }

      [(NSHTMLReader *)self _addTableCellForElement:0];
    }

    [(NSHTMLReader *)self _addTableForElement:a3];
    goto LABEL_19;
  }

  if ([@"table-footer-group" isEqualToString:a5] && -[NSMutableArray count](self->_textTables, "count"))
  {
    -[NSMutableDictionary setObject:forKey:](self->_textTableFooters, "setObject:forKey:", a3, [MEMORY[0x1E696B098] valueWithNonretainedObject:{-[NSMutableArray lastObject](self->_textTables, "lastObject")}]);
LABEL_26:
    LOBYTE(v11) = 0;
    return v11;
  }

  if ([@"table-row" isEqualToString:a5] && -[NSMutableArray count](self->_textTables, "count"))
  {
    v18 = [(NSHTMLReader *)self _colorForNode:a3 property:@"background-color"];
    if (!v18)
    {
      v18 = [(objc_class *)getNSColorClass_4() clearColor];
    }

    [(NSMutableArray *)self->_textTableRowBackgroundColors addObject:v18];
    goto LABEL_19;
  }

  if ([@"table-cell" isEqualToString:a5])
  {
    while (1)
    {
      v19 = [(NSMutableArray *)self->_textTables count];
      if (v19 >= [(NSMutableArray *)self->_textBlocks count]+ 1)
      {
        break;
      }

      [(NSHTMLReader *)self _addTableForElement:0];
    }

    [(NSHTMLReader *)self _addTableCellForElement:a3];
    goto LABEL_19;
  }

  if ([@"IMG" isEqualToString:a4])
  {
    v20 = [a3 getAttribute:@"src"];
    if (v20)
    {
      v21 = v20;
      if ([v20 length])
      {
        v22 = [objc_msgSend(a3 "ownerDocument")];
        if (v22 || (v22 = [MEMORY[0x1E695DFF8] _web_URLWithString:objc_msgSend(v21 relativeToURL:{"stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), self->_baseURL}]) != 0)
        {
          [(NSHTMLReader *)self _addAttachmentForElement:a3 URL:v22 needsParagraph:v11 usePlaceholder:0];
        }
      }
    }

    goto LABEL_26;
  }

  if ([@"OBJECT" isEqualToString:a4])
  {
    v23 = [a3 getAttribute:@"codebase"];
    v24 = [a3 getAttribute:@"data"];
    v25 = [a3 getAttribute:@"declare"];
    if (v24)
    {
      v26 = v25;
      if ([v24 length])
      {
        if (([@"true" isEqualToString:v26] & 1) == 0 && (v23 && objc_msgSend(v23, "length") && ((v27 = objc_msgSend(objc_msgSend(a3, "ownerDocument"), "URLWithAttributeString:", v23)) != 0 || (v27 = objc_msgSend(MEMORY[0x1E695DFF8], "_web_URLWithString:relativeToURL:", objc_msgSend(v23, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), self->_baseURL)) != 0) && (v28 = objc_msgSend(MEMORY[0x1E695DFF8], "_web_URLWithString:relativeToURL:", objc_msgSend(v24, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), v27)) != 0 || (v28 = objc_msgSend(objc_msgSend(a3, "ownerDocument"), "URLWithAttributeString:", v24)) != 0 || (v28 = objc_msgSend(MEMORY[0x1E695DFF8], "_web_URLWithString:relativeToURL:", objc_msgSend(v24, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), self->_baseURL)) != 0))
        {
          LODWORD(v11) = ![(NSHTMLReader *)self _addAttachmentForElement:a3 URL:v28 needsParagraph:v11 usePlaceholder:0];
          return v11;
        }
      }
    }

    goto LABEL_19;
  }

  if ([@"FRAME" isEqualToString:a4])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_26;
    }

    v29 = [a3 contentDocument];
    if (!v29)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

  if ([@"IFRAME" isEqualToString:a4])
  {
    if (objc_opt_respondsToSelector())
    {
      v29 = [a3 contentDocument];
      if (v29)
      {
LABEL_61:
        [(NSHTMLReader *)self _traverseNode:v29 depth:a6 + 1 embedded:1];
        goto LABEL_26;
      }
    }
  }

  else if ([@"BR" isEqualToString:a4])
  {
    v30 = -[NSHTMLReader _blockLevelElementForNode:](self, "_blockLevelElementForNode:", [a3 parentNode]);
    v31 = [a3 getAttribute:@"class"];
    v32 = [v30 tagName];
    v33 = [@"Apple-interchange-newline" isEqualToString:v31];
    if ([@"P" isEqualToString:v32] & 1) != 0 || (objc_msgSend(@"LI", "isEqualToString:", v32))
    {
      v34 = 0;
    }

    else if ([v32 hasPrefix:@"H"])
    {
      v34 = [v32 length] != 2;
    }

    else
    {
      v34 = 1;
    }

    if (v33)
    {
      *&self->_flags |= 0x20u;
    }

    else
    {
      if (v30 == 0 || v34)
      {
        LOBYTE(v11) = 1;
        [(NSHTMLReader *)self _newParagraphForElement:a3 tag:a4 allowEmpty:1 suppressTrailingSpace:0 isEntering:0];
        return v11;
      }

      [(NSHTMLReader *)self _newLineForElement:a3];
    }
  }

  else if ([@"UL" isEqualToString:a4])
  {
    v35 = [(NSHTMLReader *)self _stringForNode:a3 property:@"list-style-type"];
    if (!v35 || (v36 = v35, ![(__CFString *)v35 length]))
    {
      v36 = @"disc";
    }

    v37 = [NSTextList alloc];
    v38 = -[NSTextList initWithMarkerFormat:options:](v37, "initWithMarkerFormat:options:", [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", v36], 0);
    [(NSMutableArray *)self->_textLists addObject:v38];
  }

  else if ([@"OL" isEqualToString:a4])
  {
    v39 = [(NSHTMLReader *)self _stringForNode:a3 property:@"list-style-type"];
    if (!v39 || (v40 = v39, ![(__CFString *)v39 length]))
    {
      v40 = @"decimal";
    }

    v41 = [NSTextList alloc];
    v42 = -[NSTextList initWithMarkerFormat:options:](v41, "initWithMarkerFormat:options:", [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}.", v40], 0);
    if (objc_opt_respondsToSelector())
    {
      -[NSTextList setStartingItemNumber:](v42, "setStartingItemNumber:", [a3 start]);
    }

    [(NSMutableArray *)self->_textLists addObject:v42];
  }

  else
  {
    if ([@"Q" isEqualToString:a4])
    {
      ++self->_quoteLevel;
      LOBYTE(v11) = 1;
      [(NSHTMLReader *)self _addQuoteForElement:a3 opening:1 level:?];
      return v11;
    }

    if ([@"INPUT" isEqualToString:a4])
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        LOBYTE(v11) = 1;
        if ([@"text" compare:objc_msgSend(a3 options:{"type"), 1}])
        {
          return v11;
        }

        v43 = [a3 value];
        if (v43)
        {
          v44 = v43;
          if ([v43 length])
          {
            [(NSHTMLReader *)self _addValue:v44 forElement:a3];
          }
        }
      }
    }

    else if ([@"TEXTAREA" isEqualToString:a4])
    {
      if (objc_opt_respondsToSelector())
      {
        v45 = [a3 value];
        v11 = v45;
        if (!v45)
        {
          return v11;
        }

        if ([v45 length])
        {
          [(NSHTMLReader *)self _addValue:v11 forElement:a3];
        }
      }

      goto LABEL_26;
    }
  }

LABEL_19:
  LOBYTE(v11) = 1;
  return v11;
}

- (void)_addMarkersToList:(id)a3 range:(_NSRange)a4
{
  if (self->_includesTextListMarkers)
  {
    v53 = v7;
    v54 = v6;
    v55 = v4;
    v56 = v5;
    length = a4.length;
    location = a4.location;
    v10 = a3;
    v12 = [a3 startingItemNumber];
    v50 = [(NSMutableAttributedString *)self->_attrStr string];
    v51 = 0;
    v52 = 0;
    v13 = [(NSMutableAttributedString *)self->_attrStr length];
    if (length)
    {
      v14 = v13;
      v15 = v13 - location;
      if (v13 > location)
      {
        v16 = [NSMutableAttributedString attribute:"attribute:atIndex:effectiveRange:" atIndex:? effectiveRange:?];
        if (v16)
        {
          if (location + length <= v14)
          {
            v15 = length;
          }

          v17 = [v16 textLists];
          v18 = [v17 indexOfObject:v10];
          if (v17)
          {
            v19 = v18 == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = 1;
          }

          if (!v19 && location < v15 + location)
          {
            v21 = v18 + 1;
            v22 = (v18 + 1) * 36.0;
            v23 = location;
            v48 = location;
            v46 = 0;
            v47 = v18 + 1;
            do
            {
              v24 = [v50 paragraphRangeForRange:{v23, 0}];
              v26 = v25;
              v27 = [(NSMutableAttributedString *)self->_attrStr attribute:@"NSParagraphStyle" atIndex:v23 effectiveRange:&v51];
              if ([objc_msgSend(v27 "textLists")] == v21)
              {
                v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@\t", objc_msgSend(v10, "markerForItemNumber:", v12)];
                v29 = [v28 length];
                v49 = v12;
                if ((*&self->_flags & 0x18) == 0)
                {
                  v46 = [NSTextList _standardMarkerAttributesForAttributes:[(NSMutableAttributedString *)self->_attrStr attributesAtIndex:v24 effectiveRange:0]];
                }

                [(NSMutableAttributedString *)self->_attrStr replaceCharactersInRange:v24 withString:0, v28];
                if ((*&self->_flags & 0x18) == 0)
                {
                  [(NSMutableAttributedString *)self->_attrStr setAttributes:v46 range:v24, v29];
                }

                v30 = v10;
                domRangeStartIndex = self->_domRangeStartIndex;
                if (v24 < domRangeStartIndex)
                {
                  self->_domRangeStartIndex = domRangeStartIndex + v29;
                }

                v32 = [v27 mutableCopy];
                [v32 setFirstLineHeadIndent:0.0];
                [v32 setHeadIndent:v22];
                v33 = [objc_msgSend(v32 "tabStops")];
                if (v33)
                {
                  v34 = v33;
                  do
                  {
                    v35 = 0;
                    do
                    {
                      v36 = [objc_msgSend(v32 "tabStops")];
                      [v36 location];
                      ++v35;
                      v39 = v37 > v22 || v36 == 0;
                    }

                    while (v39 && v35 < v34);
                    if (v39)
                    {
                      break;
                    }

                    [v32 removeTabStop:v36];
                    v34 = [objc_msgSend(v32 "tabStops")];
                  }

                  while (v34);
                }

                v41 = v29 + v26;
                v42 = [NSTextTab alloc];
                v43 = MEMORY[0x1E695E0F8];
                v44 = [(NSTextTab *)v42 initWithTextAlignment:0 location:MEMORY[0x1E695E0F8] options:v22 + -25.0];
                [v32 addTabStop:v44];

                v45 = [[NSTextTab alloc] initWithTextAlignment:4 location:v43 options:v22];
                [v32 addTabStop:v45];

                if ((*&self->_flags & 0x18) == 0)
                {
                  [(NSMutableAttributedString *)self->_attrStr addAttribute:@"NSParagraphStyle" value:v32 range:v24, v41];
                }

                v12 = v49 + 1;
                v15 += v29;

                v23 = v41 + v24;
                v10 = v30;
                v21 = v47;
                location = v48;
              }

              else
              {
                v23 = v52 + v51;
              }
            }

            while (v23 < v15 + location);
          }
        }
      }
    }
  }
}

- (void)_exitElement:(id)a3 tag:(id)a4 display:(id)a5 depth:(int64_t)a6 startIndex:(unint64_t)a7
{
  v13 = [(NSMutableAttributedString *)self->_attrStr length];
  if (v13 != a7)
  {
    if ([@"A" isEqualToString:a4])
    {
      v14 = [a3 getAttribute:@"href"];
      v15 = [v14 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
      if (v14)
      {
        v16 = v15;
        if ([v14 length])
        {
          if (v16 && [v16 length] && (objc_msgSend(v16, "hasPrefix:", @"#") & 1) == 0)
          {
            v17 = [objc_msgSend(a3 "ownerDocument")];
            if (!v17)
            {
              v17 = [objc_msgSend(a3 "ownerDocument")];
              if (!v17)
              {
                v17 = [MEMORY[0x1E695DFF8] _web_URLWithString:v16 relativeToURL:self->_baseURL];
              }
            }

            if ((*&self->_flags & 0x18) == 0)
            {
              if (v17)
              {
                v18 = v17;
              }

              else
              {
                v18 = v14;
              }

              [(NSMutableAttributedString *)self->_attrStr addAttribute:@"NSLink" value:v18 range:a7, v13 - a7];
            }
          }
        }
      }
    }
  }

  if ((*&self->_flags & 4) != 0 || ![(NSHTMLReader *)self _elementIsBlockLevel:a3])
  {
    if ([(NSMutableArray *)self->_writingDirectionArray count])
    {
      v19 = [(NSHTMLReader *)self _stringForNode:a3 property:@"unicode-bidi"];
      if (v19)
      {
        v20 = v19;
        if (([v19 isEqualToString:@"embed"] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"bidi-override"))
        {
          [(NSMutableArray *)self->_writingDirectionArray removeLastObject];
        }
      }
    }
  }

  else
  {
    [(NSMutableArray *)self->_writingDirectionArray removeAllObjects];
    if ([@"table-cell" isEqualToString:a5] && !-[NSMutableArray count](self->_textBlocks, "count"))
    {
      [(NSHTMLReader *)self _newTabForElement:a3];
    }

    else if (!-[NSMutableArray count](self->_textLists, "count") || ![@"block" isEqualToString:a5] || (objc_msgSend(@"LI", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"UL", "isEqualToString:", a4) & 1) != 0 || (objc_msgSend(@"OL", "isEqualToString:", a4) & 1) != 0)
    {
      [(NSHTMLReader *)self _newParagraphForElement:a3 tag:a4 allowEmpty:v13 == a7 suppressTrailingSpace:0 isEntering:0];
    }

    else
    {
      [(NSHTMLReader *)self _newLineForElement:a3];
    }
  }

  v21 = [(NSMutableAttributedString *)self->_attrStr length];
  if ([@"table" isEqualToString:a5] && -[NSMutableArray count](self->_textTables, "count"))
  {
    v22 = [MEMORY[0x1E696B098] valueWithNonretainedObject:{-[NSMutableArray lastObject](self->_textTables, "lastObject")}];
    v23 = [(NSMutableDictionary *)self->_textTableFooters objectForKey:v22];
    while (1)
    {
      v24 = [(NSMutableArray *)self->_textTables count];
      if (v24 >= [(NSMutableArray *)self->_textBlocks count]+ 1)
      {
        break;
      }

      [(NSMutableArray *)self->_textBlocks removeLastObject];
    }

    if (v23)
    {
      [(NSHTMLReader *)self _traverseFooterNode:v23 depth:a6 + 1];
      [(NSMutableDictionary *)self->_textTableFooters removeObjectForKey:v22];
    }

    [(NSMutableArray *)self->_textTables removeLastObject];
    [(NSMutableArray *)self->_textTableSpacings removeLastObject];
    [(NSMutableArray *)self->_textTablePaddings removeLastObject];
    [(NSMutableArray *)self->_textTableRows removeLastObject];
    textTableRowArrays = self->_textTableRowArrays;
    goto LABEL_75;
  }

  if (![@"table-row" isEqualToString:a5] || !-[NSMutableArray count](self->_textTables, "count"))
  {
    if ([@"table-cell" isEqualToString:a5] && -[NSMutableArray count](self->_textBlocks, "count"))
    {
      while (1)
      {
        v45 = [(NSMutableArray *)self->_textTables count];
        if (v45 <= [(NSMutableArray *)self->_textBlocks count])
        {
          break;
        }

        [(NSMutableArray *)self->_textTables removeLastObject];
        [(NSMutableArray *)self->_textTableSpacings removeLastObject];
        [(NSMutableArray *)self->_textTablePaddings removeLastObject];
        [(NSMutableArray *)self->_textTableRows removeLastObject];
        [(NSMutableArray *)self->_textTableRowArrays removeLastObject];
      }

      textTableRowArrays = self->_textBlocks;
      goto LABEL_75;
    }

    v46 = v21 - a7;
    if ((([@"UL" isEqualToString:a4] & 1) != 0 || objc_msgSend(@"OL", "isEqualToString:", a4)) && -[NSMutableArray count](self->_textLists, "count"))
    {
      [(NSHTMLReader *)self _addMarkersToList:[(NSMutableArray *)self->_textLists lastObject] range:a7, v21 - a7];
      textTableRowArrays = self->_textLists;
      goto LABEL_75;
    }

    if ([@"Q" isEqualToString:a4])
    {
      --self->_quoteLevel;

      [(NSHTMLReader *)self _addQuoteForElement:a3 opening:0 level:?];
      return;
    }

    if (![@"SPAN" isEqualToString:a4])
    {
      return;
    }

    v47 = [a3 getAttribute:@"class"];
    if ([@"Apple-converted-space" isEqualToString:v47])
    {
      v48 = [(NSMutableAttributedString *)self->_attrStr mutableString];
      if (v21 > a7)
      {
        v49 = v48;
        do
        {
          if ([(NSMutableString *)v49 characterAtIndex:a7]== 160)
          {
            [(NSMutableString *)v49 replaceCharactersInRange:a7 withString:1, @" "];
          }

          ++a7;
        }

        while (v21 != a7);
      }

      return;
    }

    if (![@"Apple-converted-tab" isEqualToString:v47])
    {
      return;
    }

    v50 = [(NSMutableAttributedString *)self->_attrStr mutableString];
    if (v21 <= a7)
    {
      return;
    }

    v51 = v50;
    v52 = 0;
    v53 = a7;
    while (1)
    {
      if (([(NSMutableString *)v51 characterAtIndex:v53]& 0xFFFFFF7F) == 0x20)
      {
        v54 = v52 + 1;
        if ((v52 + 1) <= 3 && v53 + 1 < v21)
        {
          goto LABEL_110;
        }

        v55 = v53 - v52++;
        if (!v54)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0;
        }

        if (v52)
        {
          v55 = v53 - v52;
        }

        else
        {
          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (!v52)
        {
          v52 = 0;
        }

        if (!v52)
        {
          goto LABEL_110;
        }
      }

      [(NSMutableString *)v51 replaceCharactersInRange:v55 withString:v52, @"\t"];
      v46 -= v52 - 1;
      v53 -= v52 - 1;
      domRangeStartIndex = self->_domRangeStartIndex;
      if (v55 + v52 <= domRangeStartIndex)
      {
        break;
      }

      if (v55 < domRangeStartIndex)
      {
        goto LABEL_109;
      }

      v54 = 0;
LABEL_110:
      ++v53;
      v21 = v46 + a7;
      v52 = v54;
      if (v53 >= v46 + a7)
      {
        return;
      }
    }

    v55 = domRangeStartIndex - (v52 - 1);
LABEL_109:
    v54 = 0;
    self->_domRangeStartIndex = v55;
    goto LABEL_110;
  }

  v25 = [(NSMutableArray *)self->_textTables lastObject];
  v26 = [(NSMutableArray *)self->_textTableRowArrays lastObject];
  v27 = [v25 numberOfColumns];
  v28 = [-[NSMutableArray lastObject](self->_textTableRows "lastObject")];
  do
  {
    ++v28;
    v29 = [MEMORY[0x1E695DF70] array];
    v30 = [v26 count];
    if (v30)
    {
      v31 = v30;
      for (i = 0; i != v31; ++i)
      {
        v33 = [v26 objectAtIndex:i];
        v34 = [v33 startingColumn];
        if ([v33 columnSpan] + v34 > v27)
        {
          v35 = [v33 startingColumn];
          v27 = [v33 columnSpan] + v35;
        }

        v36 = [v33 startingRow];
        if ([v33 rowSpan] + v36 > v28)
        {
          [v29 addObject:v33];
        }
      }
    }

    v37 = [v29 count];
    if (v37)
    {
      v38 = v37;
      v39 = 0;
      v40 = 0;
      do
      {
        v41 = [v29 objectAtIndex:v39];
        if (v40 >= [v41 startingColumn])
        {
          v42 = [v41 startingColumn];
          if (v40 < [v41 columnSpan] + v42)
          {
            v43 = [v41 startingColumn];
            v40 = [v41 columnSpan] + v43;
          }
        }

        ++v39;
      }

      while (v38 != v39);
    }

    else
    {
      v40 = 0;
    }

    v26 = v29;
  }

  while (v40 >= v27);
  if (v27 > [v25 numberOfColumns])
  {
    [v25 setNumberOfColumns:v27];
  }

  [(NSMutableArray *)self->_textTableRows removeLastObject];
  -[NSMutableArray addObject:](self->_textTableRows, "addObject:", [MEMORY[0x1E696AD98] numberWithInteger:v28]);
  [(NSMutableArray *)self->_textTableRowArrays removeLastObject];
  [(NSMutableArray *)self->_textTableRowArrays addObject:v29];
  if ([(NSMutableArray *)self->_textTableRowBackgroundColors count])
  {
    textTableRowArrays = self->_textTableRowBackgroundColors;
LABEL_75:

    [(NSMutableArray *)textTableRowArrays removeLastObject];
  }
}

- (void)_processText:(id)a3
{
  v3 = a3;
  v69 = *MEMORY[0x1E69E9840];
  v5 = [a3 data];
  v6 = [(NSMutableAttributedString *)self->_attrStr length];
  v7 = [(__CFString *)v5 length];
  if (v6)
  {
    v8 = [-[NSMutableAttributedString string](self->_attrStr "string")];
  }

  else
  {
    v8 = 10;
  }

  v10 = (*&self->_flags & 1) == 0 || v8 != 32;
  if (v8 == 13 || (v8 & 0xFFFE) == 8232 || (v8 - 11) >= 0xFFFFFFFE)
  {
    v10 = 0;
  }

  if (v8 == 12 || v8 == 133)
  {
    v10 = 0;
  }

  v52 = v10;
  v14 = [(NSHTMLReader *)self _stringForNode:v3 property:@"white-space"];
  v15 = [(NSHTMLReader *)self _stringForNode:v3 property:@"text-transform"];
  domRange = self->_domRange;
  if (!domRange)
  {
    goto LABEL_31;
  }

  if ([(DOMRange *)domRange startContainer]== v3)
  {
    v17 = [(DOMRange *)self->_domRange startOffset];
    self->_domRangeStartIndex = [(NSMutableAttributedString *)self->_attrStr length];
    *&self->_flags |= 2u;
  }

  else
  {
    v17 = 0;
  }

  if ([(DOMRange *)self->_domRange endContainer]!= v3)
  {
    if (v17)
    {
      goto LABEL_29;
    }

LABEL_80:
    if (v7 >= [(__CFString *)v5 length])
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v7 = [(DOMRange *)self->_domRange endOffset];
  *&self->_flags |= 4u;
  if (!v17)
  {
    goto LABEL_80;
  }

LABEL_29:
  if (v7 >= v17)
  {
LABEL_30:
    v5 = [(__CFString *)v5 substringWithRange:v17, v7 - v17];
  }

LABEL_31:
  if ([v14 hasPrefix:@"pre"])
  {
    if (v6 && [(__CFString *)v5 length]&& (*&self->_flags & 1) != 0 && ((v49 = [(__CFString *)v5 characterAtIndex:0], v49 <= 0xD) && ((1 << v49) & 0x3400) != 0 || v49 - 8232 < 2 || v49 == 133))
    {
      Mutable = 0;
      v20 = 0;
      --v6;
      v19 = 1;
    }

    else
    {
      Mutable = 0;
      v19 = 0;
      v20 = 0;
    }

    goto LABEL_84;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *buffer = 0u;
  v54 = 0u;
  v21 = [(__CFString *)v5 length];
  Mutable = CFStringCreateMutable(0, 0);
  v61 = v5;
  v64 = 0;
  v65 = v21;
  CharactersPtr = CFStringGetCharactersPtr(v5);
  CStringPtr = 0;
  v62 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  v66 = 0;
  v67 = 0;
  v63 = CStringPtr;
  if (!v21)
  {
    v27 = 0;
    goto LABEL_83;
  }

  v51 = self;
  v50 = v15;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 64;
  v29 = 1;
  do
  {
    if (v26 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v26;
    }

    if (v26 < 0 || (v31 = v65, v65 <= v26))
    {
      v33 = 0;
      goto LABEL_49;
    }

    if (v62)
    {
      v32 = &v62[v64];
LABEL_47:
      v33 = v32[v26];
      goto LABEL_56;
    }

    if (!v63)
    {
      if (v67 <= v26 || (v36 = v66, v66 > v26))
      {
        v37 = -v30;
        v38 = v30 + v24;
        v39 = v28 - v30;
        v40 = v26 + v37;
        v41 = v40 + 64;
        if (v40 + 64 >= v65)
        {
          v41 = v65;
        }

        v66 = v40;
        v67 = v41;
        if (v65 >= v39)
        {
          v31 = v39;
        }

        v70.location = v40 + v64;
        v70.length = v31 + v38;
        CFStringGetCharacters(v61, v70, buffer);
        v36 = v66;
      }

      v32 = &buffer[-v36];
      goto LABEL_47;
    }

    v33 = v63[v64 + v26];
LABEL_56:
    if (v33 <= 0x20u && ((1 << v33) & 0x100003600) != 0 || v33 == 8203)
    {
      v27 = v29 ^ 1 | v52;
      goto LABEL_65;
    }

LABEL_49:
    if (v27)
    {
      chars[v25++] = 32;
    }

    chars[v25++] = v33;
    if (v25 >= 0xFF)
    {
      CFStringAppendCharacters(Mutable, chars, v25);
      v29 = 0;
      v27 = 0;
      v25 = 0;
    }

    else
    {
      v29 = 0;
      v27 = 0;
    }

LABEL_65:
    ++v26;
    --v24;
    ++v28;
  }

  while (v21 != v26);
  if (v27)
  {
    chars[v25++] = 32;
  }

  self = v51;
  v15 = v50;
  if (v25)
  {
    CFStringAppendCharacters(Mutable, chars, v25);
  }

LABEL_83:
  v19 = 0;
  v20 = v27 & 1;
  v5 = Mutable;
LABEL_84:
  if ([(__CFString *)v5 length])
  {
    if ([@"capitalize" isEqualToString:v15])
    {
      v42 = [(__CFString *)v5 capitalizedString];
      goto LABEL_91;
    }

    if ([@"uppercase" isEqualToString:v15])
    {
      v42 = [(__CFString *)v5 uppercaseString];
      goto LABEL_91;
    }

    if ([@"lowercase" isEqualToString:v15])
    {
      v42 = [(__CFString *)v5 lowercaseString];
LABEL_91:
      v5 = v42;
    }

    [(NSMutableAttributedString *)self->_attrStr replaceCharactersInRange:v6 withString:v19, v5];
    v43 = [(__CFString *)v5 length];
    flags = self->_flags;
    if ((*&flags & 8) == 0)
    {
      v45 = v43;
      v46 = 0;
      if (v3)
      {
        do
        {
          if ([(DOMNode *)v3 nodeType]== 1)
          {
            v47 = [-[NSHTMLReader _attributesForElement:](self _attributesForElement:{v3), "mutableCopy"}];
            v48 = v47;
            if (v46)
            {
              [v47 addEntriesFromDictionary:v46];
            }

            v46 = v48;
          }

          v3 = [(DOMNode *)v3 parentNode];
        }

        while (v3);
        flags = self->_flags;
      }

      if ((*&flags & 0x10) == 0 && v45)
      {
        [(NSMutableAttributedString *)self->_attrStr setAttributes:v46 range:v6, v45];
      }

      flags = self->_flags;
    }

    self->_flags = (*&flags & 0xFFFFFFFE | v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

- (void)_traverseNode:(id)a3 depth:(int64_t)a4 embedded:(BOOL)a5
{
  flags = self->_flags;
  if ((*&flags & 4) == 0)
  {
    v6 = a5;
    if ((*&flags & 2) != 0 || !self->_domRange || (domStartAncestors = self->_domStartAncestors) == 0 || [(NSMutableArray *)domStartAncestors containsObject:a3])
    {
      v11 = [a3 nodeType];
      v40 = [(NSHTMLReader *)self _childrenForNode:a3];
      v12 = [v40 count];
      domRange = self->_domRange;
      if (domRange)
      {
        v14 = [(DOMRange *)domRange startContainer];
        v15 = v14 == a3;
        if (v14 == a3)
        {
          v16 = [(DOMRange *)self->_domRange startOffset];
          *&self->_flags |= 2u;
        }

        else
        {
          v16 = 0;
        }

        if ([(DOMRange *)self->_domRange endContainer]== a3)
        {
          v18 = [(DOMRange *)self->_domRange endOffset];
          v17 = 1;
LABEL_15:
          if ((v11 & 0xFFFFFFFD) == 9)
          {
            v19 = 0;
            do
            {
              if (v12 == v19)
              {
                break;
              }

              if (v16 == v19 && v15)
              {
                self->_domRangeStartIndex = [(NSMutableAttributedString *)self->_attrStr length];
              }

              v21 = v16 > v19 && v15;
              if (v18 <= v19)
              {
                v22 = v17;
              }

              else
              {
                v22 = 0;
              }

              if (!v21 && (v22 & 1) == 0)
              {
                -[NSHTMLReader _traverseNode:depth:embedded:](self, "_traverseNode:depth:embedded:", [v40 objectAtIndex:v19], a4 + 1, v6);
              }

              if (++v19 >= v18)
              {
                v23 = v17;
              }

              else
              {
                v23 = 0;
              }

              if (v23 == 1)
              {
                *&self->_flags |= 4u;
              }

              if (self->_thumbnailLimit <= 0)
              {
                v25 = self->_flags;
              }

              else
              {
                v24 = [(NSMutableAttributedString *)self->_attrStr length];
                v25 = self->_flags;
                if (v24 >= self->_thumbnailLimit)
                {
                  v25 = (*&v25 | 4);
                  self->_flags = v25;
                }
              }
            }

            while ((*&v25 & 4) == 0);
LABEL_80:
            if (v17)
            {
              *&self->_flags |= 4u;
            }

            return;
          }

          if (v11 != 1)
          {
            if ((v11 - 3) <= 1)
            {
              [(NSHTMLReader *)self _processText:a3];
            }

            goto LABEL_80;
          }

          v39 = v6;
          v38 = [a3 tagName];
          v26 = [(NSHTMLReader *)self _stringForNode:a3 property:@"display"];
          v27 = [(NSHTMLReader *)self _stringForNode:a3 property:@"float"];
          if (!v27 || (v28 = v27, ([@"left" isEqualToString:v27] & 1) == 0) && (objc_msgSend(@"right", "isEqualToString:", v28) & 1) == 0)
          {
            if (!v26)
            {
              v29 = 0;
              goto LABEL_55;
            }

            if (([@"block" isEqualToString:v26] & 1) == 0 && (objc_msgSend(@"list-item", "isEqualToString:", v26) & 1) == 0)
            {
              v29 = [v26 hasPrefix:@"table"];
              goto LABEL_55;
            }
          }

          v29 = 1;
LABEL_55:
          -[NSMutableDictionary setObject:forKey:](self->_elementIsBlockLevel, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v29], a3);
          if ([(NSHTMLReader *)self _enterElement:a3 tag:v38 display:v26 depth:a4 embedded:v39])
          {
            v37 = [(NSMutableAttributedString *)self->_attrStr length];
            if ([(NSHTMLReader *)self _processElement:a3 tag:v38 display:v26 depth:a4])
            {
              v30 = a4;
              v31 = 0;
              do
              {
                if (v12 == v31)
                {
                  break;
                }

                if (v16 == v31 && v15)
                {
                  self->_domRangeStartIndex = [(NSMutableAttributedString *)self->_attrStr length];
                }

                v33 = v16 > v31 && v15;
                if (v18 <= v31)
                {
                  v34 = v17;
                }

                else
                {
                  v34 = 0;
                }

                if (!v33 && (v34 & 1) == 0)
                {
                  -[NSHTMLReader _traverseNode:depth:embedded:](self, "_traverseNode:depth:embedded:", [v40 objectAtIndex:v31], v30 + 1, v39);
                }

                if (++v31 >= v18)
                {
                  v35 = v17;
                }

                else
                {
                  v35 = 0;
                }

                v36 = self->_flags;
                if (v35 == 1)
                {
                  v36 = (*&v36 | 4);
                  self->_flags = v36;
                }
              }

              while ((*&v36 & 4) == 0);
              [(NSHTMLReader *)self _exitElement:a3 tag:v38 display:v26 depth:v30 startIndex:v37];
            }
          }

          goto LABEL_80;
        }

        v17 = 0;
      }

      else
      {
        v15 = 0;
        v17 = 0;
        v16 = 0;
      }

      v18 = v12;
      goto LABEL_15;
    }
  }
}

- (void)_traverseFooterNode:(id)a3 depth:(int64_t)a4
{
  v7 = [(NSHTMLReader *)self _childrenForNode:?];
  v8 = [v7 count];
  flags = self->_flags;
  if ((*&flags & 4) != 0)
  {
    return;
  }

  v10 = v8;
  domRange = self->_domRange;
  if ((*&flags & 2) == 0 && domRange)
  {
    if (!self->_domStartAncestors)
    {
      goto LABEL_8;
    }

    if (![(NSMutableArray *)self->_domStartAncestors containsObject:a3])
    {
      return;
    }

    domRange = self->_domRange;
  }

  if (!domRange)
  {
    v14 = 0;
    v13 = 0;
LABEL_13:
    v15 = 0;
    v16 = v10;
    goto LABEL_15;
  }

LABEL_8:
  v12 = [(DOMRange *)domRange startContainer];
  v13 = v12 == a3;
  if (v12 == a3)
  {
    v14 = [(DOMRange *)self->_domRange startOffset];
    *&self->_flags |= 2u;
  }

  else
  {
    v14 = 0;
  }

  if ([(DOMRange *)self->_domRange endContainer]!= a3)
  {
    goto LABEL_13;
  }

  v16 = [(DOMRange *)self->_domRange endOffset];
  v15 = 1;
LABEL_15:
  if ([(NSHTMLReader *)self _enterElement:a3 tag:@"TBODY" display:@"table-row-group" depth:a4 embedded:1])
  {
    v17 = [(NSMutableAttributedString *)self->_attrStr length];
    if ([(NSHTMLReader *)self _processElement:a3 tag:@"TBODY" display:@"table-row-group" depth:a4])
    {
      v24 = v17;
      v18 = 0;
      do
      {
        if (v10 == v18)
        {
          break;
        }

        if (v14 == v18 && v13)
        {
          self->_domRangeStartIndex = [(NSMutableAttributedString *)self->_attrStr length];
        }

        v20 = v14 > v18 && v13;
        if (v16 <= v18)
        {
          v21 = v15;
        }

        else
        {
          v21 = 0;
        }

        if (!v20 && (v21 & 1) == 0)
        {
          -[NSHTMLReader _traverseNode:depth:embedded:](self, "_traverseNode:depth:embedded:", [v7 objectAtIndex:v18], a4 + 1, 1);
        }

        v22 = ++v18 >= v16 ? v15 : 0;
        v23 = self->_flags;
        if (v22 == 1)
        {
          v23 = (*&v23 | 4);
          self->_flags = v23;
        }
      }

      while ((*&v23 & 4) == 0);
      [(NSHTMLReader *)self _exitElement:a3 tag:@"TBODY" display:@"table-row-group" depth:a4 startIndex:v24];
    }
  }

  if (v15)
  {
    *&self->_flags |= 4u;
  }
}

- (void)_adjustTrailingNewline
{
  v3 = [(NSMutableAttributedString *)self->_attrStr length];
  if (!v3 || ((v4 = [-[NSMutableAttributedString string](self->_attrStr "string")], (v4 & 0xFFFE) >> 1 != 4116) ? (v5 = v4 == 10) : (v5 = 1), !v5 ? (v6 = v4 == 13) : (v6 = 1), !v6 && v4 != 133))
  {
    if ((*&self->_flags & 0x20) != 0)
    {
      attrStr = self->_attrStr;

      [(NSMutableAttributedString *)attrStr replaceCharactersInRange:v3 withString:0, @"\n"];
    }
  }
}

- (BOOL)_sanitizeWebArchiveArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(a3);
      }

      v10 = *(*(&v12 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSHTMLReader *)self _sanitizeWebArchiveDictionary:v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSHTMLReader *)self _sanitizeWebArchiveArray:v10])
        {
          continue;
        }
      }

      v7 = 1;
    }

    v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);
  return v7;
}

- (BOOL)_sanitizeWebArchiveDictionary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKey:@"WebResourceResponse"];
  v6 = v5 != 0;
  if (v5)
  {
    [a3 removeObjectForKey:@"WebResourceResponse"];
  }

  v7 = [a3 allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [a3 objectForKey:*(*(&v14 + 1) + 8 * v11)];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && [(NSHTMLReader *)self _sanitizeWebArchiveDictionary:v12]|| (objc_opt_class(), (objc_opt_isKindOfClass()) && [(NSHTMLReader *)self _sanitizeWebArchiveArray:v12])
        {
          v6 = 1;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_createWebArchiveForData:(id)a3
{
  v5 = [(NSHTMLReader *)self _webArchiveClass];
  if (!a3)
  {
    return 0;
  }

  v6 = v5;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:1 format:0 error:0];
  if (!v7)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([(NSHTMLReader *)self _sanitizeWebArchiveDictionary:v7])
  {
    a3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:0];
    if (!a3)
    {
      return 0;
    }

    return [[v6 alloc] initWithData:a3];
  }

  result = [v7 objectForKey:@"WebMainResource"];
  if (result)
  {
    return [[v6 alloc] initWithData:a3];
  }

  return result;
}

- (void)_loadUsingWebKit
{
  v62 = *MEMORY[0x1E69E9840];
  if (self->_errorCode != -1)
  {
    return;
  }

  softLinkWebThreadLock();
  v4 = [(NSHTMLReader *)self _webViewClass];
  v5 = [(NSDictionary *)self->_options objectForKey:NSBaseURLDocumentOption];
  v49 = [(NSDictionary *)self->_options objectForKey:@"CharacterEncoding"];
  v6 = [(NSDictionary *)self->_options objectForKey:NSTextEncodingNameDocumentOption];
  v51 = [(NSDictionary *)self->_options objectForKey:NSWebResourceLoadDelegateDocumentOption];
  v50 = [(NSDictionary *)self->_options objectForKey:@"WebPolicyDelegate"];
  v7 = [(NSDictionary *)self->_options objectForKey:NSWebPreferencesDocumentOption];
  v53 = [(NSDictionary *)self->_options objectForKey:NSTimeoutDocumentOption];
  v52 = [(NSDictionary *)self->_options objectForKey:NSTextSizeMultiplierDocumentOption];
  v8 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  bzero(&v58, 0x201uLL);
  v9 = [(NSData *)self->_data length];
  self->_errorCode = 1;
  if (!v4)
  {
    return;
  }

  v10 = v9;
  data = self->_data;
  if (!data)
  {
    return;
  }

  v48 = v6;
  if (v10 >= 0x200)
  {
    v12 = 512;
  }

  else
  {
    v12 = v10;
  }

  [(NSData *)data getBytes:&v58 length:v12];
  if (v10)
  {
    v47 = v5;
    v13 = 0;
    v14 = MEMORY[0x1E69E9830];
    do
    {
      v15 = *(&v58 + v13);
      if (v15 < 0)
      {
        v16 = __maskrune(*(&v58 + v13), 0x4000uLL);
      }

      else
      {
        v16 = *(v14 + 4 * v15 + 60) & 0x4000;
      }

      if (v16)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v13;
      }

      ++v13;
    }

    while (v17 == 0x7FFFFFFFFFFFFFFFLL && v13 < v12);
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    if (v10 < 9)
    {
      v5 = v47;
    }

    else
    {
      v20 = v58 == 1768714338 && v59 == 29811;
      v5 = v47;
      if (v20 && v60 - 48 <= 9 && v61 - 48 < 0xA)
      {
        goto LABEL_103;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = v12 - v19;
  if (v21 < 0x41 || strncasecmp(&v58 + v19, "<?xml", 5uLL) || !strnstr(&v58 + v19, "<!DOCTYPE plist", v21) && !strnstr(&v58 + v19, "<!doctype plist", v21) || !strnstr(&v58 + v19, "<plist", v21))
  {
    v22 = 0;
    v23 = v48;
    goto LABEL_38;
  }

LABEL_103:
  v22 = [(NSHTMLReader *)self _createWebArchiveForData:self->_data];
  v23 = v48;
  if (!v22)
  {
    return;
  }

LABEL_38:
  v24 = [[v4 alloc] initWithFrame:{0.0, 0.0, 800.0, 600.0}];
  self->_webView = v24;
  if (v8)
  {
    v25 = v8;
  }

  else
  {
    v25 = *MEMORY[0x1E695D918];
  }

  v26 = [(WebView *)v24 mainFrame];
  v27 = [[NSHTMLWebDelegate alloc] initWithBaseURL:v5];
  self->_webDelegate = v27;
  if (v51)
  {
    v28 = v51;
  }

  else
  {
    v28 = v27;
  }

  if (v50)
  {
    v29 = v50;
  }

  else
  {
    v29 = v27;
  }

  [(WebView *)self->_webView setResourceLoadDelegate:v28];
  [(WebView *)self->_webView setFrameLoadDelegate:self->_webDelegate];
  [(WebView *)self->_webView setPolicyDelegate:v29];
  if (!v7)
  {
    v7 = [(NSHTMLReader *)self _webPreferences];
  }

  [(WebView *)self->_webView setPreferences:v7];
  [v7 setDefaultFontSize:{objc_msgSend(v7, "defaultFontSize")}];
  self->_standardFontFamily = [v7 standardFontFamily];
  self->_defaultFontSize = [v7 defaultFontSize];
  v30 = [v7 minimumFontSize];
  self->_minimumFontSize = v30;
  if (self->_defaultFontSize <= 0.0)
  {
    self->_defaultFontSize = 12.0;
  }

  if (v30 <= 0)
  {
    self->_minimumFontSize = 1.0;
  }

  if (!v23 && v49)
  {
    v31 = [v49 unsignedIntegerValue];
    if (!v31 || (v32 = CFStringConvertNSStringEncodingToEncoding(v31), v32 == -1))
    {
      v23 = 0;
    }

    else
    {
      v23 = CFStringConvertEncodingToIANACharSetName(v32);
    }
  }

  if (v52)
  {
    [v52 doubleValue];
    self->_textSizeMultiplier = textSizeMultiplier;
  }

  else
  {
    textSizeMultiplier = self->_textSizeMultiplier;
  }

  if (textSizeMultiplier <= 0.0)
  {
    self->_textSizeMultiplier = 1.0;
    textSizeMultiplier = 1.0;
  }

  self->_webViewTextSizeMultiplier = textSizeMultiplier;
  *&textSizeMultiplier = textSizeMultiplier;
  [(WebView *)self->_webView setTextSizeMultiplier:textSizeMultiplier];
  v34 = 0.1;
  if (v53)
  {
    [v53 doubleValue];
    if (v35 <= 0.0)
    {
      v36 = 60.0;
    }

    else
    {
      v36 = v35;
    }

    if (v36 < 1.0)
    {
      v34 = v36 / 10.0;
    }

    if (v22)
    {
      goto LABEL_71;
    }

LABEL_73:
    -[WebFrame loadData:MIMEType:textEncodingName:baseURL:](v26, "loadData:MIMEType:textEncodingName:baseURL:", self->_data, @"text/html", v23, [v5 absoluteURL]);
    goto LABEL_74;
  }

  v36 = 60.0;
  if (!v22)
  {
    goto LABEL_73;
  }

LABEL_71:
  [(WebFrame *)v26 loadArchive:v22];

LABEL_74:
  v37 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v36];
  if ((softLinkWebThreadIsLocked() & 1) == 0)
  {
    [(NSHTMLReader *)a2 _loadUsingWebKit];
  }

  v38 = 10.0;
  do
  {
    if ([self->_webDelegate loadDidFinish])
    {
      break;
    }

    CFRunLoopRunInMode(v25, v34 * 10.0, 1u);
    softLinkWebThreadLock();
    if ((softLinkWebThreadIsLocked() & 1) == 0)
    {
      [(NSHTMLReader *)a2 _loadUsingWebKit];
    }

    [v37 timeIntervalSinceNow];
  }

  while (v38 >= v34);
  [(WebFrame *)v26 stopLoading];
  if ([self->_webDelegate loadDidSucceed])
  {
    v39 = [(WebFrame *)v26 dataSource];
    self->_dataSource = v39;
    if (v39)
    {
      v40 = [(WebDataSource *)v39 representation];
      if (v40)
      {
        v41 = v40;
        if (objc_opt_respondsToSelector())
        {
          v42 = [v41 DOMDocument];
          self->_document = v42;
          if (v42)
          {
            self->_errorCode = 0;
            [(NSHTMLReader *)self _parseNode:v42];
            if (self->_thumbnailLimit >= 1 && [(NSMutableAttributedString *)self->_attrStr length]> self->_thumbnailLimit)
            {
              [(NSMutableAttributedString *)self->_attrStr deleteCharactersInRange:?];
            }

            [(NSHTMLReader *)self _adjustTrailingNewline];
            if (objc_opt_respondsToSelector())
            {
              v43 = [(DOMDocument *)self->_document title];
              if (v43)
              {
                v44 = v43;
                if ([(NSString *)v43 length])
                {
                  [(NSMutableDictionary *)self->_documentAttrs setObject:v44 forKey:@"NSTitleDocumentAttribute"];
                }
              }
            }

            v45 = [(objc_class *)getNSColorClass_4() _disambiguated_due_to_CIImage_colorWithCGColor:[(WebFrame *)v26 _bodyBackgroundColor]];
            v56 = 0;
            v57 = 0;
            v54 = 0.0;
            v55 = 0;
            [v45 getRed:&v57 green:&v56 blue:&v55 alpha:&v54];
            if (v45)
            {
              v46 = v54;
              if (v54 > 0.0)
              {
                [(NSMutableDictionary *)self->_documentAttrs setObject:v45 forKey:@"BackgroundColor", v54];
              }
            }

            if (v5)
            {
              [(NSMutableDictionary *)self->_documentAttrs setObject:v5 forKey:@"BaseURL", v46];
            }
          }
        }
      }
    }
  }

  [(WebView *)self->_webView close];
  [(WebView *)self->_webView setResourceLoadDelegate:0];
  [(WebView *)self->_webView setFrameLoadDelegate:0];
  [(WebView *)self->_webView setPolicyDelegate:0];
  if (_NSRunWebKitOnAppKitThread == 1)
  {

    self->_webView = 0;
    self->_computedStylesForElements = 0;

    self->_specifiedStylesForElements = 0;
    self->_stringsForNodes = 0;

    self->_floatsForNodes = 0;
    self->_colorsForNodes = 0;

    self->_attributesForElements = 0;
    self->_elementIsBlockLevel = 0;
  }
}

- (void)_loadFromDOMRange
{
  if (self->_errorCode == -1)
  {
    v3 = [(DOMRange *)self->_domRange commonAncestorContainer];
    v4 = [(DOMRange *)self->_domRange startContainer];
    for (self->_domStartAncestors = objc_alloc_init(MEMORY[0x1E695DF70]); v4; v4 = [(DOMNode *)v4 parentNode])
    {
      [(NSMutableArray *)self->_domStartAncestors addObject:v4];
      if (v4 == v3)
      {
        break;
      }
    }

    v5 = [(DOMNode *)v3 ownerDocument];
    self->_document = v5;
    v6 = [(DOMDocument *)v5 webFrame];
    self->_dataSource = [(WebFrame *)v6 dataSource];
    v7 = [(WebFrame *)v6 webView];
    if (v7)
    {
      v8 = v7;
      v9 = [(WebView *)v7 preferences];
      [(WebView *)v8 textSizeMultiplier];
      v11 = v10;
      self->_textSizeMultiplier = v11;
      self->_webViewTextSizeMultiplier = v11;
      if (v9)
      {
        self->_standardFontFamily = [(WebPreferences *)v9 standardFontFamily];
        self->_defaultFontSize = [(WebPreferences *)v9 defaultFontSize];
        self->_minimumFontSize = [(WebPreferences *)v9 minimumFontSize];
      }
    }

    if (self->_textSizeMultiplier <= 0.0)
    {
      self->_textSizeMultiplier = 1.0;
    }

    if (self->_defaultFontSize <= 0.0)
    {
      self->_defaultFontSize = 12.0;
    }

    if (self->_minimumFontSize < 1.0)
    {
      self->_minimumFontSize = 1.0;
    }

    if (self->_document)
    {
      if (self->_dataSource)
      {
        self->_domRangeStartIndex = 0;
        self->_errorCode = 0;
        [(NSHTMLReader *)self _parseNode:v3];
        domRangeStartIndex = self->_domRangeStartIndex;
        if (domRangeStartIndex >= 1 && domRangeStartIndex <= [(NSMutableAttributedString *)self->_attrStr length])
        {
          attrStr = self->_attrStr;
          v14 = self->_domRangeStartIndex;

          [(NSMutableAttributedString *)attrStr deleteCharactersInRange:0, v14];
        }
      }
    }
  }
}

- (void)_loadUsingWebKitOnMainThread
{
  [(NSMutableAttributedString *)self->_attrStr beginEditing];
  [(NSHTMLReader *)self _loadUsingWebKit];
  attrStr = self->_attrStr;

  [(NSMutableAttributedString *)attrStr endEditing];
}

- (void)_load
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = _NSRunWebKitOnAppKitThread;
  if (_NSRunWebKitOnAppKitThread == 254)
  {
    if (![v3 objectForKey:@"NSRunWebKitOnAppKitThread"])
    {
      _NSRunWebKitOnAppKitThread = 1;
      if (self->_domRange)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    v4 = [v3 BOOLForKey:@"NSRunWebKitOnAppKitThread"];
    _NSRunWebKitOnAppKitThread = v4;
  }

  if (self->_domRange)
  {
LABEL_5:

    [(NSHTMLReader *)self _loadFromDOMRange];
    return;
  }

  if (v4 != 1)
  {
    goto LABEL_12;
  }

LABEL_11:
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
LABEL_12:

    [(NSHTMLReader *)self _loadUsingWebKit];
    return;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(NSMutableAttributedString *)self->_attrStr _isEditing])
  {
    [(NSMutableAttributedString *)self->_attrStr endEditing];
    [(NSHTMLReader *)self performSelectorOnMainThread:sel__loadUsingWebKitOnMainThread withObject:0 waitUntilDone:1];
    attrStr = self->_attrStr;

    [(NSMutableAttributedString *)attrStr beginEditing];
  }

  else
  {

    [(NSHTMLReader *)self performSelectorOnMainThread:sel__loadUsingWebKit withObject:0 waitUntilDone:1];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSHTMLReader;
  [(NSHTMLReader *)&v3 dealloc];
}

- (NSHTMLReader)initWithData:(id)a3 options:(id)a4
{
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v19.receiver = self;
  v19.super_class = NSHTMLReader;
  v8 = [(NSHTMLReader *)&v19 init];
  if (v8)
  {
    *(v8 + 1) = objc_alloc_init(MEMORY[0x1E696AD40]);
    *(v8 + 2) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 3) = a3;
    *(v8 + 5) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:a4];
    *(v8 + 18) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 19) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 20) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 21) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 22) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 23) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 25) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 26) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 27) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 28) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 29) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 30) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 31) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 32) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 33) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 34) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v8 + 35) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v8 + 104) = xmmword_18E856800;
    *(v8 + 120) = xmmword_18E856810;
    *(v8 + 17) = 0x3FF0000000000000;
    *(v8 + 38) = 0;
    *(v8 + 39) = -1;
    *(v8 + 37) = 0;
    v8[332] = 1;
    v9 = [a4 objectForKey:@"NSIndexing"];
    if (v9)
    {
      v10 = [v9 integerValue];
    }

    else
    {
      if ([v7 objectForKey:@"NSHTMLIndexing"])
      {
        v11 = @"NSHTMLIndexing";
      }

      else
      {
        if (![v7 objectForKey:@"NSTextIndexing"])
        {
          v10 = *(v8 + 37);
LABEL_10:
          *(v8 + 82) = *(v8 + 82) & 0xFFFFFFF7 | (8 * (v10 > 0));
          v12 = [a4 objectForKey:@"NSThumbnail"];
          if (v12)
          {
            *(v8 + 38) = [v12 integerValue];
          }

          v13 = [a4 objectForKey:@"NSTesting"];
          if (v13)
          {
            v14 = [v13 integerValue] > 0;
          }

          else
          {
            if (![v7 objectForKey:@"NSHTMLTesting"])
            {
LABEL_20:
              [*(v8 + 2) setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithSize:", 612.0, 792.0), @"PaperSize"}];
              [*(v8 + 2) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", 90.0), @"LeftMargin"}];
              [*(v8 + 2) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", 90.0), @"RightMargin"}];
              [*(v8 + 2) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", 72.0), @"TopMargin"}];
              [*(v8 + 2) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", 72.0), @"BottomMargin"}];
              [*(v8 + 2) setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithUIEdgeInsets:", 72.0, 90.0, 72.0, 90.0), @"PaperMargin"}];
              v16 = *(v8 + 2);
              v17 = [MEMORY[0x1E696AD98] numberWithInteger:-1];
              [v16 setObject:v17 forKey:NSConvertedDocumentAttribute];
              return v8;
            }

            v14 = [v7 BOOLForKey:@"NSHTMLTesting"];
          }

          if (v14)
          {
            v15 = 16;
          }

          else
          {
            v15 = 0;
          }

          *(v8 + 82) = *(v8 + 82) & 0xFFFFFFEF | v15;
          goto LABEL_20;
        }

        v11 = @"NSTextIndexing";
      }

      v10 = [v7 integerForKey:v11];
    }

    *(v8 + 37) = v10;
    goto LABEL_10;
  }

  return v8;
}

- (NSHTMLReader)initWithPath:(id)a3 options:(id)a4
{
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:a3];

  return [(NSHTMLReader *)self initWithData:v6 options:a4];
}

- (NSHTMLReader)initWithDOMRange:(id)a3
{
  v4 = [(NSHTMLReader *)self initWithData:0 options:0];
  if (v4)
  {
    v4->_domRange = a3;
  }

  return v4;
}

- (id)attributedString
{
  [(NSHTMLReader *)self _load];
  if (self->_errorCode)
  {
    return 0;
  }

  v4 = self->_attrStr;

  return v4;
}

- (id)documentAttributes
{
  [(NSHTMLReader *)self _load];
  if (self->_errorCode)
  {
    return 0;
  }

  v4 = self->_documentAttrs;

  return v4;
}

- (void)setMutableAttributedString:(id)a3
{
  attrStr = self->_attrStr;
  if (attrStr != a3)
  {
    if (attrStr)
    {
      v6 = [(NSMutableAttributedString *)attrStr length];
      v7 = self->_attrStr;
      if (v6)
      {
        [a3 setAttributedString:v7];
        v7 = self->_attrStr;
      }
    }

    else
    {
      v7 = 0;
    }

    self->_attrStr = a3;
  }
}

@end