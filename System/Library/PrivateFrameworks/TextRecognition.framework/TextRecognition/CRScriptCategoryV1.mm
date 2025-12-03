@interface CRScriptCategoryV1
+ (id)arabic;
+ (id)chinese;
+ (id)common;
+ (id)japanese;
+ (id)korean;
+ (id)latinCyrillic;
+ (id)sequenceScriptForCategory:(id)category;
+ (id)supportedCategories;
+ (id)thai;
+ (id)unknown;
+ (id)verticalLayoutSupportedCategories;
- (BOOL)isEqual:(id)equal;
- (NSString)categoryName;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CRScriptCategoryV1

- (NSString)categoryName
{
  v3 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CRScriptCategoryV1_categoryNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v3;
  if (qword_1ED960008 != -1)
  {
    dispatch_once(&qword_1ED960008, block);
  }

  v4 = qword_1ED960010;
  if (self)
  {
    categoryValue = self->_categoryValue;
  }

  else
  {
    categoryValue = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:categoryValue];
  v7 = [v4 objectForKey:v6];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CRScriptCategoryV1;
  v4 = [(CRScriptCategoryV1 *)&v8 description];
  categoryName = [(CRScriptCategoryV1 *)self categoryName];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, categoryName];

  return v6;
}

+ (id)sequenceScriptForCategory:(id)category
{
  categoryCopy = category;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (categoryCopy && (isKindOfClass & 1) != 0)
  {
    v6 = categoryCopy[1] - 1;
    if (v6 > 6)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_1E7BC2C48[v6];
    }
  }

  return v5;
}

+ (id)supportedCategories
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CRScriptCategoryV1_supportedCategories__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_19 != -1)
  {
    dispatch_once(&_MergedGlobals_19, block);
  }

  v2 = qword_1ED95FFF0;

  return v2;
}

void __41__CRScriptCategoryV1_supportedCategories__block_invoke(uint64_t a1)
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) unknown];
  v12[0] = v2;
  v3 = [*(a1 + 32) common];
  v12[1] = v3;
  v4 = [*(a1 + 32) latinCyrillic];
  v12[2] = v4;
  v5 = [*(a1 + 32) chinese];
  v12[3] = v5;
  v6 = [*(a1 + 32) japanese];
  v12[4] = v6;
  v7 = [*(a1 + 32) korean];
  v12[5] = v7;
  v8 = [*(a1 + 32) thai];
  v12[6] = v8;
  v9 = [*(a1 + 32) arabic];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];
  v11 = qword_1ED95FFF0;
  qword_1ED95FFF0 = v10;
}

+ (id)verticalLayoutSupportedCategories
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CRScriptCategoryV1_verticalLayoutSupportedCategories__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED95FFF8 != -1)
  {
    dispatch_once(&qword_1ED95FFF8, block);
  }

  v2 = qword_1ED960000;

  return v2;
}

void __55__CRScriptCategoryV1_verticalLayoutSupportedCategories__block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) japanese];
  v3 = [*(a1 + 32) chinese];
  v7[1] = v3;
  v4 = [*(a1 + 32) korean];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v6 = qword_1ED960000;
  qword_1ED960000 = v5;
}

void __35__CRScriptCategoryV1_categoryNames__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) supportedCategories];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 8);
          if (v9 > 7)
          {
            goto LABEL_10;
          }

          v10 = off_1E7BC2C80[v9];
        }

        else
        {
          v10 = @"UnknownV1";
        }

        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        [v2 setObject:v10 forKeyedSubscript:v11];

LABEL_10:
        ++v7;
      }

      while (v5 != v7);
      v12 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v5 = v12;
    }

    while (v12);
  }

  v13 = [v2 copy];
  v14 = qword_1ED960010;
  qword_1ED960010 = v13;
}

+ (id)unknown
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CRScriptCategoryV1_unknown__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960018 != -1)
  {
    dispatch_once(&qword_1ED960018, block);
  }

  v2 = qword_1ED960020;

  return v2;
}

void __29__CRScriptCategoryV1_unknown__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = CRScriptCategoryV1;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1[1] = 0;
    }
  }

  v2 = qword_1ED960020;
  qword_1ED960020 = v1;
}

+ (id)common
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CRScriptCategoryV1_common__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960028 != -1)
  {
    dispatch_once(&qword_1ED960028, block);
  }

  v2 = qword_1ED960030;

  return v2;
}

void __28__CRScriptCategoryV1_common__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = CRScriptCategoryV1;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1[1] = 1;
    }
  }

  v2 = qword_1ED960030;
  qword_1ED960030 = v1;
}

+ (id)latinCyrillic
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CRScriptCategoryV1_latinCyrillic__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960038 != -1)
  {
    dispatch_once(&qword_1ED960038, block);
  }

  v2 = qword_1ED960040;

  return v2;
}

void __35__CRScriptCategoryV1_latinCyrillic__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = CRScriptCategoryV1;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1[1] = 2;
    }
  }

  v2 = qword_1ED960040;
  qword_1ED960040 = v1;
}

+ (id)chinese
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CRScriptCategoryV1_chinese__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960048 != -1)
  {
    dispatch_once(&qword_1ED960048, block);
  }

  v2 = qword_1ED960050;

  return v2;
}

void __29__CRScriptCategoryV1_chinese__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = CRScriptCategoryV1;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1[1] = 3;
    }
  }

  v2 = qword_1ED960050;
  qword_1ED960050 = v1;
}

+ (id)korean
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CRScriptCategoryV1_korean__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960058 != -1)
  {
    dispatch_once(&qword_1ED960058, block);
  }

  v2 = qword_1ED960060;

  return v2;
}

void __28__CRScriptCategoryV1_korean__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = CRScriptCategoryV1;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1[1] = 4;
    }
  }

  v2 = qword_1ED960060;
  qword_1ED960060 = v1;
}

+ (id)japanese
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CRScriptCategoryV1_japanese__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960068 != -1)
  {
    dispatch_once(&qword_1ED960068, block);
  }

  v2 = qword_1ED960070;

  return v2;
}

void __30__CRScriptCategoryV1_japanese__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = CRScriptCategoryV1;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1[1] = 5;
    }
  }

  v2 = qword_1ED960070;
  qword_1ED960070 = v1;
}

+ (id)thai
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CRScriptCategoryV1_thai__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960078 != -1)
  {
    dispatch_once(&qword_1ED960078, block);
  }

  v2 = qword_1ED960080;

  return v2;
}

void __26__CRScriptCategoryV1_thai__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = CRScriptCategoryV1;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1[1] = 6;
    }
  }

  v2 = qword_1ED960080;
  qword_1ED960080 = v1;
}

+ (id)arabic
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CRScriptCategoryV1_arabic__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960088 != -1)
  {
    dispatch_once(&qword_1ED960088, block);
  }

  v2 = qword_1ED960090;

  return v2;
}

void __28__CRScriptCategoryV1_arabic__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = CRScriptCategoryV1;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1[1] = 7;
    }
  }

  v2 = qword_1ED960090;
  qword_1ED960090 = v1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  if (!self)
  {
    categoryValue = 0;
    if (equalCopy)
    {
      goto LABEL_4;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_5;
  }

  categoryValue = self->_categoryValue;
  if (!equalCopy)
  {
    goto LABEL_9;
  }

LABEL_4:
  v6 = equalCopy[1];
LABEL_5:
  v7 = categoryValue == v6;
LABEL_7:

  return v7;
}

- (unint64_t)hash
{
  if (self)
  {
    return *(self + 8);
  }

  return self;
}

@end