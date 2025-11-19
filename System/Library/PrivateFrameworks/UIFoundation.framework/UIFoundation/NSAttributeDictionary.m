@interface NSAttributeDictionary
+ (id)newWithDictionary:(id)a3;
+ (void)initialize;
- (BOOL)isEqualToDictionary:(id)a3;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newWithKey:(id)a3 object:(id)a4;
- (id)objectForKey:(id)a3;
- (void)__apply:(void *)a3 context:(void *)a4;
- (void)dealloc;
- (void)getObjects:(id *)a3 andKeys:(id *)a4;
@end

@implementation NSAttributeDictionary

- (id)keyEnumerator
{
  v2 = [objc_allocWithZone(NSAttributeDictionaryEnumerator) initWithAttributeDictionary:self];

  return v2;
}

+ (void)initialize
{
  v8[30] = *MEMORY[0x1E69E9840];
  if (!attributeDictionaryClass)
  {
    v2 = objc_opt_class();
    if (v2 == objc_opt_class())
    {
      attributeDictionaryClass = objc_opt_class();
      tempAttributeDictionaryClass = objc_opt_class();
      v3 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:5];
      [v3 setIsEqualFunction:attributeDictionaryIsEqual];
      [v3 setDescriptionFunction:attributeDictionaryDescribe];
      [v3 setHashFunction:attributeDictionaryHash];
      v4 = 0;
      v8[0] = @"NSFont";
      v8[1] = @"NSParagraphStyle";
      v8[2] = @"NSOriginalFont";
      v8[3] = NSGlyphInfoAttributeName;
      v8[4] = @"NSStrikethrough";
      v8[5] = @"NSUnderline";
      v8[6] = @"CTVerticalForms";
      v8[7] = @"NSLigature";
      v8[8] = @"NSKern";
      v8[9] = NSLanguageAttributeName;
      v8[10] = @"NSStrokeColor";
      v8[11] = @"NSBackgroundColor";
      v8[12] = @"NSShadow";
      v8[13] = @"NSColor";
      v8[14] = @"NSStrikethroughColor";
      v8[15] = @"NSUnderlineColor";
      v8[16] = @"NSAttachment";
      v8[17] = @"NSBaselineOffset";
      v8[18] = @"NSExpansion";
      v8[19] = @"NSWritingDirection";
      v5 = *MEMORY[0x1E69659D8];
      v8[20] = @"NSSuperScript";
      v8[21] = v5;
      v8[22] = @"NSStrokeWidth";
      v8[23] = @"NSObliqueness";
      v8[24] = @"NSTextEffect";
      v8[25] = NSTemporaryTextCorrectionAttributeName;
      v8[26] = @"NSLink";
      v8[27] = @"NSTextAlternativesDisplayStyle";
      __NSNumberOfNormalizedKeys = 1;
      v6 = &qword_1ED4DF650;
      v8[28] = @"NSTextAlternatives";
      v8[29] = @"NSMarkedTextStyleAttributeName";
      do
      {
        v7 = v8[v4];
        *(v6 - 1) = v7;
        *v6 = [v7 hash];
        v6 += 2;
        ++v4;
      }

      while (v4 != 30);
      attributeDictionaryTable = [objc_alloc(MEMORY[0x1E696AC70]) initWithPointerFunctions:v3 capacity:0];
      emptyAttributeDictionary = +[NSAttributeDictionary newWithDictionary:](NSAttributeDictionary, "newWithDictionary:", [MEMORY[0x1E695DF20] dictionary]);
    }
  }
}

- (void)dealloc
{
  if (self->numElements)
  {
    v3 = 0;
    p_var0 = &self->elements[0].var0;
    do
    {

      v5 = *p_var0;
      p_var0 += 3;

      ++v3;
    }

    while (v3 < self->numElements);
  }

  v6.receiver = self;
  v6.super_class = NSAttributeDictionary;
  [(NSAttributeDictionary *)&v6 dealloc];
}

