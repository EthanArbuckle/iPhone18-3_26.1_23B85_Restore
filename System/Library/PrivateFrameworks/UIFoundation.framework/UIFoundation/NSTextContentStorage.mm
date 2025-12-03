@interface NSTextContentStorage
+ (BOOL)__isNotesTextContentStorageClass;
+ (BOOL)_includesTextListMarkers;
+ (BOOL)_usesTextListElements;
+ (void)registerEditedRangeValidator:(id)validator;
- (BOOL)_supportsTextAttributesInRange:(_NSRange)range;
- (BOOL)containsExtraLineFragment;
- (NSAttributedString)attributedString;
- (NSAttributedString)attributedStringForTextElement:(NSTextElement *)textElement;
- (NSCountableTextRange)documentRange;
- (NSInteger)offsetFromLocation:(id)from toLocation:(id)to;
- (NSTextContentStorage)init;
- (NSTextContentStorage)initWithCoder:(id)coder;
- (NSTextElement)textElementForAttributedString:(NSAttributedString *)attributedString;
- (NSTextRange)adjustedRangeFromRange:(NSTextRange *)textRange forEditingTextSelection:(BOOL)forEditingTextSelection;
- (_NSRange)_applyEditedRangeAdjustmentsToRange:(_NSRange)range;
- (id)attributedStringForTextElements:(id)elements;
- (id)delegate;
- (id)enumerateTextElementsFromLocation:(id)location options:(unint64_t)options usingBlock:(id)block;
- (id)locationFromLocation:(id)location withOffset:(NSInteger)offset;
- (void)_commonInitialization;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)performEditingTransactionForTextStorage:(id)storage usingBlock:(id)block;
- (void)processEditingForTextStorage:(id)storage edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange;
- (void)replaceContentsInRange:(id)range withTextElements:(id)elements;
- (void)setAttributedString:(NSAttributedString *)attributedString;
- (void)setDelegate:(id)delegate;
- (void)setTextStorage:(id)storage;
- (void)synchronizeTextLayoutManagers:(id)managers;
- (void)synchronizeToBackingStore:(id)store;
- (void)updateRangesForTextElement:(id)element locationDelta:(int64_t)delta;
@end

@implementation NSTextContentStorage

- (NSTextContentStorage)init
{
  v6.receiver = self;
  v6.super_class = NSTextContentStorage;
  v2 = [(NSTextContentManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(NSTextContentStorage *)v2 _commonInitialization];
    v4 = objc_alloc_init(NSTextStorage);
    [(NSTextContentStorage *)v3 setTextStorage:v4];
  }

  return v3;
}

- (void)_commonInitialization
{
  self->_indexTable = [[NSRunStorage alloc] initWithElementSize:32 capacity:0];
  self->_elements = [[NSStorage alloc] initWithElementSize:8 capacity:0];
  self->_cachedRange = xmmword_18E856180;
  self->_modifiedRange = xmmword_18E856180;
  self->_modifiedDocumentLengthDelta = 0;
  self->_invalidatedRange = xmmword_18E856180;
  self->_editedRange = xmmword_18E856180;
  self->_editedDelta = 0;
  self->_editedMask = 0;
  if ([objc_opt_class() _includesTextListMarkers])
  {
    v3 = [objc_opt_class() __isNotesTextContentStorageClass] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  self->_includesTextListMarkers = v3;
  self->_supportsAnchoredTextAttachments = 0;
  self->_baseWritingDirectionResolutionStrategy = [objc_opt_class() defaultBaseWritingDirectionResolutionStrategy];
}

- (NSCountableTextRange)documentRange
{
  objc_sync_enter(self);
  documentRange = self->_documentRange;
  if (!documentRange)
  {
    documentRange = [[NSCountableTextRange alloc] initWithRange:0, [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] length]];
    self->_documentRange = documentRange;
  }

  objc_sync_exit(self);
  return documentRange;
}

- (NSAttributedString)attributedString
{
  v2 = self->_attributedString;

  return v2;
}

+ (BOOL)_includesTextListMarkers
{
  if (_includesTextListMarkers_onceToken != -1)
  {
    +[NSTextContentStorage _includesTextListMarkers];
  }

  return _includesTextListMarkers_includesTextListMarkers;
}

uint64_t __48__NSTextContentStorage__includesTextListMarkers__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (objc_opt_respondsToSelector())
  {
    result = [v0 BOOLValue];
  }

  else
  {
    result = +[NSTextList includesTextListMarkers];
  }

  _includesTextListMarkers_includesTextListMarkers = result;
  return result;
}

- (id)delegate
{
  v3.receiver = self;
  v3.super_class = NSTextContentStorage;
  return [(NSTextContentManager *)&v3 delegate];
}

+ (BOOL)_usesTextListElements
{
  if (_usesTextListElements_onceToken != -1)
  {
    +[NSTextContentStorage _usesTextListElements];
  }

  return _usesTextListElements_usesTextListElements;
}

uint64_t __45__NSTextContentStorage__usesTextListElements__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [v0 BOOLValue];
    _usesTextListElements_usesTextListElements = result;
  }

  return result;
}

- (void)dealloc
{
  [(NSTextContentStorage *)self setAttributedString:0];

  v3.receiver = self;
  v3.super_class = NSTextContentStorage;
  [(NSTextContentManager *)&v3 dealloc];
}

+ (BOOL)__isNotesTextContentStorageClass
{
  if (__isNotesTextContentStorageClass_onceToken != -1)
  {
    +[NSTextContentStorage __isNotesTextContentStorageClass];
  }

  return __isNotesTextContentStorageClass_notesTextContentStorageClass == self;
}

Class __56__NSTextContentStorage___isNotesTextContentStorageClass__block_invoke()
{
  result = NSClassFromString(@"ICTTTextContentStorage");
  __isNotesTextContentStorageClass_notesTextContentStorageClass = result;
  return result;
}

- (_NSRange)_applyEditedRangeAdjustmentsToRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x1E69E9840];
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = _editedRangeValidators;
  v7 = [_editedRangeValidators countByEnumeratingWithState:&v17 objects:v21 count:16];
  v8 = length;
  v9 = location;
  if (v7)
  {
    v10 = *v18;
    v9 = location;
    v8 = length;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = [*(*(&v17 + 1) + 8 * v11) adjustedInvalidationRangeForRange:v9 limitRange:v8 textContentStorage:{self->_cachedRange.location, self->_cachedRange.length, self}];
        v8 = v12;
        ++v11;
      }

      while (v7 != v11);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if (v8)
  {
    v23.location = location;
    v23.length = length;
    v25.location = v9;
    v25.length = v8;
    v13 = NSUnionRange(v23, v25);
    location = v13.location;
    length = v13.length;
  }

  objc_sync_exit(obj);
  v14 = location;
  v15 = length;
  result.length = v15;
  result.location = v14;
  return result;
}

- (NSTextContentStorage)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NSTextContentStorage;
  v4 = [(NSTextContentManager *)&v7 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    [(NSTextContentStorage *)v4 _commonInitialization];
    if ([coder allowsKeyedCoding])
    {
      -[NSTextContentStorage setTextStorage:](v5, "setTextStorage:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.textStorage"]);
      if (!v5->_attributedString)
      {
        -[NSTextContentStorage setAttributedString:](v5, "setAttributedString:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.attributedString"]);
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NSTextContentStorage;
  [(NSTextContentManager *)&v5 encodeWithCoder:?];
  if ([coder allowsKeyedCoding] && (self->_textStorage || self->_attributedString))
  {
    [coder encodeObject:? forKey:?];
  }
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = NSTextContentStorage;
  [(NSTextContentManager *)&v3 setDelegate:delegate];
}

