@interface NSTextStorage
+ (NSTextStorage)allocWithZone:(_NSZone *)zone;
+ (void)initialize;
- (BOOL)_shouldFixFontAttributes;
- (BOOL)_shouldSetOriginalFontAttribute;
- (BOOL)beginEditTrackingForContextRange:(_NSRange)range;
- (Class)_intentResolver;
- (NSRange)editedRange;
- (NSTextStorage)init;
- (NSTextStorage)initWithCoder:(id)coder;
- (_NSRange)_rangeByEstimatingAttributeFixingForRange:(_NSRange)range;
- (_NSRange)endEditTracking;
- (id)delegate;
- (void)_fixAttributesInRange:(_NSRange)range;
- (void)_notifyEdited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange;
- (void)_setEditedRange:(_NSRange)range;
- (void)addLayoutManager:(NSLayoutManager *)aLayoutManager;
- (void)beginEditing;
- (void)coordinateAccess:(id)access;
- (void)coordinateEditing:(id)editing;
- (void)coordinateReading:(id)reading;
- (void)dealloc;
- (void)edited:(NSTextStorageEditActions)editedMask range:(NSRange)editedRange changeInLength:(NSInteger)delta;
- (void)encodeWithCoder:(id)coder;
- (void)endEditing;
- (void)ensureAttributesAreFixedInRange:(NSRange)range;
- (void)finalize;
- (void)fixFontAttributeInRange:(_NSRange)range;
- (void)fixGlyphInfoAttributeInRange:(_NSRange)range;
- (void)fontSetChanged;
- (void)invalidateAttributesInRange:(NSRange)range;
- (void)processEditing;
- (void)removeLayoutManager:(NSLayoutManager *)aLayoutManager;
- (void)setDelegate:(id)delegate;
@end

@implementation NSTextStorage

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = dyld_program_sdk_at_least();
    __NSAllowsMutableEditedRange = v3 ^ 1;
    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_class();
      InstanceMethod = class_getInstanceMethod(v4, sel__setEditedRange_);
      if (InstanceMethod)
      {
        v6 = InstanceMethod;
        Implementation = method_getImplementation(InstanceMethod);
        Description = method_getDescription(v6);
        v9 = objc_opt_class();
        types = Description->types;

        class_addMethod(v9, sel_setEditedRange_, Implementation, types);
      }
    }
  }
}

- (NSTextStorage)init
{
  v7.receiver = self;
  v7.super_class = NSTextStorage;
  v2 = [(NSTextStorage *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_layoutManagers = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{-[NSTextStorage zone](v2, "zone")), "initWithCapacity:", 1}];
    v3->_editedRange = xmmword_18E856180;
    v3->_flags = (*(&v3->_flags + 1) << 8);
    v4 = objc_opt_new();
    v3->_sideData = v4;
    objc_storeWeak((v4 + 8), 0);
    *(v3->_sideData + 1) = xmmword_18E856180;
    v5 = objc_opt_class();
    if ([NSStringFromClass(v5) isEqualToString:@"SwiftUI.NSSwiftMutableAttributedString"])
    {
      [(NSTextStorage *)v3 _setForceFixAttributes:0];
      [(NSTextStorage *)v3 setEnsuresFixingAttributes:0];
      [(NSTextStorage *)v3 set_isSwiftAttributedString:1];
    }

    else
    {
      [(NSTextStorage *)v3 _setForceFixAttributes:1];
      [(NSTextStorage *)v3 setEnsuresFixingAttributes:1];
    }
  }

  return v3;
}

