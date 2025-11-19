@interface TSWPStoragePasteRules
- (void)addActionFlag:(int)a3;
- (void)applyParagraph:(int)a3 toCharIndex:(unint64_t)a4 ioTransaction:(void *)a5;
- (void)dealloc;
- (void)didPasteWithIOTransaction:(void *)a3 atDestRange:(_NSRange)a4;
- (void)mapCharacterStyleProperties:(id)a3 toRange:(_NSRange)a4 ioTransaction:(void *)a5;
- (void)mapCharacterStyles:(int)a3 toRange:(_NSRange)a4 ioTransaction:(void *)a5;
- (void)setupFlagsForPastingSrcStorage:(id)a3 intoDestStorage:(id)a4 atDestRange:(_NSRange)a5;
- (void)willPasteStorage:(id)a3 intoDestStorage:(id)a4 atDestRange:(_NSRange)a5;
@end

@implementation TSWPStoragePasteRules

- (void)dealloc
{
  for (i = 0; i != 4; ++i)
  {
  }

  v4.receiver = self;
  v4.super_class = TSWPStoragePasteRules;
  [(TSWPStoragePasteRules *)&v4 dealloc];
}

- (void)addActionFlag:(int)a3
{
  lastFlag = self->_lastFlag;
  if (lastFlag < 4 || (v6 = [MEMORY[0x277D6C290] currentHandler], v7 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPStoragePasteRules addActionFlag:]"), objc_msgSend(v6, "handleFailureInFunction:file:lineNumber:description:", v7, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"), 45, @"addActionFlag: bad action flag count."), lastFlag = self->_lastFlag, lastFlag <= 3))
  {
    self->_actionFlags[lastFlag] = a3;
    self->_lastFlag = lastFlag + 1;
  }
}

- (void)applyParagraph:(int)a3 toCharIndex:(unint64_t)a4 ioTransaction:(void *)a5
{
  v8 = self + 48 * a3;
  v10 = *(v8 + 12);
  v9 = v8 + 96;
  [(TSWPStorage *)self->_destStorage setParagraphStyle:v10 forCharRange:a4 undoTransaction:1, a5];
  [(TSWPStorage *)self->_destStorage setListStyle:*(v9 + 3) forCharRange:a4 undoTransaction:1, a5];
  [(TSWPStorage *)self->_destStorage setParagraphFlags:*(v9 + 17) level:*(v9 + 16) forCharRange:a4 undoTransaction:1, a5];
  [(TSWPStorage *)self->_destStorage setListStart:*(v9 + 9) forCharRange:a4 undoTransaction:0, a5];
  [(TSWPStorage *)self->_destStorage setParagraphWritingDirection:*(v9 + 10) forCharRange:a4 undoTransaction:0, a5];
  if ([(TSWPStorage *)self->_destStorage supportsColumnStyles]&& self->_sourceColumnStyleCount >= 2)
  {
    destStorage = self->_destStorage;
    v12 = *(v9 + 2);

    [(TSWPStorage *)destStorage setColumnStyle:v12 forCharRange:a4 undoTransaction:1, a5];
  }
}

- (void)mapCharacterStyleProperties:(id)a3 toRange:(_NSRange)a4 ioTransaction:(void *)a5
{
  length = a4.length;
  location = a4.location;
  v15 = [(TSWPStorage *)self->_destStorage stylesheet];
  v9 = [(TSWPStorage *)self->_destStorage length];
  if (location + length >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = location + length;
  }

  if (location < v10)
  {
    v11 = location;
    do
    {
      v12 = [TSSPropertyMap propertyMapWithPropertyMap:a3];
      v13 = [(TSWPStorage *)self->_destStorage characterStyleAtCharIndex:v11 effectiveRange:&v17];
      v18.location = location;
      v18.length = length;
      v14 = NSIntersectionRange(v18, v17);
      if (v14.length)
      {
        -[TSWPStorage setCharacterStyle:range:undoTransaction:](self->_destStorage, "setCharacterStyle:range:undoTransaction:", [v15 variationOfCharacterStyle:v13 paragraphStyle:-[TSWPStorage paragraphStyleAtCharIndex:effectiveRange:](self->_destStorage propertyMap:{"paragraphStyleAtCharIndex:effectiveRange:", v11, 0), v12}], v14.location, v14.length, a5);
      }

      v11 = v17.length + v17.location;
    }

    while (v17.length + v17.location < v10);
  }
}

