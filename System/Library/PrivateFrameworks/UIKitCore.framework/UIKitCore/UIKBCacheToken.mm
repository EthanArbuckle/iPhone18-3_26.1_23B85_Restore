@interface UIKBCacheToken
+ (id)tokenTemplateForKey:(id)a3 style:(int)a4 renderConfig:(id)a5 size:(CGSize)a6;
- (CGSize)size;
- (UIKBCacheToken)initWithComponents:(id)a3 name:(id)a4;
- (id)description;
- (id)stringForComponentArray:(id)a3 additionalValues:(id)a4;
- (id)stringForConstruction:(id)a3;
- (id)stringForKey:(id)a3 state:(int)a4;
- (id)stringForRenderFlags:(int64_t)a3 renderConfig:(id)a4;
- (id)stringForSplitState:(BOOL)a3 handBias:(int64_t)a4;
- (id)stringForState:(int)a3;
- (int)_writeArray:(id)a3 toStr:(char *)a4 maxLen:(int)a5;
- (int)_writeEdgeInsets:(UIEdgeInsets)a3 toStr:(char *)a4 maxLen:(int)a5;
- (int)_writeNumber:(float)a3 toStr:(char *)a4;
- (int)_writeString:(id)a3 toStr:(char *)a4 maxLen:(int)a5;
@end

@implementation UIKBCacheToken

- (UIKBCacheToken)initWithComponents:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UIKBCacheToken;
  v9 = [(UIKBCacheToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_components, a3);
    objc_storeStrong(&v10->_name, a4);
    v10->_emptyFields = 0;
  }

  return v10;
}

- (CGSize)size
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (int)_writeString:(id)a3 toStr:(char *)a4 maxLen:(int)a5
{
  result = 0;
  if (a3)
  {
    if ((a5 & 0x80000000) == 0)
    {
      v9 = 0;
      v7 = a5;
      v8 = a3;
      [v8 getBytes:a4 maxLength:v7 usedLength:&v9 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v8, "length"), 0}];

      return v9;
    }
  }

  return result;
}

- (int)_writeNumber:(float)a3 toStr:(char *)a4
{
  v4 = a3;
  if (a3 <= 9 && v4 == a3)
  {
    *a4 = a3 | 0x30;
    return 1;
  }

  else
  {
    if (a3 >= 0.0)
    {
      v6 = 0;
    }

    else
    {
      *a4 = 45;
      a3 = -a3;
      v4 = a3;
      v6 = 1;
    }

    v8 = 0;
    v9 = 1.0;
    if (a3 != v4)
    {
      v9 = 0.1;
    }

    v10 = *"(knN";
    do
    {
      while (1)
      {
        v11 = (a3 / v10);
        if ((v8 & 1) == 0 && v11 < 1)
        {
          break;
        }

        if (v10 == 0.1)
        {
          a4[v6++] = 46;
        }

        result = v6 + 1;
        a4[v6] = v11 + 48;
        a3 = a3 - (v10 * v11);
        v10 = v10 / 10.0;
        v8 = 1;
        ++v6;
        if (v10 < v9)
        {
          return result;
        }
      }

      v8 = 0;
      v10 = v10 / 10.0;
    }

    while (v10 >= v9);
    result = v6 + 1;
    a4[v6] = 48;
  }

  return result;
}

- (int)_writeEdgeInsets:(UIEdgeInsets)a3 toStr:(char *)a4 maxLen:(int)a5
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v11 = [(UIKBCacheToken *)self _writeString:@"insets:{" toStr:a4 maxLen:*&a5];
  *&v12 = top;
  v13 = [(UIKBCacheToken *)self _writeNumber:&a4[v11] toStr:v12]+ v11;
  a4[v13] = 44;
  *&v14 = left;
  v15 = v13 + 1 + [(UIKBCacheToken *)self _writeNumber:&a4[v13 + 1] toStr:v14];
  a4[v15] = 44;
  *&v16 = bottom;
  v17 = v15 + 1 + [(UIKBCacheToken *)self _writeNumber:&a4[v15 + 1] toStr:v16];
  a4[v17] = 44;
  *&v18 = right;
  v19 = v17 + 1 + [(UIKBCacheToken *)self _writeNumber:&a4[v17 + 1] toStr:v18];
  a4[v19] = 125;
  return v19 + 1;
}

