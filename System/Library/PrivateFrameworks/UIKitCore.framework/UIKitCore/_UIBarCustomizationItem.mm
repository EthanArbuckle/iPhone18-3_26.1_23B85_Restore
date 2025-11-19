@interface _UIBarCustomizationItem
+ (_UIBarCustomizationItem)itemWithIdentifier:(id)a3 icon:(id)a4 name:(id)a5 view:(id)a6;
+ (id)groupWithWithIdentifier:(id)a3 icon:(id)a4 name:(id)a5 items:(id)a6;
- (CGRect)_sourceFrameInContainer:(id)a3;
- (_UIBarCustomizationItem)init;
- (id)description;
- (void)_enumerateSubitemsWithBlock:(id)a3;
- (void)setCollapsed:(BOOL)a3;
@end

@implementation _UIBarCustomizationItem

- (_UIBarCustomizationItem)init
{
  v5.receiver = self;
  v5.super_class = _UIBarCustomizationItem;
  v2 = [(_UIBarCustomizationItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIBarCustomizationItem *)v2 setCollapsible:1];
    [(_UIBarCustomizationItem *)v3 setRemovable:1];
  }

  return v3;
}

+ (_UIBarCustomizationItem)itemWithIdentifier:(id)a3 icon:(id)a4 name:(id)a5 view:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    if (!(v12 | v11 | v10))
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Creating a _UIBarCustomizationItem with no visible content!", buf, 2u);
      }
    }
  }

  else if (!(v12 | v11 | v10))
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &itemWithIdentifier_icon_name_view____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Creating a _UIBarCustomizationItem with no visible content!", v18, 2u);
    }
  }

  v13 = objc_opt_new();
  v14 = v13[2];
  v13[2] = v9;

  [v13 setEnabled:1];
  [v13 setIcon:v12];

  [v13 setName:v11];
  [v13 setView:v10];

  return v13;
}

+ (id)groupWithWithIdentifier:(id)a3 icon:(id)a4 name:(id)a5 items:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v14 = [v12 count];
  if (has_internal_diagnostics)
  {
    if (!v14)
    {
      v32 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v32, OS_LOG_TYPE_FAULT, "Creating a group _UIBarCustomizationItem with no items!", buf, 2u);
      }
    }
  }

  else if (!v14)
  {
    v33 = *(__UILogGetCategoryCachedImpl("Assert", &groupWithWithIdentifier_icon_name_items____s_category) + 8);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "Creating a group _UIBarCustomizationItem with no items!", buf, 2u);
    }
  }

  v15 = v11;
  v16 = v15;
  if (![v15 length])
  {
    v35 = v9;
    v36 = v10;
    v16 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = v12;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          v23 = [v22 name];
          v24 = [v23 length];

          if (v24)
          {
            if ([v16 length])
            {
              [v16 appendString:{@", "}];
            }

            v25 = [v22 name];
            [v16 appendString:v25];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v19);
    }

    v9 = v35;
    v10 = v36;
    v12 = v34;
  }

  v26 = objc_opt_new();
  v27 = v26[2];
  v26[2] = v9;
  v28 = v9;

  v29 = v26[8];
  v26[8] = v12;

  if (v10)
  {
    v30 = 1;
  }

  else
  {
    v30 = [v15 length] != 0;
  }

  [v26 setCollapsible:v30];
  [v26 setEnabled:1];
  [v26 setIcon:v10];
  [v26 setName:v16];

  return v26;
}

- (void)setCollapsed:(BOOL)a3
{
  v3 = a3;
  if ([(_UIBarCustomizationItem *)self collapsible])
  {
    if (self->_collapsed != v3)
    {
      self->_collapsed = v3;
    }
  }
}

- (CGRect)_sourceFrameInContainer:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4010000000;
  v27 = "";
  v5 = *(MEMORY[0x1E695F050] + 16);
  v28 = *MEMORY[0x1E695F050];
  v29 = v5;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __51___UIBarCustomizationItem__sourceFrameInContainer___block_invoke;
  v21 = &unk_1E7115A80;
  v6 = v4;
  v22 = v6;
  v23 = &v24;
  v7 = _Block_copy(&v18);
  if (-[_UIBarCustomizationItem collapsed](self, "collapsed", v18, v19, v20, v21) || (-[_UIBarCustomizationItem subitems](self, "subitems"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, !v9))
  {
    v7[2](v7, self);
  }

  else
  {
    [(_UIBarCustomizationItem *)self _enumerateSubitemsWithBlock:v7];
  }

  v10 = v25[4];
  v11 = v25[5];
  v12 = v25[6];
  v13 = v25[7];

  _Block_object_dispose(&v24, 8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_enumerateSubitemsWithBlock:(id)a3
{
  v4 = a3;
  if ([(_UIBarCustomizationItem *)self reverseItemsForRTL])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_UIBarCustomizationItem *)self subitems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55___UIBarCustomizationItem__enumerateSubitemsWithBlock___block_invoke;
  v8[3] = &unk_1E7115AA8;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsWithOptions:v5 usingBlock:v8];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [(_UIBarCustomizationItem *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier = %@", v4, self, v5];;

  v7 = [(_UIBarCustomizationItem *)self icon];
  if (v7)
  {
    [v6 appendFormat:@"; icon = <%@: %p", objc_opt_class(), v7];
    if ([v7 isSymbolImage])
    {
      v8 = _UIImageName(v7);
      [v6 appendFormat:@"; symbol = (%@)", v8];
    }

    [v6 appendString:@">"];
  }

  v9 = [(_UIBarCustomizationItem *)self name];
  v10 = v9;
  if (v9)
  {
    [v6 appendFormat:@"; name = %@", v9];
  }

  v11 = [(_UIBarCustomizationItem *)self view];
  if (v11)
  {
    [v6 appendFormat:@"; view = <%@: %p>", objc_opt_class(), v11];
  }

  v12 = [(_UIBarCustomizationItem *)self subitems];
  if ([v12 count])
  {
    [v6 appendFormat:@"; subitems = <%@: %p>", objc_opt_class(), v12];
  }

  [v6 appendString:@">"];

  return v6;
}

@end