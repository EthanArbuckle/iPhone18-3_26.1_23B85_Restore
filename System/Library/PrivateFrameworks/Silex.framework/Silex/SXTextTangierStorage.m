@interface SXTextTangierStorage
- (SXTextTangierStorage)initWithContext:(id)a3 stylesheet:(id)a4 storageKind:(int)a5 string:(id)a6 locale:(id)a7;
- (_NSRange)insertAttachmentOrFootnote:(id)a3 range:(_NSRange)a4;
- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4;
- (void)dealloc;
- (void)setRangedExclusionPaths:(id)a3;
@end

@implementation SXTextTangierStorage

- (SXTextTangierStorage)initWithContext:(id)a3 stylesheet:(id)a4 storageKind:(int)a5 string:(id)a6 locale:(id)a7
{
  v9 = *&a5;
  v13 = a7;
  v14 = MEMORY[0x1E69D5718];
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = [[v14 alloc] initWithContext:v17];
  v19 = [MEMORY[0x1E69D5710] defaultStyleWithContext:v17];
  v24.receiver = self;
  v24.super_class = SXTextTangierStorage;
  v20 = [(TSWPStorage *)&v24 initWithContext:v17 string:v15 kind:v9 stylesheet:v16 paragraphStyle:v18 listStyle:v19 section:0 columnStyle:0];

  if (v20)
  {
    objc_storeStrong(&v20->_locale, a7);
    v21 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    tokenizersCache = v20->_tokenizersCache;
    v20->_tokenizersCache = v21;

    v20->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v20;
}

- (void)setRangedExclusionPaths:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v49 = a3;
  objc_storeStrong(&self->_rangedExclusionPaths, a3);
  v5 = [(SXTextTangierStorage *)self attachments];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(SXTextTangierStorage *)self setAttachments:v6];
  }

  v7 = [(SXTextTangierStorage *)self attachments];
  v8 = [v7 count];

  if (v8 - 1 >= 0)
  {
    do
    {
      --v8;
      v9 = [(SXTextTangierStorage *)self attachments];
      v10 = [v9 objectAtIndex:v8];

      objc_opt_class();
      v11 = [v10 drawable];
      v12 = TSUDynamicCast();

      if (v12)
      {
        v13 = [v12 actualRange];
        [(TSWPStorage *)self deleteRange:v13 undoTransaction:v14, 0];
      }
    }

    while (v8 > 0);
  }

  v15 = [(SXTextTangierStorage *)self attachments];
  [v15 removeAllObjects];

  v16 = [(SXTextTangierStorage *)self rangedExclusionPaths];
  v17 = [v16 allObjects];
  v18 = [v17 sortedArrayUsingComparator:&__block_literal_global_37];

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
    v52 = self;
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
        v23 = [(SXTextTangierStorage *)self attachments];
        v24 = [v23 countByEnumeratingWithState:&v55 objects:v63 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v55 + 1) + 8 * j);
              objc_opt_class();
              v29 = [v28 drawable];
              v30 = TSUDynamicCast();

              if (v30)
              {
                v31 = [v30 exclusionPath];

                if (v31 == v22)
                {
                  self = v52;
                  goto LABEL_31;
                }
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v23 = [(SXTextExclusionPath *)v22 path];
        memset(&rect, 0, sizeof(rect));
        IsRect = CGPathIsRect([v23 CGPath], &rect);
        if (!IsRect)
        {
          [v23 bounds];
          rect.origin.x = v33;
          rect.origin.y = v34;
          rect.size.width = v35;
          rect.size.height = v36;
        }

        v37 = objc_alloc(MEMORY[0x1E69D5648]);
        v38 = [v37 initWithPosition:v19 size:{v20, rect.size.width, rect.size.height}];
        v39 = [SXTextTangierAttachmentInfo alloc];
        self = v52;
        v40 = [(TSPObject *)v52 context];
        v41 = [(TSDDrawableInfo *)v39 initWithContext:v40 geometry:v38];

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
        v45 = [(TSPObject *)v52 context];
        v46 = [v44 initWithContext:v45 drawable:v41];

        [v46 setHOffset:-[SXTextExclusionPath position](v22)];
        [v46 setVOffset:0.0];
        [v46 setVAlignment:v42];
        [v46 setAttachmentAnchorY:-[SXTextExclusionPath verticalAlignmentFactor](v22)];
        v47 = [(SXTextTangierStorage *)v52 insertAttachmentOrFootnote:v46 range:[(SXTextExclusionPath *)v22 range], 0];
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

- (_NSRange)insertAttachmentOrFootnote:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14.receiver = self;
  v14.super_class = SXTextTangierStorage;
  v7 = a3;
  v8 = [(TSWPStorage *)&v14 insertAttachmentOrFootnote:v7 range:location, length];
  v10 = v9;
  v11 = [(SXTextTangierStorage *)self attachments:v14.receiver];
  [v11 addObject:v7];

  v12 = v8;
  v13 = v10;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4
{
  v4 = a4;
  v7 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:?];
  v9 = v8;
  v10 = *(MEMORY[0x1E69D5760] + 8);
  v38 = *MEMORY[0x1E69D5760];
  v11 = [(TSWPStorage *)self string];

  v12 = [(TSWPStorage *)self length];
  v13 = v7 + v9;
  if (a3 >= v7 && a3 - v7 < v9)
  {
    if (v12 < v13)
    {
      v14 = [MEMORY[0x1E69D5768] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierStorage wordAtCharIndex:includePreviousWord:]"];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierStorage.m"];
      v17 = @"Specified range is out of range of string";
      v18 = v14;
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
    v22 = [MEMORY[0x1E69D5768] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierStorage wordAtCharIndex:includePreviousWord:]"];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierStorage.m"];
    [v22 handleFailureInFunction:v23 file:v24 lineNumber:174 description:@"Specified range is out of range of string"];

    if (v13 == a3)
    {
      goto LABEL_24;
    }

LABEL_13:
    v14 = [MEMORY[0x1E69D5768] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierStorage wordAtCharIndex:includePreviousWord:]"];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierStorage.m"];
    v17 = @"Character index out of range";
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = 175;
    goto LABEL_14;
  }

  if (v13 != a3)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (CFStringGetLength(v11) <= a3)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    LOBYTE(v25) = 0;
    if (CFStringGetCharacterAtIndex(v11, a3) && v13 > a3)
    {
      v25 = IsWhitespaceCharacter() ^ 1;
    }
  }

  if (v4 && a3 > v7)
  {
    CFStringGetCharacterAtIndex(v11, a3 - 1);
    v27 = IsWhitespaceCharacter();
    LOBYTE(v25) = v27 ^ 1 | v25;
    if (!v27)
    {
      --a3;
    }
  }

  if ((v25 & 1) != 0 && v9)
  {
    v28 = [(TSWPStorage *)self string];
    v14 = [v28 substringWithRange:{v7, v9}];

    os_unfair_lock_lock_with_options();
    v29 = [(SXTextTangierStorage *)self tokenizersCache];
    v15 = [v29 objectForKey:v14];

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
      v30 = CFStringTokenizerCreate(0, v11, v40, 4uLL, 0);
      os_unfair_lock_lock_with_options();
      v31 = [(SXTextTangierStorage *)self tokenizersCache];
      [v31 setObject:v30 forKey:v14];

      os_unfair_lock_unlock(&self->_unfairLock);
      v26 = v38;
      if (!v30)
      {
        goto LABEL_32;
      }
    }

    v32 = CFStringTokenizerGoToTokenAtIndex(v30, a3);
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
  v3 = [(SXTextTangierStorage *)self tokenizersCache];
  [v3 removeAllObjects];

  [(SXTextTangierStorage *)self setTokenizersCache:0];
  v4.receiver = self;
  v4.super_class = SXTextTangierStorage;
  [(TSWPStorage *)&v4 dealloc];
}

@end