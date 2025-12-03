@interface UIKBRenderFactoryiPadFudge
- (BOOL)supportsInputTraits:(id)traits forKeyplane:(id)keyplane;
- (CGPoint)deleteKeyOffset:(unint64_t)offset;
- (CGPoint)dictationKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)dualStringKeyBottomTextOffset:(id)offset keyplane:(id)keyplane;
- (CGPoint)dualStringKeyBottomTextOffset:(unint64_t)offset;
- (CGPoint)dualStringKeyTopTextOffset:(id)offset keyplane:(id)keyplane;
- (CGPoint)dualStringKeyTopTextOffset:(unint64_t)offset;
- (CGPoint)iPadFudgeControlKeyOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)moreKeyOffset;
- (CGPoint)stringKeyOffset:(unint64_t)offset;
- (CGPoint)symbolImageControlKeyOffset;
- (CGSize)defaultVariantGeometrySize;
- (double)_row4ControlSegmentWidthRight;
- (double)dualStringKeyBottomFontSize:(unint64_t)size;
- (double)dualStringKeyTopFontSize:(unint64_t)size;
- (double)stringKeyFontSize:(unint64_t)size;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)displayContentsForKey:(id)key;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
- (unint64_t)_isFullHeightKeyFor:(id)for onKeyplane:(id)keyplane;
- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents;
@end

@implementation UIKBRenderFactoryiPadFudge

- (double)stringKeyFontSize:(unint64_t)size
{
  result = 18.5;
  if (size != 1)
  {
    result = 19.0;
  }

  if (size == 4)
  {
    return 22.0;
  }

  return result;
}