- (int)_writeArray:(id)a3 toStr:(char *)a4 maxLen:(int)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 += [(UIKBCacheToken *)self _writeString:v13 toStr:&a4[v10] maxLen:(a5 - v10)];
          if (v10 >= 1)
          {
            while (!a4[v10 - 1])
            {
              v14 = __OFSUB__(v10--, 1);
              if ((v10 < 0) ^ v14 | (v10 == 0))
              {
                v10 = 0;
                break;
              }
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 floatValue];
            v15 = [(UIKBCacheToken *)self _writeNumber:&a4[v10] toStr:?];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_17;
            }

            [v13 UIEdgeInsetsValue];
            v15 = [(UIKBCacheToken *)self _writeEdgeInsets:&a4[v10] toStr:(a5 - v10) maxLen:?];
          }

          v10 += v15;
        }

LABEL_17:
        a4[v10++] = 59;
      }

      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v9)
      {
        goto LABEL_21;
      }
    }
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (id)stringForConstruction:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
    v7 = v6;
    if (!v6)
    {
      goto LABEL_9;
    }

    v6[14] = 0u;
    v6[15] = 0u;
    v6[12] = 0u;
    v6[13] = 0u;
    v6[10] = 0u;
    v6[11] = 0u;
    v6[8] = 0u;
    v6[9] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
    v8 = v5[2](v5, v6, 255);
    v9 = v8 >= 255 ? 255 : v8;
    v10 = v9 & ~(v9 >> 31);
    v7[v10] = 0;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v7 length:v10 encoding:4 freeWhenDone:1];
    if (v7)
    {
      goto LABEL_9;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIKBCacheToken.m" lineNumber:222 description:{@"Invalid key string for token: %@", self}];
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)stringForComponentArray:(id)a3 additionalValues:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__UIKBCacheToken_stringForComponentArray_additionalValues___block_invoke;
  v12[3] = &unk_1E710E7B8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(UIKBCacheToken *)self stringForConstruction:v12];

  return v10;
}

uint64_t __59__UIKBCacheToken_stringForComponentArray_additionalValues___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = [*(a1 + 32) _writeArray:*(a1 + 40) toStr:a2 maxLen:a3];
  v7 = *(a1 + 48);
  if (v7)
  {
    return (*(v7 + 16))(v7, a2 + v6, (v3 - v6)) + v6;
  }

  return v6;
}

- (id)stringForKey:(id)a3 state:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if ([(UIKBCacheToken *)self emptyFields]== 1)
  {
    v7 = [(UIKBCacheToken *)self stringForState:v4];
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(UIKBCacheToken *)self string];
    v10 = [v6 cacheDisplayString];
    v7 = [v8 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@ %d %d %d" error:0, v10, objc_msgSend(v6, "displayTypeHint"), v4, objc_msgSend(v6, "clipCorners")];
  }

  return v7;
}

- (id)stringForState:(int)a3
{
  v3 = *&a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(UIKBCacheToken *)self string];
  v6 = [v4 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%d" error:0, v3];

  return v6;
}