- (void)mapCharacterStyles:(int)a3 toRange:(_NSRange)a4 ioTransaction:(void *)a5
{
  if (self->_paragraphs[a3].parStyle)
  {
    length = a4.length;
    location = a4.location;
    v9 = +[TSSPropertyMap propertyMap];
    [v9 filterWithProperties:{+[TSWPCharacterStyle properties](TSWPCharacterStyle, "properties")}];

    [(TSWPStoragePasteRules *)self mapCharacterStyleProperties:v9 toRange:location ioTransaction:length, a5];
  }
}

- (void)setupFlagsForPastingSrcStorage:(id)a3 intoDestStorage:(id)a4 atDestRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  self->_flags = 0;
  self->_destStorage = a4;
  v10 = [a3 length];
  self->_srcLeadRange.location = [a3 textRangeForParagraphAtCharIndex:0];
  self->_srcLeadRange.length = v11;
  self->_srcTrailRange.location = [a3 textRangeForParagraphAtCharIndex:v10];
  self->_srcTrailRange.length = v12;
  v13 = [a4 textRangeForParagraphAtCharIndex:location];
  v15 = v14;
  v43 = location + length;
  v42 = [a4 textRangeForParagraphAtCharIndex:?];
  v17 = v16;
  self->_sourceColumnStyleCount = [a3 columnStyleCount];
  self->_sourceSectionCount = [a3 sectionCount];
  if (location == v13 && length == v15)
  {
    v18 = 8;
  }

  else if (v15 == 1)
  {
    if (IsParagraphBreakingCharacter([a4 characterAtIndex:v13]))
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  flags = self->_flags | v18;
  self->_flags = flags;
  if (v10 == 1)
  {
    v20 = 16 * ([a3 attachmentOrFootnoteAtCharIndex:0] != 0);
    flags = self->_flags;
  }

  else
  {
    v20 = 0;
  }

  if (location == v13)
  {
    ++v20;
  }

  v21 = v20 | flags;
  if (self->_srcLeadRange.length == self->_srcTrailRange.length && self->_srcLeadRange.location == self->_srcTrailRange.location)
  {
    v23 = 0;
  }

  else
  {
    v23 = 64;
  }

  if (v15 == v17 && v13 == v42)
  {
    v25 = 0;
  }

  else
  {
    v25 = 4;
  }

  v26 = v25 | v21 | v23;
  self->_flags = v26;
  if (v10)
  {
    if (IsParagraphBreakingCharacter([a3 characterAtIndex:v10 - 1]))
    {
      v27 = 32;
    }

    else
    {
      v27 = 0;
    }

    v26 = self->_flags;
  }

  else
  {
    v27 = 0;
  }

  v28 = v26 | v27;
  self->_flags = v28;
  if (length)
  {
    v29 = location + length;
    if (IsParagraphBreakingCharacter([a4 characterAtIndex:v43 - 1]))
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    v28 = self->_flags;
  }

  else
  {
    v30 = 0;
    v29 = location + length;
  }

  v31 = v28 | v30;
  self->_flags = v31;
  if ((v28 & 1) == 0)
  {
    v32 = location;
    while (v32 > v13)
    {
      if (([objc_msgSend(a4 attachmentOrFootnoteAtCharIndex:{--v32), "isAnchored"}] & 1) == 0)
      {
        v31 = self->_flags;
        goto LABEL_44;
      }
    }

    v31 = self->_flags | 1;
    self->_flags = v31;
  }

LABEL_44:
  v33 = (~v31 & 0x22) != 0 && (v31 & 0x44) != 0;
  self->_mapDestTrailCS = v33;
  self->_paragraphs[0].parStyle = [a3 paragraphStyleAtCharIndex:0 effectiveRange:0];
  self->_paragraphs[0].columnStyle = [a3 columnStyleAtCharIndex:0 effectiveRange:0];
  self->_paragraphs[0].section = [a3 sectionAtCharIndex:0 effectiveRange:0];
  self->_paragraphs[0].listStyle = [a3 listStyleAtCharIndex:0 effectiveRange:0];
  v34 = [a3 paragraphLevelAtCharIndex:0];
  if (v34 >= 0x10000)
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LOWORD(v34) = -1;
  }

  self->_paragraphs[0].parData.var0.var1.level = v34;
  self->_paragraphs[0].parData.var0.var1.flags = [a3 paragraphFlagsAtCharIndex:0];
  v35 = [a3 listStartAtCharIndex:0];
  if (HIDWORD(v35))
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LODWORD(v35) = -1;
  }

  self->_paragraphs[0].parStartData.var0.var0.listStart = v35;
  self->_paragraphs[0].parBidiData.var0.var0.listStart = [a3 writingDirectionForParagraphAtCharIndex:0];
  self->_paragraphs[1].parStyle = [a3 paragraphStyleAtCharIndex:v10 effectiveRange:0];
  self->_paragraphs[1].columnStyle = [a3 columnStyleAtCharIndex:v10 effectiveRange:0];
  self->_paragraphs[1].section = [a3 sectionAtCharIndex:v10 effectiveRange:0];
  self->_paragraphs[1].listStyle = [a3 listStyleAtCharIndex:v10 effectiveRange:0];
  v36 = [a3 paragraphLevelAtCharIndex:v10];
  if (v36 >= 0x10000)
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LOWORD(v36) = -1;
  }

  self->_paragraphs[1].parData.var0.var1.level = v36;
  self->_paragraphs[1].parData.var0.var1.flags = [a3 paragraphFlagsAtCharIndex:v10];
  v37 = [a3 listStartAtCharIndex:v10];
  if (HIDWORD(v37))
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LODWORD(v37) = -1;
  }

  self->_paragraphs[1].parStartData.var0.var0.listStart = v37;
  self->_paragraphs[1].parBidiData.var0.var0.listStart = [a3 writingDirectionForParagraphAtCharIndex:v10];
  self->_paragraphs[2].parStyle = [a4 paragraphStyleAtCharIndex:location effectiveRange:0];
  self->_paragraphs[2].columnStyle = [a4 columnStyleAtCharIndex:location effectiveRange:0];
  self->_paragraphs[2].section = [a4 sectionAtCharIndex:location effectiveRange:0];
  self->_paragraphs[2].listStyle = [a4 listStyleAtCharIndex:location effectiveRange:0];
  v38 = [a4 paragraphLevelAtCharIndex:location];
  if (v38 >= 0x10000)
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LOWORD(v38) = -1;
  }

  self->_paragraphs[2].parData.var0.var1.level = v38;
  self->_paragraphs[2].parData.var0.var1.flags = [a4 paragraphFlagsAtCharIndex:location];
  v39 = [a4 listStartAtCharIndex:location];
  if (HIDWORD(v39))
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LODWORD(v39) = -1;
  }

  self->_paragraphs[2].parStartData.var0.var0.listStart = v39;
  self->_paragraphs[2].parBidiData.var0.var0.listStart = [a4 writingDirectionForParagraphAtCharIndex:location];
  self->_paragraphs[3].parStyle = [a4 paragraphStyleAtCharIndex:v29 effectiveRange:0];
  self->_paragraphs[3].columnStyle = [a4 columnStyleAtCharIndex:v29 effectiveRange:0];
  self->_paragraphs[3].section = [a4 sectionAtCharIndex:v29 effectiveRange:0];
  self->_paragraphs[3].listStyle = [a4 listStyleAtCharIndex:v29 effectiveRange:0];
  v40 = [a4 paragraphLevelAtCharIndex:v29];
  if (v40 >= 0x10000)
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LOWORD(v40) = -1;
  }

  self->_paragraphs[3].parData.var0.var1.level = v40;
  self->_paragraphs[3].parData.var0.var1.flags = [a4 paragraphFlagsAtCharIndex:v29];
  v41 = [a4 listStartAtCharIndex:v29];
  if (HIDWORD(v41))
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LODWORD(v41) = -1;
  }

  self->_paragraphs[3].parStartData.var0.var0.listStart = v41;
  self->_paragraphs[3].parBidiData.var0.var0.listStart = [a4 writingDirectionForParagraphAtCharIndex:v29];
}