- (void)setAttributedString:(NSAttributedString *)attributedString
{
  if (self->_attributedString != attributedString)
  {
    objc_sync_enter(self);
    documentRange = self->_documentRange;
    if (documentRange && ![(NSCountableTextRange *)documentRange isEmpty])
    {
      textLayoutManagers = self->super._textLayoutManagers;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__NSTextContentStorage_setAttributedString___block_invoke;
      v9[3] = &unk_1E7267CF8;
      v9[4] = self;
      [(NSMutableArray *)textLayoutManagers enumerateObjectsUsingBlock:v9];
      [(NSTextContentStorage *)self synchronizeTextLayoutManagers:0];
    }

    if (self->_textStorage == attributedString)
    {
      self->_attributedString = attributedString;
    }

    else
    {
      self->_attributedString = [(NSAttributedString *)attributedString copy];
      self->_textStorage = 0;
    }

    objc_sync_enter(self);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v10[0] = vnegq_f64(v7);
    v10[1] = xmmword_18E856290;
    __NSTextContentStorageEnumerateCachedElementsInElementIndexRange(self, 0, [(NSStorage *)self->_elements count], &__block_literal_global_330);
    [(NSRunStorage *)self->_indexTable replaceElementsInRange:0 withElement:[(NSRunStorage *)self->_indexTable count] coalesceRuns:v10, 1];
    [(NSStorage *)self->_elements removeElementsInRange:0, [(NSStorage *)self->_elements count]];
    self->_cachedRange = xmmword_18E856180;
    objc_sync_exit(self);

    self->_documentRange = 0;
    if (![(NSTextContentStorage *)self _supportsTextAttributesInRange:0, [(NSAttributedString *)self->_attributedString length]])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:NSTextContentStorageUnsupportedAttributeAddedNotification object:self];
    }

    objc_sync_exit(self);
  }
}

uint64_t __44__NSTextContentStorage_setAttributedString___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 textContentManager];
  v5 = *(a1 + 32);
  if (result == v5)
  {
    v6 = *(v5 + 80);

    return [a2 invalidateLayoutForRange:v6];
  }

  return result;
}

- (NSAttributedString)attributedStringForTextElement:(NSTextElement *)textElement
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(NSTextElement *)textElement attributedString];
}

- (NSTextElement)textElementForAttributedString:(NSAttributedString *)attributedString
{
  v3 = [[NSTextParagraph alloc] initWithAttributedString:attributedString];

  return v3;
}

- (id)attributedStringForTextElements:(id)elements
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [elements enumerateObjectsUsingBlock:&__block_literal_global_206];
  return v4;
}

- (BOOL)_supportsTextAttributesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  textStorage = [(NSTextContentStorage *)self textStorage];
  attributedString = [(NSTextContentStorage *)self attributedString];
  ensuresFixingAttributes = [(NSTextStorage *)textStorage ensuresFixingAttributes];
  if (ensuresFixingAttributes)
  {
    [(NSTextStorage *)textStorage setEnsuresFixingAttributes:0];
  }

  v17.length = [(NSAttributedString *)attributedString length];
  v17.location = 0;
  v18.location = location;
  v18.length = length;
  v9 = NSIntersectionRange(v17, v18);
  if (v9.length)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__NSTextContentStorage__supportsTextAttributesInRange___block_invoke;
    v12[3] = &unk_1E7266970;
    v12[4] = &v13;
    [(NSAttributedString *)attributedString enumerateAttribute:@"NSParagraphStyle" inRange:v9.location options:v9.length usingBlock:0x100000, v12];
  }

  [(NSTextStorage *)textStorage setEnsuresFixingAttributes:ensuresFixingAttributes];
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return (v10 & 1) == 0;
}

uint64_t __55__NSTextContentStorage__supportsTextAttributesInRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 "textBlocks")];
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

- (void)setTextStorage:(id)storage
{
  textStorage = self->_textStorage;
  if (textStorage != storage)
  {
    [(NSTextStorage *)textStorage setTextStorageObserver:0];
    objc_sync_enter(self);
    [(NSTextStorage *)self->_textStorage _setShouldSetOriginalFontAttribute:0];
    self->_textStorage = storage;
    [storage _setShouldSetOriginalFontAttribute:1];
    objc_sync_exit(self);
    [(NSTextContentStorage *)self setAttributedString:storage];
    [storage setTextStorageObserver:self];
    if ([storage _isSwiftAttributedString])
    {

      [(NSTextContentStorage *)self setCopiesContentsInTextParagraphs:1];
    }
  }
}

- (void)updateRangesForTextElement:(id)element locationDelta:(int64_t)delta
{
  elementRange = [element elementRange];
  if (!elementRange)
  {
    elementRange2 = 0;
    goto LABEL_9;
  }

  range = [elementRange range];
  v10 = range + delta;
  if (delta && !range)
  {
    v11 = [[NSCountableTextRange alloc] initWithRange:v10, v9];
    [element setElementRange:v11];

LABEL_8:
    elementRange2 = [element elementRange];
    goto LABEL_9;
  }

  v13 = [[NSCountableTextRange alloc] initWithRange:v10, v9];
  [element setElementRange:v13];

  elementRange2 = 0;
  if (delta && !v10)
  {
    goto LABEL_8;
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    paragraphContentRange = [element paragraphContentRange];
    if (paragraphContentRange)
    {
      range2 = [paragraphContentRange range];
      v17 = [[NSCountableTextRange alloc] initWithRange:range2 + delta, v16];
      [element setParagraphContentRange:v17];
    }

    paragraphSeparatorRange = [element paragraphSeparatorRange];
    if (paragraphSeparatorRange)
    {
      range3 = [paragraphSeparatorRange range];
      v21 = [[NSCountableTextRange alloc] initWithRange:range3 + delta, v20];
      [element setParagraphSeparatorRange:v21];
    }

    [element synchronizeDocumentRange];
  }

  objc_initWeak(&location, self);
  childElements = [element childElements];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __65__NSTextContentStorage_updateRangesForTextElement_locationDelta___block_invoke;
  v25[3] = &unk_1E7267D40;
  objc_copyWeak(v26, &location);
  v26[1] = delta;
  [childElements enumerateObjectsUsingBlock:v25];
  if (elementRange2)
  {
    textLayoutManagers = [(NSTextContentManager *)self textLayoutManagers];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__NSTextContentStorage_updateRangesForTextElement_locationDelta___block_invoke_2;
    v24[3] = &unk_1E7267CF8;
    v24[4] = elementRange2;
    [(NSArray *)textLayoutManagers enumerateObjectsUsingBlock:v24];
  }

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

uint64_t __65__NSTextContentStorage_updateRangesForTextElement_locationDelta___block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v5 = *(a1 + 40);

  return [Weak updateRangesForTextElement:a2 locationDelta:v5];
}

