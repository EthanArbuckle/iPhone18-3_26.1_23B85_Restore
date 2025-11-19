@interface PRPosterComplicationLayout
- (BOOL)_complications:(id)a3 AreEqualTo:(id)a4;
- (BOOL)hasComplications;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToComplicationLayout:(id)a3;
- (PRPosterComplicationLayout)initWithBSXPCCoder:(id)a3;
- (PRPosterComplicationLayout)initWithCoder:(id)a3;
- (PRPosterComplicationLayout)initWithInlineComplication:(id)a3 sidebarComplicationIconLayout:(id)a4 sidebarComplications:(id)a5 complicationIconLayout:(id)a6 complications:(id)a7 complicationsUseBottomLayout:(BOOL)a8;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterComplicationLayout

- (PRPosterComplicationLayout)initWithInlineComplication:(id)a3 sidebarComplicationIconLayout:(id)a4 sidebarComplications:(id)a5 complicationIconLayout:(id)a6 complications:(id)a7 complicationsUseBottomLayout:(BOOL)a8
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = v16;
  if (v21)
  {
    NSClassFromString(&cfstr_Prswidget.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterComplicationLayout initWithInlineComplication:a2 sidebarComplicationIconLayout:? sidebarComplications:? complicationIconLayout:? complications:? complicationsUseBottomLayout:?];
    }
  }

  v22 = v17;
  if (v22)
  {
    NSClassFromString(&cfstr_Nsdictionary.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterComplicationLayout initWithInlineComplication:a2 sidebarComplicationIconLayout:? sidebarComplications:? complicationIconLayout:? complications:? complicationsUseBottomLayout:?];
    }
  }

  v23 = v18;
  if (v23)
  {
    NSClassFromString(&cfstr_Nsarray.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterComplicationLayout initWithInlineComplication:a2 sidebarComplicationIconLayout:? sidebarComplications:? complicationIconLayout:? complications:? complicationsUseBottomLayout:?];
    }
  }

  v24 = v19;
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
    objc_storeStrong(&v26->_inlineComplication, a3);
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

    v27->_complicationsUseBottomLayout = a8;
  }

  return v27;
}

- (PRPosterComplicationLayout)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v28 = [v3 decodeObjectOfClass:v4 forKey:@"inlineComplication"];

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [v3 decodeObjectOfClasses:v9 forKey:@"sidebarComplicationIconLayout"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"sidebarComplications"];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
  v20 = [v3 decodeObjectOfClasses:v19 forKey:@"complicationIconLayout"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v3 decodeObjectOfClasses:v23 forKey:@"complications"];

  v25 = [v3 decodeBoolForKey:@"complicationsUseBottomLayout"];
  v26 = [(PRPosterComplicationLayout *)self initWithInlineComplication:v28 sidebarComplicationIconLayout:v10 sidebarComplications:v14 complicationIconLayout:v20 complications:v24 complicationsUseBottomLayout:v25];

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(PRPosterComplicationLayout *)self inlineComplication];
  [v9 encodeObject:v4 forKey:@"inlineComplication"];

  v5 = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
  [v9 encodeObject:v5 forKey:@"sidebarComplicationIconLayout"];

  v6 = [(PRPosterComplicationLayout *)self sidebarComplications];
  [v9 encodeObject:v6 forKey:@"sidebarComplications"];

  v7 = [(PRPosterComplicationLayout *)self complicationIconLayout];
  [v9 encodeObject:v7 forKey:@"complicationIconLayout"];

  v8 = [(PRPosterComplicationLayout *)self complications];
  [v9 encodeObject:v8 forKey:@"complications"];

  [v9 encodeBool:-[PRPosterComplicationLayout complicationsUseBottomLayout](self forKey:{"complicationsUseBottomLayout"), @"complicationsUseBottomLayout"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterMutableComplicationLayout alloc];
  v5 = [(PRPosterComplicationLayout *)self inlineComplication];
  v6 = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
  v7 = [(PRPosterComplicationLayout *)self sidebarComplications];
  v8 = [(PRPosterComplicationLayout *)self complicationIconLayout];
  v9 = [(PRPosterComplicationLayout *)self complications];
  v10 = [(PRPosterComplicationLayout *)v4 initWithInlineComplication:v5 sidebarComplicationIconLayout:v6 sidebarComplications:v7 complicationIconLayout:v8 complications:v9 complicationsUseBottomLayout:[(PRPosterComplicationLayout *)self complicationsUseBottomLayout]];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterComplicationLayout *)self isEqualToComplicationLayout:v4];
  }

  return v5;
}

