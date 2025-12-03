@interface _UIDatePickerLinkedLabelStorage
- (BOOL)_cachedSizeForKey:(id)key size:(CGSize *)size;
- (CGSize)_sizeForText:(id)text font:(id)font height:(double)height overrideAttributes:(id)attributes;
- (_UIDatePickerLinkedLabelStorage)init;
- (void)_attachLabel:(id)label;
- (void)_detachLabel:(id)label;
- (void)_notifyAllLabelsExcept:(id)except;
- (void)_setCachedSize:(CGSize)size forKey:(id)key;
- (void)_setPriority:(int64_t)priority label:(id)label;
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

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    attachedLabels = v2->_attachedLabels;
    v2->_attachedLabels = weakObjectsHashTable;

    v7 = objc_opt_new();
    sizeCache = v2->_sizeCache;
    v2->_sizeCache = v7;

    [(NSCache *)v2->_sizeCache setCountLimit:40];
  }

  return v2;
}

- (void)_attachLabel:(id)label
{
  [(NSHashTable *)self->_attachedLabels addObject:label];

  [(_UIDatePickerLinkedLabelStorage *)self _resetPriority];
}

- (void)_detachLabel:(id)label
{
  [(NSHashTable *)self->_attachedLabels removeObject:label];

  [(_UIDatePickerLinkedLabelStorage *)self _resetPriority];
}

- (void)_notifyAllLabelsExcept:(id)except
{
  v16 = *MEMORY[0x1E69E9840];
  exceptCopy = except;
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
        if (v10 != exceptCopy)
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

- (void)_setPriority:(int64_t)priority label:(id)label
{
  if (self->_currentPriority != priority)
  {
    self->_currentPriority = priority;
    [(_UIDatePickerLinkedLabelStorage *)self _notifyAllLabelsExcept:label];
  }
}

- (CGSize)_sizeForText:(id)text font:(id)font height:(double)height overrideAttributes:(id)attributes
{
  textCopy = text;
  fontCopy = font;
  attributesCopy = attributes;
  v13 = [_UIDatePickerLinkedLabelCacheKey keyWithText:textCopy font:fontCopy height:height];
  v19 = 0.0;
  v20 = 0.0;
  if (![(_UIDatePickerLinkedLabelStorage *)self _cachedSizeForKey:v13 size:&v19])
  {
    v14 = _UIAttributedTitleForTitle(textCopy, fontCopy, attributesCopy);
    [(UILabel *)self->_sizingLabel setAttributedText:v14];

    [(UILabel *)self->_sizingLabel sizeThatFits:INFINITY, height];
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

- (BOOL)_cachedSizeForKey:(id)key size:(CGSize *)size
{
  v5 = [(NSCache *)self->_sizeCache objectForKey:key];
  v6 = v5;
  if (size && v5)
  {
    [v5 CGSizeValue];
    size->width = v7;
    size->height = v8;
  }

  return v6 != 0;
}

- (void)_setCachedSize:(CGSize)size forKey:(id)key
{
  height = size.height;
  width = size.width;
  sizeCache = self->_sizeCache;
  v7 = MEMORY[0x1E696B098];
  keyCopy = key;
  v9 = [v7 valueWithCGSize:{width, height}];
  [(NSCache *)sizeCache setObject:v9 forKey:keyCopy];
}

@end