- (void)willPasteStorage:(id)a3 intoDestStorage:(id)a4 atDestRange:(_NSRange)a5
{
  [(TSWPStoragePasteRules *)self setupFlagsForPastingSrcStorage:a3 intoDestStorage:a4 atDestRange:a5.location, a5.length];
  flags = self->_flags;
  if ((flags & 8) != 0)
  {
    if ((flags & 0x10) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_7;
  }

  if ((self->_flags & 0x41) <= 0x3F)
  {
    [(TSWPStoragePasteRules *)self addActionFlag:1];
    v7 = 6;
LABEL_7:
    [(TSWPStoragePasteRules *)self addActionFlag:v7];
    goto LABEL_8;
  }

  if ((self->_flags & 0x41) == 0x40)
  {
    [(TSWPStoragePasteRules *)self addActionFlag:1];
    [(TSWPStoragePasteRules *)self addActionFlag:6];
    if (self->_srcTrailRange.length)
    {
      [(TSWPStoragePasteRules *)self addActionFlag:4];
    }

    if (self->_mapDestTrailCS)
    {
LABEL_21:
      v7 = 5;
      goto LABEL_7;
    }
  }

  else
  {
    [(TSWPStoragePasteRules *)self addActionFlag:3];
    if (self->_srcTrailRange.length)
    {
      [(TSWPStoragePasteRules *)self addActionFlag:4];
    }

    if (self->_mapDestTrailCS)
    {
      goto LABEL_21;
    }
  }

LABEL_8:
  if ((~self->_flags & 0x22) == 0)
  {

    [(TSWPStoragePasteRules *)self addActionFlag:2];
  }
}

- (void)didPasteWithIOTransaction:(void *)a3 atDestRange:(_NSRange)a4
{
  self->_srcLeadRange.location += a4.location;
  self->_srcTrailRange.location += a4.location;
  v6 = 12;
  while (1)
  {
    v7 = *(&self->super.isa + v6);
    if (v7 <= 3)
    {
      break;
    }

    switch(v7)
    {
      case 4:
        location = self->_srcTrailRange.location;
        v9 = self;
        v10 = 1;
        goto LABEL_14;
      case 5:
        v15 = [(TSWPStorage *)self->_destStorage textRangeForParagraphAtCharIndex:self->_srcTrailRange.length + self->_srcTrailRange.location];
        v11 = self->_srcTrailRange.length + self->_srcTrailRange.location;
        length = v15 + v16 - v11;
        if (v15 + v16 != v11)
        {
          v13 = self;
          v14 = 3;
          goto LABEL_17;
        }

        break;
      case 6:
        v11 = self->_srcLeadRange.location;
        length = self->_srcLeadRange.length;
        v13 = self;
        v14 = 0;
LABEL_17:
        [(TSWPStoragePasteRules *)v13 mapCharacterStyles:v14 toRange:v11 ioTransaction:length, a3];
        break;
    }

LABEL_18:
    v6 += 4;
    if (v6 == 28)
    {
      return;
    }
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      location = self->_srcTrailRange.length + self->_srcTrailRange.location;
      v9 = self;
      v10 = 3;
    }

    else
    {
      location = self->_srcLeadRange.location;
      v9 = self;
      v10 = 0;
    }

    goto LABEL_14;
  }

  if (v7 == 1)
  {
    location = self->_srcLeadRange.location;
    v9 = self;
    v10 = 2;
LABEL_14:
    [(TSWPStoragePasteRules *)v9 applyParagraph:v10 toCharIndex:location ioTransaction:a3];
    goto LABEL_18;
  }

  if (v7)
  {
    goto LABEL_18;
  }
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.1()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.2()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.3()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.4()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.5()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.6()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.7()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.8()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

@end