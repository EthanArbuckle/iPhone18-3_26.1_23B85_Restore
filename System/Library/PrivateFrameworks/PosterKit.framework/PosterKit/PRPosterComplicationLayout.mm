@interface PRPosterComplicationLayout
- (BOOL)_complications:(id)_complications AreEqualTo:(id)to;
- (BOOL)hasComplications;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToComplicationLayout:(id)layout;
- (PRPosterComplicationLayout)initWithBSXPCCoder:(id)coder;
- (PRPosterComplicationLayout)initWithCoder:(id)coder;
- (PRPosterComplicationLayout)initWithInlineComplication:(id)complication sidebarComplicationIconLayout:(id)layout sidebarComplications:(id)complications complicationIconLayout:(id)iconLayout complications:(id)a7 complicationsUseBottomLayout:(BOOL)bottomLayout;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterComplicationLayout

- (PRPosterComplicationLayout)initWithInlineComplication:(id)complication sidebarComplicationIconLayout:(id)layout sidebarComplications:(id)complications complicationIconLayout:(id)iconLayout complications:(id)a7 complicationsUseBottomLayout:(BOOL)bottomLayout
{
  complicationCopy = complication;
  layoutCopy = layout;
  complicationsCopy = complications;
  iconLayoutCopy = iconLayout;
  v20 = a7;
  v21 = complicationCopy;
  if (v21)
  {
    NSClassFromString(&cfstr_Prswidget.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterComplicationLayout initWithInlineComplication:a2 sidebarComplicationIconLayout:? sidebarComplications:? complicationIconLayout:? complications:? complicationsUseBottomLayout:?];
    }
  }

  v22 = layoutCopy;
  if (v22)
  {
    NSClassFromString(&cfstr_Nsdictionary.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterComplicationLayout initWithInlineComplication:a2 sidebarComplicationIconLayout:? sidebarComplications:? complicationIconLayout:? complications:? complicationsUseBottomLayout:?];
    }
  }

  v23 = complicationsCopy;
  if (v23)
  {
    NSClassFromString(&cfstr_Nsarray.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterComplicationLayout initWithInlineComplication:a2 sidebarComplicationIconLayout:? sidebarComplications:? complicationIconLayout:? complications:? complicationsUseBottomLayout:?];
    }
  }

  v24 = iconLayoutCopy;
  if (v24)
  {
    NSClassFromString(&cfstr_Nsdictionary.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterComplicationLayout initWithInlineComplication:a2 sidebarComplicationIconLayout:? sidebarComplications:? complicationIconLayout:? complications:? complicationsUseBottomLayout:?];
    }
  }

  v25 = v20;
  if (v25)
  {
    NSClassFromString(&cfstr_Nsarray.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterComplicationLayout initWithInlineComplication:a2 sidebarComplicationIconLayout:? sidebarComplications:? complicationIconLayout:? complications:? complicationsUseBottomLayout:?];
    }
  }

  v37.receiver = self;
  v37.super_class = PRPosterComplicationLayout;
  v26 = [(PRPosterComplicationLayout *)&v37 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_inlineComplication, complication);
    v28 = [v22 copy];
    sidebarComplicationIconLayout = v27->_sidebarComplicationIconLayout;
    v27->_sidebarComplicationIconLayout = v28;

    v30 = [v23 copy];
    sidebarComplications = v27->_sidebarComplications;
    v27->_sidebarComplications = v30;

    v32 = [v24 copy];
    complicationIconLayout = v27->_complicationIconLayout;
    v27->_complicationIconLayout = v32;

    v34 = [v25 copy];
    complications = v27->_complications;
    v27->_complications = v34;

    v27->_complicationsUseBottomLayout = bottomLayout;
  }

  return v27;
}