- (id)stringForSplitState:(BOOL)a3 handBias:(int64_t)a4
{
  v5 = a3;
  v7 = [(NSMutableArray *)self->_components count];
  if (v5)
  {
    v8 = @"split";
  }

  else
  {
    v8 = @"default";
  }

  if (v5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (v5)
  {
    v10 = v7 - 3;
  }

  else
  {
    v10 = v7;
  }

  v11 = [(NSMutableArray *)self->_components subarrayWithRange:v9, v10];
  v12 = [(UIKBCacheToken *)self stringForComponentArray:v11 additionalValues:0];
  v13 = [MEMORY[0x1E696AD60] stringWithString:v8];
  v14 = v13;
  if (a4)
  {
    v15 = @"right";
    if (a4 == 2)
    {
      v15 = @"left";
    }

    [v13 appendFormat:@"_%@", v15];
  }

  if ([(NSSet *)self->_transformationIdentifiers count])
  {
    v16 = [(NSSet *)self->_transformationIdentifiers allObjects];
    v17 = [v16 componentsJoinedByString:{@", "}];
    [v14 appendFormat:@"t:%@;", v17];
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v14];

  return v18;
}

- (id)stringForRenderFlags:(int64_t)a3 renderConfig:(id)a4
{
  v6 = a4;
  components = self->_components;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__UIKBCacheToken_stringForRenderFlags_renderConfig___block_invoke;
  v11[3] = &unk_1E710E7E0;
  v11[4] = self;
  v12 = v6;
  v13 = a3;
  v8 = v6;
  v9 = [(UIKBCacheToken *)self stringForComponentArray:components additionalValues:v11];

  return v9;
}

uint64_t __52__UIKBCacheToken_stringForRenderFlags_renderConfig___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *&v5 = [*(a1 + 40) lightKeyboard];
  LODWORD(v4) = [v4 _writeNumber:a2 toStr:v5];
  v6 = *(a1 + 32);
  *&v7 = [*(a1 + 40) colorAdaptiveBackground];
  v8 = [v6 _writeNumber:a2 toStr:v7] + v4;
  v9 = *(a1 + 32);
  *&v10 = [*(a1 + 40) animatedBackground];
  LODWORD(v9) = [v9 _writeNumber:a2 toStr:v10];
  v11 = *(a1 + 32);
  *&v12 = [*(a1 + 40) usesCompactKeycapsFont];
  LODWORD(v9) = v8 + v9 + [v11 _writeNumber:a2 toStr:v12];
  *&v13 = *(a1 + 48);
  return v9 + [*(a1 + 32) _writeNumber:a2 + 2 toStr:v13];
}

+ (id)tokenTemplateForKey:(id)a3 style:(int)a4 renderConfig:(id)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = *&a4;
  v10 = a5;
  v11 = a3;
  v12 = [v11 name];
  v13 = [UIKBCacheToken tokenTemplateForKey:v11 name:v12 style:v8 renderConfig:v10 size:width, height];

  return v13;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UIKBCacheToken;
  v3 = [(UIKBCacheToken *)&v7 description];
  v4 = [(UIKBCacheToken *)self string];
  v5 = [v3 stringByAppendingFormat:@" <%@>", v4];

  return v5;
}

uint64_t __56__UIKBCacheToken_Keyplane_stringForSplitState_handBias___block_invoke(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (*(a1 + 48))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = v8[7];
    *&v9 = v9;
    v10 = [v8 _writeNumber:a2 toStr:v9];
    v11 = *(a1 + 32);
    v12 = v11[8];
    *&v12 = v12;
    v13 = [v11 _writeNumber:a2 + v10 toStr:v12] + v10;
    v7 = [*(a1 + 32) _writeString:*(*(a1 + 32) + 80) toStr:a2 + v13 maxLen:(a3 - v13)] + v13;
  }

  v14 = *(a1 + 32);
  *&a4 = v14[18];
  v15 = [v14 _writeNumber:a2 + v7 toStr:a4] + v7;
  LODWORD(v15) = [*(a1 + 32) _writeString:*(*(a1 + 32) + 88) toStr:a2 + v15 maxLen:(a3 - v15)] + v15;
  v16 = *(a1 + 32);
  LOBYTE(v17) = v16[120];
  *&v18 = v17;
  LODWORD(v15) = [v16 _writeNumber:a2 + v15 toStr:v18] + v15;
  v19 = *(a1 + 32);
  LOBYTE(v20) = v19[121];
  *&v21 = v20;
  LODWORD(v15) = [v19 _writeNumber:a2 + v15 toStr:v21] + v15;
  v22 = *(a1 + 32);
  LOBYTE(v23) = v22[122];
  *&v24 = v23;
  LODWORD(v15) = [v22 _writeNumber:a2 + v15 toStr:v24] + v15;
  v25 = *(a1 + 32);
  LOBYTE(v26) = v25[123];
  *&v27 = v26;
  v28 = [v25 _writeNumber:a2 + v15 toStr:v27] + v15;
  v29 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v30 = [v29 preferencesActions];
  v31 = [v30 BOOLForPreferenceKey:@"GesturesEnabled"];

  v32 = *(a1 + 32);
  if (v31)
  {
    v33 = v32[12];
    if (v33)
    {
      v34 = [v32 _writeString:v33 toStr:a2 + v28 maxLen:(a3 - v28)] + v28;
      v28 = [*(a1 + 32) _writeString:*(*(a1 + 32) + 112) toStr:a2 + v34 maxLen:(a3 - v34)] + v34;
      v32 = *(a1 + 32);
    }
  }

  v35 = v32[13];
  if (v35)
  {
    v28 += [v32 _writeString:v35 toStr:a2 + v28 maxLen:(a3 - v28)];
    v32 = *(a1 + 32);
  }

  if (*(a1 + 48))
  {
    v36 = @"split";
  }

  else
  {
    v36 = @"default";
  }

  v37 = [v32 _writeString:v36 toStr:a2 + v28 maxLen:(a3 - v28)] + v28;
  v38 = *(a1 + 40);
  if (v38)
  {
    if (v38 == 2)
    {
      v39 = @"left";
    }

    else
    {
      v39 = @"right";
    }

    v37 = [*(a1 + 32) _writeString:v39 toStr:a2 + v37 maxLen:(a3 - v37)] + v37;
  }

  if ([*(*(a1 + 32) + 40) count])
  {
    v40 = MEMORY[0x1E696AEC0];
    v41 = [*(*(a1 + 32) + 40) allObjects];
    v42 = [v41 componentsJoinedByString:{@", "}];
    v43 = [v40 stringWithFormat:@"t:%@", v42];;

    v37 = [*(a1 + 32) _writeString:v43 toStr:a2 + v37 maxLen:(a3 - v37)] + v37;
  }

  v44 = *(a1 + 32);
  v45 = v44[3];
  if (v45 > 0.0)
  {
    *&v45 = v45;
    return [v44 _writeNumber:a2 + v37 toStr:v45] + v37;
  }

  return v37;
}