- (id)delegate
{
  sideData = self->_sideData;
  if (sideData)
  {
    return objc_loadWeak(sideData + 1);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  layoutManagers = self->_layoutManagers;
  if (layoutManagers)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __24__NSTextStorage_dealloc__block_invoke;
    v5[3] = &unk_1E7267EF0;
    v5[4] = self;
    [(NSMutableArray *)layoutManagers enumerateObjectsUsingBlock:v5];
  }

  [(NSTextStorage *)self setTextStorageObserver:0];
  if (self->_sideData)
  {
    [(NSTextStorage *)self setDelegate:0];
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  self->_editingTracker = 0;
  if ([(NSTextStorage *)self retainCount]< 2)
  {
    v4.receiver = self;
    v4.super_class = NSTextStorage;
    [(NSTextStorage *)&v4 dealloc];
  }

  else
  {
  }
}

- (void)beginEditing
{
  [(NSTextStorage *)self _lockForWriting];
  flags = self->_flags;
  if (!HIWORD(*&flags))
  {
    [-[NSTextStorage textStorageObserver](self "textStorageObserver")];
    flags = self->_flags;
  }

  self->_flags = (*&flags + 0x10000);
}

- (void)endEditing
{
  flags = self->_flags;
  if (*&flags >> 17)
  {
    self->_flags = (*&flags - 0x10000);
  }

  else
  {
    if (self->_editedRange.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_flags = (*&flags | 0x10000);
      [(NSTextStorage *)self processEditing];
      self->_editedRange.location = 0x7FFFFFFFFFFFFFFFLL;
      self->_editedDelta = 0;
      flags = self->_flags;
    }

    self->_flags = (*&flags & 0xFF00);
    [-[NSTextStorage textStorageObserver](self "textStorageObserver")];
  }

  [(NSTextStorage *)self _unlock];
}

- (BOOL)_shouldFixFontAttributes
{
  if (!self->_ensuresFixingAttributes)
  {
    return 0;
  }

  if (self->_ensuresFixingFontAttributes || [(NSArray *)[(NSTextStorage *)self layoutManagers] count])
  {
    return 1;
  }

  return self->_textStorageObserver == 0;
}

- (void)processEditing
{
  v3 = [(NSMutableArray *)self->_layoutManagers count];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"NSTextStorageWillProcessEditingNotification" object:self];
  if (*(&self->_flags + 1))
  {
    [-[NSTextStorage delegate](self "delegate")];
  }

  location = self->_editedRange.location;
  length = self->_editedRange.length;
  [(NSTextStorage *)self invalidateAttributesInRange:location, length];
  [defaultCenter postNotificationName:@"NSTextStorageDidProcessEditingNotification" object:self];
  if ((*(&self->_flags + 1) & 2) != 0)
  {
    [-[NSTextStorage delegate](self "delegate")];
  }

  if (v3 || ![(NSMutableArray *)self->_layoutManagers count])
  {
    flags = self->_flags;
    editedDelta = self->_editedDelta;
    v9 = self->_editedRange.location;
    v10 = self->_editedRange.length;

    [(NSTextStorage *)self _notifyEdited:flags range:location changeInLength:length invalidatedRange:editedDelta, v9, v10];
  }
}

- (Class)_intentResolver
{
  intentResolver = self->_intentResolver;
  if (!intentResolver)
  {
    v4.receiver = self;
    v4.super_class = NSTextStorage;
    return [(NSTextStorage *)&v4 _intentResolver];
  }

  return intentResolver;
}

- (NSRange)editedRange
{
  p_editedRange = &self->_editedRange;
  location = self->_editedRange.location;
  length = p_editedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)_setEditedRange:(_NSRange)range
{
  if (__NSAllowsMutableEditedRange == 1)
  {
    self->_editedRange = range;
  }
}

+ (NSTextStorage)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  if (objc_opt_class() == self)
  {
    selfCopy = objc_opt_class();
  }

  return NSAllocateObject(selfCopy, 0, zone);
}

uint64_t __24__NSTextStorage_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  result = [a2 textStorage];
  if (v3 == result)
  {

    return [a2 setTextStorage:0];
  }

  return result;
}

- (void)finalize
{
  if (self->_sideData)
  {
    [(NSTextStorage *)self setDelegate:0];
  }

  v3.receiver = self;
  v3.super_class = NSTextStorage;
  [(NSTextStorage *)&v3 finalize];
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    delegate = [(NSTextStorage *)self delegate];
    v6.receiver = self;
    v6.super_class = NSTextStorage;
    [(NSTextStorage *)&v6 encodeWithCoder:coder];
    [coder encodeConditionalObject:delegate forKey:@"NSDelegate"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NSTextStorage;
    [(NSTextStorage *)&v7 encodeWithCoder:coder];
  }
}

- (NSTextStorage)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    v8.receiver = self;
    v8.super_class = NSTextStorage;
    v5 = [(NSTextStorage *)&v8 initWithCoder:coder];
    v6 = [coder decodeObjectForKey:@"NSDelegate"];
    if (v6)
    {
      [(NSTextStorage *)v5 setDelegate:v6];
    }

    [(NSTextStorage *)v5 setEnsuresFixingAttributes:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSTextStorage;
    return [(NSTextStorage *)&v9 initWithCoder:coder];
  }

  return v5;
}