- (void)processEditingForTextStorage:(id)storage edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange
{
  length = range.length;
  location = range.location;
  v10 = [(NSTextContentStorage *)self _applyEditedRangeAdjustmentsToRange:invalidatedRange.location, invalidatedRange.length];
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = invalidatedRange.location;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = invalidatedRange.length;
  }

  v103 = [(NSString *)[(NSAttributedString *)[(NSTextContentStorage *)self attributedString] string] length];
  range2 = v13;
  v14 = v13 - length;
  p_cachedRange = &self->_cachedRange;
  v112.location = v12;
  v112.length = v13 - length;
  v16 = NSIntersectionRange(v112, self->_cachedRange);
  v17 = v16.location;
  v18 = v16.length;
  editedCopy = edited;
  if (v16 == 0uLL)
  {
    if ((edited & 2) == 0 || (v17 = v12, v12 != self->_cachedRange.length + self->_cachedRange.location) && (v17 = p_cachedRange->location, v12 + v14 != p_cachedRange->location))
    {
      objc_sync_enter(self);
      v18 = 0;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_77;
    }
  }

  objc_sync_enter(self);
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v100 = v14;
    v102 = v12;
    v20 = [(NSRunStorage *)self->_indexTable count];
    v99 = v20;
    if (v17 > v20)
    {
      v19 = v17;
      v21 = v16.length;
      goto LABEL_67;
    }

    v110 = 0;
    if (v17 == v20)
    {
      v22.length = v16.length;
      v110.location = v17;
      v110.length = v16.length;
      v23 = 3;
    }

    else
    {
      indexTable = self->_indexTable;
      _NSBlockNumberForIndex(indexTable, v17, &v110);
      if (indexTable->_gapBlockIndex <= v25)
      {
        v26 = indexTable->_maxBlocks - indexTable->_numBlocks;
      }

      else
      {
        v26 = 0;
      }

      v22.length = v16.length;
      v23 = indexTable->_runs->var1[(indexTable->_elementSize + 8) * (v26 + v25) + 24];
      v27.location = v110.location;
      if (v17 != v110.location)
      {
        if (v110.location >= v17)
        {
          v34 = 0;
          v19 = v17;
        }

        else
        {
          v27.length = v110.length;
          v22.location = v17;
          v22 = NSUnionRange(v22, v27);
          v19 = v22.location;
          v34 = 0;
        }

        v28 = v22.length;
        if (v22.length)
        {
LABEL_42:
          v40 = (v23 >> 3) & 1;
          v41 = v28;
          v42 = v28 + v19;
          if (v28 + v19 < v99)
          {
            v43 = self->_indexTable;
            _NSBlockNumberForIndex(v43, v42, &v110);
            if (v43->_gapBlockIndex <= v44)
            {
              v45 = v43->_maxBlocks - v43->_numBlocks;
            }

            else
            {
              v45 = 0;
            }

            v46 = v43->_runs->var1[(v43->_elementSize + 8) * (v45 + v44) + 24];
            v47.location = v110.location;
            if (v110.location < v42 || (v46 & 1) != 0 && v17 + v16.length >= v110.location)
            {
              v47.length = v110.length;
              v114.location = v19;
              v114.length = v41;
              v48 = NSUnionRange(v114, v47);
              v19 = v48.location;
              v41 = v48.length;
              if ((v46 & 1) != 0 && v34 && v17 + v16.length == v110.location)
              {
                if (v48.location)
                {
                  v46 = *(_fastRunStorageElementAtIndex(&self->_indexTable->super.isa, v48.location - 1, &v110) + 24);
                  if ((v46 & 2) != 0)
                  {
                    v49 = NSUnionRange(v48, v110);
                    v19 = v49.location;
                    v41 = v49.length;
                  }
                }
              }
            }

            else
            {
              v40 = 0;
            }

            v40 |= (v46 & 8) >> 3;
          }

          if ((v40 & 1) == 0)
          {
            goto LABEL_65;
          }

          v21 = v41;
          if (v41 && v41 + v19 < v99)
          {
            v50 = self->_indexTable;
            _NSBlockNumberForIndex(v50, v41 + v19, &v110);
            if (v50->_gapBlockIndex <= v51)
            {
              v52 = v50->_maxBlocks - v50->_numBlocks;
            }

            else
            {
              v52 = 0;
            }

            v53.location = v110.location;
            if (v110.location >= v41 + v19 && (v50->_runs->var1[(v50->_elementSize + 8) * (v52 + v51) + 24] & 8) == 0)
            {
LABEL_65:
              v21 = v41;
              goto LABEL_67;
            }

            v53.length = v110.length;
            v115.location = v19;
            v115.length = v41;
            v54 = NSUnionRange(v115, v53);
            v19 = v54.location;
            v21 = v54.length;
          }

LABEL_67:
          v18 = v21;
          ElementIndexRangeForRange = __NSTextContentStorageGetElementIndexRangeForRange(self, v19, v21);
          v57 = v56;
          v14 = v100;
          v12 = v102;
          if (v56)
          {
            v58 = ElementIndexRangeForRange;
            v59.f64[0] = NAN;
            v59.f64[1] = NAN;
            v110 = vnegq_f64(v59);
            v111 = xmmword_18E856290;
            if (ElementIndexRangeForRange + v56 <= [(NSStorage *)self->_elements count])
            {
              v19 = [objc_msgSend(*-[NSStorage elementAtIndex:](self->_elements elementAtIndex:{v58), "elementRange"), "range"}];
              v62 = v61;
              if (v57 != 1)
              {
                v120.location = [objc_msgSend(*-[NSStorage elementAtIndex:](self->_elements elementAtIndex:{v58 + v57 - 1), "elementRange"), "range"}];
                v120.length = v63;
                v116.location = v19;
                v116.length = v62;
                v64 = NSUnionRange(v116, v120);
                v61 = v64.length;
                v19 = v64.location;
              }

              v60 = v61;
            }

            else
            {
              v60 = 0;
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v18 = v60;
            [NSRunStorage replaceElementsInRange:"replaceElementsInRange:withElement:coalesceRuns:" withElement:v19 coalesceRuns:?];
            __NSTextContentStorageReleaseElementsInRange(self, v58, v57);
            [(NSStorage *)self->_elements removeElementsInRange:v58, v57];
            __NSTextContentStorageUpdateElementIndexRangeForRange(self, 0, 0, 0, v19 + v18, [(NSRunStorage *)self->_indexTable count]- (v19 + v18), -v57);
            v65 = [(NSStorage *)self->_elements count];
            if (v65 && v65 <= [(NSStorage *)self->_elements count])
            {
              v67 = [objc_msgSend(*-[NSStorage elementAtIndex:](self->_elements elementAtIndex:{0), "elementRange"), "range"}];
              v66 = v95;
              if (v65 != 1)
              {
                v123.location = [objc_msgSend(*-[NSStorage elementAtIndex:](self->_elements elementAtIndex:{v65 - 1), "elementRange"), "range"}];
                v123.length = v96;
                v119.location = v67;
                v119.length = v66;
                v97 = NSUnionRange(v119, v123);
                v67 = v97.location;
                v66 = v97.length;
              }
            }

            else
            {
              v66 = 0;
              v67 = 0x7FFFFFFFFFFFFFFFLL;
            }

            p_cachedRange->location = v67;
            self->_cachedRange.length = v66;
            v14 = v100;
            v12 = v102;
          }

          goto LABEL_77;
        }

LABEL_38:
        v21 = 0;
        goto LABEL_67;
      }
    }

    v28 = v22.length;
    if (!v22.length)
    {
      if ((v23 & 3) == 0)
      {
        v28 = 0;
        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_40;
      }

      v28 = v110.length;
    }

    if (v17)
    {
LABEL_25:
      v98 = v28;
      v29 = self->_indexTable;
      *&v30 = _NSBlockNumberForIndex(v29, v17 - 1, &v110).n128_u64[0];
      v32 = v31;
      if (v29->_gapBlockIndex <= v31)
      {
        v33 = v29->_maxBlocks - v29->_numBlocks;
      }

      else
      {
        v33 = 0;
      }

      runs = v29->_runs;
      elementSize = v29->_elementSize;
      string = [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] string];
      v23 = runs->var1[(elementSize + 8) * (v33 + v32) + 24];
      if ((v23 & 2) != 0 || (v23 & 4) != 0 && (v38 = string, v17 < [(NSString *)string length]) && [(NSString *)v38 characterAtIndex:v17]== 10)
      {
        v113.location = v17;
        v113.length = v98;
        v39 = NSUnionRange(v113, v110);
        v19 = v39.location;
        v28 = v39.length;
      }

      else
      {
        v19 = v17;
        v28 = v98;
      }

LABEL_41:
      v34 = v17 == v19;
      if (v28)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }

LABEL_40:
    v19 = 0;
    goto LABEL_41;
  }

