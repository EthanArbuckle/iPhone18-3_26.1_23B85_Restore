@interface _UIBarInsertLayoutData
+ ($1AB5FA073B851C12C2339EC22442E995)calculateLayoutHeights:(id)a3;
+ (id)calculateRestingHeightsForLayouts:(id)a3;
+ (id)layoutPriorToItemWithOrder:(int64_t)a3 inLayouts:(id)a4;
+ (void)assignVerticalOriginsToItemsInLayouts:(id)a3;
+ (void)updateLayoutParameters:(id)a3 overflowLayout:(id)a4 forAvailableHeight:(double)a5;
- (BOOL)isVariableHeight;
- (CGRect)layoutFrameInWidth:(double)a3;
- (NSString)description;
- (_UIBarInsertLayoutData)init;
- (double)layoutMinimumHeight;
- (double)transitionProgress;
- (double)verticalOrigin;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setActive:(BOOL)a3;
- (void)setIgnoredForCollapsingBehaviors:(BOOL)a3;
- (void)setPrefersExpanded:(BOOL)a3;
@end

@implementation _UIBarInsertLayoutData

- (BOOL)isVariableHeight
{
  preferredHeight = self->_preferredHeight;
  [(_UIBarInsertLayoutData *)self layoutMinimumHeight];
  return preferredHeight > v3;
}

- (double)layoutMinimumHeight
{
  result = 0.0;
  if ((*&self->_flags & 1) == 0)
  {
    return self->_minimumHeight;
  }

  return result;
}

- (_UIBarInsertLayoutData)init
{
  v6.receiver = self;
  v6.super_class = _UIBarInsertLayoutData;
  v2 = [(_UIBarInsertLayoutData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = &stru_1EFB14550;
  }

  return v3;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = _UIBarInsertLayoutData;
  v3 = [(_UIBarInsertLayoutData *)&v9 description];
  v4 = [v3 mutableCopy];

  if ([(NSString *)self->_identifier length])
  {
    [v4 appendFormat:@" '%@'", self->_identifier];
  }

  [v4 appendFormat:@" minimumHeight=%f preferredHeight=%f assignedHeight=%f", *&self->_minimumHeight, *&self->_preferredHeight, *&self->_assignedHeight];
  if (*&self->_flags)
  {
    if (self->_collapsingHeight >= self->_assignedHeight)
    {
      [v4 appendString:@" collapsible"];
    }

    else
    {
      [v4 appendFormat:@" collapsingHeight=%f", *&self->_collapsingHeight];
    }
  }

  flags = self->_flags;
  if ((flags & 2) != 0 && ((*&self->_flags & 1) != 0 || self->_minimumHeight < self->_preferredHeight))
  {
    [v4 appendString:@" prefersExpanded"];
    flags = self->_flags;
  }

  if ((flags & 0x10) != 0)
  {
    [v4 appendFormat:@" verticalOrigin=%f", *&self->_verticalOrigin];
  }

  if (self->_bottomInsetForTransitionProgress > 0.0)
  {
    [v4 appendFormat:@" bottomInsetForTransitionProgress=%f", *&self->_bottomInsetForTransitionProgress];
  }

  v6 = @" ignoredForCollapsingBehaviors";
  if ((*&self->_flags & 4) == 0)
  {
    v6 = &stru_1EFB14550;
  }

  if ((*&self->_flags & 8) != 0)
  {
    v7 = &stru_1EFB14550;
  }

  else
  {
    v7 = @" inactive";
  }

  [v4 appendFormat:@" priority=%li order=%li%@%@", self->_priority, self->_order, v6, v7];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_identifier copy];
  v6 = *&v4[6];
  *&v4[6] = v5;

  *&v4[8] = self->_minimumHeight;
  *&v4[10] = self->_preferredHeight;
  *&v4[14] = self->_assignedHeight;
  *&v4[16] = self->_collapsingHeight;
  *&v4[4] = 0;
  *&v4[18] = self->_priority;
  *&v4[20] = self->_order;
  flags = self->_flags;
  v4[2] = flags;
  *&v4[2] = *&flags & 0xE7;
  return v4;
}

- (void)setPrefersExpanded:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
}

- (double)transitionProgress
{
  collapsingHeight = self->_collapsingHeight;
  result = 1.0;
  if (collapsingHeight < self->_preferredHeight - self->_bottomInsetForTransitionProgress)
  {
    [(_UIBarInsertLayoutData *)self layoutMinimumHeight];
    v6 = v5;
    result = 0.0;
    if (collapsingHeight > v6)
    {
      return (self->_collapsingHeight - self->_bottomInsetForTransitionProgress) / (self->_preferredHeight - self->_bottomInsetForTransitionProgress);
    }
  }

  return result;
}

- (double)verticalOrigin
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 0x10) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 138412290;
        v7 = self;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Accessing invalid yOrigin on %@", &v6, 0xCu);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &verticalOrigin___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412290;
        v7 = self;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Accessing invalid yOrigin on %@", &v6, 0xCu);
      }
    }
  }

  return self->_verticalOrigin;
}

- (CGRect)layoutFrameInWidth:(double)a3
{
  [(_UIBarInsertLayoutData *)self verticalOrigin];
  v6 = v5;
  collapsingHeight = self->_collapsingHeight;
  v8 = 0.0;
  v9 = a3;
  result.size.height = collapsingHeight;
  result.size.width = v9;
  result.origin.y = v6;
  result.origin.x = v8;
  return result;
}

- (void)setIgnoredForCollapsingBehaviors:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
}

- (void)setActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v3;
}

