@interface _NSTextAttachmentLayoutContext
- (CGRect)proposedLineFragmentRectForLocation:(id)location attributes:(id)attributes baselineOffset:(double *)offset;
- (NSArray)textAttachmentViewProviders;
- (_NSTextAttachmentLayoutContext)initWithDelegate:(id)delegate;
- (id)_sortedKeys;
- (id)textAttachmentLayoutInfoForLocation:(id)location attributes:(id)attributes;
- (id)textContainerForLocation:(id)location;
- (void)_adjustLocations;
- (void)_flushCachedInfo;
- (void)dealloc;
- (void)enumerateViewportElementsFromLocation:(id)location options:(int64_t)options usingBlock:(id)block;
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
  textLayoutManager = [(NSTextLayoutFragment *)[(_NSTextAttachmentLayoutContext *)self textLayoutFragment] textLayoutManager];
  if (textLayoutManager && [(NSArray *)self->_textAttachmentViewProviders count])
  {
    textAttachmentViewProviders = self->_textAttachmentViewProviders;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __88___NSTextAttachmentLayoutContext_notifyTextLayoutManagerAboutTextAttachmentInvalidation__block_invoke;
    v5[3] = &unk_1E726E4E0;
    v5[4] = textLayoutManager;
    [(NSArray *)textAttachmentViewProviders enumerateObjectsUsingBlock:v5];
  }

  objc_sync_exit(self);
}

- (void)_adjustLocations
{
  textLayoutFragment = [(_NSTextAttachmentLayoutContext *)self textLayoutFragment];
  if ([(NSTextLayoutFragment *)textLayoutFragment textLayoutManager])
  {
    location = [(NSTextRange *)[(NSTextLayoutFragment *)textLayoutFragment rangeInElement] location];
    if (([location isEqual:self->_baseLocation] & 1) == 0)
    {
      objectEnumerator = [(NSMapTable *)self->_textAttachmentInfoTable objectEnumerator];
      [(_NSTextAttachmentLayoutContext *)self _flushCachedInfo];

      self->_baseLocation = location;
      while (1)
      {
        nextObject = [(NSEnumerator *)objectEnumerator nextObject];
        if (!nextObject)
        {
          break;
        }

        [nextObject _invalidateLocations];
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
  objectEnumerator = [(NSMapTable *)self->_textAttachmentInfoTable objectEnumerator];
  while (1)
  {
    nextObject = [(NSEnumerator *)objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    [nextObject invalidateAttachmentMeasurements];
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
    objectEnumerator = [(NSMapTable *)self->_textAttachmentInfoTable objectEnumerator];
    for (i = [(NSEnumerator *)objectEnumerator nextObject]; i; i = [(NSEnumerator *)objectEnumerator nextObject])
    {
      textAttachmentViewProvider = [i textAttachmentViewProvider];
      if (textAttachmentViewProvider)
      {
        [(NSArray *)v5 addObject:textAttachmentViewProvider];
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

- (_NSTextAttachmentLayoutContext)initWithDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = _NSTextAttachmentLayoutContext;
  v4 = [(_NSTextAttachmentLayoutContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_delegate = delegate;
    v4->_applicationFrameworkContext = _NSTextScalingTypeForCurrentEnvironment();
    v5->_allowsFontOverridingTextAttachmentVerticalMetrics = 1;
  }

  return v5;
}

- (id)textAttachmentLayoutInfoForLocation:(id)location attributes:(id)attributes
{
  objc_sync_enter(self);
  baseLocation = [(_NSTextAttachmentLayoutContext *)self baseLocation];
  locationCopy = location;
  if (baseLocation)
  {
    textLayoutFragment = [(_NSTextAttachmentLayoutContext *)self textLayoutFragment];
    textParagraph = [(NSTextLayoutFragment *)textLayoutFragment textParagraph];
    if (!textParagraph || (v11 = [(NSTextParagraph *)textParagraph rangeForLocation:location allowsTrailingEdge:0], v11 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v11 = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)textLayoutFragment textLayoutManager] offsetFromLocation:baseLocation toLocation:location];
    }

    locationCopy = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  }

  v12 = [(NSMapTable *)self->_textAttachmentInfoTable objectForKey:locationCopy];
  if (!v12)
  {
    v12 = [[_NSTextAttachmentLayoutInfo alloc] initWithContext:self location:location attributes:attributes];
    if (v12)
    {
      textAttachmentInfoTable = self->_textAttachmentInfoTable;
      if (!textAttachmentInfoTable)
      {
        textAttachmentInfoTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        self->_textAttachmentInfoTable = textAttachmentInfoTable;
      }

      [(NSMapTable *)textAttachmentInfoTable setObject:v12 forKey:locationCopy];

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

- (id)textContainerForLocation:(id)location
{
  result = [(_NSTextLayoutAttachmentLayoutContextDelegate *)self->_delegate textContainerForLocation:location];
  if (!result)
  {
    return self->_textContainer;
  }

  return result;
}

- (CGRect)proposedLineFragmentRectForLocation:(id)location attributes:(id)attributes baselineOffset:(double *)offset
{
  v8 = *(MEMORY[0x1E695F058] + 16);
  v28 = *MEMORY[0x1E695F058];
  v29 = v8;
  v27 = 0;
  delegate = self->_delegate;
  if (delegate)
  {
    [(_NSTextLayoutAttachmentLayoutContextDelegate *)delegate proposedLineFragmentRectForLocation:location, attributes];
    v11 = v10;
    *&v28 = v12;
    *(&v28 + 1) = v13;
    *(&v29 + 1) = v14;
    [(_NSTextLayoutAttachmentLayoutContextDelegate *)self->_delegate baselineOffsetForLocation:location];
    v27 = v15;
    if (!offset)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = [attributes objectForKeyedSubscript:@"NSParagraphStyle"];
  v18 = [(_NSTextAttachmentLayoutContext *)self textContainerForLocation:location];
  +[NSCoreTypesetter _lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:](NSCoreTypesetter, "_lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:", attributes, [MEMORY[0x1E696AEC0] typesetterBehavior], -[_NSTextAttachmentLayoutContext usesFontLeading](self, "usesFontLeading"), v17 != 0, 0, 0, objc_msgSend(v18, "layoutOrientation"), &v29 + 8, &v27, 0);
  if (!v18)
  {
    v11 = 40000.0;
    if (!offset)
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

  if (offset)
  {
LABEL_9:
    *offset = v27;
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

- (void)enumerateViewportElementsFromLocation:(id)location options:(int64_t)options usingBlock:(id)block
{
  if ([(_NSTextAttachmentLayoutContext *)self hasViewProvider:location])
  {
    _sortedKeys = [(_NSTextAttachmentLayoutContext *)self _sortedKeys];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91___NSTextAttachmentLayoutContext_enumerateViewportElementsFromLocation_options_usingBlock___block_invoke;
    v8[3] = &unk_1E726E508;
    v8[4] = self;
    v8[5] = block;
    [_sortedKeys enumerateObjectsWithOptions:0 usingBlock:v8];
  }
}

@end