uint64_t __50__UIKBCacheToken_Key__stringWithAdditionalValues___block_invoke(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(*(a1 + 32) + 56) &= 0xFFFFFFu;
  v7 = *(a1 + 32);
  *&a4 = v7[14];
  v8 = [v7 _writeNumber:a2 toStr:a4];
  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  if (v11)
  {
    v8 += [v10 _writeString:v11 toStr:a2 + v8 maxLen:(a3 - v8)];
    v10 = *(a1 + 32);
  }

  v12 = *(v10 + 72);
  if (v12)
  {
    v8 += [v10 _writeString:v12 toStr:a2 + v8 maxLen:(a3 - v8)];
    v10 = *(a1 + 32);
  }

  v13 = *(v10 + 80);
  if (v13)
  {
    v8 += [v10 _writeString:v13 toStr:a2 + v8 maxLen:(a3 - v8)];
    v10 = *(a1 + 32);
  }

  v14 = *(v10 + 88);
  if (v14)
  {
    v8 += [v10 _writeString:v14 toStr:a2 + v8 maxLen:(a3 - v8)];
    v10 = *(a1 + 32);
  }

  *&v9 = *(v10 + 96);
  v15 = [v10 _writeNumber:a2 + v8 toStr:v9] + v8;
  v16 = *(a1 + 32);
  *&v17 = v16[42];
  LODWORD(v15) = [v16 _writeNumber:a2 + v15 toStr:v17] + v15;
  v18 = *(a1 + 32);
  v19 = v18[19];
  *&v19 = v19;
  LODWORD(v15) = [v18 _writeNumber:a2 + v15 toStr:v19] + v15;
  v20 = *(a1 + 32);
  v21 = v20[20];
  *&v21 = v21;
  v22 = [v20 _writeNumber:a2 + v15 toStr:v21] + v15;
  v24 = *(a1 + 32);
  if (*(v24 + 176) == 1)
  {
    v22 += [v24 _writeEdgeInsets:a2 + v22 toStr:(a3 - v22) maxLen:{*(v24 + 112), *(v24 + 120), *(v24 + 128), *(v24 + 136)}];
    v24 = *(a1 + 32);
  }

  LOBYTE(v23) = *(v24 + 177);
  *&v23 = LODWORD(v23);
  v25 = [v24 _writeNumber:a2 + v22 toStr:v23] + v22;
  v26 = *(a1 + 32);
  LOBYTE(v27) = v26[178];
  *&v28 = v27;
  LODWORD(v25) = [v26 _writeNumber:a2 + v25 toStr:v28] + v25;
  v29 = *(a1 + 32);
  LOBYTE(v30) = v29[179];
  *&v31 = v30;
  LODWORD(v25) = [v29 _writeNumber:a2 + v25 toStr:v31] + v25;
  v32 = *(a1 + 32);
  LOBYTE(v33) = v32[180];
  *&v34 = v33;
  LODWORD(v25) = [v32 _writeNumber:a2 + v25 toStr:v34] + v25;
  v35 = *(a1 + 32);
  *&v36 = v35[43];
  LODWORD(v25) = [v35 _writeNumber:a2 + v25 toStr:v36] + v25;
  v37 = *(a1 + 32);
  LOBYTE(v38) = v37[181];
  *&v39 = v38;
  LODWORD(v25) = [v37 _writeNumber:a2 + v25 toStr:v39] + v25;
  v40 = *(a1 + 32);
  *&v41 = v40[25];
  LODWORD(v25) = [v40 _writeNumber:a2 + v25 toStr:v41] + v25;
  v42 = *(a1 + 32);
  *&v43 = v42[13];
  LODWORD(v25) = [v42 _writeNumber:a2 + v25 toStr:v43] + v25;
  v44 = *(a1 + 32);
  *&v45 = v44[18];
  v46 = [v44 _writeNumber:a2 + v25 toStr:v45] + v25;
  v47 = *(a1 + 32);
  v48 = v47[3];
  if (v48 > 0.0)
  {
    *&v48 = v48;
    v46 = [v47 _writeNumber:a2 + v46 toStr:v48] + v46;
  }

  v49 = *(a1 + 40);
  if (v49)
  {
    return (*(v49 + 16))(v49, a2 + v46, (a3 - v46)) + v46;
  }

  return v46;
}