+ (id)newWithDictionary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = emptyAttributeDictionary;
  }

  v32 = v3;
  if (v3 && object_getClass(v3) == attributeDictionaryClass)
  {

    return v32;
  }

  os_unfair_lock_lock_with_options();
  v4 = [attributeDictionaryTable member:v32];
  if (v4)
  {
    v5 = v4;
    v6 = v4;
LABEL_8:
    os_unfair_lock_unlock(&attributeDictionaryLock);
    return v5;
  }

  os_unfair_lock_unlock(&attributeDictionaryLock);
  v7 = [v32 count];
  if (v7 >= 0x81)
  {
    v9 = NSZoneMalloc(0, 8 * v7);
    v8 = NSZoneMalloc(0, 8 * v7);
  }

  else
  {
    v8 = v33;
    v9 = v34;
  }

  [v32 getObjects:v8 andKeys:v9 count:v7];
  v11 = objc_opt_class();
  v12 = v7 - 1;
  if (!v7)
  {
    v12 = 0;
  }

  v5 = NSAllocateObject(v11, 24 * v12, 0);
  v5[1] = v7;
  if (!v7)
  {
    goto LABEL_42;
  }

  v13 = 0;
  v14 = 0x1EAC99000uLL;
  do
  {
    v15 = *&v9[8 * v13];
    if (__NSNumberOfNormalizedKeys == 1)
    {
      v16 = 30;
      v17 = &qword_1ED4DF650;
      do
      {
        if (*(v17 - 1) == v15)
        {
          v21 = *v17;
          v25 = v15;
          goto LABEL_34;
        }

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v18 = v9;
    v19 = v5;
    v20 = v8;
    v21 = [v15 hash];
    if (__NSNumberOfNormalizedKeys != 1)
    {
LABEL_31:
      v25 = [v15 copyWithZone:0];
      goto LABEL_32;
    }

    v22 = 0;
    v23 = &normalizedKeyInfo;
    while (v21 != v23[1])
    {
      v24 = 1;
LABEL_29:
      if (v22 <= 0x1C)
      {
        ++v22;
        v23 += 2;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

    if (([*v23 isEqual:v15] & 1) == 0)
    {
      v24 = __NSNumberOfNormalizedKeys;
      goto LABEL_29;
    }

    v25 = *v23;
LABEL_32:
    v8 = v20;
    v5 = v19;
    v9 = v18;
    v14 = 0x1EAC99000;
LABEL_34:
    *&v9[8 * v13] = v25;
    v26 = v21 % v7;
    v27 = v5 + *(v14 + 1828);
    while (1)
    {
      v28 = &v27[24 * v26];
      if (!v28[1])
      {
        break;
      }

      if (v26 + 1 == v7)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }
    }

    *v28 = v21;
    *&v27[24 * v26 + 8] = *&v9[8 * v13];
    *(&v5[3 * v26 + 2] + *(v14 + 1828)) = *&v8[8 * v13++];
  }

  while (v13 != v7);
LABEL_42:
  if (v9 != v34)
  {
    NSZoneFree(0, v9);
  }

  if (v8 != v33)
  {
    NSZoneFree(0, v8);
  }

  os_unfair_lock_lock_with_options();
  v29 = [attributeDictionaryTable member:v32];
  if (!v29)
  {
    [attributeDictionaryTable addObject:v5];
    goto LABEL_8;
  }

  v30 = v29;
  v31 = v29;
  os_unfair_lock_unlock(&attributeDictionaryLock);
  [v5 dealloc];
  return v30;
}

- (id)newWithKey:(id)a3 object:(id)a4
{
  v5 = a3;
  v40 = self;
  if (__NSNumberOfNormalizedKeys == 1)
  {
    v6 = &qword_1ED4DF650;
    v7 = 30;
    do
    {
      if (*(v6 - 1) == a3)
      {
        v8 = *v6;
        goto LABEL_17;
      }

      v6 += 2;
      --v7;
    }

    while (v7);
  }

  v8 = [a3 hash];
  if (__NSNumberOfNormalizedKeys != 1)
  {
    goto LABEL_16;
  }

  v9 = 0;
  v10 = normalizedKeyInfo;
  self = v40;
  while (v8 != v10[1])
  {
    v11 = 1;
LABEL_11:
    if (v9 <= 0x1C)
    {
      ++v9;
      v10 += 2;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  if (([*v10 isEqual:v5] & 1) == 0)
  {
    v11 = __NSNumberOfNormalizedKeys;
    self = v40;
    goto LABEL_11;
  }

  v5 = *v10;
LABEL_16:
  self = v40;
LABEL_17:
  numElements = self->numElements;
  if (numElements)
  {
    v13 = 0;
    p_key = &self->elements[0].key;
    do
    {
      if (*p_key == v5)
      {
        goto LABEL_37;
      }

      ++v13;
      p_key += 3;
    }

    while (numElements != v13);
  }

  if (__NSNumberOfNormalizedKeys == 1)
  {
    v15 = 0;
    while (normalizedKeyInfo[v15] != v5)
    {
      v15 += 2;
      if (v15 == 60)
      {
        goto LABEL_25;
      }
    }

LABEL_35:
    v20 = numElements + 1;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 1;
    goto LABEL_48;
  }

LABEL_25:
  if (!numElements)
  {
    goto LABEL_35;
  }

  v39 = a4;
  v16 = [(value *)v5 hash];
  v17 = v40;
  v18 = v16 % v40->numElements;
  v13 = v18;
  while (2)
  {
    v19 = &v17->elements[v13];
    if (*v19 != v16)
    {
LABEL_30:
      if (v13 + 1 == v17->numElements)
      {
        v13 = 0;
      }

      else
      {
        ++v13;
      }

      if (v13 == v18)
      {
        numElements = v17->numElements;
        a4 = v39;
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  if (([*(v19 + 8) isEqual:v5] & 1) == 0)
  {
    v17 = v40;
    goto LABEL_30;
  }

  a4 = v39;
  self = v40;
  numElements = v40->numElements;
LABEL_37:
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = numElements + 1;
  }

  else
  {
    v20 = numElements;
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 1;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_48;
  }

  var0 = self->elements[v13].var0;
  if (var0 != a4 && ![var0 isEqual:a4])
  {
    v21 = 0;
LABEL_48:
    os_unfair_lock_lock(&newWithKey_object__tempDictLock);
    if (v20 <= newWithKey_object__tempDictNumElements)
    {
      v25 = newWithKey_object__tempDict;
      if (!newWithKey_object__tempDict)
      {
        goto LABEL_57;
      }
    }

    else
    {
      newWithKey_object__tempDictNumElements = v20;
      if (newWithKey_object__tempDict)
      {
        NSDeallocateObject(newWithKey_object__tempDict);
      }

      v24 = objc_opt_class();
      v25 = NSAllocateObject(v24, 24 * newWithKey_object__tempDictNumElements - 24, 0);
      newWithKey_object__tempDict = v25;
      if (!v25)
      {
LABEL_57:
        os_unfair_lock_lock_with_options();
        v28 = [attributeDictionaryTable member:newWithKey_object__tempDict];
        if (v28)
        {
          v29 = v28;
          os_unfair_lock_unlock(&newWithKey_object__tempDictLock);
          v30 = v29;
        }

        else
        {
          os_unfair_lock_unlock(&attributeDictionaryLock);
          v31 = objc_opt_class();
          v29 = NSAllocateObject(v31, 24 * v20 - 24, 0);
          v29[1] = v20;
          if (v20)
          {
            for (i = 0; i != v20; ++i)
            {
              v33 = newWithKey_object__tempDict + 16;
              v34 = *(newWithKey_object__tempDict + 16 + 24 * i);
              v35 = v34 % v20;
              while (1)
              {
                v36 = &v29[3 * v35 + 2];
                if (!v36[1])
                {
                  break;
                }

                if (v35 + 1 == v20)
                {
                  v35 = 0;
                }

                else
                {
                  ++v35;
                }
              }

              *v36 = v34;
              v36[1] = [*(v33 + 24 * i + 8) copyWithZone:0];
              v36[2] = *(newWithKey_object__tempDict + 16 + 24 * i + 16);
            }
          }

          os_unfair_lock_lock_with_options();
          v37 = [attributeDictionaryTable member:newWithKey_object__tempDict];
          os_unfair_lock_unlock(&newWithKey_object__tempDictLock);
          if (v37)
          {
            v38 = v37;
            os_unfair_lock_unlock(&attributeDictionaryLock);
            [v29 dealloc];
            return v37;
          }

          [attributeDictionaryTable addObject:v29];
        }

        os_unfair_lock_unlock(&attributeDictionaryLock);
        return v29;
      }
    }

    v25[1] = v20;
    memmove(v25 + 2, v40->elements, 24 * v40->numElements);
    v26 = newWithKey_object__tempDict + 16;
    if (v21)
    {
      v13 = v20 - 1;
      v27 = (v26 + 24 * (v20 - 1));
      *v27 = v8;
      v27[1] = v5;
    }

    *(v26 + 24 * v13 + 16) = a4;
    goto LABEL_57;
  }

  return v40;
}

- (id)objectForKey:(id)a3
{
  numElements = self->numElements;
  if (numElements)
  {
    v6 = 0;
    p_key = &self->elements[0].key;
    while (*p_key != a3)
    {
      ++v6;
      p_key += 3;
      if (numElements == v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (__NSNumberOfNormalizedKeys == 1)
    {
      v8 = 0;
      while (normalizedKeyInfo[v8] != a3)
      {
        v8 += 2;
        if (v8 == 60)
        {
          goto LABEL_9;
        }
      }

      return 0;
    }

LABEL_9:
    if (!numElements)
    {
      return 0;
    }

    v9 = [a3 hash];
    v10 = v9 % self->numElements;
    v6 = v10;
    while (1)
    {
      v11 = &self->elements[v6];
      if (v11->hash == v9 && ([(value *)v11->key isEqual:a3]& 1) != 0)
      {
        break;
      }

      if (v6 + 1 == self->numElements)
      {
        v6 = 0;
      }

      else
      {
        ++v6;
      }

      if (v6 == v10)
      {
        return 0;
      }
    }
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return self->elements[v6].var0;
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4
{
  if (self->numElements)
  {
    v4 = 0;
    v5 = self;
    do
    {
      if (a3)
      {
        *a3++ = v5->elements[0].var0;
      }

      if (a4)
      {
        *a4++ = v5->elements[0].key;
      }

      ++v4;
      v5 = (v5 + 24);
    }

    while (v4 < self->numElements);
  }
}

- (void)__apply:(void *)a3 context:(void *)a4
{
  if (a3)
  {
    numElements = self->numElements;
    if (numElements)
    {
      p_var0 = &self->elements[0].var0;
      v8 = 24 * numElements;
      do
      {
        (a3)(*(p_var0 - 1), *p_var0, a4);
        p_var0 += 3;
        v8 -= 24;
      }

      while (v8);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSAttributeDictionary;
    [(NSAttributeDictionary *)&v9 __apply:0 context:a4];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  numElements = self->numElements;
  if (numElements < 0x29)
  {
    if (numElements)
    {
      p_var0 = &self->elements[0].var0;
      v6 = v10;
      v7 = v11;
      do
      {
        v8 = *p_var0;
        *v7++ = *(p_var0 - 1);
        *v6++ = v8;
        p_var0 += 3;
        --numElements;
      }

      while (numElements);
    }

    return [objc_msgSend(MEMORY[0x1E695DF90] allocWithZone:{a3), "initWithObjects:forKeys:count:", v10, v11, self->numElements}];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSAttributeDictionary;
    return [(NSAttributeDictionary *)&v9 mutableCopyWithZone:a3];
  }
}

- (BOOL)isEqualToDictionary:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_60;
  }

  if (object_getClass(a3) == attributeDictionaryClass)
  {
    LOBYTE(v37) = self == a3;
    return v37;
  }

  numElements = self->numElements;
  if (numElements != [a3 count])
  {
LABEL_60:
    LOBYTE(v37) = 0;
    return v37;
  }

  Class = object_getClass(a3);
  v14 = self->numElements;
  if (Class == tempAttributeDictionaryClass)
  {
    if (!v14)
    {
LABEL_59:
      LOBYTE(v37) = 1;
      return v37;
    }

    v38 = 0;
    elements = self->elements;
    p_key = &self->elements[0].key;
    v57 = (a3 + 16);
    while (2)
    {
      v40 = 0;
      v41 = p_key;
      v42 = &v57[3 * v38];
      v43 = *(v42 + 1);
      while (*v41 != v43)
      {
        ++v40;
        v41 += 3;
        if (v14 == v40)
        {
          if (__NSNumberOfNormalizedKeys != 1)
          {
LABEL_39:
            v45 = [*(v42 + 1) hash];
            v46 = self->numElements;
            v47 = v45 % v46;
            v40 = v45 % v46;
            do
            {
              v48 = &elements[v40];
              if (v48->hash == v45)
              {
                if (([(value *)v48->key isEqual:v43]& 1) != 0)
                {
                  goto LABEL_48;
                }

                v46 = self->numElements;
              }

              LOBYTE(v37) = 0;
              if (v40 + 1 == v46)
              {
                v40 = 0;
              }

              else
              {
                ++v40;
              }
            }

            while (v40 != v47);
            return v37;
          }

          v44 = 0;
          while (normalizedKeyInfo[v44] != v43)
          {
            v44 += 2;
            if (v44 == 60)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_60;
        }
      }

LABEL_48:
      if (v40 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_60;
      }

      var0 = elements[v40].var0;
      if (var0 == *(v42 + 2) || (LODWORD(v37) = [var0 isEqual:?], v37))
      {
        ++v38;
        v14 = self->numElements;
        LOBYTE(v37) = 1;
        if (v38 < v14)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    if (v14 < 8)
    {
      p_key = &v53;
      MEMORY[0x1EEE9AC00](Class, v7, v8, v9, v10, v11, v12, v13);
      MEMORY[0x1EEE9AC00](v16, &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v18, v19, v20, v21, v22);
      v57 = v23;
      v55 = &v53 - v24;
      CFDictionaryGetKeysAndValues(a3, v23, (&v53 - v24));
      v25 = self->numElements;
      if (v25)
      {
        v26 = 0;
        p_numElements = &self->numElements;
        v54 = &self->numElements;
        while (2)
        {
          v28 = 0;
          v29 = v57[v26];
          v30 = (p_numElements + 2);
          while (*v30 != v29)
          {
            ++v28;
            v30 += 3;
            if (v25 == v28)
            {
              if (__NSNumberOfNormalizedKeys == 1)
              {
                v31 = 0;
                while (normalizedKeyInfo[v31] != v29)
                {
                  v31 += 2;
                  if (v31 == 60)
                  {
                    goto LABEL_15;
                  }
                }
              }

              else
              {
LABEL_15:
                v32 = [v57[v26] hash];
                v33 = self->numElements;
                v34 = v32 % v33;
                v28 = v32 % v33;
                do
                {
                  v35 = &self->elements[v28];
                  if (v35->hash == v32)
                  {
                    if (([(value *)v35->key isEqual:v29]& 1) != 0)
                    {
                      goto LABEL_24;
                    }

                    v33 = self->numElements;
                  }

                  if (v28 + 1 == v33)
                  {
                    v28 = 0;
                  }

                  else
                  {
                    ++v28;
                  }
                }

                while (v28 != v34);
              }

              goto LABEL_60;
            }
          }

LABEL_24:
          if (v28 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_60;
          }

          v36 = self->elements[v28].var0;
          if (v36 != *&v55[8 * v26] && ![v36 isEqual:?])
          {
            goto LABEL_60;
          }

          ++v26;
          v25 = self->numElements;
          p_numElements = v54;
          if (v26 < v25)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_59;
    }

    v50 = 0;
    p_var0 = &self->elements[0].var0;
    do
    {
      v37 = [a3 objectForKey:*(p_var0 - 1)];
      if (!v37)
      {
        break;
      }

      if (*p_var0 != v37)
      {
        LODWORD(v37) = [*p_var0 isEqual:?];
        if (!v37)
        {
          break;
        }
      }

      ++v50;
      p_var0 += 3;
      LOBYTE(v37) = 1;
    }

    while (v50 < self->numElements);
  }

  return v37;
}

@end