- (void)addLayoutManager:(NSLayoutManager *)aLayoutManager
{
  v5 = [(NSMutableArray *)self->_layoutManagers count];
  [(NSMutableArray *)self->_layoutManagers addObject:aLayoutManager];
  [(NSLayoutManager *)aLayoutManager setTextStorage:self];
  if (!v5 && ![(NSAttributedString *)self _isStringDrawingTextStorage])
  {
    layoutManagers = self->_layoutManagers;

    [(NSMutableArray *)layoutManagers count];
  }
}

- (void)removeLayoutManager:(NSLayoutManager *)aLayoutManager
{
  selfCopy = self;
  [(NSLayoutManager *)aLayoutManager setTextStorage:0];
  v6 = aLayoutManager;
  v7 = [(NSMutableArray *)self->_layoutManagers indexOfObjectIdenticalTo:aLayoutManager];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_layoutManagers removeObjectAtIndex:v7];
  }

  layoutManagers = self->_layoutManagers;

  [(NSMutableArray *)layoutManagers count];
}

- (void)coordinateReading:(id)reading
{
  _lockForReading = [(NSTextStorage *)self _lockForReading];
  (*(reading + 2))(reading, self);
  if (_lockForReading)
  {

    [(NSTextStorage *)self _unlock];
  }
}

- (void)coordinateEditing:(id)editing
{
  [(NSTextStorage *)self beginEditing];
  (*(editing + 2))(editing, self);
  [(NSTextStorage *)self endEditing];
}

- (void)edited:(NSTextStorageEditActions)editedMask range:(NSRange)editedRange changeInLength:(NSInteger)delta
{
  length = editedRange.length;
  location = editedRange.location;
  p_editedRange = &self->_editedRange;
  v10 = self->_editedRange.location;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    p_editedRange->location = editedRange.location;
    self->_editedRange.length = editedRange.length + delta;
    v11 = delta;
  }

  else
  {
    if (editedRange.location >= v10)
    {
      v12 = self->_editedRange.location;
    }

    else
    {
      v12 = editedRange.location;
    }

    v13 = self->_editedRange.length + v10;
    if (editedRange.location + editedRange.length > v13)
    {
      v13 = editedRange.location + editedRange.length;
    }

    p_editedRange->location = v12;
    self->_editedRange.length = delta - v12 + v13;
    v11 = self->_editedDelta + delta;
  }

  self->_editedDelta = v11;
  if (delta)
  {
    sideData = self->_sideData;
    v16 = sideData + 2;
    v15 = sideData[2];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = editedRange.location + editedRange.length;
      if (editedRange.location + editedRange.length > v15)
      {
        v18 = sideData[3];
        if (v18 + v15 <= editedRange.location)
        {
          goto LABEL_22;
        }

        if (v15 >= editedRange.location)
        {
          v19 = editedRange.location;
        }

        else
        {
          v19 = sideData[2];
        }

        if (v18 + v15 > v17)
        {
          v17 = v18 + v15;
        }

        v20 = v17 - v19;
        if (editedRange.location != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v19;
          v18 = v20;
        }

        sideData[2] = v15;
        sideData[3] = v18;
        v21 = self->_sideData;
        v22 = v21[3];
        v16 = v21 + 3;
        v15 = v22;
      }

      *v16 = v15 + delta;
    }
  }

LABEL_22:
  flags = self->_flags;
  v24 = (*&flags | editedMask);
  self->_flags = v24;
  if (!HIWORD(*&flags))
  {
    if (p_editedRange->location != 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_flags = (*&v24 | 0x10000);
      [(NSTextStorage *)self processEditing];
      p_editedRange->location = 0x7FFFFFFFFFFFFFFFLL;
      self->_editedDelta = 0;
      v24 = self->_flags;
    }

    self->_flags = (*&v24 & 0xFFFFFF00);
  }

  editingTracker = self->_editingTracker;
  if (editingTracker)
  {

    [(NSWritingToolsEditTracker *)editingTracker addEditForRange:location lengthDelta:length, delta];
  }
}

