@interface _UIDatePickerLinkedLabelStorage
- (BOOL)_cachedSizeForKey:(id)a3 size:(CGSize *)a4;
- (CGSize)_sizeForText:(id)a3 font:(id)a4 height:(double)a5 overrideAttributes:(id)a6;
- (_UIDatePickerLinkedLabelStorage)init;
- (void)_attachLabel:(id)a3;
- (void)_detachLabel:(id)a3;
- (void)_notifyAllLabelsExcept:(id)a3;
- (void)_setCachedSize:(CGSize)a3 forKey:(id)a4;
- (void)_setPriority:(int64_t)a3 label:(id)a4;
@end

@implementation _UIDatePickerLinkedLabelStorage

- (_UIDatePickerLinkedLabelStorage)init
{
  v10.receiver = self;
  v10.super_class = _UIDatePickerLinkedLabelStorage;
  v2 = [(_UIDatePickerLinkedLabelStorage *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sizingLabel = v2->_sizingLabel;
    v2->_sizingLabel = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    attachedLabels = v2->_attachedLabels;
    v2->_attachedLabels = v5;

    v7 = objc_opt_new();
    sizeCache = v2->_sizeCache;
    v2->_sizeCache = v7;

    [(NSCache *)v2->_sizeCache setCountLimit:40];
  }

  return v2;
}

- (void)_attachLabel:(id)a3
{
  [(NSHashTable *)self->_attachedLabels addObject:a3];

  [(_UIDatePickerLinkedLabelStorage *)self _resetPriority];
}

- (void)_detachLabel:(id)a3
{
  [(NSHashTable *)self->_attachedLabels removeObject:a3];

  [(_UIDatePickerLinkedLabelStorage *)self _resetPriority];
}

- (void)_notifyAllLabelsExcept:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_attachedLabels;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 != v4)
        {
          [v10 _setNeedsStorageSync];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_setPriority:(int64_t)a3 label:(id)a4
{
  if (self->_currentPriority != a3)
  {
    self->_currentPriority = a3;
    [(_UIDatePickerLinkedLabelStorage *)self _notifyAllLabelsExcept:a4];
  }
}

- (CGSize)_sizeForText:(id)a3 font:(id)a4 height:(double)a5 overrideAttributes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [_UIDatePickerLinkedLabelCacheKey keyWithText:v10 font:v11 height:a5];
  v19 = 0.0;
  v20 = 0.0;
  if (![(_UIDatePickerLinkedLabelStorage *)self _cachedSizeForKey:v13 size:&v19])
  {
    v14 = _UIAttributedTitleForTitle(v10, v11, v12);
    [(UILabel *)self->_sizingLabel setAttributedText:v14];

    [(UILabel *)self->_sizingLabel sizeThatFits:INFINITY, a5];
    v19 = v15;
    v20 = v16;
    [(_UIDatePickerLinkedLabelStorage *)self _setCachedSize:v13 forKey:?];
  }

  v17 = v19;
  v18 = v20;
  result.height = v18;
  result.width = v17;
  return result;
}

- (BOOL)_cachedSizeForKey:(id)a3 size:(CGSize *)a4
{
  v5 = [(NSCache *)self->_sizeCache objectForKey:a3];
  v6 = v5;
  if (a4 && v5)
  {
    [v5 CGSizeValue];
    a4->width = v7;
    a4->height = v8;
  }

  return v6 != 0;
}

- (void)_setCachedSize:(CGSize)a3 forKey:(id)a4
{
  height = a3.height;
  width = a3.width;
  sizeCache = self->_sizeCache;
  v7 = MEMORY[0x1E696B098];
  v8 = a4;
  v9 = [v7 valueWithCGSize:{width, height}];
  [(NSCache *)sizeCache setObject:v9 forKey:v8];
}

@end