uint64_t __57__UIKBCacheToken_Key_stringForRenderFlags_lightKeyboard___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  LOBYTE(a3) = *(a1 + 48);
  *&a3 = LODWORD(a3);
  v5 = [*(a1 + 32) _writeNumber:a2 toStr:a3];
  *&v6 = *(a1 + 40);
  return [*(a1 + 32) _writeNumber:a2 + v5 toStr:v6] + v5;
}

uint64_t __54__UIKBCacheToken_KeyMask__stringWithAdditionalValues___block_invoke(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = *(a1 + 32);
  *&a4 = v7[14];
  v8 = [v7 _writeNumber:a2 toStr:a4];
  v9 = *(a1 + 32);
  v10 = v9[19];
  *&v10 = v10;
  v11 = [v9 _writeNumber:a2 + v8 toStr:v10] + v8;
  v12 = *(a1 + 32);
  v13 = v12[20];
  *&v13 = v13;
  LODWORD(v11) = [v12 _writeNumber:a2 + v11 toStr:v13] + v11;
  LODWORD(v11) = [*(a1 + 32) _writeEdgeInsets:a2 + v11 toStr:(a3 - v11) maxLen:{*(*(a1 + 32) + 112), *(*(a1 + 32) + 120), *(*(a1 + 32) + 128), *(*(a1 + 32) + 136)}] + v11;
  v14 = *(a1 + 32);
  *&v15 = v14[25];
  LODWORD(v11) = [v14 _writeNumber:a2 + v11 toStr:v15] + v11;
  v16 = *(a1 + 32);
  *&v17 = v16[13];
  LODWORD(v11) = [v16 _writeNumber:a2 + v11 toStr:v17] + v11;
  v18 = *(a1 + 32);
  *&v19 = v18[18];
  LODWORD(v11) = [v18 _writeNumber:a2 + v11 toStr:v19] + v11;
  v20 = *(a1 + 32);
  LOBYTE(v21) = v20[178];
  *&v22 = v21;
  LODWORD(v11) = [v20 _writeNumber:a2 + v11 toStr:v22] + v11;
  v23 = *(a1 + 32);
  LOBYTE(v24) = v23[177];
  *&v25 = v24;
  LODWORD(v11) = [v23 _writeNumber:a2 + v11 toStr:v25] + v11;
  v26 = *(a1 + 32);
  LOBYTE(v27) = v26[179];
  *&v28 = v27;
  LODWORD(v11) = [v26 _writeNumber:a2 + v11 toStr:v28] + v11;
  v29 = *(a1 + 32);
  LOBYTE(v30) = v29[180];
  *&v31 = v30;
  LODWORD(v11) = [v29 _writeNumber:a2 + v11 toStr:v31] + v11;
  v32 = *(a1 + 32);
  *&v33 = v32[43];
  LODWORD(v11) = [v32 _writeNumber:a2 + v11 toStr:v33] + v11;
  v34 = *(a1 + 32);
  LOBYTE(v35) = v34[181];
  *&v36 = v35;
  v37 = [v34 _writeNumber:a2 + v11 toStr:v36] + v11;
  v38 = *(a1 + 32);
  v39 = *(v38 + 24);
  if (v39 > 0.0)
  {
    *&v39 = v39;
    v37 = [v38 _writeNumber:a2 + v37 toStr:v39] + v37;
    v38 = *(a1 + 32);
  }

  v40 = *(v38 + 88);
  if (v40)
  {
    v37 = [v38 _writeString:v40 toStr:a2 + v37 maxLen:(a3 - v37)] + v37;
  }

  v41 = *(a1 + 40);
  if (v41)
  {
    return (*(v41 + 16))(v41, a2 + v37, (a3 - v37)) + v37;
  }

  return v37;
}

