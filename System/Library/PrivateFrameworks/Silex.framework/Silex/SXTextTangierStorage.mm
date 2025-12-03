@interface SXTextTangierStorage
- (SXTextTangierStorage)initWithContext:(id)context stylesheet:(id)stylesheet storageKind:(int)kind string:(id)string locale:(id)locale;
- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (void)dealloc;
- (void)setRangedExclusionPaths:(id)paths;
@end

@implementation SXTextTangierStorage

- (SXTextTangierStorage)initWithContext:(id)context stylesheet:(id)stylesheet storageKind:(int)kind string:(id)string locale:(id)locale
{
  v9 = *&kind;
  localeCopy = locale;
  v14 = MEMORY[0x1E69D5718];
  stringCopy = string;
  stylesheetCopy = stylesheet;
  contextCopy = context;
  v18 = [[v14 alloc] initWithContext:contextCopy];
  v19 = [MEMORY[0x1E69D5710] defaultStyleWithContext:contextCopy];
  v24.receiver = self;
  v24.super_class = SXTextTangierStorage;
  v20 = [(TSWPStorage *)&v24 initWithContext:contextCopy string:stringCopy kind:v9 stylesheet:stylesheetCopy paragraphStyle:v18 listStyle:v19 section:0 columnStyle:0];

  if (v20)
  {
    objc_storeStrong(&v20->_locale, locale);
    v21 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    tokenizersCache = v20->_tokenizersCache;
    v20->_tokenizersCache = v21;

    v20->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v20;
}

- (void)setRangedExclusionPaths:(id)paths
{
  v65 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  objc_storeStrong(&self->_rangedExclusionPaths, paths);
  attachments = [(SXTextTangierStorage *)self attachments];

  if (!attachments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(SXTextTangierStorage *)self setAttachments:v6];
  }

  attachments2 = [(SXTextTangierStorage *)self attachments];
  v8 = [attachments2 count];

  if (v8 - 1 >= 0)
  {
    do
    {
      --v8;
      attachments3 = [(SXTextTangierStorage *)self attachments];
      v10 = [attachments3 objectAtIndex:v8];

      objc_opt_class();
      drawable = [v10 drawable];
      v12 = TSUDynamicCast();

      if (v12)
      {
        actualRange = [v12 actualRange];
        [(TSWPStorage *)self deleteRange:actualRange undoTransaction:v14, 0];
      }
    }

    while (v8 > 0);
  }

  attachments4 = [(SXTextTangierStorage *)self attachments];
  [attachments4 removeAllObjects];

  rangedExclusionPaths = [(SXTextTangierStorage *)self rangedExclusionPaths];
  allObjects = [rangedExclusionPaths allObjects];
  v18 = [allObjects sortedArrayUsingComparator:&__block_literal_global_37];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v18;
  v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v53)
  {
    v51 = *v60;
    v19 = *MEMORY[0x1E695EFF8];
    v20 = *(MEMORY[0x1E695EFF8] + 8);
    selfCopy = self;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v59 + 1) + 8 * i);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        attachments5 = [(SXTextTangierStorage *)self attachments];
        v24 = [attachments5 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v56;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v56 != v26)
              {
                objc_enumerationMutation(attachments5);
              }

              v28 = *(*(&v55 + 1) + 8 * j);
              objc_opt_class();
              drawable2 = [v28 drawable];
              v30 = TSUDynamicCast();

              if (v30)
              {
                exclusionPath = [v30 exclusionPath];

                if (exclusionPath == v22)
                {
                  self = selfCopy;
                  goto LABEL_31;
                }
              }
            }

            v25 = [attachments5 countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        attachments5 = [(SXTextExclusionPath *)v22 path];
        memset(&rect, 0, sizeof(rect));
        IsRect = CGPathIsRect([attachments5 CGPath], &rect);
        if (!IsRect)
        {
          [attachments5 bounds];
          rect.origin.x = v33;
          rect.origin.y = v34;
          rect.size.width = v35;
          rect.size.height = v36;
        }

        v37 = objc_alloc(MEMORY[0x1E69D5648]);
        v38 = [v37 initWithPosition:v19 size:{v20, rect.size.width, rect.size.height}];
        v39 = [SXTextTangierAttachmentInfo alloc];
        self = selfCopy;
        context = [(TSPObject *)selfCopy context];
        v41 = [(TSDDrawableInfo *)v39 initWithContext:context geometry:v38];

        v42 = 1;
        v43 = [MEMORY[0x1E69D5638] exteriorTextWrapWithIsHTMLWrap:0 type:1 direction:2 fitType:!IsRect margin:0.0 alphaThreshold:0.0];
        [(TSDDrawableInfo *)v41 setExteriorTextWrap:v43];

        [(SXTextTangierAttachmentInfo *)v41 setExclusionPath:v22];
        if ([(SXTextExclusionPath *)v22 lineVerticalAlignment]!= 1)
        {
          if ([(SXTextExclusionPath *)v22 lineVerticalAlignment]== 2)
          {
            v42 = 2;
          }

          else if ([(SXTextExclusionPath *)v22 lineVerticalAlignment]== 3)
          {
            v42 = 3;
          }

          else
          {
            v42 = 4 * ([(SXTextExclusionPath *)v22 lineVerticalAlignment]== 4);
          }
        }

        v44 = objc_alloc(MEMORY[0x1E69D56C0]);
        context2 = [(TSPObject *)selfCopy context];
        v46 = [v44 initWithContext:context2 drawable:v41];

        [v46 setHOffset:-[SXTextExclusionPath position](v22)];
        [v46 setVOffset:0.0];
        [v46 setVAlignment:v42];
        [v46 setAttachmentAnchorY:-[SXTextExclusionPath verticalAlignmentFactor](v22)];
        v47 = [(SXTextTangierStorage *)selfCopy insertAttachmentOrFootnote:v46 range:[(SXTextExclusionPath *)v22 range], 0];
        [(SXTextTangierAttachmentInfo *)v41 setActualRange:v47, v48];

LABEL_31:
      }

      v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v53);
  }
}