- (CGPoint)stringKeyOffset:(unint64_t)offset
{
  v3 = 2.0;
  if (offset != 1)
  {
    v3 = 1.0;
  }

  v4 = 0.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (CGPoint)symbolImageControlKeyOffset
{
  v2 = 17.0;
  v3 = 16.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)iPadFudgeControlKeyOffset
{
  preferStringKeycapOverImage = [(UIKBRenderFactory *)self preferStringKeycapOverImage];
  v3 = 17.0;
  if (preferStringKeycapOverImage)
  {
    v3 = 16.0;
  }

  v4 = 13.5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)deleteKeyOffset:(unint64_t)offset
{
  v3 = 13.5;
  if (offset != 1)
  {
    v3 = 14.5;
  }

  v4 = 16.5;
  result.y = v3;
  result.x = v4;
  return result;
}

- (CGPoint)internationalKeyOffset
{
  v2 = 17.0;
  v3 = 14.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)moreKeyOffset
{
  v2 = 16.0;
  v3 = 13.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dictationKeyOffset
{
  v2 = 17.0;
  v3 = 15.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dismissKeyOffset
{
  v2 = 17.0;
  v3 = 11.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)dualStringKeyBottomFontSize:(unint64_t)size
{
  result = 18.0;
  if (size == 1)
  {
    result = 15.0;
  }

  if (size == 4)
  {
    return 20.0;
  }

  return result;
}

- (CGPoint)dualStringKeyBottomTextOffset:(unint64_t)offset
{
  v3 = 12.0;
  if (offset == 1)
  {
    v3 = 9.0;
  }

  if (offset == 4)
  {
    v3 = 13.0;
  }

  v4 = 0.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (double)dualStringKeyTopFontSize:(unint64_t)size
{
  result = 17.0;
  if (size == 1)
  {
    result = 16.0;
  }

  if (size == 4)
  {
    return 20.0;
  }

  return result;
}

- (CGPoint)dualStringKeyTopTextOffset:(unint64_t)offset
{
  v3 = -9.0;
  if (offset != 1)
  {
    v3 = -13.0;
  }

  v4 = 0.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (CGSize)defaultVariantGeometrySize
{
  v2 = 63.0;
  v3 = 61.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)dualStringKeyTopTextOffset:(id)offset keyplane:(id)keyplane
{
  v5 = [(UIKBRenderFactoryiPadFudge *)self _isFullHeightKeyFor:offset onKeyplane:keyplane];

  [(UIKBRenderFactoryiPadFudge *)self dualStringKeyTopTextOffset:v5];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)dualStringKeyBottomTextOffset:(id)offset keyplane:(id)keyplane
{
  v5 = [(UIKBRenderFactoryiPadFudge *)self _isFullHeightKeyFor:offset onKeyplane:keyplane];

  [(UIKBRenderFactoryiPadFudge *)self dualStringKeyBottomTextOffset:v5];
  result.y = v7;
  result.x = v6;
  return result;
}

- (BOOL)supportsInputTraits:(id)traits forKeyplane:(id)keyplane
{
  if ([traits keyboardType] == 12)
  {
    return 0;
  }

  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions BOOLForPreferenceKey:@"GesturesEnabled"];

  return v7 ^ 1;
}

- (id)lightKeycapsFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsPadA-Keys";
  if (boldTextEnabled)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (boldTextEnabled)
  {
    v7 = @".SFCompact-Bold";
  }

  if (usesCompactKeycapsFont)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (id)lightKeycapsFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".KeycapsPadA-Keys";
  }

  return v2;
}

- (unint64_t)_isFullHeightKeyFor:(id)for onKeyplane:(id)keyplane
{
  forCopy = for;
  keyplaneCopy = keyplane;
  if ([forCopy dynamicLayout])
  {
    v7 = [keyplaneCopy subtreeWithType:3];

    rowSet = [v7 rowSet];
    subtrees = [rowSet subtrees];
    v10 = [subtrees count];
    displayRowHint = [forCopy displayRowHint];

    if (v10 <= displayRowHint)
    {
      v19 = 4;
    }

    else
    {
      rowSet2 = [v7 rowSet];
      subtrees2 = [rowSet2 subtrees];
      v14 = [subtrees2 objectAtIndex:{objc_msgSend(forCopy, "displayRowHint")}];

      properties = [v14 properties];
      v16 = [properties objectForKey:@"Height"];

      if (v16 && ([v16 doubleValue], v17 > 0.0) && (objc_msgSend(v16, "doubleValue"), v18 < 1.0))
      {
        v19 = 1;
      }

      else
      {
        v19 = 4;
      }
    }
  }

  else
  {
    [keyplaneCopy frame];
    v21 = v20;

    v22 = v21 / 5.0;
    [forCopy frame];
    v24 = 2;
    if (v23 > v22)
    {
      v24 = 4;
    }

    if (v23 < v22 * 0.8)
    {
      v19 = 1;
    }

    else
    {
      v19 = v24;
    }
  }

  return v19;
}

- (id)displayContentsForKey:(id)key
{
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = UIKBRenderFactoryiPadFudge;
  v5 = [(UIKBRenderFactoryiPad *)&v16 displayContentsForKey:keyCopy];
  if ([keyCopy displayType] == 23 || objc_msgSend(keyCopy, "interactionType") == 14)
  {
    overrideDisplayString = [keyCopy overrideDisplayString];
    if (overrideDisplayString)
    {
      [v5 setDisplayString:overrideDisplayString];
    }

    else
    {
      displayString = [keyCopy displayString];
      [v5 setDisplayString:displayString];
    }

    if (-[UIKBRenderFactory preferStringKeycapOverImage](self, "preferStringKeycapOverImage") && [keyCopy state] == 8)
    {
      [v5 setDisplayString:@"caps lock"];
    }
  }

  else if ([keyCopy displayType] == 7)
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    if ([renderingContext shiftState] == 1)
    {
      secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
      firstObject = [secondaryRepresentedStrings firstObject];
      representedString = [keyCopy representedString];
      v12 = [firstObject isEqualToString:representedString];

      if ((v12 & 1) == 0)
      {
        secondaryDisplayStrings = [v5 secondaryDisplayStrings];
        v14 = [secondaryDisplayStrings objectAtIndex:0];
        [v5 setDisplayString:v14];

        [v5 setSecondaryDisplayStrings:0];
      }
    }

    else
    {
    }
  }

  [(UIKBRenderFactory *)self applyBoldTextForContent:v5 withKey:keyCopy];
  if ([(UIKBRenderFactory *)self preferStringKeycapOverImage])
  {
    [v5 setStringKeycapOverImage:{objc_msgSend(v5, "forceImageKeycap") ^ 1}];
  }

  return v5;
}

- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents
{
  geometryCopy = geometry;
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = UIKBRenderFactoryiPadFudge;
  [(UIKBRenderFactoryiPad *)&v10 _customizeGeometry:geometryCopy forKey:keyCopy contents:contents];
  if ([keyCopy displayType] == 23 || objc_msgSend(keyCopy, "displayType") == 3 || objc_msgSend(keyCopy, "displayType") == 21 || objc_msgSend(keyCopy, "displayType") == 18 || objc_msgSend(keyCopy, "displayType") == 5)
  {
    [keyCopy paddedFrame];
    [geometryCopy setSymbolFrame:?];
  }
}

- (double)_row4ControlSegmentWidthRight
{
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  v3 = dbl_18A67EF90[[renderingContext keyboardType] == 126];

  return v3;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v118[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v117.receiver = self;
  v117.super_class = UIKBRenderFactoryiPadFudge;
  v8 = [(UIKBRenderFactoryiPad *)&v117 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  v9 = [(UIKBRenderFactoryiPadFudge *)self _isFullHeightKeyFor:keyCopy onKeyplane:keyplaneCopy];
  interactionType = [keyCopy interactionType];
  if ((![keyCopy displayType] || objc_msgSend(keyCopy, "displayType") == 8) && interactionType != 9)
  {
    [(UIKBRenderFactoryiPadFudge *)self stringKeyFontSize:v9];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v12 = v11;
    symbolStyle = [v8 symbolStyle];
    [symbolStyle setFontSize:v12];

    [(UIKBRenderFactory *)self scale];
    if (v14 == 2.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = *MEMORY[0x1E695EFF8];
    }

    if (v14 == 2.0)
    {
      v16 = 0.5;
    }

    else
    {
      v16 = *(MEMORY[0x1E695EFF8] + 8);
    }

    goto LABEL_46;
  }

  if ([keyCopy displayType] == 7)
  {
    symbolStyle2 = [v8 symbolStyle];
    symbolStyle13 = [symbolStyle2 copy];

    [(UIKBRenderFactoryiPadFudge *)self dualStringKeyBottomFontSize:v9];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v20 = v19;
    symbolStyle3 = [v8 symbolStyle];
    [symbolStyle3 setFontSize:v20];

    [(UIKBRenderFactoryiPadFudge *)self dualStringKeyBottomTextOffset:v9];
    [(UIKBRenderFactory *)self RivenPointFactor:?];
    v23 = v22;
    v25 = v24;
    symbolStyle4 = [v8 symbolStyle];
    [symbolStyle4 setTextOffset:{v23, v25}];

    [(UIKBRenderFactoryiPadFudge *)self dualStringKeyTopFontSize:v9];
    [(UIKBRenderFactory *)self RivenFactor:?];
    [symbolStyle13 setFontSize:?];
    [(UIKBRenderFactoryiPadFudge *)self dualStringKeyTopTextOffset:v9];
    [(UIKBRenderFactory *)self RivenPointFactor:?];
    [symbolStyle13 setTextOffset:?];
    if (symbolStyle13)
    {
      v118[0] = symbolStyle13;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:1];
      [v8 setSecondarySymbolStyles:v27];
    }

    else
    {
      [v8 setSecondarySymbolStyles:0];
    }

    if ([keyCopy displayTypeHint] == 10 && objc_msgSend(keyCopy, "state") == 4)
    {
      symbolStyle5 = [v8 symbolStyle];
      [symbolStyle5 textOffset];
      v58 = v57;
      symbolStyle6 = [v8 symbolStyle];
      [symbolStyle6 setTextOffset:{v58, 0.0}];

      [symbolStyle13 textOffset];
      [symbolStyle13 setTextOffset:?];
    }

    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    shiftState = [renderingContext shiftState];

    if (shiftState != 4)
    {
      renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
      shiftState2 = [renderingContext2 shiftState];

      if (shiftState2 == 1)
      {
        if ([keyCopy displayRowHint] == 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = 4;
        }

        [(UIKBRenderFactoryiPadFudge *)self stringKeyFontSize:v64];
        [(UIKBRenderFactory *)self RivenFactor:?];
        v66 = v65;
        [(UIKBRenderFactoryiPadFudge *)self stringKeyOffset:v64];
        [(UIKBRenderFactory *)self RivenPointFactor:?];
        v68 = v67;
        v70 = v69;
        symbolStyle7 = [v8 symbolStyle];
        [symbolStyle7 setFontSize:v66];

        symbolStyle8 = [v8 symbolStyle];
        [symbolStyle8 setTextOffset:{v68, v70}];

        [v8 setSecondarySymbolStyles:0];
      }
    }

    goto LABEL_47;
  }

  if ([keyCopy displayType] == 3)
  {
    symbolStyle9 = [v8 symbolStyle];
    [symbolStyle9 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPadFudge *)self symbolImageControlKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v30 = v29;
    symbolStyle10 = [v8 symbolStyle];
    [symbolStyle10 setFontSizeForSymbolImage:v30];

    [(UIKBRenderFactoryiPadFudge *)self deleteKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v33 = v32;
    symbolStyle11 = [v8 symbolStyle];
    [symbolStyle11 setFontSize:v33];

    symbolStyle12 = [v8 symbolStyle];
    [symbolStyle12 setAnchorCorner:8];

    [(UIKBRenderFactoryiPadFudge *)self deleteKeyOffset:v9];
LABEL_44:
    selfCopy2 = self;
LABEL_45:
    [(UIKBRenderFactory *)selfCopy2 RivenPointFactor:v36, v37];
    v15 = v94;
    v16 = v95;
LABEL_46:
    symbolStyle13 = [v8 symbolStyle];
    [symbolStyle13 setTextOffset:{v15, v16}];
LABEL_47:

    goto LABEL_48;
  }

  if ([keyCopy displayType] == 21)
  {
    [(UIKBRenderFactoryiPadFudge *)self controlKeyFontSize];
    v39 = v38;
    symbolStyle14 = [v8 symbolStyle];
    [symbolStyle14 setAnchorCorner:8];

    [(UIKBRenderFactoryiPadFudge *)self iPadFudgeControlKeyOffset];
    v42 = v41;
    v44 = v43;
    symbolStyle15 = [v8 symbolStyle];
    usesSymbolImage = [symbolStyle15 usesSymbolImage];

    if (usesSymbolImage)
    {
      [(UIKBRenderFactoryiPadFudge *)self symbolImageControlKeyFontSize];
      v48 = v47;
      symbolStyle16 = [v8 symbolStyle];
      [symbolStyle16 setFontSizeForSymbolImage:v48];

      [(UIKBRenderFactoryiPadFudge *)self symbolImageControlKeyOffset];
      v42 = v50;
      v44 = v51;
    }

    [(UIKBRenderFactory *)self RivenFactor:v39];
    v53 = v52;
    symbolStyle17 = [v8 symbolStyle];
    [symbolStyle17 setFontSize:v53];

    selfCopy2 = self;
    v36 = v42;
    v37 = v44;
    goto LABEL_45;
  }

  if ([keyCopy displayType] == 23)
  {
    symbolStyle18 = [v8 symbolStyle];
    [symbolStyle18 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPadFudge *)self symbolImageControlKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v75 = v74;
    symbolStyle19 = [v8 symbolStyle];
    [symbolStyle19 setFontSizeForSymbolImage:v75];

    if ([(UIKBRenderFactoryiPad *)self _onLeftSide:keyCopy onKeyplane:keyplaneCopy])
    {
      v77 = 4;
    }

    else
    {
      v77 = 8;
    }

    symbolStyle20 = [v8 symbolStyle];
    [symbolStyle20 setAnchorCorner:v77];

    goto LABEL_34;
  }

  if (interactionType == 9)
  {
    symbolStyle21 = [v8 symbolStyle];
    [symbolStyle21 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPadFudge *)self symbolImageControlKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v81 = v80;
    symbolStyle22 = [v8 symbolStyle];
    [symbolStyle22 setFontSizeForSymbolImage:v81];

    symbolStyle23 = [v8 symbolStyle];
    [symbolStyle23 setAnchorCorner:4];

    [(UIKBRenderFactoryiPadFudge *)self internationalKeyOffset];
    goto LABEL_44;
  }

  if ([keyCopy displayType] == 4)
  {
    symbolStyle24 = [v8 symbolStyle];
    [symbolStyle24 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPadFudge *)self symbolImageControlKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v86 = v85;
    symbolStyle25 = [v8 symbolStyle];
    [symbolStyle25 setFontSizeForSymbolImage:v86];

    symbolStyle26 = [v8 symbolStyle];
    [symbolStyle26 setAnchorCorner:4];

    [(UIKBRenderFactoryiPadFudge *)self dictationKeyOffset];
    goto LABEL_44;
  }

  if ([keyCopy displayType] == 18)
  {
    [(UIKBRenderFactoryiPadFudge *)self controlKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v90 = v89;
    symbolStyle27 = [v8 symbolStyle];
    [symbolStyle27 setFontSize:v90];

    if ([(UIKBRenderFactoryiPad *)self _onLeftSide:keyCopy onKeyplane:keyplaneCopy])
    {
      v92 = 4;
    }

    else
    {
      v92 = 8;
    }

    symbolStyle28 = [v8 symbolStyle];
    [symbolStyle28 setAnchorCorner:v92];

    [(UIKBRenderFactoryiPadFudge *)self moreKeyOffset];
    goto LABEL_44;
  }

  if ([keyCopy displayType] == 26 || objc_msgSend(keyCopy, "displayType") == 51 || objc_msgSend(keyCopy, "interactionType") == 17 || objc_msgSend(keyCopy, "interactionType") == 12)
  {
    symbolStyle29 = [v8 symbolStyle];
    [symbolStyle29 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPadFudge *)self symbolImageControlKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v103 = v102;
    symbolStyle30 = [v8 symbolStyle];
    [symbolStyle30 setFontSizeForSymbolImage:v103];

    [(UIKBRenderFactoryiPadFudge *)self controlKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v106 = v105;
    symbolStyle31 = [v8 symbolStyle];
    [symbolStyle31 setFontSize:v106];

    symbolStyle32 = [v8 symbolStyle];
    [symbolStyle32 setAnchorCorner:4];

LABEL_34:
    [(UIKBRenderFactoryiPadFudge *)self iPadFudgeControlKeyOffset];
    goto LABEL_44;
  }

  if ([keyCopy displayType] == 5 || objc_msgSend(keyCopy, "displayType") == 53)
  {
    v109 = [keyCopy displayType] == 5;
    symbolStyle33 = [v8 symbolStyle];
    [symbolStyle33 setUsesSymbolImage:v109];

    [(UIKBRenderFactoryiPadFudge *)self symbolImageControlKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v112 = v111;
    symbolStyle34 = [v8 symbolStyle];
    [symbolStyle34 setFontSizeForSymbolImage:v112];

    symbolStyle35 = [v8 symbolStyle];
    [symbolStyle35 setAnchorCorner:8];

    [(UIKBRenderFactoryiPadFudge *)self dismissKeyOffset];
    goto LABEL_44;
  }

  if ([keyCopy displayType] == 27)
  {
    [(UIKBRenderFactoryiPadFudge *)self deleteKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v116 = v115;
    symbolStyle13 = [v8 symbolStyle];
    [symbolStyle13 setFontSize:v116];
    goto LABEL_47;
  }

LABEL_48:
  symbolStyle36 = [v8 symbolStyle];
  v97 = 1.0;
  if (([symbolStyle36 usesSymbolImage] & 1) == 0)
  {
    [(UIKBRenderFactory *)self RivenFactor:100.0];
    v97 = v98 / 100.0;
  }

  symbolStyle37 = [v8 symbolStyle];
  [symbolStyle37 setImageScale:v97];

  return v8;
}

@end