uint64_t __58__UIKBCacheToken_KeyTemplate__stringWithAdditionalValues___block_invoke(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = *(a1 + 32);
  *&a4 = v7[14];
  v8 = [v7 _writeNumber:a2 toStr:a4];
  v9 = [*(a1 + 32) _writeString:@"%@" toStr:a2 + v8 maxLen:(a3 - v8)] + v8;
  v10 = *(a1 + 32);
  v11 = v10[9];
  if (v11)
  {
    LODWORD(v9) = [v10 _writeString:v11 toStr:a2 + v9 maxLen:(a3 - v9)] + v9;
    v10 = *(a1 + 32);
  }

  v12 = v10[10];
  if (v12)
  {
    LODWORD(v9) = [v10 _writeString:v12 toStr:a2 + v9 maxLen:(a3 - v9)] + v9;
    v10 = *(a1 + 32);
  }

  v13 = v10[11];
  if (v13)
  {
    LODWORD(v9) = [v10 _writeString:v13 toStr:a2 + v9 maxLen:(a3 - v9)] + v9;
    v10 = *(a1 + 32);
  }

  v14 = [v10 _writeString:@"%d" toStr:a2 + v9 maxLen:(a3 - v9)] + v9;
  v15 = *(a1 + 32);
  *&v16 = v15[42];
  LODWORD(v14) = [v15 _writeNumber:a2 + v14 toStr:v16] + v14;
  v17 = *(a1 + 32);
  v18 = v17[19];
  *&v18 = v18;
  LODWORD(v14) = [v17 _writeNumber:a2 + v14 toStr:v18] + v14;
  v19 = *(a1 + 32);
  v20 = v19[20];
  *&v20 = v20;
  LODWORD(v14) = [v19 _writeNumber:a2 + v14 toStr:v20] + v14;
  LODWORD(v14) = [*(a1 + 32) _writeString:@"%d" toStr:a2 + v14 maxLen:(a3 - v14)] + v14;
  v21 = [*(a1 + 32) _writeString:@"%d" toStr:a2 + v14 maxLen:(a3 - v14)] + v14;
  v22 = *(a1 + 32);
  LOBYTE(v23) = v22[178];
  *&v24 = v23;
  v25 = [v22 _writeNumber:a2 + v21 toStr:v24] + v21;
  v26 = *(a1 + 32);
  LOBYTE(v27) = v26[177];
  *&v28 = v27;
  v29 = [v26 _writeNumber:a2 + v25 toStr:v28] + v25;
  v30 = *(a1 + 32);
  LOBYTE(v31) = v30[179];
  *&v32 = v31;
  v33 = [v30 _writeNumber:a2 + v29 toStr:v32] + v29;
  v34 = *(a1 + 32);
  LOBYTE(v35) = v34[180];
  *&v36 = v35;
  v37 = [v34 _writeNumber:a2 + v33 toStr:v36] + v33;
  v38 = *(a1 + 32);
  *&v39 = v38[43];
  v40 = [v38 _writeNumber:a2 + v37 toStr:v39] + v37;
  v41 = *(a1 + 32);
  LOBYTE(v42) = v41[181];
  *&v43 = v42;
  v44 = [v41 _writeNumber:a2 + v40 toStr:v43] + v40;
  v45 = *(a1 + 32);
  v46 = v45[3];
  if (v46 > 0.0)
  {
    *&v46 = v46;
    v44 = [v45 _writeNumber:a2 + v44 toStr:v46] + v44;
  }

  v47 = *(a1 + 40);
  if (v47)
  {
    return (*(v47 + 16))(v47, a2 + v44, (a3 - v44)) + v44;
  }

  return v44;
}