LABEL_77:
  if (length)
  {
    v68 = [(NSRunStorage *)self->_indexTable count];
    v69 = v68;
    lengthCopy = length;
    v71 = v103 - length;
    if (v103 - length >= v68)
    {
      v71 = v68;
    }

    v72 = v12;
    v73 = v14;
    v74 = v12 + v14;
    v75 = v71 - v74;
    if (v71 > v74)
    {
      v76 = __NSTextContentStorageGetElementIndexRangeForRange(self, v74, v71 - v74);
      v78 = v77;
      if (v77)
      {
        v101 = v76;
        v79.f64[0] = NAN;
        v79.f64[1] = NAN;
        v110 = vnegq_f64(v79);
        *&v111 = 0;
        *(&v111 + 1) = 1;
        [(NSRunStorage *)self->_indexTable replaceElementsInRange:v74 withElement:v75 coalesceRuns:&v110, 1];
        if (v103 > v69)
        {
          [(NSRunStorage *)self->_indexTable insertElement:&v110 range:v69 coalesceRuns:v103 - v69, 1];
        }

        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 3221225472;
        v109[2] = __98__NSTextContentStorage_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke;
        v109[3] = &unk_1E7267D68;
        v109[4] = self;
        v109[5] = lengthCopy;
        __NSTextContentStorageEnumerateCachedElementsInElementIndexRange(self, v101, v78, v109);
        self->_cachedRange.location = __NSTextContentStorageGetRangeForIndexRange(self, 0, [(NSStorage *)self->_elements count]);
        self->_cachedRange.length = v80;
      }
    }

    self->_documentRange = 0;
    v12 = v72;
    v14 = v73;
    length = lengthCopy;
  }

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v81 = v14;
  }

  else
  {
    v81 = v18;
  }

  v82 = [NSCountableTextRange alloc];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v83 = v12;
  }

  else
  {
    v83 = v19;
  }

  v84 = [(NSCountableTextRange *)v82 initWithRange:v83, v81];
  v85 = [[NSCountableTextRange alloc] initWithRange:v83, v81 + length];
  [(NSTextContentManager *)self recordEditActionInRange:v84 newTextRange:v85];

  p_editedRange = &self->_editedRange;
  v87 = self->_editedRange.location;
  lengthCopy2 = length;
  if (v87 == 0x7FFFFFFFFFFFFFFFLL)
  {
    p_editedRange->location = location;
    self->_editedRange.length = length;
    self->_editedDelta = length;
    self->_editedMask = editedCopy;
  }

  else
  {
    if (location >= v87)
    {
      v89 = self->_editedRange.location;
    }

    else
    {
      v89 = location;
    }

    v90 = self->_editedRange.length + v87 - self->_editedDelta;
    if (length - length + location > v90)
    {
      v90 = length - length + location;
    }

    p_editedRange->location = v89;
    self->_editedRange.length = length - v89 + v90;
    self->_editedDelta += length;
    self->_editedMask |= editedCopy;
  }

  p_invalidatedRange = &self->_invalidatedRange;
  if (self->_invalidatedRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    p_invalidatedRange->location = v12;
    self->_invalidatedRange.length = range2;
  }

  else
  {
    v117.location = p_editedRange->location;
    v117.length = self->_editedRange.length;
    v121.location = v12;
    v121.length = range2;
    v122 = NSUnionRange(v117, v121);
    v118.location = p_invalidatedRange->location;
    v118.length = self->_invalidatedRange.length;
    v92 = NSUnionRange(v118, v122);
    p_invalidatedRange->location = v92.location;
    self->_invalidatedRange.length = v92.length;
  }

  if (self->_supportsAnchoredTextAttachments)
  {
    if (self->__hasAnchoredTextAttachments)
    {
      if ((editedCopy & 1) == 0 && (length & 0x8000000000000000) == 0)
      {
        goto LABEL_111;
      }

      lengthCopy2 = [(NSTextStorage *)self->_textStorage length];
    }

    else if ((editedCopy & 1) == 0)
    {
      goto LABEL_111;
    }

    if (lengthCopy2)
    {
      v110.location = 0;
      v110.length = &v110;
      *&v111 = 0x2020000000;
      BYTE8(v111) = 0;
      textStorage = self->_textStorage;
      v94 = [(NSTextStorage *)textStorage length];
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __98__NSTextContentStorage_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke_2;
      v108[3] = &unk_1E7266970;
      v108[4] = &v110;
      [(NSTextStorage *)textStorage enumerateAttribute:@"NSTextParagraphAnchoredAttachment" inRange:0 options:v94 usingBlock:0x100000, v108];
      self->__hasAnchoredTextAttachments = *(v110.length + 24);
      _Block_object_dispose(&v110, 8);
    }
  }

LABEL_111:
  objc_sync_exit(self);
}

uint64_t __98__NSTextContentStorage_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke(uint64_t result, id *a2, uint64_t a3, uint64_t a4)
{
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v13 = vnegq_f64(v4);
  v14 = 0;
  v15 = 1;
  if (a4 >= 1)
  {
    v6 = a2;
    v7 = result;
    v8 = &a2[a4];
    do
    {
      [*(v7 + 32) updateRangesForTextElement:*v6 locationDelta:{*(v7 + 40), *&v13, v14, v15}];
      result = [*v6 elementRange];
      if (result)
      {
        v9 = result;
        *&v13.f64[0] = a3;
        LOBYTE(v15) = [*v6 coalescingType];
        v10 = *(*(v7 + 32) + 88);
        v11 = [v9 range];
        result = [v10 replaceElementsInRange:v11 withElement:v12 coalesceRuns:{&v13, 0}];
      }

      ++v6;
      ++a3;
    }

    while (v6 < v8);
  }

  return result;
}

uint64_t __98__NSTextContentStorage_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (void)performEditingTransactionForTextStorage:(id)storage usingBlock:(id)block
{
  [(NSTextContentStorage *)self beginEditingTransaction];
  (*(block + 2))(block);
  [(NSTextContentStorage *)self endEditingTransaction];
}

- (void)synchronizeTextLayoutManagers:(id)managers
{
  objc_sync_enter(self);
  v8.receiver = self;
  v8.super_class = NSTextContentStorage;
  [(NSTextContentManager *)&v8 synchronizeTextLayoutManagers:managers];
  if (![(NSTextContentStorage *)self _supportsTextAttributesInRange:self->_invalidatedRange.location, self->_invalidatedRange.length])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:NSTextContentStorageUnsupportedAttributeAddedNotification object:self];
  }

  if (!self->_notifyingToFixSelection && self->_editedRange.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_notifyingToFixSelection = 1;
    if ((self->_editedMask & 2) != 0)
    {
      textLayoutManagers = self->super._textLayoutManagers;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __54__NSTextContentStorage_synchronizeTextLayoutManagers___block_invoke;
      v7[3] = &unk_1E7267CF8;
      v7[4] = self;
      [(NSMutableArray *)textLayoutManagers enumerateObjectsUsingBlock:v7];
    }

    self->_notifyingToFixSelection = 0;
    self->_invalidatedRange = xmmword_18E856180;
    self->_editedRange = xmmword_18E856180;
    self->_editedDelta = 0;
    self->_editedMask = 0;
  }

  objc_sync_exit(self);
}

+ (void)registerEditedRangeValidator:(id)validator
{
  if ([validator conformsToProtocol:&unk_1F01D9CA0])
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    v5 = _editedRangeValidators;
    if (!_editedRangeValidators)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      _editedRangeValidators = v5;
    }

    [v5 addObject:validator];

    objc_sync_exit(v4);
  }
}

- (BOOL)containsExtraLineFragment
{
  v3 = [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] length];
  if (v3 < 1)
  {
    return 1;
  }

  v4 = [(NSString *)[(NSAttributedString *)[(NSTextContentStorage *)self attributedString] string] characterAtIndex:v3 - 1];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];

  return [newlineCharacterSet characterIsMember:v4];
}