uint64_t __48__SXTextTangierStorage_setRangedExclusionPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(SXTextExclusionPath *)v4 range];
  if (v6 <= [(SXTextExclusionPath *)v5 range])
  {
    v8 = [(SXTextExclusionPath *)v4 range];
    v7 = v8 < [(SXTextExclusionPath *)v5 range];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14.receiver = self;
  v14.super_class = SXTextTangierStorage;
  footnoteCopy = footnote;
  v8 = [(TSWPStorage *)&v14 insertAttachmentOrFootnote:footnoteCopy range:location, length];
  v10 = v9;
  v11 = [(SXTextTangierStorage *)self attachments:v14.receiver];
  [v11 addObject:footnoteCopy];

  v12 = v8;
  v13 = v10;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  wordCopy = word;
  v7 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:?];
  v9 = v8;
  v10 = *(MEMORY[0x1E69D5760] + 8);
  v38 = *MEMORY[0x1E69D5760];
  string = [(TSWPStorage *)self string];

  v12 = [(TSWPStorage *)self length];
  v13 = v7 + v9;
  if (index >= v7 && index - v7 < v9)
  {
    if (v12 < v13)
    {
      currentHandler = [MEMORY[0x1E69D5768] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierStorage wordAtCharIndex:includePreviousWord:]"];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierStorage.m"];
      v17 = @"Specified range is out of range of string";
      v18 = currentHandler;
      v19 = v15;
      v20 = v16;
      v21 = 174;
LABEL_14:
      [v18 handleFailureInFunction:v19 file:v20 lineNumber:v21 description:v17];

      v26 = v38;
LABEL_32:

      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (v12 < v13)
  {
    currentHandler2 = [MEMORY[0x1E69D5768] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierStorage wordAtCharIndex:includePreviousWord:]"];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierStorage.m"];
    [currentHandler2 handleFailureInFunction:v23 file:v24 lineNumber:174 description:@"Specified range is out of range of string"];

    if (v13 == index)
    {
      goto LABEL_24;
    }

LABEL_13:
    currentHandler = [MEMORY[0x1E69D5768] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierStorage wordAtCharIndex:includePreviousWord:]"];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierStorage.m"];
    v17 = @"Character index out of range";
    v18 = currentHandler;
    v19 = v15;
    v20 = v16;
    v21 = 175;
    goto LABEL_14;
  }

  if (v13 != index)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (CFStringGetLength(string) <= index)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    LOBYTE(v25) = 0;
    if (CFStringGetCharacterAtIndex(string, index) && v13 > index)
    {
      v25 = IsWhitespaceCharacter() ^ 1;
    }
  }

  if (wordCopy && index > v7)
  {
    CFStringGetCharacterAtIndex(string, index - 1);
    v27 = IsWhitespaceCharacter();
    LOBYTE(v25) = v27 ^ 1 | v25;
    if (!v27)
    {
      --index;
    }
  }

  if ((v25 & 1) != 0 && v9)
  {
    string2 = [(TSWPStorage *)self string];
    currentHandler = [string2 substringWithRange:{v7, v9}];

    os_unfair_lock_lock_with_options();
    tokenizersCache = [(SXTextTangierStorage *)self tokenizersCache];
    v15 = [tokenizersCache objectForKey:currentHandler];

    os_unfair_lock_unlock(&self->_unfairLock);
    if (v15)
    {
      CFRetain(v15);
      v30 = v15;
      v26 = v38;
    }

    else
    {
      v40.location = v7;
      v40.length = v9;
      v30 = CFStringTokenizerCreate(0, string, v40, 4uLL, 0);
      os_unfair_lock_lock_with_options();
      tokenizersCache2 = [(SXTextTangierStorage *)self tokenizersCache];
      [tokenizersCache2 setObject:v30 forKey:currentHandler];

      os_unfair_lock_unlock(&self->_unfairLock);
      v26 = v38;
      if (!v30)
      {
        goto LABEL_32;
      }
    }

    v32 = CFStringTokenizerGoToTokenAtIndex(v30, index);
    length = 0;
    location = -1;
    if (v32 && (v32 & 0x10) == 0)
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v30);
      length = CurrentTokenRange.length;
      location = CurrentTokenRange.location;
    }

    if (location != -1 && length != 0)
    {
      v10 = length;
      v26 = location;
    }

    CFRelease(v30);
    goto LABEL_32;
  }

LABEL_24:
  v26 = v38;
LABEL_33:
  v36 = v26;
  v37 = v10;
  result.length = v37;
  result.location = v36;
  return result;
}

- (void)dealloc
{
  tokenizersCache = [(SXTextTangierStorage *)self tokenizersCache];
  [tokenizersCache removeAllObjects];

  [(SXTextTangierStorage *)self setTokenizersCache:0];
  v4.receiver = self;
  v4.super_class = SXTextTangierStorage;
  [(TSWPStorage *)&v4 dealloc];
}

@end