- (_NSRange)_rangeByEstimatingAttributeFixingForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  string = [(NSTextStorage *)self string];

  v6 = [string paragraphRangeForRange:{location, length}];
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)invalidateAttributesInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(NSTextStorage *)self fixesAttributesLazily]|| ![(NSTextStorage *)self ensuresFixingAttributes])
  {
    sideData = self->_sideData;
    v7 = sideData[2];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sideData[2] = location;
      sideData[3] = length;
    }

    else
    {
      v8 = sideData[3];
      if (v7 >= location)
      {
        v9 = location;
      }

      else
      {
        v9 = sideData[2];
      }

      v10 = v8 + v7;
      if (v8 + v7 <= location + length)
      {
        v10 = location + length;
      }

      v11 = v10 - v9;
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = sideData[3];
      }

      else
      {
        v7 = v9;
        v12 = v11;
      }

      sideData[2] = v7;
      sideData[3] = v12;
    }

    if ([(NSTextStorage *)self _isEditing])
    {
      v13 = self->_editedRange.location;
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        self->_editedRange.location = [(NSTextStorage *)self _rangeByEstimatingAttributeFixingForRange:v13, self->_editedRange.length];
        self->_editedRange.length = v14;
      }
    }
  }

  else
  {

    [(NSTextStorage *)self _fixAttributesInRange:location, length];
  }
}

- (void)ensureAttributesAreFixedInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*&self->_flags < 0x10000u || [(NSTextStorage *)self _forceFixAttributes]) && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    sideData = self->_sideData;
    v7 = sideData[2];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = sideData[3];
      if (location <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = location;
      }

      v10 = location + length;
      v11 = v8 + v7;
      if (location + length >= v8 + v7)
      {
        v10 = v8 + v7;
      }

      v12 = v10 >= v9;
      v13 = v10 > v9;
      v14 = v10 - v9;
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if (v13)
      {
        v16 = v9;
      }

      else
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0;
      }

      if (v13)
      {
        if (location > v7)
        {
          v13 = v11 > v17 + v9;
          v18 = v11 - (v17 + v9);
          if (v13 && v18 >= v9 - v7)
          {
            v17 += v9 - v7;
            v9 = v7;
          }

          else
          {
            v19 = [(NSTextStorage *)self _rangeByEstimatingAttributeFixingForRange:v16, v15];
            v20 = self->_sideData;
            v7 = v20[2];
            v8 = v20[3];
            if (v19 <= v7)
            {
              v9 = v7;
            }

            else
            {
              v9 = v19;
            }

            v17 = v8 + v7 - v9;
          }
        }

        v21 = v8 + v7;
        v22 = v21 - v9;
        v13 = v9 + 0x10000 > v21;
        v23 = 0x10000;
        if (v13)
        {
          v23 = v22;
        }

        if (v17 >> 16)
        {
          v24 = v17;
        }

        else
        {
          v24 = v23;
        }

        v25 = [(NSTextStorage *)self length];
        if (v24 + v9 <= v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25 - v9;
        }

        _lockForWriting = [(NSTextStorage *)self _lockForWriting];
        flags = self->_flags;
        *(&self->_flags + 1) = ((*&flags & 0xFFFF0000) + 0x10000) >> 16;
        editedRange = self->_editedRange;
        editedDelta = self->_editedDelta;
        v30 = flags;
        self->_editedRange.location = v9;
        self->_editedRange.length = v26;
        self->_editedDelta = 0;
        v31 = self->_sideData;
        v32 = v31[2];
        if (v9 <= v32)
        {
          if (v26 == v31[3])
          {
            *(v31 + 1) = xmmword_18E856180;
          }

          else
          {
            v31[2] = v32 + v26;
            *(self->_sideData + 3) -= v26;
          }
        }

        else
        {
          v31[3] = v9 - v32;
        }

        [(NSTextStorage *)self _setForceFixAttributes:0, editedRange];
        [(NSTextStorage *)self _fixAttributesInRange:v9, v26];
        [(NSTextStorage *)self _setForceFixAttributes:1];
        *(&self->_flags + 1) = ((*(&self->_flags + 1) << 16) - 0x10000) >> 16;
        self->_editedRange = v34;
        self->_editedDelta = editedDelta;
        *&self->_flags = v30;
        if (_lockForWriting)
        {

          [(NSTextStorage *)self _unlock];
        }
      }
    }
  }
}