- (id)enumerateTextElementsFromLocation:(id)location options:(unint64_t)options usingBlock:(id)block
{
  v151 = *MEMORY[0x1E69E9840];
  textStorage = self->_textStorage;
  if (!textStorage)
  {
    textStorage = self->_attributedString;
  }

  v9 = [(NSTextStorage *)textStorage length];
  if (!location)
  {
    location = [(NSTextRange *)[(NSTextContentStorage *)self documentRange] location];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (v10 = [location type], (objc_msgSend(v10, "isEqualToString:", NSTextLocationTypeCountable) & 1) == 0))
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = objc_opt_class();
    [v11 raise:v12 format:{@"-[%@ %@] received NSTextLocation unrecognized %@.", v13, NSStringFromSelector(a2), location}];
  }

  objc_sync_enter(self);
  if (!v9)
  {
    goto LABEL_210;
  }

  characterIndex = [location characterIndex];
  if (options)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  v131 = v15;
  [(NSTextContentStorage *)self delegate];
  v130 = objc_opt_respondsToSelector();
  memset(v137, 0, 512);
  maximumNumberOfUncachedElements = [(NSTextContentManager *)self maximumNumberOfUncachedElements];
  bzero(v137, 0x248uLL);
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  *v138 = vnegq_f64(v17);
  if (maximumNumberOfUncachedElements)
  {
    v18 = maximumNumberOfUncachedElements;
  }

  else
  {
    v18 = -1;
  }

  *(&v137[0] + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v139 = v18;
  v140 = 0x7FFFFFFFFFFFFFFFLL;
  v142 = 1;
  activeEnumerationCache = self->_activeEnumerationCache;
  v141 = !(options & 1);
  v133 = 0u;
  v134 = 0;
  v135 = 0x7FFFFFFFFFFFFFFFLL;
  v136 = v141;
  v121 = activeEnumerationCache;
  if (activeEnumerationCache)
  {
    __NSTextContentStorageFlushUncachedTextElements(self, activeEnumerationCache, 1);
  }

  self->_activeEnumerationCache = v137;
  v20 = v9 + self->_modifiedDocumentLengthDelta;
  if (characterIndex >= v20)
  {
    v21 = v9 + self->_modifiedDocumentLengthDelta;
  }

  else
  {
    v21 = characterIndex;
  }

  if (options)
  {
    v20 = 0;
  }

  v123 = v20;
  if (v21 == v20)
  {
    goto LABEL_207;
  }

  v124 = 0;
  v22 = 0;
  v122 = 0;
  v23 = 1;
  if (options)
  {
    v23 = -1;
  }

  v126 = v23;
  range = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    v21 += v131;
    if (v22)
    {
      goto LABEL_161;
    }

    v150[0] = 0uLL;
    location = self->_cachedRange.location;
    v26 = v21 >= location;
    v25 = v21 - location;
    v26 = !v26 || v25 >= self->_cachedRange.length;
    if (!v26)
    {
      indexTable = self->_indexTable;
      _NSBlockNumberForIndex(indexTable, v21, v150);
      v29 = indexTable->_gapBlockIndex <= v28 ? indexTable->_maxBlocks - indexTable->_numBlocks : 0;
      v30 = *&indexTable->_runs->var1[(indexTable->_elementSize + 8) * (v29 + v28)];
      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (__NSTextContentStorageFlushUncachedTextElements(self, v137, 1))
        {
          v37 = self->_indexTable;
          _NSBlockNumberForIndex(v37, v21, v150);
          if (v37->_gapBlockIndex <= v38)
          {
            v39 = v37->_maxBlocks - v37->_numBlocks;
          }

          else
          {
            v39 = 0;
          }

          v30 = *&v37->_runs->var1[(v37->_elementSize + 8) * (v39 + v38)];
        }

        v62 = *(&v137[0] + 1);
        if (v30 < *(&v137[0] + 1) || v30 - *(&v137[0] + 1) >= *&v137[1])
        {
          v64 = [(NSStorage *)self->_elements pointerToElement:v30 directlyAccessibleElements:v137 + 8];
          *&v137[0] = v64;
          v62 = v30;
          if (*(&v137[0] + 1) != v30)
          {
            v64 += 8 * (*(&v137[0] + 1) - v30);
            *&v137[0] = v64;
            v62 = *(&v137[0] + 1);
          }
        }

        else
        {
          v64 = *&v137[0];
        }

        v22 = *&v64[8 * (v30 - v62)];
        v140 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_129;
      }
    }

    if (v122 >= v139)
    {
      v22 = 0;
      goto LABEL_129;
    }

    v149 = 0;
    v148 = 0;
    v147 = 0;
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    _UIFoundationAssert(self, v32, [(NSTextStorage *)self->_textStorage editedMask]== 0, &__block_literal_global_342);
    [(NSString *)[(NSAttributedString *)[(NSTextContentStorage *)self attributedString] string] getParagraphStart:&v149 end:&v148 contentsEnd:&v147 forRange:__NSTextContentStorageQueryDocumentLocationDeltaForLocation(self, v21, v137) + v21, 1];
    [(NSTextContentStorage *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v33 = [[NSCountableTextLocation alloc] initWithIndex:v21];
      v22 = [-[NSTextContentStorage delegate](self "delegate")];

      v34 = v149;
      v35 = v148;
      range1 = v148 - v149;
      if (v22)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v117 = isKindOfClass ^ 1;
        v118 = 1;
        goto LABEL_108;
      }
    }

    else
    {
      v34 = v149;
      v35 = v148;
      range1 = v148 - v149;
    }

    attributedString = [(NSTextContentStorage *)self attributedString];
    range2.length = 0;
    range2.location = 0;
    range1 = [(NSAttributedString *)attributedString attribute:@"NSAttachment" atIndex:v21 longestEffectiveRange:&range2 inRange:v34, range1];
    v119 = range1 != 0;
    [(NSTextContentStorage *)self delegate];
    v42 = objc_opt_respondsToSelector();
    if (range1 && [range1 embeddingType] == 1)
    {
      v43 = v148 - v21;
      if (v21 + 1 == v147)
      {
        v44 = v148 - v21;
      }

      else
      {
        v44 = 1;
      }

      range1 = v44;
      if ((v42 & 1) != 0 && (v22 = [-[NSTextContentStorage delegate](self "delegate")]) != 0 || (v45 = -[NSTextParagraph initWithTextAttachment:attributes:]([NSTextParagraph alloc], "initWithTextAttachment:attributes:", range1, -[NSAttributedString attributesAtIndex:effectiveRange:](attributedString, "attributesAtIndex:effectiveRange:", v21, 0)), v22 = v45, range1 < 2))
      {
        v50 = 1;
        v117 = 1;
        v51 = v21;
      }

      else
      {
        v46 = [(NSAttributedString *)[(NSTextParagraph *)v45 attributedString] mutableCopy];
        mutableString = [v46 mutableString];
        v48 = [v46 length];
        string = [(NSAttributedString *)attributedString string];
        [mutableString replaceCharactersInRange:v48 withString:{0, -[NSString substringWithRange:](string, "substringWithRange:", v147, v148 - v147)}];
        [(NSTextParagraph *)v22 setAttributedString:v46];

        v50 = 1;
        v117 = 1;
        v51 = v21;
        range1 = v43;
      }

      goto LABEL_106;
    }

    v52 = range2;
    if (range2.location == v34 && range2.length == range1)
    {
      v51 = v34;
      if (v42)
      {
        goto LABEL_80;
      }

LABEL_81:
      v145[1] = 0;
      v145[0] = 0;
      if ([objc_opt_class() _usesTextListElements])
      {
        range12 = [(NSAttributedString *)attributedString attribute:@"NSParagraphStyle" atIndex:v51 longestEffectiveRange:v145 inRange:v51, range1];
      }

      else
      {
        range12 = 0;
      }

      if (![objc_msgSend(range12 "textLists")] || (v144 = 0, v143 = 0, (v22 = +[NSTextListElement _rootTextListElementFromAttributedString:atIndex:options:effectiveRange:textListElementInstantiationCallback:](NSTextListElement, "_rootTextListElementFromAttributedString:atIndex:options:effectiveRange:textListElementInstantiationCallback:", attributedString, v51, -[NSTextContentStorage includesTextListMarkers](self, "includesTextListMarkers"), &v143, &__block_literal_global_353)) == 0))
      {
        if ([(NSTextContentStorage *)self copiesContentsInTextParagraphs])
        {
          if ([(NSTextStorage *)[(NSTextContentStorage *)self textStorage] _isSwiftAttributedString])
          {
            range13 = [(NSTextStorage *)[(NSTextContentStorage *)self textStorage] _nsAttributedSubstringFromRange:v51, range1];
          }

          else
          {
            range13 = [(NSAttributedString *)attributedString attributedSubstringFromRange:v51, range1];
          }

          range14 = [[NSTextParagraph alloc] initWithAttributedString:range13];
        }

        else
        {
          range14 = [[NSTextParagraph alloc] initWithAttributedString:attributedString range:v51, range1];
        }

        v22 = range14;
        goto LABEL_105;
      }

      v117 = 0;
      v51 = v143;
      range1 = v144;
      v147 = v144 + v143;
      v65 = 1;
      goto LABEL_107;
    }

    v152.location = v34;
    v152.length = range1;
    v53 = NSIntersectionRange(v152, v52);
    v51 = v53.location;
    length = v53.length;
    v55 = range2.location;
    if (v34 >= range2.location || (v142 & 1) == 0 && v141)
    {
LABEL_66:
      v57 = v119;
      goto LABEL_67;
    }

    length = v53.location + v53.length - v34;
    while (1)
    {
      v56 = [(NSAttributedString *)attributedString attribute:@"NSAttachment" atIndex:v55 - 1 longestEffectiveRange:&range2 inRange:v34, v55 - v34];
      if (v56)
      {
        break;
      }

LABEL_64:
      v55 = range2.location;
      if (v34 >= range2.location)
      {
        v51 = v34;
        goto LABEL_66;
      }
    }

    if ([v56 embeddingType] != 1)
    {
      v119 = 1;
      goto LABEL_64;
    }

    v115 = range2.length + range2.location < v35 && range2.length + range2.location == v147;
    v57 = 1;
    if (v115)
    {
      length = v35 - range2.location;
    }

    else
    {
      length = v53.location + v53.length - (range2.length + range2.location);
    }

    if (v115)
    {
      v51 = range2.location;
    }

    else
    {
      v51 = range2.length + range2.location;
    }