- (PRPosterComplicationLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_self();
  v28 = [coderCopy decodeObjectOfClass:v4 forKey:@"inlineComplication"];

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sidebarComplicationIconLayout"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"sidebarComplications"];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"complicationIconLayout"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"complications"];

  v25 = [coderCopy decodeBoolForKey:@"complicationsUseBottomLayout"];
  v26 = [(PRPosterComplicationLayout *)self initWithInlineComplication:v28 sidebarComplicationIconLayout:v10 sidebarComplications:v14 complicationIconLayout:v20 complications:v24 complicationsUseBottomLayout:v25];

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  inlineComplication = [(PRPosterComplicationLayout *)self inlineComplication];
  [coderCopy encodeObject:inlineComplication forKey:@"inlineComplication"];

  sidebarComplicationIconLayout = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
  [coderCopy encodeObject:sidebarComplicationIconLayout forKey:@"sidebarComplicationIconLayout"];

  sidebarComplications = [(PRPosterComplicationLayout *)self sidebarComplications];
  [coderCopy encodeObject:sidebarComplications forKey:@"sidebarComplications"];

  complicationIconLayout = [(PRPosterComplicationLayout *)self complicationIconLayout];
  [coderCopy encodeObject:complicationIconLayout forKey:@"complicationIconLayout"];

  complications = [(PRPosterComplicationLayout *)self complications];
  [coderCopy encodeObject:complications forKey:@"complications"];

  [coderCopy encodeBool:-[PRPosterComplicationLayout complicationsUseBottomLayout](self forKey:{"complicationsUseBottomLayout"), @"complicationsUseBottomLayout"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterMutableComplicationLayout alloc];
  inlineComplication = [(PRPosterComplicationLayout *)self inlineComplication];
  sidebarComplicationIconLayout = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
  sidebarComplications = [(PRPosterComplicationLayout *)self sidebarComplications];
  complicationIconLayout = [(PRPosterComplicationLayout *)self complicationIconLayout];
  complications = [(PRPosterComplicationLayout *)self complications];
  v10 = [(PRPosterComplicationLayout *)v4 initWithInlineComplication:inlineComplication sidebarComplicationIconLayout:sidebarComplicationIconLayout sidebarComplications:sidebarComplications complicationIconLayout:complicationIconLayout complications:complications complicationsUseBottomLayout:[(PRPosterComplicationLayout *)self complicationsUseBottomLayout]];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterComplicationLayout *)self isEqualToComplicationLayout:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToComplicationLayout:(id)layout
{
  layoutCopy = layout;
  v5 = layoutCopy;
  if (layoutCopy == self)
  {
    LOBYTE(v19) = 1;
  }

  else if (layoutCopy)
  {
    inlineComplication = [(PRPosterComplicationLayout *)self inlineComplication];
    inlineComplication2 = [(PRPosterComplicationLayout *)v5 inlineComplication];
    if (BSEqualObjects())
    {
      sidebarComplications = [(PRPosterComplicationLayout *)self sidebarComplications];
      sidebarComplications2 = [(PRPosterComplicationLayout *)v5 sidebarComplications];
      if ([(PRPosterComplicationLayout *)self _complications:sidebarComplications AreEqualTo:sidebarComplications2])
      {
        sidebarComplicationIconLayout = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
        sidebarComplicationIconLayout2 = [(PRPosterComplicationLayout *)v5 sidebarComplicationIconLayout];
        if (BSEqualObjects())
        {
          complicationIconLayout = [(PRPosterComplicationLayout *)self complicationIconLayout];
          complicationIconLayout2 = [(PRPosterComplicationLayout *)v5 complicationIconLayout];
          if (BSEqualObjects())
          {
            v21 = complicationIconLayout;
            complications = [(PRPosterComplicationLayout *)self complications];
            complications2 = [(PRPosterComplicationLayout *)v5 complications];
            v22 = complications;
            v16 = complications;
            v17 = complications2;
            if ([(PRPosterComplicationLayout *)self _complications:v16 AreEqualTo:complications2])
            {
              complicationsUseBottomLayout = [(PRPosterComplicationLayout *)self complicationsUseBottomLayout];
              v19 = complicationsUseBottomLayout ^ [(PRPosterComplicationLayout *)v5 complicationsUseBottomLayout]^ 1;
            }

            else
            {
              LOBYTE(v19) = 0;
            }

            complicationIconLayout = v21;
          }

          else
          {
            LOBYTE(v19) = 0;
          }
        }

        else
        {
          LOBYTE(v19) = 0;
        }
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (BOOL)_complications:(id)_complications AreEqualTo:(id)to
{
  _complicationsCopy = _complications;
  toCopy = to;
  v7 = [_complicationsCopy count];
  if (v7 != [toCopy count])
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  if ([_complicationsCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [_complicationsCopy objectAtIndexedSubscript:v8];
      uniqueIdentifier = [v9 uniqueIdentifier];
      v11 = [toCopy objectAtIndexedSubscript:v8];
      uniqueIdentifier2 = [v11 uniqueIdentifier];
      v13 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = [_complicationsCopy objectAtIndexedSubscript:v8];
      intent = [v14 intent];
      v16 = [toCopy objectAtIndexedSubscript:v8];
      intent2 = [v16 intent];

      if (intent != intent2)
      {
        goto LABEL_8;
      }
    }

    while ([_complicationsCopy count] > ++v8);
  }

  v18 = 1;
LABEL_9:

  return v18;
}

- (unint64_t)hash
{
  inlineComplication = [(PRPosterComplicationLayout *)self inlineComplication];
  sidebarComplicationIconLayout = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
  sidebarComplications = [(PRPosterComplicationLayout *)self sidebarComplications];
  complicationIconLayout = [(PRPosterComplicationLayout *)self complicationIconLayout];
  complications = [(PRPosterComplicationLayout *)self complications];
  complicationsUseBottomLayout = [(PRPosterComplicationLayout *)self complicationsUseBottomLayout];
  builder = [MEMORY[0x1E698E6B8] builder];
  v10 = [builder appendObject:inlineComplication];
  v11 = [builder appendObject:sidebarComplicationIconLayout];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __34__PRPosterComplicationLayout_hash__block_invoke;
  v23[3] = &unk_1E7845478;
  v12 = builder;
  v24 = v12;
  [sidebarComplications enumerateObjectsUsingBlock:v23];
  v13 = [v12 appendObject:complicationIconLayout];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __34__PRPosterComplicationLayout_hash__block_invoke_2;
  v21 = &unk_1E7845478;
  v22 = v12;
  v14 = v12;
  [complications enumerateObjectsUsingBlock:&v18];
  v15 = [v14 appendBool:{complicationsUseBottomLayout, v18, v19, v20, v21}];
  v16 = [v14 hash];

  return v16;
}

- (BOOL)hasComplications
{
  inlineComplication = [(PRPosterComplicationLayout *)self inlineComplication];

  if (inlineComplication)
  {
    return 1;
  }

  sidebarComplications = [(PRPosterComplicationLayout *)self sidebarComplications];
  v5 = [sidebarComplications count];

  if (v5)
  {
    return 1;
  }

  complications = [(PRPosterComplicationLayout *)self complications];
  v6 = [complications count] != 0;

  return v6;
}

- (PRPosterComplicationLayout)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"inlineComplication"];

  v7 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"sidebarComplicationIconLayout"];
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [coderCopy decodeCollectionOfClass:v8 containingClass:v9 forKey:@"sidebarComplications"];

  v11 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"complicationIconLayout"];
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  v14 = [coderCopy decodeCollectionOfClass:v12 containingClass:v13 forKey:@"complications"];

  v15 = [coderCopy decodeBoolForKey:@"complicationsUseBottomLayout"];
  v16 = [(PRPosterComplicationLayout *)self initWithInlineComplication:v6 sidebarComplicationIconLayout:v7 sidebarComplications:v10 complicationIconLayout:v11 complications:v14 complicationsUseBottomLayout:v15];

  return v16;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  inlineComplication = [(PRPosterComplicationLayout *)self inlineComplication];
  [coderCopy encodeObject:inlineComplication forKey:@"inlineComplication"];

  sidebarComplicationIconLayout = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
  [coderCopy encodeDictionary:sidebarComplicationIconLayout forKey:@"sidebarComplicationIconLayout"];

  sidebarComplications = [(PRPosterComplicationLayout *)self sidebarComplications];
  [coderCopy encodeCollection:sidebarComplications forKey:@"sidebarComplications"];

  complicationIconLayout = [(PRPosterComplicationLayout *)self complicationIconLayout];
  [coderCopy encodeDictionary:complicationIconLayout forKey:@"complicationIconLayout"];

  complications = [(PRPosterComplicationLayout *)self complications];
  [coderCopy encodeCollection:complications forKey:@"complications"];

  [coderCopy encodeBool:-[PRPosterComplicationLayout complicationsUseBottomLayout](self forKey:{"complicationsUseBottomLayout"), @"complicationsUseBottomLayout"}];
}

- (void)initWithInlineComplication:(char *)a1 sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSWidgetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithInlineComplication:(char *)a1 sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithInlineComplication:(char *)a1 sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithInlineComplication:(char *)a1 sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithInlineComplication:(char *)a1 sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end