- (BOOL)isEqualToComplicationLayout:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v19) = 1;
  }

  else if (v4)
  {
    v6 = [(PRPosterComplicationLayout *)self inlineComplication];
    v7 = [(PRPosterComplicationLayout *)v5 inlineComplication];
    if (BSEqualObjects())
    {
      v8 = [(PRPosterComplicationLayout *)self sidebarComplications];
      v9 = [(PRPosterComplicationLayout *)v5 sidebarComplications];
      if ([(PRPosterComplicationLayout *)self _complications:v8 AreEqualTo:v9])
      {
        v10 = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
        v11 = [(PRPosterComplicationLayout *)v5 sidebarComplicationIconLayout];
        if (BSEqualObjects())
        {
          v12 = [(PRPosterComplicationLayout *)self complicationIconLayout];
          v13 = [(PRPosterComplicationLayout *)v5 complicationIconLayout];
          if (BSEqualObjects())
          {
            v21 = v12;
            v14 = [(PRPosterComplicationLayout *)self complications];
            v15 = [(PRPosterComplicationLayout *)v5 complications];
            v22 = v14;
            v16 = v14;
            v17 = v15;
            if ([(PRPosterComplicationLayout *)self _complications:v16 AreEqualTo:v15])
            {
              v18 = [(PRPosterComplicationLayout *)self complicationsUseBottomLayout];
              v19 = v18 ^ [(PRPosterComplicationLayout *)v5 complicationsUseBottomLayout]^ 1;
            }

            else
            {
              LOBYTE(v19) = 0;
            }

            v12 = v21;
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

- (BOOL)_complications:(id)a3 AreEqualTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  if ([v5 count])
  {
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v9 uniqueIdentifier];
      v11 = [v6 objectAtIndexedSubscript:v8];
      v12 = [v11 uniqueIdentifier];
      v13 = [v10 isEqualToString:v12];

      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = [v5 objectAtIndexedSubscript:v8];
      v15 = [v14 intent];
      v16 = [v6 objectAtIndexedSubscript:v8];
      v17 = [v16 intent];

      if (v15 != v17)
      {
        goto LABEL_8;
      }
    }

    while ([v5 count] > ++v8);
  }

  v18 = 1;
LABEL_9:

  return v18;
}

- (unint64_t)hash
{
  v3 = [(PRPosterComplicationLayout *)self inlineComplication];
  v4 = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
  v5 = [(PRPosterComplicationLayout *)self sidebarComplications];
  v6 = [(PRPosterComplicationLayout *)self complicationIconLayout];
  v7 = [(PRPosterComplicationLayout *)self complications];
  v8 = [(PRPosterComplicationLayout *)self complicationsUseBottomLayout];
  v9 = [MEMORY[0x1E698E6B8] builder];
  v10 = [v9 appendObject:v3];
  v11 = [v9 appendObject:v4];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __34__PRPosterComplicationLayout_hash__block_invoke;
  v23[3] = &unk_1E7845478;
  v12 = v9;
  v24 = v12;
  [v5 enumerateObjectsUsingBlock:v23];
  v13 = [v12 appendObject:v6];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __34__PRPosterComplicationLayout_hash__block_invoke_2;
  v21 = &unk_1E7845478;
  v22 = v12;
  v14 = v12;
  [v7 enumerateObjectsUsingBlock:&v18];
  v15 = [v14 appendBool:{v8, v18, v19, v20, v21}];
  v16 = [v14 hash];

  return v16;
}

- (BOOL)hasComplications
{
  v3 = [(PRPosterComplicationLayout *)self inlineComplication];

  if (v3)
  {
    return 1;
  }

  v4 = [(PRPosterComplicationLayout *)self sidebarComplications];
  v5 = [v4 count];

  if (v5)
  {
    return 1;
  }

  v8 = [(PRPosterComplicationLayout *)self complications];
  v6 = [v8 count] != 0;

  return v6;
}

- (PRPosterComplicationLayout)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"inlineComplication"];

  v7 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"sidebarComplicationIconLayout"];
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [v4 decodeCollectionOfClass:v8 containingClass:v9 forKey:@"sidebarComplications"];

  v11 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"complicationIconLayout"];
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  v14 = [v4 decodeCollectionOfClass:v12 containingClass:v13 forKey:@"complications"];

  v15 = [v4 decodeBoolForKey:@"complicationsUseBottomLayout"];
  v16 = [(PRPosterComplicationLayout *)self initWithInlineComplication:v6 sidebarComplicationIconLayout:v7 sidebarComplications:v10 complicationIconLayout:v11 complications:v14 complicationsUseBottomLayout:v15];

  return v16;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v9 = a3;
  v4 = [(PRPosterComplicationLayout *)self inlineComplication];
  [v9 encodeObject:v4 forKey:@"inlineComplication"];

  v5 = [(PRPosterComplicationLayout *)self sidebarComplicationIconLayout];
  [v9 encodeDictionary:v5 forKey:@"sidebarComplicationIconLayout"];

  v6 = [(PRPosterComplicationLayout *)self sidebarComplications];
  [v9 encodeCollection:v6 forKey:@"sidebarComplications"];

  v7 = [(PRPosterComplicationLayout *)self complicationIconLayout];
  [v9 encodeDictionary:v7 forKey:@"complicationIconLayout"];

  v8 = [(PRPosterComplicationLayout *)self complications];
  [v9 encodeCollection:v8 forKey:@"complications"];

  [v9 encodeBool:-[PRPosterComplicationLayout complicationsUseBottomLayout](self forKey:{"complicationsUseBottomLayout"), @"complicationsUseBottomLayout"}];
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