LABEL_67:
    range2.location = v51;
    range2.length = length;
    v58 = v51 + length;
    if (v51 + length >= v35 || (v142 & 1) == 0 && !v141)
    {
LABEL_75:
      v119 = v57;
      goto LABEL_76;
    }

    length = v35 - v51;
    while (2)
    {
      v59 = [(NSAttributedString *)attributedString attribute:@"NSAttachment" atIndex:v58 longestEffectiveRange:&range2 inRange:v58, v35 - v58];
      if (!v59)
      {
LABEL_74:
        v58 = range2.length + range2.location;
        if (range2.length + range2.location >= v35)
        {
          goto LABEL_75;
        }

        continue;
      }

      break;
    }

    if ([v59 embeddingType] != 1)
    {
      v57 = 1;
      goto LABEL_74;
    }

    length = range2.location - v51;
    v119 = 1;
LABEL_76:
    if (length + v51 == v147)
    {
      v60 = v148 - v51;
    }

    else
    {
      v60 = length;
    }

    range1 = v60;
    if ((v42 & 1) == 0)
    {
      goto LABEL_81;
    }

LABEL_80:
    v22 = [-[NSTextContentStorage delegate](self "delegate")];
    if (!v22)
    {
      goto LABEL_81;
    }

LABEL_105:
    v117 = 0;
    v50 = v119;
LABEL_106:
    [(NSTextParagraph *)v22 _setContainsTextAttachments:v50 & 1];
    v65 = v51 == v149;
LABEL_107:
    v118 = v65;
    isKindOfClass = 1;
    v34 = v51;
LABEL_108:
    v68 = v147;
    v69 = v141;
    range15 = [[NSCountableTextRange alloc] initWithRange:v34, range1];
    [(NSTextElement *)v22 setTextContentManager:self];
    [(NSTextParagraph *)v22 setElementRange:range15];

    coalescingType = (v117 & 1) == 0;
    if (isKindOfClass)
    {
      v72 = v68 - v34 < range1 && v68 >= v34;
      v73 = v34 + range1;
      if (!v72)
      {
        v68 = v34 + range1;
      }

      v74 = [[NSCountableTextRange alloc] initWithRange:v34, v68 - v34];
      [(NSTextParagraph *)v22 setParagraphContentRange:v74];

      v75 = [[NSCountableTextRange alloc] initWithRange:v68, v73 - v68];
      [(NSTextParagraph *)v22 setParagraphSeparatorRange:v75];

      if ((v117 & 1) == 0)
      {
        coalescingType = [(NSTextElement *)v22 coalescingType];
      }

      [(NSTextParagraph *)v22 setIsBeginningOfParagraph:v118];
      v76 = v73 > v68 || v73 >= [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] length];
      [(NSTextParagraph *)v22 setIsEndOfParagraph:v76];
    }

    __NSTextContentStorageFlushUncachedTextElements(self, v137, 0);
    if (*v138 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v77 = 63;
      if (v69)
      {
        v77 = 0;
      }

      *v138 = v77;
    }

    else
    {
      v153.location = v34;
      v153.length = range1;
      v78 = NSUnionRange(*&v138[8], v153);
      range1 = v78.length;
      v34 = v78.location;
    }

    *&v138[8] = v34;
    *&v138[16] = range1;
    [(NSTextElement *)v22 setCoalescingType:coalescingType];
    *(&v137[1] + *v138 + 1) = v22;
    if (v69)
    {
      v79 = *v138 + 1;
    }

    else
    {
      v79 = *v138 - 1;
    }

    *v138 = v79;
    ++v122;
