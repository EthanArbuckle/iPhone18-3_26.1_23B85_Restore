@interface UICellConfigurationState
+ (UICellConfigurationState)_readonlyCellState:(uint64_t)state;
+ (UICellConfigurationState)_readonlyCellStateFromViewConfigurationState:(uint64_t)state;
- (BOOL)isEqual:(id)equal;
- (UICellConfigurationState)initWithCoder:(id)coder;
- (id)_initWithState:(id)state;
- (unint64_t)_viewConfigurationState;
- (unint64_t)hash;
- (void)_appendPropertiesForDescription:(id)description;
- (void)_configureWithViewConfigurationState:(unint64_t)state;
- (void)_setInMultiSelectGroup:(BOOL)group;
- (void)_setUsesAnyPlainListStyle:(BOOL)style;
- (void)encodeWithCoder:(id)coder;
- (void)setCellDragState:(UICellConfigurationDragState)cellDragState;
- (void)setCellDropState:(UICellConfigurationDropState)cellDropState;
- (void)setEditing:(BOOL)editing;
- (void)setExpanded:(BOOL)expanded;
- (void)setReordering:(BOOL)reordering;
- (void)setSwiped:(BOOL)swiped;
@end

@implementation UICellConfigurationState

- (unint64_t)_viewConfigurationState
{
  v14.receiver = self;
  v14.super_class = UICellConfigurationState;
  _viewConfigurationState = [(UIViewConfigurationState *)&v14 _viewConfigurationState];
  cellStateFlags = self->_cellStateFlags;
  v5 = self->_cellStateFlags;
  v6 = _viewConfigurationState | (16 * *&cellStateFlags) & 0x10 | (*&cellStateFlags << 6) & 0x80 | ((16 * *&cellStateFlags) & 0x40) | (*&cellStateFlags << 6) & 0x200;
  v7 = *&cellStateFlags >> 6;
  v8 = v6 | 0x20;
  if (v7 == 1)
  {
    v6 |= 0x100uLL;
  }

  if (v7 == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 | (v5 << 7) & 0x8000;
  v11 = (v5 >> 10) & 3;
  v12 = v10 | 0x20000;
  if (v11 == 2)
  {
    v10 |= 0x10000uLL;
  }

  if (v11 == 1)
  {
    return v12;
  }

  else
  {
    return v10;
  }
}

- (id)_initWithState:(id)state
{
  stateCopy = state;
  v7.receiver = self;
  v7.super_class = UICellConfigurationState;
  v5 = [(UIViewConfigurationState *)&v7 _initWithState:stateCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5[10] = stateCopy[10];
    }
  }

  return v5;
}

