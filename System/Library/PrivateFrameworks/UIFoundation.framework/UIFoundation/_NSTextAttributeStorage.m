@interface _NSTextAttributeStorage
- (BOOL)_attributesInTextRange:(id)a3 areEqualToAttributes:(id)a4;
- (BOOL)_setAttributes:(id)a3 forTextRange:(id)a4 checkForChange:(BOOL)a5;
- (BOOL)setAttribute:(id)a3 value:(id)a4 forTextRange:(id)a5;
- (void)enumerateAttributesFromLocation:(id)a3 reverse:(BOOL)a4 usingBlock:(id)a5;
@end

@implementation _NSTextAttributeStorage

- (BOOL)setAttribute:(id)a3 value:(id)a4 forTextRange:(id)a5
{
  v42[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __59___NSTextAttributeStorage_setAttribute_value_forTextRange___block_invoke;
  v32 = &unk_1E7265568;
  v33 = &v34;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = [a5 location];
  v9 = [a5 location];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59___NSTextAttributeStorage_setAttribute_value_forTextRange___block_invoke_2;
  v23[3] = &unk_1E7265590;
  v23[8] = &v24;
  v23[4] = a5;
  v23[5] = a4;
  v23[6] = a3;
  v23[7] = v30;
  [(_NSTextRunStorage *)self enumerateObjectsFromLocation:v9 options:0 usingBlock:v23];
  v10 = [v25[5] compare:{objc_msgSend(a5, "endLocation")}];
  if (a4 && v10 == -1)
  {
    v11 = [NSTextRange alloc];
    v12 = -[NSTextRange initWithLocation:endLocation:](v11, "initWithLocation:endLocation:", v25[5], [a5 endLocation]);
    v41 = a3;
    v42[0] = a4;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v31(v30, v12, v13);
  }

  v14 = v35[5];
  if (v14)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v40 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          -[_NSTextAttributeStorage _setAttributes:forTextRange:checkForChange:](self, "_setAttributes:forTextRange:checkForChange:", [*(*(&v19 + 1) + 8 * v17) objectAtIndexedSubscript:1], objc_msgSend(*(*(&v19 + 1) + 8 * v17), "objectAtIndexedSubscript:", 0), 0);
          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v19 objects:v40 count:16];
      }

      while (v15);
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v34, 8);
  return v14 != 0;
}

- (BOOL)_attributesInTextRange:(id)a3 areEqualToAttributes:(id)a4
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = a4 == 0;
  -[_NSTextAttributeStorage enumerateAttributesFromLocation:reverse:usingBlock:](self, "enumerateAttributesFromLocation:reverse:usingBlock:", [a3 location], 0);
  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v4;
}

- (BOOL)_setAttributes:(id)a3 forTextRange:(id)a4 checkForChange:(BOOL)a5
{
  v5 = a5;
  if ([a3 count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = a3;
    }

    else
    {
      v9 = [NSAttributeDictionary newWithDictionary:a3];
    }

    v10 = v9;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (![(_NSTextAttributeStorage *)self _attributesInTextRange:a4 areEqualToAttributes:v10])
  {
LABEL_10:
    [(_NSTextRunStorage *)self setObject:v10 forRange:a4];
    v11 = 1;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)enumerateAttributesFromLocation:(id)a3 reverse:(BOOL)a4 usingBlock:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78___NSTextAttributeStorage_enumerateAttributesFromLocation_reverse_usingBlock___block_invoke;
  v5[3] = &unk_1E7265608;
  v5[4] = a5;
  [(_NSTextRunStorage *)self enumerateObjectsFromLocation:a3 options:a4 usingBlock:v5];
}

@end