LABEL_129:
    if ([(NSArray *)[(NSTextElement *)v22 childElements] count])
    {
      range = [(NSTextRange *)[(NSTextElement *)v22 elementRange] range];
      v124 = v80;
      childElements = [(NSTextElement *)v22 childElements];
      WORD2(v145[0]) = 0;
      LODWORD(v145[0]) = 0;
      if ([(NSArray *)childElements count])
      {
        range2 = [(NSTextRange *)[(NSTextElement *)v22 elementRange] range];
        v84 = v83;
        if (options)
        {
          range1a = [(NSArray *)childElements count]- 1;
        }

        else
        {
          range1a = 0;
        }

        v88 = 0;
        if (range2 >= v21 || range2 + v84 <= v21)
        {
          parentElement = v22;
        }

        else
        {
          range2.location = 0;
          v120 = [[NSCountableTextLocation alloc] initWithIndex:v21];
          v90 = [(NSTextElement *)v22 childTextElementForLocation:v120 elementIndex:&range2];
          if (v90)
          {
            parentElement = [v90 parentElement];
            childElements = [(NSTextElement *)parentElement childElements];
            range1a = range2.location;
            v91 = 0;
            v87ParentElement = [(NSTextElement *)parentElement parentElement];
            if (v87ParentElement)
            {
              v93 = parentElement;
              do
              {
                v94 = [(NSArray *)[(NSTextElement *)v87ParentElement childElements] indexOfObject:v93];
                if (v91)
                {
                  [v91 insertObject:objc_msgSend(MEMORY[0x1E696AD98] atIndex:{"numberWithInteger:", v94 + v126), 0}];
                }

                else
                {
                  v95 = objc_alloc(MEMORY[0x1E695DF70]);
                  v91 = [v95 initWithObjects:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v94 + v126), 0}];
                }

                v93 = v87ParentElement;
                v87ParentElement = [(NSTextElement *)v87ParentElement parentElement];
              }

              while (v87ParentElement);
            }

            v96 = [v91 count];
            v97 = v96;
            if (v96)
            {
              if (v96 < 0x81)
              {
                v98 = v150;
              }

              else
              {
                v98 = NSZoneCalloc(0, v96, 8uLL);
              }

              v99 = 0;
              do
              {
                v98->n128_u64[v99] = [objc_msgSend(v91 objectAtIndexedSubscript:{v99), "integerValue"}];
                ++v99;
              }

              while (v97 != v99);
              v88 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndexes:v98 length:v97];
              if (v97 > 0x80)
              {
                NSZoneFree(0, v98);
              }
            }

            else
            {
              v88 = 0;
            }
          }

          else
          {
            v88 = 0;
            parentElement = v22;
          }
        }

        v89 = range1a;
      }

      else
      {
        parentElement = 0;
        childElements = 0;
        v88 = 0;
        v89 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v133 = parentElement;
      *(&v133 + 1) = childElements;
      v134 = v88;
      v135 = v89;
      LOWORD(v136) = !(options & 1);
      *(&v136 + 2) = v145[0];
      HIWORD(v136) = WORD2(v145[0]);
      if (!v22)
      {
        goto LABEL_207;
      }

LABEL_161:
      while (1)
      {
        NextElement = __NSTextContentStorageChildElementsEnumerationCacheGetNextElement(&v133);
        v85 = NextElement;
        if (v142 != 1 || NextElement == 0)
        {
          break;
        }

        v102 = v141;
        elementRange = [(NSTextElement *)NextElement elementRange];
        v104 = elementRange;
        if (v102)
        {
          if (![(NSTextRange *)elementRange containsLocation:location])
          {
            continue;
          }
        }

        else if ([-[NSTextRange location](elementRange "location")] != -1 || objc_msgSend(location, "compare:", -[NSTextRange endLocation](v104, "endLocation")) == 1)
        {
          continue;
        }

        if (v141)
        {
          firstObject = [(NSArray *)[(NSTextElement *)v85 childElements] firstObject];
          v106 = firstObject;
          if (firstObject)
          {
            if (([objc_msgSend(objc_msgSend(firstObject "elementRange")] & 1) == 0 && objc_msgSend(location, "compare:", objc_msgSend(objc_msgSend(v106, "elementRange"), "location")) != -1)
            {
              continue;
            }
          }
        }

        goto LABEL_176;
      }

      if (!NextElement)
      {
        goto LABEL_207;
      }

LABEL_176:
      range3 = [(NSTextRange *)[(NSTextElement *)v85 elementRange] range];
      v86 = options & 1;
      if ((options & 1) != 0 && range3 <= range)
      {
        if ([(NSTextElement *)v85 parentElement]== v22)
        {
          goto LABEL_179;
        }
      }

      else if ((options & 1) == 0 && range3 + v108 >= v124 + range && ![(NSTextElement *)v85 _firstRepresentableChildElement])
      {
LABEL_179:

        v124 = 0;
        v22 = 0;
        v134 = 0;
        range = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_183:
      range4 = [(NSTextRange *)[(NSTextElement *)v85 elementRange] range];
      v111 = v110;
      if ((v130 & 1) != 0 && ([-[NSTextContentStorage delegate](self "delegate")] & 1) == 0)
      {
        if (v86)
        {
          v114 = 0;
        }

        else
        {
          v114 = v111;
        }

        v21 = v114 + range4;
      }

      else
      {
        v112 = (*(block + 2))(block, v85);
        if (v86)
        {
          v113 = 0;
        }

        else
        {
          v113 = v111;
        }

        v21 = v113 + range4;
        if (!v112)
        {
          goto LABEL_207;
        }
      }

      v142 = 0;
      if (!v22 && v21 == v123)
      {
        v21 = v123;
        goto LABEL_207;
      }

      continue;
    }

    break;
  }

  if (v22)
  {
    v85 = v22;
    v22 = 0;
    v86 = options & 1;
    goto LABEL_183;
  }

LABEL_207:
  v9 = [[NSCountableTextLocation alloc] initWithIndex:v21];
  __NSTextContentStorageFlushUncachedTextElements(self, v137, 1);
  self->_activeEnumerationCache = v121;
  if (v121)
  {
    v121->var1 = xmmword_18E856180;
  }

LABEL_210:
  objc_sync_exit(self);
  return v9;
}

- (void)replaceContentsInRange:(id)range withTextElements:(id)elements
{
  objc_sync_enter(self);
  v45.location = [range range];
  location = v45.location;
  length = v45.length;
  v8 = NSIntersectionRange(v45, self->_cachedRange);
  v44 = 0uLL;
  v43 = 0;
  if (!location)
  {
    v13 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  if (location == v8.location)
  {
    indexTable = self->_indexTable;
    *&v11 = _NSBlockNumberForIndex(indexTable, location, &v44).n128_u64[0];
    if (indexTable->_gapBlockIndex <= v10)
    {
      v12 = indexTable->_maxBlocks - indexTable->_numBlocks;
    }

    else
    {
      v12 = 0;
    }

    v17 = indexTable->_runs + (indexTable->_elementSize + 8) * (v12 + v10);
    v16 = (v17 + 8);
    if (*(v17 + 8) != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v44.n128_u64[0] == location || (v18 = *[(NSStorage *)self->_elements elementAtIndex:v11], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v15 = 0;
      }

      else
      {
        attributedString = [v18 attributedString];
        v15 = [attributedString attributedSubstringFromRange:{0, &location[-v44.n128_u64[0]]}];
      }

      v13 = v44.n128_u64[0];
      v14 = *(v17 + 16);
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v13 = location;
LABEL_11:
  v14 = v13 - __NSTextContentStorageQueryDocumentLocationDeltaForLocation(self, v13, 0);
  if (location != v8.location)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (*v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_19:
    [(NSString *)[(NSAttributedString *)[(NSTextContentStorage *)self attributedString] string] getParagraphStart:&v43 end:0 contentsEnd:0 forRange:v14, 1];
    if (v43 != v14)
    {
      attributedString2 = [(NSTextContentStorage *)self attributedString];
      v15 = [(NSAttributedString *)attributedString2 attributedSubstringFromRange:v43, v14 - v43];
      v13 -= [(NSAttributedString *)v15 length];
      v14 = v43;
    }
  }

  if (v15)
  {
    location = [elements mutableCopy];
    [elements firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [(NSAttributedString *)v15 mutableCopy];
      [v21 appendAttributedString:{objc_msgSend(objc_msgSend(elements, "firstObject"), "attributedString")}];
      v22 = [[NSTextParagraph alloc] initWithAttributedString:v21];
      [location replaceObjectAtIndex:0 withObject:v22];
    }

    else
    {
      v22 = [[NSTextParagraph alloc] initWithAttributedString:v15];
      [location insertObject:v22 atIndex:0];
    }
  }

  else
  {
    location = 0;
  }

LABEL_27:
  v23 = v13 + length;
  if (v13 + length < 2 || v23 >= self->_modifiedDocumentLengthDelta + [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] length])
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_33;
  }

  v24 = v8.location + v8.length;
  if (v23 != v8.location + v8.length)
  {
    v30 = 0;
    v31 = 0;
LABEL_42:
    v33 = v13 + length;
    goto LABEL_43;
  }

  v25 = self->_indexTable;
  *&v27 = _NSBlockNumberForIndex(v25, v23 - 1, &v44).n128_u64[0];
  if (v25->_gapBlockIndex <= v26)
  {
    v28 = v25->_maxBlocks - v25->_numBlocks;
  }

  else
  {
    v28 = 0;
  }

  v32 = (&v25->_runs->var0 + (v25->_elementSize + 8) * (v28 + v26));
  v31 = v32 + 1;
  if (v32[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = 0;
    goto LABEL_42;
  }

  v34 = v44.n128_u64[1];
  v35 = v44.n128_u64[0];
  if (v44.n128_u64[1] + v44.n128_u64[0] == v23 || (v36 = *[(NSStorage *)self->_elements elementAtIndex:v27], objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v34 = v44.n128_u64[1], v35 = v44.n128_u64[0], (isKindOfClass & 1) == 0))
  {
    v38 = 0;
  }

  else
  {
    v38 = [objc_msgSend(v36 "attributedString")];
    v34 = v44.n128_u64[1];
    v35 = v44.n128_u64[0];
  }

  length = v35 - v13 + v34;
  v29 = v32[2] - v14 + v32[3];
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v38;
    goto LABEL_52;
  }

  v33 = v35 + v34;
  v30 = v38;
  v24 = v8.location + v8.length;
LABEL_43:
  v29 = v33 - v14 - __NSTextContentStorageQueryDocumentLocationDeltaForLocation(self, v33, 0);
  if (v23 != v24)
  {
LABEL_53:
    [(NSString *)[(NSAttributedString *)[(NSTextContentStorage *)self attributedString] string] getParagraphStart:0 end:&v43 contentsEnd:0 forRange:v29 + v14 - 1, 1];
    if (v29 + v14 != v43)
    {
      attributedString3 = [(NSTextContentStorage *)self attributedString];
      v30 = [(NSAttributedString *)attributedString3 attributedSubstringFromRange:v29 + v14, v43 - (v29 + v14)];
      length += [(NSAttributedString *)v30 length];
      v29 = v43 - v14;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_53;
  }

LABEL_55:
  if (v30)
  {
    if (!location)
    {
      location = [elements mutableCopy];
    }

    [elements lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [objc_msgSend(objc_msgSend(elements "lastObject")];
      [v40 appendAttributedString:v30];
      v41 = [[NSTextParagraph alloc] initWithAttributedString:v40];
      [location replaceObjectAtIndex:objc_msgSend(location withObject:{"count") - 1, v41}];
    }

    else
    {
      v41 = [[NSTextParagraph alloc] initWithAttributedString:v30];
      [location addObject:v41];
    }
  }

LABEL_33:
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __NSTextContentStorageQueryDocumentLocationDeltaForLocation(self, v13, 0);
  }

  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __NSTextContentStorageQueryDocumentLocationDeltaForLocation(self, length + v13, 0);
  }

  objc_sync_exit(self);
}

- (void)synchronizeToBackingStore:(id)store
{
  objc_sync_enter(self);
  if ([(NSTextContentStorage *)self textStorage])
  {
    textStorage = [(NSTextContentStorage *)self textStorage];
  }

  else
  {
    textStorage = objc_alloc_init(MEMORY[0x1E696AD40]);
  }

  v5 = textStorage;
  memset(v23, 0, sizeof(v23));
  p_modifiedRange = &self->_modifiedRange;
  location = self->_modifiedRange.location;
  length = self->_modifiedRange.length;
  v21 = 0;
  v22 = 0;
  [(NSTextStorage *)textStorage beginEditing];
  v9 = &off_18E856000;
  v10 = 0x1EAC99000uLL;
  if (self->_modifiedRange.length)
  {
    v11 = length + location;
    if (length + location > p_modifiedRange->location)
    {
      v12 = 0;
      v13 = 0;
      v20 = xmmword_18E856180;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v16 = [(NSRunStorage *)self->_indexTable elementAtIndex:v11 - 1 effectiveRange:&v21, v20];
        v17 = v16[1];
        v23[0] = *v16;
        v23[1] = v17;
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = *(&v23[0] + 1);
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (*&v23[1] + *(&v23[0] + 1) == v15 && *&v23[0] + 1 == v14)
          {
            v18 = v15;
          }

          else
          {
            __NSTextContentStorageFillAttributedStringWithElementsInIndexRange(self, v14, v12, v5, v15, v13);
            v13 = 0;
            v12 = 0;
            v18 = 0x7FFFFFFFFFFFFFFFLL;
            v19 = *(&v23[0] + 1);
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        if (v19 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v18;
        }

        else
        {
          v14 = *&v23[0];
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = *&v23[1];
          }

          else
          {
            v13 = v18 + v13 - v19;
          }

          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = 1;
          }

          else
          {
            ++v12;
          }

          *(v23 + 8) = v20;
          [(NSRunStorage *)self->_indexTable replaceElementsInRange:v21 withElement:v22 coalesceRuns:v23, 1];
          v15 = v19;
        }

        v11 = v21;
      }

      while (v21 > p_modifiedRange->location);
      v10 = 0x1EAC99000;
      v9 = &off_18E856000;
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        __NSTextContentStorageFillAttributedStringWithElementsInIndexRange(self, v14, v12, v5, v15, v13);
      }
    }
  }

  else if (self->_modifiedDocumentLengthDelta >= 1)
  {
    [(NSTextStorage *)v5 replaceCharactersInRange:p_modifiedRange->location withString:?];
  }

  __NSTextContentStorageEnumerateCachedElementsInElementIndexRange(self, 0, [(NSStorage *)self->_elements count], &__block_literal_global_234_0);
  *p_modifiedRange = *(v9 + 24);
  *(&self->super.super.isa + *(v10 + 3756)) = 0;
  [(NSTextStorage *)v5 endEditing];
  if (![(NSTextContentStorage *)self textStorage])
  {
    [(NSTextContentStorage *)self setAttributedString:v5];
  }

  objc_sync_exit(self);
}