- (UICellConfigurationState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UICellConfigurationState;
  v5 = [(UIViewConfigurationState *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    *&v5->_cellStateFlags = *&v5->_cellStateFlags & 0xFFFE | [coderCopy decodeBoolForKey:@"editing"];
    if ([coderCopy decodeBoolForKey:@"expanded"])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&v5->_cellStateFlags = *&v5->_cellStateFlags & 0xFFFD | v6;
    if ([coderCopy decodeBoolForKey:@"swiped"])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&v5->_cellStateFlags = *&v5->_cellStateFlags & 0xFFFB | v7;
    if ([coderCopy decodeBoolForKey:@"reordering"])
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&v5->_cellStateFlags = *&v5->_cellStateFlags & 0xFFF7 | v8;
    *&v5->_cellStateFlags = (16 * ([coderCopy decodeIntegerForKey:@"cellDragState"] & 3)) | *&v5->_cellStateFlags & 0xFFCF;
    *&v5->_cellStateFlags = (([coderCopy decodeIntegerForKey:@"cellDropState"] & 3) << 6) | *&v5->_cellStateFlags & 0xFF3F;
    if ([coderCopy decodeBoolForKey:@"usesAnyPlainListStyle"])
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    *&v5->_cellStateFlags = *&v5->_cellStateFlags & 0xFEFF | v9;
    if ([coderCopy decodeBoolForKey:@"inMultiSelectGroup"])
    {
      v10 = 512;
    }

    else
    {
      v10 = 0;
    }

    *&v5->_cellStateFlags = *&v5->_cellStateFlags & 0xFDFF | v10;
    *&v5->_cellStateFlags = (([coderCopy decodeIntegerForKey:@"typeSelectState"] & 3) << 10) | *&v5->_cellStateFlags & 0xF3FF;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UICellConfigurationState;
  coderCopy = coder;
  [(UIViewConfigurationState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:*&self->_cellStateFlags & 1 forKey:{@"editing", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:(*&self->_cellStateFlags >> 1) & 1 forKey:@"expanded"];
  [coderCopy encodeBool:(*&self->_cellStateFlags >> 2) & 1 forKey:@"swiped"];
  [coderCopy encodeBool:(*&self->_cellStateFlags >> 3) & 1 forKey:@"reordering"];
  [coderCopy encodeInteger:(*&self->_cellStateFlags >> 4) & 3 forKey:@"cellDragState"];
  [coderCopy encodeInteger:*&self->_cellStateFlags >> 6 forKey:@"cellDropState"];
  [coderCopy encodeBool:HIBYTE(*&self->_cellStateFlags) & 1 forKey:@"usesAnyPlainListStyle"];
  [coderCopy encodeBool:(*&self->_cellStateFlags >> 9) & 1 forKey:@"inMultiSelectGroup"];
  [coderCopy encodeInteger:(*&self->_cellStateFlags >> 10) & 3 forKey:@"typeSelectState"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8.receiver = self, v8.super_class = UICellConfigurationState, [(UIViewConfigurationState *)&v8 isEqual:v5]) && ((v5[20] ^ *&self->_cellStateFlags) & 0xFFF) == 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = *&self->_cellStateFlags & 0xFFF;
  v4.receiver = self;
  v4.super_class = UICellConfigurationState;
  return [(UIViewConfigurationState *)&v4 hash]^ v2;
}

- (void)_appendPropertiesForDescription:(id)description
{
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = UICellConfigurationState;
  [(UIViewConfigurationState *)&v12 _appendPropertiesForDescription:descriptionCopy];
  cellStateFlags = self->_cellStateFlags;
  if (*&cellStateFlags)
  {
    [descriptionCopy addObject:@"Editing"];
    cellStateFlags = self->_cellStateFlags;
    if ((*&cellStateFlags & 2) == 0)
    {
LABEL_3:
      if ((*&cellStateFlags & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&cellStateFlags & 2) == 0)
  {
    goto LABEL_3;
  }

  [descriptionCopy addObject:@"Expanded"];
  cellStateFlags = self->_cellStateFlags;
  if ((*&cellStateFlags & 4) == 0)
  {
LABEL_4:
    if ((*&cellStateFlags & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [descriptionCopy addObject:@"Swiped"];
  cellStateFlags = self->_cellStateFlags;
  if ((*&cellStateFlags & 8) != 0)
  {
LABEL_5:
    [descriptionCopy addObject:@"Reordering"];
    cellStateFlags = self->_cellStateFlags;
  }

LABEL_6:
  v6 = (*&cellStateFlags >> 4) & 3;
  if (v6 == 1)
  {
    v7 = @"cellDragState = Lifting";
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v7 = @"cellDragState = Dragging";
  }

  [descriptionCopy addObject:v7];
  cellStateFlags = self->_cellStateFlags;
LABEL_15:
  v8 = *&cellStateFlags >> 6;
  if (v8 == 1)
  {
    v9 = @"cellDropState = Not Targeted";
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_20;
    }

    v9 = @"cellDropState = Targeted";
  }

  [descriptionCopy addObject:v9];
  cellStateFlags = self->_cellStateFlags;
LABEL_20:
  v10 = (*&cellStateFlags >> 10) & 3;
  if (v10 == 2)
  {
    v11 = @"typeSelectState = Matched";
    goto LABEL_24;
  }

  if (v10 == 1)
  {
    v11 = @"typeSelectState = Not Matched";
LABEL_24:
    [descriptionCopy addObject:v11];
  }
}

- (void)setEditing:(BOOL)editing
{
  if ((*&self->_cellStateFlags & 1) != editing)
  {
    ++self->super._mutations;
    *&self->_cellStateFlags = *&self->_cellStateFlags & 0xFFFE | editing;
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (((((*&self->_cellStateFlags & 2) == 0) ^ expanded) & 1) == 0)
  {
    ++self->super._mutations;
    if (expanded)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    *&self->_cellStateFlags = *&self->_cellStateFlags & 0xFFFD | v3;
  }
}

- (void)setSwiped:(BOOL)swiped
{
  if (((((*&self->_cellStateFlags & 4) == 0) ^ swiped) & 1) == 0)
  {
    ++self->super._mutations;
    if (swiped)
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    *&self->_cellStateFlags = *&self->_cellStateFlags & 0xFFFB | v3;
  }
}

- (void)setReordering:(BOOL)reordering
{
  if (((((*&self->_cellStateFlags & 8) == 0) ^ reordering) & 1) == 0)
  {
    ++self->super._mutations;
    if (reordering)
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    *&self->_cellStateFlags = *&self->_cellStateFlags & 0xFFF7 | v3;
  }
}

- (void)setCellDragState:(UICellConfigurationDragState)cellDragState
{
  if (((*&self->_cellStateFlags >> 4) & 3) != cellDragState)
  {
    ++self->super._mutations;
    *&self->_cellStateFlags = *&self->_cellStateFlags & 0xFFCF | (16 * (cellDragState & 3));
  }
}

- (void)setCellDropState:(UICellConfigurationDropState)cellDropState
{
  if (*&self->_cellStateFlags >> 6 != cellDropState)
  {
    ++self->super._mutations;
    *&self->_cellStateFlags = *&self->_cellStateFlags & 0xFF3F | ((cellDropState & 3) << 6);
  }
}

- (void)_setUsesAnyPlainListStyle:(BOOL)style
{
  if (((((*&self->_cellStateFlags & 0x100) == 0) ^ style) & 1) == 0)
  {
    ++self->super._mutations;
    if (style)
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    *&self->_cellStateFlags = *&self->_cellStateFlags & 0xFEFF | v3;
  }
}

- (void)_setInMultiSelectGroup:(BOOL)group
{
  if (((((*&self->_cellStateFlags & 0x200) == 0) ^ group) & 1) == 0)
  {
    ++self->super._mutations;
    if (group)
    {
      v3 = 512;
    }

    else
    {
      v3 = 0;
    }

    *&self->_cellStateFlags = *&self->_cellStateFlags & 0xFDFF | v3;
  }
}

+ (UICellConfigurationState)_readonlyCellState:(uint64_t)state
{
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    if (qword_1ED4A2A58 != -1)
    {
      dispatch_once(&qword_1ED4A2A58, &__block_literal_global_681);
    }

    v3 = _MergedGlobals_1376;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_9:
    v7 = v3;
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [UICellConfigurationState alloc];
  v6 = v5;
  if (isKindOfClass)
  {
    v3 = [(UICellConfigurationState *)v5 _initWithState:v2];
    goto LABEL_9;
  }

  traitCollection = [v2 traitCollection];
  v7 = [(UIViewConfigurationState *)v6 initWithTraitCollection:traitCollection];

LABEL_10:

  return v7;
}

void __47__UICellConfigurationState__readonlyCellState___block_invoke()
{
  v0 = [UICellConfigurationState alloc];
  v3 = +[UITraitCollection _emptyTraitCollection];
  v1 = [(UIViewConfigurationState *)v0 initWithTraitCollection:v3];
  v2 = _MergedGlobals_1376;
  _MergedGlobals_1376 = v1;
}

+ (UICellConfigurationState)_readonlyCellStateFromViewConfigurationState:(uint64_t)state
{
  v3 = objc_opt_self();
  if (a2)
  {
    v4 = _readonlyCellStateFromViewConfigurationState__cachedStates;
    if (!_readonlyCellStateFromViewConfigurationState__cachedStates)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v6 = _readonlyCellStateFromViewConfigurationState__cachedStates;
      _readonlyCellStateFromViewConfigurationState__cachedStates = v5;

      v4 = _readonlyCellStateFromViewConfigurationState__cachedStates;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v8 = [v4 objectForKey:v7];

    if (!v8)
    {
      v9 = [UICellConfigurationState alloc];
      v10 = +[UITraitCollection _emptyTraitCollection];
      v8 = [(UIViewConfigurationState *)v9 initWithTraitCollection:v10];

      [(UICellConfigurationState *)v8 _configureWithViewConfigurationState:a2];
      v11 = _readonlyCellStateFromViewConfigurationState__cachedStates;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      [v11 setObject:v8 forKey:v12];
    }
  }

  else
  {
    v8 = [(UICellConfigurationState *)v3 _readonlyCellState:?];
  }

  return v8;
}

- (void)_configureWithViewConfigurationState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = UICellConfigurationState;
  [(UIViewConfigurationState *)&v7 _configureWithViewConfigurationState:?];
  [(UICellConfigurationState *)self setEditing:(state >> 4) & 1];
  [(UICellConfigurationState *)self setSwiped:(state >> 6) & 1];
  [(UICellConfigurationState *)self setExpanded:(state >> 7) & 1];
  [(UICellConfigurationState *)self setReordering:(state >> 9) & 1];
  [(UICellConfigurationState *)self setCellDragState:0];
  if ((state & 0x20) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = (state >> 8) & 1;
  }

  [(UICellConfigurationState *)self setCellDropState:v5];
  [(UICellConfigurationState *)self _setUsesAnyPlainListStyle:(state >> 15) & 1];
  v6 = (state >> 17) & 1;
  if ((state & 0x10000) != 0)
  {
    v6 = 2;
  }

  if (self)
  {
    if (v6 != ((*&self->_cellStateFlags >> 10) & 3))
    {
      ++self->super._mutations;
      *&self->_cellStateFlags = *&self->_cellStateFlags & 0xF3FF | (v6 << 10);
    }
  }
}

@end