+ (void)updateLayoutParameters:(id)a3 overflowLayout:(id)a4 forAvailableHeight:(double)a5
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v65;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v65 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v64 + 1) + 8 * i);
        if ((*(v15 + 8) & 1) == 0)
        {
          v13 = v13 + *(v15 + 32);
        }

        v12 = v12 + *(v15 + 40);
        *(v15 + 8) &= ~0x10u;
      }

      v10 = [v7 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
  }

  if (v12 <= a5)
  {
    v62 = 0uLL;
    v63 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    v30 = v7;
    v31 = [v30 countByEnumeratingWithState:&v60 objects:v71 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v61;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v60 + 1) + 8 * j);
          v36 = v35[5];
          v35[7] = v36;
          v35[8] = v36;
        }

        v32 = [v30 countByEnumeratingWithState:&v60 objects:v71 count:16];
      }

      while (v32);
    }

    if (v8)
    {
      v37 = a5 - v12 + v8[5];
      v8[7] = v37;
      v8[8] = v37;
    }

    goto LABEL_63;
  }

  if (v13 <= a5)
  {
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v23 = v7;
    v38 = [v23 countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (!v38)
    {
      goto LABEL_62;
    }

    v39 = v38;
    v40 = a5 - v13;
    v41 = *v57;
    while (1)
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v57 != v41)
        {
          objc_enumerationMutation(v23);
        }

        v43 = *(*(&v56 + 1) + 8 * k);
        if (v40 <= 0.0)
        {
          v46 = *(v43 + 32);
          if ((*(v43 + 8) & 1) == 0)
          {
            goto LABEL_55;
          }

          *(v43 + 56) = v46;
          *(v43 + 64) = 0;
        }

        else
        {
          if ((*(v43 + 8) & 1) == 0)
          {
            v44 = *(v43 + 32);
            v45 = *(v43 + 40) - v44;
            if (v45 >= v40)
            {
              v45 = v40;
            }

            v40 = v40 - v45;
            v46 = v44 + v45;
LABEL_55:
            *(v43 + 56) = v46;
            *(v43 + 64) = v46;
            continue;
          }

          v47 = *(v43 + 40);
          if (v47 >= v40)
          {
            v47 = v40;
          }

          v40 = v40 - v47;
          *(v43 + 56) = *(v43 + 32);
          *(v43 + 64) = v47;
        }
      }

      v39 = [v23 countByEnumeratingWithState:&v56 objects:v70 count:16];
      if (!v39)
      {
        goto LABEL_62;
      }
    }
  }

  v54 = 0uLL;
  v55 = 0uLL;
  v52 = 0uLL;
  v53 = 0uLL;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v52 objects:v69 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v53;
    do
    {
      for (m = 0; m != v18; ++m)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v52 + 1) + 8 * m);
        if ((*(v21 + 8) & 1) == 0)
        {
          v22 = *(v21 + 32);
          *(v21 + 56) = v22;
          *(v21 + 64) = v22;
          a5 = a5 - v22;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v52 objects:v69 count:16];
    }

    while (v18);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v48 objects:v68 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v49;
    do
    {
      for (n = 0; n != v25; ++n)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v48 + 1) + 8 * n);
        if (*(v28 + 8))
        {
          v29 = *(v28 + 32);
          *(v28 + 56) = v29;
          if (a5 >= v29)
          {
            *(v28 + 64) = v29;
            a5 = a5 - v29;
          }

          else
          {
            *(v28 + 64) = a5;
            a5 = 0.0;
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v48 objects:v68 count:16];
    }

    while (v25);
  }

LABEL_62:

LABEL_63:
}

+ (id)calculateRestingHeightsForLayouts:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v4)
  {
    v6 = 0;
    v8 = 0.0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v29;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v29 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      if (*(v10 + 8))
      {
        goto LABEL_9;
      }

      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      if (v11 < v12)
      {
        v8 = v8 + v11;
LABEL_9:
        v6 = 1;
        continue;
      }

      v8 = v8 + v12;
    }

    v5 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v5);
LABEL_15:
  v13 = objc_opt_new();
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [v13 addObject:v14];

  if (v6)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v3;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * j);
          v21 = *(v20 + 40);
          if ((*(v20 + 8) & 1) == 0)
          {
            v21 = v21 - *(v20 + 32);
          }

          if (v21 > 0.0)
          {
            v8 = v8 + v21;
            v22 = [MEMORY[0x1E696AD98] numberWithDouble:{v8, v24}];
            [v13 addObject:v22];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v17);
    }
  }

  return v13;
}

+ ($1AB5FA073B851C12C2339EC22442E995)calculateLayoutHeights:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v11 layoutMinimumHeight];
        v9 = v9 + v12;
        if ((*(v11 + 8) & 2) != 0)
        {
          v12 = *(v11 + 40);
        }

        v8 = v8 + v12;
        v7 = v7 + *(v11 + 40);
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  v13 = v9;
  v14 = v8;
  v15 = v7;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

+ (void)assignVerticalOriginsToItemsInLayouts:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        *(v9 + 16) = v7;
        *(v9 + 8) |= 0x10u;
        [v9 collapsingHeight];
        v7 = v7 + v10;
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

+ (id)layoutPriorToItemWithOrder:(int64_t)a3 inLayouts:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([v5 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_4:
      v12 = 0;
      v13 = v9;
      v14 = v11;
      v9 += v8;
      v11 = v9 - 1;
      while (1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v17 + 1) + 8 * v12) order] <= a3)
        {
          break;
        }

        v14 = v13++;
        if (v8 == ++v12)
        {
          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v14 = v9 - 1;
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [v6 objectAtIndexedSubscript:v14];
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

@end