void __50__NSTextContentStorage_synchronizeToBackingStore___block_invoke(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a2;
    v5 = &a2[a4];
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*v4 synchronizeDocumentRange];
      }

      ++v4;
    }

    while (v4 < v5);
  }
}

- (id)locationFromLocation:(id)location withOffset:(NSInteger)offset
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"-[%@ %@] received invalid location %@", self, NSStringFromSelector(a2), location}];
  }

  if ([location isEndOfDocument])
  {
    characterIndex = [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] length];
  }

  else
  {
    characterIndex = [location characterIndex];
  }

  v9 = characterIndex + offset;
  if (characterIndex + offset < 0 || v9 > [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] length])
  {
    return 0;
  }

  if (!offset)
  {
    return location;
  }

  v11 = [[NSCountableTextLocation alloc] initWithIndex:v9];

  return v11;
}

- (NSInteger)offsetFromLocation:(id)from toLocation:(id)to
{
  if ([from isEndOfDocument])
  {
    characterIndex = [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] length];
  }

  else
  {
    characterIndex = [from characterIndex];
  }

  v9 = characterIndex;
  if ([to isEndOfDocument])
  {
    characterIndex2 = [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] length];
  }

  else
  {
    characterIndex2 = [to characterIndex];
  }

  v11 = characterIndex2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"-[%@ %@] received invalid locations %@ %@", self, NSStringFromSelector(a2), from, to}];
  }

  return v11 - v9;
}

- (NSTextRange)adjustedRangeFromRange:(NSTextRange *)textRange forEditingTextSelection:(BOOL)forEditingTextSelection
{
  p_editedRange = &self->_editedRange;
  if (self->_editedRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = forEditingTextSelection;
  range = [(NSTextRange *)textRange range];
  v9 = v8;
  location = p_editedRange->location;
  length = p_editedRange->length;
  editedDelta = self->_editedDelta;
  v13 = length - editedDelta;
  if (v5)
  {
    if (location >= range + v8 && (location != range || v13 != v8))
    {
      return 0;
    }

    v9 = 0;
    v15 = length + location;
  }

  else
  {
    v16 = v13 + location;
    if (editedDelta)
    {
      v17 = range >= v16;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      return 0;
    }

    v15 = editedDelta + range;
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  string = [(NSAttributedString *)[(NSTextContentStorage *)self attributedString] string];
  v19 = [(NSString *)string length];
  v20 = v19;
  v21 = v15 + v9;
  if (v15 && v15 < v19 - 1)
  {
    RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
    if (RangeOfCharacterClusterAtIndex >= v15 || v15 >= RangeOfCharacterClusterAtIndex + v23)
    {
      if ([(NSString *)string characterAtIndex:v15]== 10 && [(NSString *)string characterAtIndex:v15 - 1]== 13)
      {
        ++v15;
        if (v9)
        {
          v9 = v21 - v15;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      if (v9)
      {
        v9 = v21 - RangeOfCharacterClusterAtIndex;
      }

      else
      {
        v9 = 0;
      }

      v15 = RangeOfCharacterClusterAtIndex;
    }
  }

  if (v9)
  {
    v26 = v21 < 2;
    v25 = v15 + v9;
    v26 = !v26 && v25 < v20;
    if (v26)
    {
      v29 = CFStringGetRangeOfCharacterClusterAtIndex();
      if (v29 >= v25)
      {
        if ([(NSString *)string characterAtIndex:v15 + v9]== 10 && [(NSString *)string characterAtIndex:v25 - 1]== 13)
        {
          ++v9;
        }
      }

      else
      {
        v9 = v30 - v9 + v29;
      }
    }
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v28 = [[NSCountableTextRange alloc] initWithRange:v15, v9];

  return v28;
}

@end