@interface _NSTextAttachmentLayoutContext
- (CGRect)proposedLineFragmentRectForLocation:(id)a3 attributes:(id)a4 baselineOffset:(double *)a5;
- (NSArray)textAttachmentViewProviders;
- (_NSTextAttachmentLayoutContext)initWithDelegate:(id)a3;
- (id)_sortedKeys;
- (id)textAttachmentLayoutInfoForLocation:(id)a3 attributes:(id)a4;
- (id)textContainerForLocation:(id)a3;
- (void)_adjustLocations;
- (void)_flushCachedInfo;
- (void)dealloc;
- (void)enumerateViewportElementsFromLocation:(id)a3 options:(int64_t)a4 usingBlock:(id)a5;
- (void)notifyTextLayoutManagerAboutTextAttachmentInvalidation;
- (void)reset;
@end

@implementation _NSTextAttachmentLayoutContext

- (void)_flushCachedInfo
{
  self->_sortedKeys = 0;
  [(_NSTextAttachmentLayoutContext *)self notifyTextLayoutManagerAboutTextAttachmentInvalidation];

  self->_textAttachmentViewProviders = 0;
}

- (void)notifyTextLayoutManagerAboutTextAttachmentInvalidation
{
  objc_sync_enter(self);
  v3 = [(NSTextLayoutFragment *)[(_NSTextAttachmentLayoutContext *)self textLayoutFragment] textLayoutManager];
  if (v3 && [(NSArray *)self->_textAttachmentViewProviders count])
  {
    textAttachmentViewProviders = self->_textAttachmentViewProviders;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __88___NSTextAttachmentLayoutContext_notifyTextLayoutManagerAboutTextAttachmentInvalidation__block_invoke;
    v5[3] = &unk_1E726E4E0;
    v5[4] = v3;
    [(NSArray *)textAttachmentViewProviders enumerateObjectsUsingBlock:v5];
  }

  objc_sync_exit(self);
}

- (void)_adjustLocations
{
  v3 = [(_NSTextAttachmentLayoutContext *)self textLayoutFragment];
  if ([(NSTextLayoutFragment *)v3 textLayoutManager])
  {
    v4 = [(NSTextRange *)[(NSTextLayoutFragment *)v3 rangeInElement] location];
    if (([v4 isEqual:self->_baseLocation] & 1) == 0)
    {
      v5 = [(NSMapTable *)self->_textAttachmentInfoTable objectEnumerator];
      [(_NSTextAttachmentLayoutContext *)self _flushCachedInfo];

      self->_baseLocation = v4;
      while (1)
      {
        v6 = [(NSEnumerator *)v5 nextObject];
        if (!v6)
        {
          break;
        }

        [v6 _invalidateLocations];
      }
    }
  }
}

- (void)dealloc
{
  [(_NSTextAttachmentLayoutContext *)self _flushCachedInfo];

  v3.receiver = self;
  v3.super_class = _NSTextAttachmentLayoutContext;
  [(_NSTextAttachmentLayoutContext *)&v3 dealloc];
}

- (void)reset
{
  objc_sync_enter(self);
  v3 = [(NSMapTable *)self->_textAttachmentInfoTable objectEnumerator];
  while (1)
  {
    v4 = [(NSEnumerator *)v3 nextObject];
    if (!v4)
    {
      break;
    }

    [v4 invalidateAttachmentMeasurements];
  }

  self->_textContainer = 0;
  [(_NSTextAttachmentLayoutContext *)self _flushCachedInfo];
  [(_NSTextAttachmentLayoutContext *)self invalidateAttachmentFrames];

  objc_sync_exit(self);
}

- (NSArray)textAttachmentViewProviders
{
  objc_sync_enter(self);
  [(_NSTextAttachmentLayoutContext *)self _adjustLocations];
  if (!self->_sortedKeys && [(NSMapTable *)self->_textAttachmentInfoTable count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMapTable count](self->_textAttachmentInfoTable, "count")}];
    v6 = [(NSMapTable *)self->_textAttachmentInfoTable objectEnumerator];
    for (i = [(NSEnumerator *)v6 nextObject]; i; i = [(NSEnumerator *)v6 nextObject])
    {
      v8 = [i textAttachmentViewProvider];
      if (v8)
      {
        [(NSArray *)v5 addObject:v8];
      }
    }

    if ([(NSArray *)v5 count])
    {

      self->_textAttachmentViewProviders = v5;
    }

    else
    {
    }
  }

  textAttachmentViewProviders = self->_textAttachmentViewProviders;
  objc_sync_exit(self);
  return textAttachmentViewProviders;
}

- (_NSTextAttachmentLayoutContext)initWithDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = _NSTextAttachmentLayoutContext;
  v4 = [(_NSTextAttachmentLayoutContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_delegate = a3;
    v4->_applicationFrameworkContext = _NSTextScalingTypeForCurrentEnvironment();
    v5->_allowsFontOverridingTextAttachmentVerticalMetrics = 1;
  }

  return v5;
}