uint64_t __64__UIKBCacheToken_KeyFilledTemplate__stringWithAdditionalValues___block_invoke(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = *(a1 + 32);
  *&a4 = v7[14];
  v8 = [v7 _writeNumber:a2 toStr:a4];
  v9 = [*(a1 + 32) _writeString:*(*(a1 + 32) + 64) toStr:a2 + v8 maxLen:(a3 - v8)] + v8;
  v11 = *(a1 + 32);
  v12 = *(v11 + 72);
  if (v12)
  {
    LODWORD(v9) = [v11 _writeString:v12 toStr:a2 + v9 maxLen:(a3 - v9)] + v9;
    v11 = *(a1 + 32);
  }

  v13 = *(v11 + 88);
  if (v13)
  {
    LODWORD(v9) = [v11 _writeString:v13 toStr:a2 + v9 maxLen:(a3 - v9)] + v9;
    v11 = *(a1 + 32);
  }

  *&v10 = *(v11 + 96);
  v14 = [v11 _writeNumber:a2 + v9 toStr:v10] + v9;
  v15 = *(a1 + 32);
  *&v16 = v15[42];
  LODWORD(v14) = [v15 _writeNumber:a2 + v14 toStr:v16] + v14;
  v17 = *(a1 + 32);
  v18 = v17[19];
  *&v18 = v18;
  LODWORD(v14) = [v17 _writeNumber:a2 + v14 toStr:v18] + v14;
  v19 = *(a1 + 32);
  v20 = v19[20];
  *&v20 = v20;
  LODWORD(v14) = [v19 _writeNumber:a2 + v14 toStr:v20] + v14;
  LODWORD(v14) = [*(a1 + 32) _writeString:@"%d" toStr:a2 + v14 maxLen:(a3 - v14)] + v14;
  v21 = *(a1 + 32);
  LOBYTE(v22) = v21[178];
  *&v23 = v22;
  LODWORD(v14) = [v21 _writeNumber:a2 + v14 toStr:v23] + v14;
  v24 = *(a1 + 32);
  LOBYTE(v25) = v24[177];
  *&v26 = v25;
  LODWORD(v14) = [v24 _writeNumber:a2 + v14 toStr:v26] + v14;
  v27 = *(a1 + 32);
  LOBYTE(v28) = v27[179];
  *&v29 = v28;
  LODWORD(v14) = [v27 _writeNumber:a2 + v14 toStr:v29] + v14;
  v30 = *(a1 + 32);
  LOBYTE(v31) = v30[180];
  *&v32 = v31;
  LODWORD(v14) = [v30 _writeNumber:a2 + v14 toStr:v32] + v14;
  v33 = *(a1 + 32);
  *&v34 = v33[43];
  LODWORD(v14) = [v33 _writeNumber:a2 + v14 toStr:v34] + v14;
  v35 = *(a1 + 32);
  LOBYTE(v36) = v35[181];
  *&v37 = v36;
  v38 = [v35 _writeNumber:a2 + v14 toStr:v37] + v14;
  v39 = *(a1 + 32);
  v40 = v39[3];
  if (v40 > 0.0)
  {
    *&v40 = v40;
    v38 = [v39 _writeNumber:a2 + v38 toStr:v40] + v38;
  }

  v41 = *(a1 + 40);
  if (v41)
  {
    return (*(v41 + 16))(v41, a2 + v38, (a3 - v38)) + v38;
  }

  return v38;
}

@end