- (void)_notifyEdited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange
{
  length = invalidatedRange.length;
  location = invalidatedRange.location;
  v9 = range.length;
  v10 = range.location;
  v13 = [(NSMutableArray *)self->_layoutManagers count];
  if (v13)
  {
    v14 = v13 - 1;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->_layoutManagers objectAtIndex:{v14--), "processEditingForTextStorage:edited:range:changeInLength:invalidatedRange:", self, edited, v10, v9, length, location, length}];
    }

    while (v14 != -1);
  }

  [-[NSTextStorage textStorageObserver](self "textStorageObserver")];
}

- (void)fontSetChanged
{
  _lockForWriting = [(NSTextStorage *)self _lockForWriting];
  [(NSTextStorage *)self invalidateAttributesInRange:0, [(NSTextStorage *)self length]];
  if (_lockForWriting)
  {

    [(NSTextStorage *)self _unlock];
  }
}

- (void)setDelegate:(id)delegate
{
  delegate = [(NSTextStorage *)self delegate];
  if (delegate != delegate)
  {
    [(NSTextStorage *)delegate setDelegate:delegate];
  }
}

- (BOOL)_shouldSetOriginalFontAttribute
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  shouldSetOriginalFontAttribute = self->_shouldSetOriginalFontAttribute;
  if ([(NSTextStorage *)self _attributeFixingInProgress])
  {
    layoutManagers = [(NSTextStorage *)self layoutManagers];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__NSTextStorage__shouldSetOriginalFontAttribute__block_invoke;
    v6[3] = &unk_1E7267140;
    v6[4] = &v7;
    [(NSArray *)layoutManagers enumerateObjectsUsingBlock:v6];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __48__NSTextStorage__shouldSetOriginalFontAttribute__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 allowsOriginalFontMetricsOverride];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)fixFontAttributeInRange:(_NSRange)range
{
  if (self->_fontFixingDisabledCount <= 0)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = NSTextStorage;
    [(NSMutableAttributedString *)&v5 fixFontAttributeInRange:range.location, range.length];
  }
}

- (void)fixGlyphInfoAttributeInRange:(_NSRange)range
{
  if (self->_fontFixingDisabledCount <= 0)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = NSTextStorage;
    [(NSMutableAttributedString *)&v5 fixGlyphInfoAttributeInRange:range.location, range.length];
  }
}

- (void)_fixAttributesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _shouldFixFontAttributes = [(NSTextStorage *)self _shouldFixFontAttributes];
  if (!_shouldFixFontAttributes)
  {
    ++self->_fontFixingDisabledCount;
  }

  [(NSMutableAttributedString *)self fixAttributesInRange:location, length];
  if (!_shouldFixFontAttributes)
  {
    --self->_fontFixingDisabledCount;
  }
}

- (BOOL)beginEditTrackingForContextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (self->_editingTracker)
  {
    v8 = 0;
  }

  else
  {
    v8 = location + length <= [(NSTextStorage *)self length];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__NSTextStorage_beginEditTrackingForContextRange___block_invoke;
  v10[3] = &unk_1E7267F18;
  v10[4] = self;
  v10[5] = location;
  v10[6] = length;
  _UIFoundationAssert(self, v7, v8, v10);
  if (self->_editingTracker)
  {
    [(NSTextStorage *)self endEditTracking];
  }

  self->_editingTracker = [[NSWritingToolsEditTracker alloc] initWithContextRange:location, length];
  return 0;
}

- (_NSRange)endEditTracking
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  _UIFoundationAssert(self, v4, self->_editingTracker != 0, &__block_literal_global_26);
  editingTracker = self->_editingTracker;
  if (editingTracker)
  {
    currentContextRange = [(NSWritingToolsEditTracker *)editingTracker currentContextRange];
    v8 = v7;
    v9 = self->_editingTracker;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    currentContextRange = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_editingTracker = 0;
  v10 = currentContextRange;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)coordinateAccess:(id)access
{
  [(NSTextStorage *)self _lockForWriting];
  (*(access + 2))(access, self);

  [(NSTextStorage *)self _unlock];
}

- (uint64_t)setDelegate:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v6 = *(a2 + 48);
  if (v6)
  {
    objc_storeWeak((v6 + 8), a3);
  }

  v7 = [a2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  *(a2 + 32) = *(a2 + 32) & 0xFFFFFEFF | v8;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = 512;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 32) = *(a2 + 32) & 0xFFFFFDFF | v10;
  return result;
}

@end