- (id)textAttachmentLayoutInfoForLocation:(id)a3 attributes:(id)a4
{
  objc_sync_enter(self);
  v7 = [(_NSTextAttachmentLayoutContext *)self baseLocation];
  v8 = a3;
  if (v7)
  {
    v9 = [(_NSTextAttachmentLayoutContext *)self textLayoutFragment];
    v10 = [(NSTextLayoutFragment *)v9 textParagraph];
    if (!v10 || (v11 = [(NSTextParagraph *)v10 rangeForLocation:a3 allowsTrailingEdge:0], v11 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v11 = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)v9 textLayoutManager] offsetFromLocation:v7 toLocation:a3];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  }

  v12 = [(NSMapTable *)self->_textAttachmentInfoTable objectForKey:v8];
  if (!v12)
  {
    v12 = [[_NSTextAttachmentLayoutInfo alloc] initWithContext:self location:a3 attributes:a4];
    if (v12)
    {
      textAttachmentInfoTable = self->_textAttachmentInfoTable;
      if (!textAttachmentInfoTable)
      {
        textAttachmentInfoTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        self->_textAttachmentInfoTable = textAttachmentInfoTable;
      }

      [(NSMapTable *)textAttachmentInfoTable setObject:v12 forKey:v8];

      [(_NSTextAttachmentLayoutContext *)self _flushCachedInfo];
    }
  }

  objc_sync_exit(self);
  return v12;
}

- (id)_sortedKeys
{
  objc_sync_enter(self);
  sortedKeys = self->_sortedKeys;
  if (!sortedKeys)
  {
    if ([(NSMapTable *)self->_textAttachmentInfoTable count])
    {
      sortedKeys = [(NSArray *)NSAllMapTableKeys(self->_textAttachmentInfoTable) sortedArrayUsingSelector:sel_compare_];
      self->_sortedKeys = sortedKeys;
    }

    else
    {
      sortedKeys = self->_sortedKeys;
    }
  }

  objc_sync_exit(self);
  return sortedKeys;
}

- (id)textContainerForLocation:(id)a3
{
  result = [(_NSTextLayoutAttachmentLayoutContextDelegate *)self->_delegate textContainerForLocation:a3];
  if (!result)
  {
    return self->_textContainer;
  }

  return result;
}

- (CGRect)proposedLineFragmentRectForLocation:(id)a3 attributes:(id)a4 baselineOffset:(double *)a5
{
  v8 = *(MEMORY[0x1E695F058] + 16);
  v28 = *MEMORY[0x1E695F058];
  v29 = v8;
  v27 = 0;
  delegate = self->_delegate;
  if (delegate)
  {
    [(_NSTextLayoutAttachmentLayoutContextDelegate *)delegate proposedLineFragmentRectForLocation:a3, a4];
    v11 = v10;
    *&v28 = v12;
    *(&v28 + 1) = v13;
    *(&v29 + 1) = v14;
    [(_NSTextLayoutAttachmentLayoutContextDelegate *)self->_delegate baselineOffsetForLocation:a3];
    v27 = v15;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = [a4 objectForKeyedSubscript:@"NSParagraphStyle"];
  v18 = [(_NSTextAttachmentLayoutContext *)self textContainerForLocation:a3];
  +[NSCoreTypesetter _lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:](NSCoreTypesetter, "_lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:", a4, [MEMORY[0x1E696AEC0] typesetterBehavior], -[_NSTextAttachmentLayoutContext usesFontLeading](self, "usesFontLeading"), v17 != 0, 0, 0, objc_msgSend(v18, "layoutOrientation"), &v29 + 8, &v27, 0);
  if (!v18)
  {
    v11 = 40000.0;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [v18 lineFragmentPadding];
  v20 = v19;
  [v18 size];
  v22 = v21 + v20 * -2.0;
  if (v22 >= 0.0)
  {
    v11 = v22;
  }

  else
  {
    v11 = 0.0;
  }

  if (a5)
  {
LABEL_9:
    *a5 = v27;
  }

LABEL_10:
  v24 = *(&v28 + 1);
  v23 = *&v28;
  v25 = *(&v29 + 1);
  v26 = v11;
  result.size.height = v25;
  result.size.width = v26;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)enumerateViewportElementsFromLocation:(id)a3 options:(int64_t)a4 usingBlock:(id)a5
{
  if ([(_NSTextAttachmentLayoutContext *)self hasViewProvider:a3])
  {
    v7 = [(_NSTextAttachmentLayoutContext *)self _sortedKeys];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91___NSTextAttachmentLayoutContext_enumerateViewportElementsFromLocation_options_usingBlock___block_invoke;
    v8[3] = &unk_1E726E508;
    v8[4] = self;
    v8[5] = a5;
    [v7 enumerateObjectsWithOptions:0 usingBlock:v8];
  }
}

@end