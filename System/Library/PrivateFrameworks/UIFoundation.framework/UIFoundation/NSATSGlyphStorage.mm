@interface NSATSGlyphStorage
+ (NSATSGlyphStorage)allocWithZone:(_NSZone *)zone;
- (__CTGlyphStorage)createCopy:(id)copy;
- (const)_createEllipsisRunWithStringRange:(uint64_t)range attributes:;
- (const)_flushCachedObjects;
- (double)_widthForStringRange:(uint64_t)range;
- (uint64_t)_collectElasticRangeSurroundingCharacterAtIndex:(uint64_t)index minimumCharacterIndex:;
- (uint64_t)createCTTypesetter;
- (void)_invalidate;
- (void)_resolvePositionalStakeGlyphsForLineFragment:lineFragmentRect:minPosition:maxPosition:maxLineFragmentWidth:breakHint:;
- (void)childGlyphStorageWithCharacterRange:(uint64_t)range;
- (void)dealloc;
- (void)disposeGlyphStack;
- (void)finalize;
- (void)getCustomAdvance:(CGSize *)advance forIndex:(int64_t)index;
- (void)initGlyphStack:(int64_t)stack;
- (void)insertGlyphs:(id)glyphs;
- (void)moveGlyphsTo:(int64_t)to from:(id)from;
- (void)popGlyph:(int64_t)glyph;
- (void)pushGlyph:(int64_t)glyph;
- (void)release;
- (void)setAbsorbedCount:(int64_t)count forIndex:(int64_t)index;
- (void)setAdvance:(CGSize)advance forIndex:(int64_t)index;
- (void)setGlyphID:(unsigned __int16)d forIndex:(int64_t)index;
- (void)setGlyphRange:characterRange:;
- (void)setStringIndex:(int64_t)index forIndex:(int64_t)forIndex;
- (void)swapGlyph:(int64_t)glyph withIndex:(int64_t)index;
@end

@implementation NSATSGlyphStorage

- (uint64_t)createCTTypesetter
{
  v45 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 88);
    v3 = *(result + 96);
    if ([*(result + 80) _bidiLevels])
    {
      [OUTLINED_FUNCTION_23() _baseWritingDirection];
    }

    [OUTLINED_FUNCTION_23() limitsLayoutForSuspiciousContents];
    v43 = 0u;
    v44 = 0u;
    *newValues = 0u;
    v42 = 0u;
    if (!*(v1 + 72))
    {
      *(v1 + 72) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }

    if (!qword_1ED4DF2E0)
    {
      qword_1ED4DF2E0 = CFArrayGetTypeID();
    }

    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = v2 + 104 * v3;
      value = *MEMORY[0x1E695E4D0];
      do
      {
        v7 = v2 + 104;
        if (v2 + 104 >= v6)
        {
          v8 = (v1 + 120);
        }

        else
        {
          v8 = (v2 + 128);
        }

        v9 = *v8;
        v10 = *(v2 + 24);
        if ((*(v2 + 96) & 0x20) == 0 || (v11 = [*(v2 + 8) _kernOverride], objc_msgSend(v11, "doubleValue"), v12 == 0.0))
        {
          v13 = 0;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_25();
          CFDictionaryAddValue(v13, @"NSKern", v11);
        }

        if ((*(v2 + 96) & 0x40) != 0 && ![*v2 objectForKey:@"CTVerticalForms"])
        {
          if (!v13)
          {
            v13 = OUTLINED_FUNCTION_25();
          }

          CFDictionaryAddValue(v13, @"CTVerticalForms", value);
        }

        if ((*(v2 + 96) & 0x80) != 0)
        {
          if (!v13)
          {
            v13 = OUTLINED_FUNCTION_25();
          }

          CFDictionarySetValue(v13, @"NSFont", *(v2 + 8));
        }

        v14 = v9 - v10;
        OUTLINED_FUNCTION_7_0();
        MutableRunsWithStorageAndOptions = CTRunCreateMutableRunsWithStorageAndOptions();
        if (MutableRunsWithStorageAndOptions)
        {
          v16 = MutableRunsWithStorageAndOptions;
          if (CFGetTypeID(MutableRunsWithStorageAndOptions) == qword_1ED4DF2E0)
          {
            Count = CFArrayGetCount(v16);
            if (Count > 1)
            {
              *(v1 + 224) |= 4u;
            }

            if (v5 >= 1)
            {
              CFArrayGetCount(*(v1 + 72));
              v18 = OUTLINED_FUNCTION_36();
              CFArrayReplaceValues(v18, v47, v19, v5);
              v20 = v5 + 1;
              v21 = &newValues[v5 - 1];
              do
              {
                v22 = *v21--;
                CFRelease(v22);
                --v20;
              }

              while (v20 > 1);
              v5 = 0;
            }

            v50.location = 0;
            v50.length = Count;
            CFArrayAppendArray(*(v1 + 72), v16, v50);
            CFRelease(v16);
          }

          else
          {
            if (v5 == 8)
            {
              CFArrayGetCount(*(v1 + 72));
              v25 = OUTLINED_FUNCTION_36();
              CFArrayReplaceValues(v25, v48, v26, 8);
              v27 = &v44 + 1;
              for (i = 9; i > 1; --i)
              {
                v29 = *v27--;
                CFRelease(v29);
              }

              v5 = 0;
            }

            newValues[v5++] = v16;
          }
        }

        else if (atomic_fetch_add_explicit(&dword_1ED4DF2C4, 1u, memory_order_relaxed) <= 18)
        {
          v46.location = v4;
          v46.length = v14;
          v23 = NSStringFromRange(v46);
          v24 = v13;
          if (!v13)
          {
            v24 = *v2;
          }

          NSLog(@"NULL run returned from CoreText. Ignoring the storage range %@ for glyph storage -> %@:%@", v23, *(v1 + 64), v24);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        v4 += v14;
        v2 = v7;
      }

      while (v7 < v6);
      if (v5 >= 1)
      {
        v30 = *(v1 + 72);
        v49.location = CFArrayGetCount(v30);
        v49.length = 0;
        CFArrayReplaceValues(v30, v49, newValues, v5);
        v31 = v5 + 1;
        v32 = &newValues[v5 - 1];
        do
        {
          v33 = *v32--;
          CFRelease(v33);
          --v31;
        }

        while (v31 > 1);
      }
    }

    v34 = *(v1 + 184);
    if (v34)
    {
      v37 = [objc_msgSend(OUTLINED_FUNCTION_23() "attributedString")];
      [(__NSATSStringSegment *)v34 _setOriginalString:v37 range:*(v1 + 128), *(v1 + 136)];
    }

    else
    {
      v35 = objc_allocWithZone(__NSATSStringSegment);
      v36 = [objc_msgSend(OUTLINED_FUNCTION_23() "attributedString")];
      *(v1 + 184) = [(__NSATSStringSegment *)v35 initWithOriginalString:v36 range:*(v1 + 128), *(v1 + 136)];
    }

    if ([OUTLINED_FUNCTION_23() limitsLayoutForSuspiciousContents])
    {
      OUTLINED_FUNCTION_6_0();
      return CTTypesetterCreateWithRunArray();
    }

    else
    {
      v39 = *MEMORY[0x1E6965A98];
      v40 = MEMORY[0x1E695E118];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      OUTLINED_FUNCTION_6_0();
      return CTTypesetterCreateWithRunArrayAndOptions();
    }
  }

  return result;
}

- (void)_invalidate
{
  if (self)
  {
    v2 = self[9];
    if (v2)
    {
      CFArrayRemoveAllValues(v2);
    }

    self[19] = 0;
    v3 = self[20];
    if (v3)
    {
      CFRelease(v3);
      self[20] = 0;
    }
  }
}

- (const)_flushCachedObjects
{
  if (result)
  {
    v1 = result;
    isa = result[2].isa;
    if (isa)
    {
      CFRelease(isa);
      v1[2].isa = 0;
    }

    OUTLINED_FUNCTION_19();

    return [(__NSATSStringSegment *)v3 _setOriginalString:v4 range:v5, v6];
  }

  return result;
}

+ (NSATSGlyphStorage)allocWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock_with_options();
  v5 = dword_1ED4DF2CC;
  if (!dword_1ED4DF2CC)
  {
    os_unfair_lock_unlock(&stru_1ED4DF2C8);
LABEL_5:
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NSATSGlyphStorage;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, zone);
  }

  --dword_1ED4DF2CC;
  v6 = *&_MergedGlobals_1[8 * (v5 - 1) + 40];
  os_unfair_lock_unlock(&stru_1ED4DF2C8);
  if (!v6)
  {
    goto LABEL_5;
  }

  return v6;
}

- (void)release
{
  dword_1ED4DF2CC = self + 1;
  *&_MergedGlobals_1[8 * self + 40] = a2;
  v2 = a2[8];
  a2[8] = 0;
  v3 = a2[9];
  a2[9] = 0;
  a2[19] = 0;
  v4 = a2[20];
  a2[20] = 0;
  OUTLINED_FUNCTION_19();
  [(__NSATSStringSegment *)v5 _setOriginalString:v6 range:v7, v8];
  os_unfair_lock_unlock(&stru_1ED4DF2C8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

- (double)_widthForStringRange:(uint64_t)range
{
  v3 = 0.0;
  if (self && range)
  {
    v5 = a2 - *(self + 128);
    v6 = *(self + 144);
    if (v5 + range >= v6)
    {
      v7 = *(self + 144);
    }

    else
    {
      v7 = v5 + range;
    }

    if (v5 >= v6)
    {
      v8 = *(self + 144);
    }

    else
    {
      v8 = a2 - *(self + 128);
    }

    v9 = *(self + 224);
    if ((v9 & 0x10) != 0)
    {
      if ((v9 & 4) != 0)
      {
        Count = CFArrayGetCount(*(self + 72));
        if (Count >= 1)
        {
          v38 = Count;
          for (i = 0; i != v38; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(self + 72), i);
            StringRange = CTRunGetStringRange(ValueAtIndex);
            if (v7 <= StringRange.location)
            {
              break;
            }

            v42 = StringRange.location + StringRange.length;
            if (v8 <= StringRange.location && v42 < v7)
            {
              v46.location = 0;
              v46.length = 0;
              v3 = v3 + CTRunGetTypographicBounds(ValueAtIndex, v46, 0, 0, 0);
            }

            else if (v42 >= v8)
            {
              GlyphStorage = CTRunGetGlyphStorage();
              MEMORY[0x193AD3A70](GlyphStorage);
            }
          }
        }
      }

      else
      {
        v14 = *(self + 88);
        v15 = &v14[13 * *(self + 96)];
        v16 = *(self + 200);
        if (v16)
        {
          if (*(self + 208) > v8)
          {
            v16 = 0;
          }

          else
          {
            v14 = *(self + 200);
            v16 = *(self + 208);
          }
        }

        for (; v14 < v15 && v16 < v7; v14 += 13)
        {
          v16 += v14[2];
          if (v16 > v8)
          {
            if ((v14 + 13) >= v15)
            {
              v18 = (self + *MEMORY[0x1E6965608]);
            }

            else
            {
              v18 = v14 + 16;
            }

            v19 = *(self + *MEMORY[0x1E6965600]);
            v20 = v14[3];
            v21 = (v19 + 16 * v20);
            v22 = v19 + 16 * *v18;
            v23 = *(self + *MEMORY[0x1E6965620]);
            v24 = (v23 + 8 * v20);
            v25 = *(self + *MEMORY[0x1E69655F8]);
            v26 = (v25 + 8 * v20);
            if (v25)
            {
              v27 = (v25 + 8 * v20);
            }

            else
            {
              v27 = 0;
            }

            if ((v9 & 0x20) == 0)
            {
              if ((v9 & 0x40) != 0)
              {
                if (*(self + *MEMORY[0x1E6965608]) >= *(self + 120))
                {
                  v28 = 0;
                }

                else
                {
                  v28 = *(self + 216);
                }

                v22 -= 16 * v28;
                v29 = ~v28;
              }

              else
              {
                if (v27)
                {
                  v27 = v26;
                  goto LABEL_52;
                }

                v29 = -1;
              }

              if ((v14 + 13) >= v15)
              {
                v30 = (self + *MEMORY[0x1E6965608]);
              }

              else
              {
                v30 = v14 + 16;
              }

              v31 = v23 + 8 * v29 + 8 * *v30;
              if (v24 <= v31)
              {
                v32 = v24;
                do
                {
                  v33 = &v32[(v31 - v32) >> 4];
                  if (v8 >= *v33)
                  {
                    if (v8 <= *v33)
                    {
                      v27 = 0;
                      v21 = (v21 + 2 * (v33 - v24));
                      v24 = v33;
                      goto LABEL_52;
                    }

                    v32 = v33 + 1;
                  }

                  else
                  {
                    v31 = (v33 - 1);
                  }
                }

                while (v32 <= v31);
              }

              v27 = 0;
            }

LABEL_52:
            while (v21 < v22)
            {
              v34 = *v24;
              if (*v24 >= v8 && v34 < v7)
              {
                v3 = v3 + *v21;
              }

              if ((v9 & 0x20) == 0 && v34 >= v7)
              {
                break;
              }

              if (v27)
              {
                v36 = *v27++;
                v22 -= 16 * v36;
              }

              v21 += 2;
              ++v24;
            }
          }
        }
      }
    }

    else if (v8 < v7)
    {
      v10 = *(self + *MEMORY[0x1E6965600]);
      v11 = v10 + 16 * v7;
      v12 = (v10 + 16 * v8);
      do
      {
        v13 = *v12;
        v12 += 2;
        v3 = v3 + v13;
      }

      while (v12 < v11);
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(NSATSGlyphStorage *)self zone];
  glyphStorage = self->_glyphStorage;
  if (glyphStorage)
  {
    CFRelease(glyphStorage);
  }

  masterRuns = self->_masterRuns;
  if (masterRuns)
  {
    CFRelease(masterRuns);
  }

  runs = self->_runs;
  if (runs)
  {
    NSZoneFree(0, runs);
  }

  v7 = *(&self->super.super.isa + *MEMORY[0x1E6965600]);
  if (v7)
  {
    NSZoneFree(v3, v7);
  }

  v8 = *(&self->super.super.isa + *MEMORY[0x1E69655F8]);
  if (v8)
  {
    NSZoneFree(v3, v8);
  }

  children = self->_children;
  if (children)
  {
    CFRelease(children);
  }

  v10.receiver = self;
  v10.super_class = NSATSGlyphStorage;
  [(NSATSGlyphStorage *)&v10 dealloc];
}

- (void)finalize
{
  v3 = [(NSATSGlyphStorage *)self zone];
  masterRuns = self->_masterRuns;
  if (masterRuns)
  {
    CFRelease(masterRuns);
  }

  runs = self->_runs;
  if (runs)
  {
    NSZoneFree(0, runs);
  }

  v6 = *(&self->super.super.isa + *MEMORY[0x1E6965600]);
  if (v6)
  {
    NSZoneFree(v3, v6);
  }

  v7 = *(&self->super.super.isa + *MEMORY[0x1E69655F8]);
  if (v7)
  {
    NSZoneFree(v3, v7);
  }

  children = self->_children;
  if (children)
  {
    CFRelease(children);
  }

  v9.receiver = self;
  v9.super_class = NSATSGlyphStorage;
  [(NSATSGlyphStorage *)&v9 finalize];
}

- (__CTGlyphStorage)createCopy:(id)copy
{
  var1 = copy.var1;
  var0 = copy.var0;
  if (self->_parent)
  {
    parent = self->_parent;
  }

  else
  {
    parent = self;
  }

  if ((*&self->_gFlags & 0x10) == 0)
  {
    v56 = self->_characterRange.location + copy.var0;
    v57 = copy.var1;
    v54 = copy.var1;
    v55 = self->_glyphRange.location + copy.var0;
    v7 = copy.var1;
    goto LABEL_28;
  }

  v8 = *(&self->super.super.isa + *MEMORY[0x1E6965620]);
  v9 = (v8 + 8 * copy.var0);
  v10 = *v9;
  v11 = copy.var0 + copy.var1 - 1;
  v12 = (v8 + 8 * v11);
  v14 = *v12;
  v15 = *(&self->super.super.isa + *MEMORY[0x1E6965618]);
  if ((*(v15 + 4 * copy.var0) & 0x200000) == 0)
  {
    goto LABEL_12;
  }

  if (copy.var1 >= 1)
  {
    v16 = v8 + 8 * (copy.var0 + copy.var1);
    v17 = v9;
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v19 < v10)
      {
        v10 = v18;
      }
    }

    while (v17 < v16);
LABEL_12:
    if ((*(v15 + 4 * v11) & 0x200000) != 0 && copy.var1 >= 1)
    {
      do
      {
        v21 = *v12--;
        v20 = v21;
        if (v21 > v14)
        {
          v14 = v20;
        }
      }

      while (v12 >= v9);
    }
  }

  v23 = v14 - v10;
  v22 = v14 - v10 < 0;
  if (v14 < v10)
  {
    v10 = v14;
  }

  if (v22)
  {
    v24 = -v23;
  }

  else
  {
    v24 = v23;
  }

  v7 = v24 + 1;
  location = parent->_characterRange.location;
  v25 = copy.var0 == v10 && v7 == copy.var1;
  v56 = v10 + location;
  if (v25)
  {
    v54 = copy.var1;
    v55 = self->_glyphRange.location + copy.var0;
    v57 = copy.var1;
  }

  else
  {
    v26 = [(NSTypesetter *)self->_typesetter glyphRangeForCharacterRange:v10 + location actualCharacterRange:v24 + 1, 0];
    v54 = v27;
    v55 = v26;
    v57 = v7;
  }

LABEL_28:
  v28 = [NSATSGlyphStorage allocWithZone:[(NSATSGlyphStorage *)self zone]];
  typesetter = self->_typesetter;
  v59.receiver = v28;
  v59.super_class = NSATSGlyphStorage;
  v30 = [(NSATSGlyphStorage *)&v59 init];
  *(v30 + 10) = typesetter;
  v58 = parent;
  *(v30 + 19) = parent;
  runs = self->_runs;
  v32 = &runs[self->_numRuns];
  zone = [v30 zone];
  __NSATSGlyphStorageInitBuffer(v30, v55, v54, v56, v7, var1);
  p_var3 = &runs[1].var3;
  do
  {
    v34 = p_var3;
    if ((p_var3 - 3) >= v32)
    {
      break;
    }

    p_var3 += 13;
  }

  while (*v34 <= var0);
  v35 = *(v30 + 11);
  if (!v35)
  {
    v35 = NSAllocateScannedUncollectable();
    *(v30 + 11) = v35;
    *(v30 + 13) = 8;
  }

  v36 = *(v34 - 8);
  v37 = *(v34 - 6);
  *(v35 + 16) = *(v34 - 7);
  *(v35 + 32) = v37;
  *v35 = v36;
  v38 = *(v34 - 5);
  v39 = *(v34 - 4);
  v40 = *(v34 - 3);
  *(v35 + 96) = *(v34 - 4);
  *(v35 + 64) = v39;
  *(v35 + 80) = v40;
  *(v35 + 48) = v38;
  v41 = *(v30 + 11);
  *(v41 + 16) = v57;
  *(v41 + 24) = 0;
  *(v30 + 12) = 1;
  memcpy(*&v30[*MEMORY[0x1E6965610]], *(&self->super.super.isa + *MEMORY[0x1E6965610]) + 2 * var0, 2 * var1);
  memcpy(*&v30[*MEMORY[0x1E6965600]], *(&self->super.super.isa + *MEMORY[0x1E6965600]) + 16 * var0, 16 * var1);
  v42 = *MEMORY[0x1E6965618];
  memcpy(*&v30[v42], *(&self->super.super.isa + v42) + 4 * var0, 4 * var1);
  memcpy(*&v30[*MEMORY[0x1E6965620]], *(&self->super.super.isa + *MEMORY[0x1E6965620]) + 8 * var0, 8 * var1);
  v43 = *MEMORY[0x1E69655F8];
  v44 = *(&self->super.super.isa + v43);
  if (v44)
  {
    v45 = *&v30[v43];
    if (!v45)
    {
      v45 = NSZoneMalloc(zone, 8 * *(v30 + 18));
      *&v30[v43] = v45;
      v44 = *(&self->super.super.isa + v43);
    }

    memcpy(v45, (v44 + 8 * var0), 8 * var1);
  }

  v46 = *(v30 + 56) & 0xFFFFFFFD | (2 * ((*(v34 - 8) >> 1) & 1));
  *(v30 + 56) = v46;
  if ((*&self->_gFlags & 1) != 0 && var1 >= 1)
  {
    v47 = *&v30[v42];
    v48 = v47 + 4 * var1;
    do
    {
      if ((*(v47 + 2) & 4) != 0)
      {
        v46 |= 1u;
        *(v30 + 56) = v46;
      }

      v47 += 4;
    }

    while (v47 < v48);
  }

  children = v58->_children;
  if (!children)
  {
    children = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    v58->_children = children;
  }

  CFSetAddValue(children, v30);

  if (*(v30 + 8))
  {
    MEMORY[0x193AD3A80]();
    v50 = *(v30 + 8);
  }

  else
  {
    MutableWithInterface = CTGlyphStorageCreateMutableWithInterface();
    v50 = CFMakeCollectable(MutableWithInterface);
    *(v30 + 8) = v50;
  }

  return CFRetain(v50);
}

- (void)getCustomAdvance:(CGSize *)advance forIndex:(int64_t)index
{
  runs = self->_runs;
  v8 = &runs[self->_numRuns];
  v9 = runs + 1;
  do
  {
    v10 = v9;
    if (v9 >= v8)
    {
      break;
    }

    var3 = v9->var3;
    ++v9;
  }

  while (var3 <= index);
  [v10[-1].var1 advancementForGlyph:(*(&self->super.super.isa + *MEMORY[0x1E6965610]))[index]];
  v13 = (*(&self->super.super.isa + *MEMORY[0x1E6965600]))[2 * index + 1];
  advance->width = v12 * v10[-1].var6;
  advance->height = v13;
}

- (void)setGlyphID:(unsigned __int16)d forIndex:(int64_t)index
{
  (*(&self->super.super.isa + *MEMORY[0x1E6965610]))[index] = d;
  (*(&self->super.super.isa + *MEMORY[0x1E6965618]))[index] |= 0x40000u;
  *&self->_gFlags |= 1u;
}

- (void)setAdvance:(CGSize)advance forIndex:(int64_t)index
{
  v4 = (*(&self->super.super.isa + *MEMORY[0x1E6965600]) + 16 * index);
  if (v4->width != advance.width || v4->height != advance.height)
  {
    *v4 = advance;
    (*(&self->super.super.isa + *MEMORY[0x1E6965618]))[index] |= 0x80000u;
  }
}

- (void)setAbsorbedCount:(int64_t)count forIndex:(int64_t)index
{
  v7 = *MEMORY[0x1E69655F8];
  v8 = *(&self->super.super.isa + v7);
  if (!v8)
  {
    v8 = NSZoneCalloc([(NSATSGlyphStorage *)self zone], self->_bufferSize, 8uLL);
    *(&self->super.super.isa + v7) = v8;
  }

  *(v8 + index) = count;
}

- (void)setStringIndex:(int64_t)index forIndex:(int64_t)forIndex
{
  v4 = *MEMORY[0x1E6965620];
  v5 = *(&self->super.super.isa + v4);
  v6 = *MEMORY[0x1E6965618];
  if (*(v5 + 8 * forIndex) != index)
  {
    *(v5 + 8 * forIndex) = index;
    v7 = *(&self->super.super.isa + v6);
    v8 = *(v7 + 4 * forIndex);
    if ((v8 & 0x20300) == 0)
    {
      *(v7 + 4 * forIndex) = v8 | 0x40000;
    }
  }

  *&self->_gFlags |= 0x30u;
  v9 = *(&self->super.super.isa + v6);
  v10 = (v9 + 4 * forIndex);
  if ((*v10 & 0x220000) == 0x20000)
  {
    v11 = *(&self->super.super.isa + v4);
    v12 = v11 + 8 * forIndex;
    if (!forIndex || *(v12 - 8) != index)
    {
      v13 = *(&self->super.super.isa + *MEMORY[0x1E6965608]);
      if (v13 == forIndex + 1 || *(v11 + 8 * (forIndex + 1)) != index)
      {
        v14 = v11 + 8 * v13;
        v15 = v12 + 8;
        v16 = 8 * forIndex;
        if (v15 >= v14)
        {
LABEL_17:
          v21 = v11 - 8;
          while (v21 + v16 >= v11)
          {
            v22 = *(v21 + v16);
            v16 -= 8;
            if (v22 == index)
            {
              if (!v9)
              {
                return;
              }

              v23 = (v9 + (v16 >> 1));
              goto LABEL_24;
            }
          }
        }

        else
        {
          v17 = *(&self->super.super.isa + *MEMORY[0x1E69655F8]);
          v18 = (v17 + 8 * forIndex);
          if (!v17)
          {
            v18 = 0;
          }

          v19 = v16 + 8;
          while (*(v11 + v19) < index)
          {
            if (v18)
            {
              v20 = *v18++;
              v14 -= 8 * v20;
            }

            v19 += 8;
            if (v11 + v19 >= v14)
            {
              goto LABEL_17;
            }
          }

          v23 = (v9 + 4 * forIndex);
          v10 = (v9 + (v19 >> 1));
LABEL_24:
          while (v23 <= v10)
          {
            *v23++ |= 0x200000u;
          }
        }
      }
    }
  }
}

- (void)swapGlyph:(int64_t)glyph withIndex:(int64_t)index
{
  v4 = *(&self->super.super.isa + *MEMORY[0x1E6965610]);
  v5 = *(v4 + 2 * glyph);
  *(v4 + 2 * glyph) = *(v4 + 2 * index);
  *(v4 + 2 * index) = v5;
  v6 = *MEMORY[0x1E6965600];
  v7 = *(&self->super.super.isa + v6);
  v8 = *(v7 + 16 * glyph);
  *(v7 + 16 * glyph) = *(v7 + 16 * index);
  (*(&self->super.super.isa + v6))[index] = v8;
  v9 = *(&self->super.super.isa + *MEMORY[0x1E6965618]);
  LODWORD(v7) = *(v9 + 4 * glyph);
  *(v9 + 4 * glyph) = *(v9 + 4 * index);
  *(v9 + 4 * index) = v7;
  v10 = *(&self->super.super.isa + *MEMORY[0x1E6965620]);
  v11 = *(v10 + 8 * glyph);
  *(v10 + 8 * glyph) = *(v10 + 8 * index);
  *(v10 + 8 * index) = v11;
  v12 = *(&self->super.super.isa + *MEMORY[0x1E69655F8]);
  if (v12)
  {
    v13 = *(v12 + 8 * glyph);
    *(v12 + 8 * glyph) = *(v12 + 8 * index);
    *(v12 + 8 * index) = v13;
  }

  *&self->_gFlags |= 0x30u;
}

- (void)moveGlyphsTo:(int64_t)to from:(id)from
{
  var1 = from.var1;
  var0 = from.var0;
  v8 = MEMORY[0x1E6965618];
  if (self->_stack && from.var1 >= 1)
  {
    v9 = (*(&self->super.super.isa + *MEMORY[0x1E6965618]) + 4 * from.var0);
    v10 = &v9[from.var1];
    do
    {
      *v9++ |= 0x200000u;
    }

    while (v9 < v10);
  }

  memmove(*(&self->super.super.isa + *MEMORY[0x1E6965610]) + 2 * to, *(&self->super.super.isa + *MEMORY[0x1E6965610]) + 2 * from.var0, 2 * from.var1);
  memmove(*(&self->super.super.isa + *MEMORY[0x1E6965600]) + 16 * to, *(&self->super.super.isa + *MEMORY[0x1E6965600]) + 16 * var0, 16 * var1);
  memmove(*(&self->super.super.isa + *v8) + 4 * to, *(&self->super.super.isa + *v8) + 4 * var0, 4 * var1);
  v11 = 8 * var1;
  memmove(*(&self->super.super.isa + *MEMORY[0x1E6965620]) + 8 * to, *(&self->super.super.isa + *MEMORY[0x1E6965620]) + 8 * var0, v11);
  v12 = *(&self->super.super.isa + *MEMORY[0x1E69655F8]);
  if (v12)
  {
    memmove((v12 + 8 * to), (v12 + 8 * var0), v11);
  }

  *&self->_gFlags |= 0x10u;
}

- (void)insertGlyphs:(id)glyphs
{
  var1 = glyphs.var1;
  var0 = glyphs.var0;
  v6 = *MEMORY[0x1E6965608];
  v7 = *(&self->super.super.isa + v6);
  v8 = glyphs.var0 + 1;
  *(&self->super.super.isa + v6) = (v7 + glyphs.var1);
  v9 = v7 - (glyphs.var0 + 1);
  if (v7 + glyphs.var1 <= self->_bufferSize)
  {
    v25 = *MEMORY[0x1E6965610];
    v26 = *(&self->super.super.isa + *MEMORY[0x1E6965610]) + 2 * v8;
    memmove(&v26[2 * glyphs.var1], v26, 2 * v9);
    LODWORD(v20) = *MEMORY[0x1E6965600];
    v27 = *(&self->super.super.isa + *MEMORY[0x1E6965600]) + 16 * v8;
    memmove(&v27[16 * var1], v27, 16 * v9);
    v39 = *MEMORY[0x1E6965618];
    memmove(*(&self->super.super.isa + v39) + 4 * v8 + 4 * var1, *(&self->super.super.isa + v39) + 4 * v8, 4 * v9);
    v19 = *MEMORY[0x1E6965620];
    memmove(*(&self->super.super.isa + v19) + 8 * v8 + 8 * var1, *(&self->super.super.isa + v19) + 8 * v8, 8 * v9);
    v23 = *MEMORY[0x1E69655F8];
    v28 = *&v23[self];
    if (v28)
    {
      memmove((v28 + 8 * v8 + 8 * var1), (v28 + 8 * v8), 8 * v9);
    }
  }

  else
  {
    v37 = glyphs.var0;
    v10 = [(NSATSGlyphStorage *)self zone];
    zone = v10;
    v11 = *(&self->super.super.isa + v6);
    v12 = v11 & 0x7F;
    if (v11 <= 0)
    {
      v12 = -(-v11 & 0x7F);
    }

    v13 = v11 - v12 + 128;
    self->_bufferSize = v13;
    v14 = NSZoneMalloc(v10, 30 * v13);
    bufferSize = self->_bufferSize;
    v23 = v14 + 16 * bufferSize;
    v16 = v14;
    v17 = &v23[8 * bufferSize];
    v18 = &v17[4 * bufferSize];
    v38 = v18;
    v19 = *MEMORY[0x1E6965610];
    memcpy(v18, *(&self->super.super.isa + v19), 2 * v8);
    memcpy(v18 + 2 * v8 + 2 * var1, *(&self->super.super.isa + v19) + 2 * v8, 2 * v9);
    v20 = *MEMORY[0x1E6965600];
    v36 = v16;
    memcpy(v16, *(&self->super.super.isa + v20), 16 * v8);
    memcpy(v16 + 16 * v8 + 16 * var1, *(&self->super.super.isa + v20) + 16 * v8, 16 * v9);
    v21 = *MEMORY[0x1E6965618];
    memcpy(v17, *(&self->super.super.isa + v21), 4 * v8);
    memcpy(&v17[4 * v8 + 4 * var1], *(&self->super.super.isa + v21) + 4 * v8, 4 * v9);
    v22 = *MEMORY[0x1E6965620];
    memcpy(v23, *(&self->super.super.isa + v22), 8 * v8);
    memcpy(&v23[8 * v8 + 8 * var1], *(&self->super.super.isa + v22) + 8 * v8, 8 * v9);
    NSZoneFree(zone, *(&self->super.super.isa + v20));
    *(&self->super.super.isa + v19) = v38;
    *(&self->super.super.isa + v20) = v36;
    v39 = v21;
    *(&self->super.super.isa + v21) = v17;
    *(&self->super.super.isa + v22) = v23;
    LODWORD(v23) = *MEMORY[0x1E69655F8];
    if (*(&self->super.super.isa + *MEMORY[0x1E69655F8]))
    {
      v24 = NSZoneMalloc(zone, 8 * self->_bufferSize);
      memcpy(v24, *(&self->super.super.isa + v23), 8 * v8);
      memcpy(&v24[8 * v8 + 8 * var1], *(&self->super.super.isa + v23) + 8 * v8, 8 * v9);
      NSZoneFree(zone, *(&self->super.super.isa + v23));
      *(&self->super.super.isa + v23) = v24;
    }

    v25 = v19;
    var0 = v37;
    LODWORD(v19) = v22;
  }

  if (var1 >= 1)
  {
    v29 = *(&self->super.super.isa + v39);
    v30 = (v29 + 4 * v8);
    v31 = v29 + 4 * var0;
    v32 = v29 + 4 * (var0 + var1) + 4;
    if (v32 <= v31 + 8)
    {
      v32 = v31 + 8;
    }

    memset_pattern16(v30, &unk_18E8562E0, ((v32 - v31 - 5) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  }

  bzero(*(&self->super.super.isa + v25) + 2 * v8, 2 * var1);
  bzero(*(&self->super.super.isa + v20) + 16 * v8, 16 * var1);
  v33 = 8 * var1;
  bzero(*(&self->super.super.isa + v19) + 8 * v8, v33);
  v34 = *(&self->super.super.isa + v23);
  if (v34)
  {
    bzero((v34 + 8 * v8), v33);
  }

  *&self->_gFlags |= 0x11u;
}

- (void)initGlyphStack:(int64_t)stack
{
  if (self->_stack)
  {
    NSZoneFree([(NSATSGlyphStorage *)self zone], self->_stack);
  }

  v5 = NSZoneMalloc([(NSATSGlyphStorage *)self zone], (48 * stack) | 8);
  self->_stack = v5;
  v5->var0 = 0;
}

- (void)pushGlyph:(int64_t)glyph
{
  stack = self->_stack;
  if (stack)
  {
    v4 = stack + 6 * stack->var0++;
    v4->var1[0].var0 = (*(&self->super.super.isa + *MEMORY[0x1E6965610]))[glyph];
    var1 = v4->var1;
    var1->var1 = (*(&self->super.super.isa + *MEMORY[0x1E6965600]))[glyph];
    v6 = MEMORY[0x1E6965620];
    var1->var2 = (*(&self->super.super.isa + *MEMORY[0x1E6965618]))[glyph] | 0x200000;
    var1->var3 = (*(&self->super.super.isa + *v6))[glyph];
    v7 = *(&self->super.super.isa + *MEMORY[0x1E69655F8]);
    if (v7)
    {
      v7 = *(v7 + 8 * glyph);
    }

    var1->var4 = v7;
  }
}

- (void)popGlyph:(int64_t)glyph
{
  stack = self->_stack;
  if (stack)
  {
    v4 = stack + 6 * stack->var0;
    v6 = *(v4 - 20);
    v5 = v4 - 5;
    v7 = MEMORY[0x1E6965610];
    --stack->var0;
    (*(&self->super.super.isa + *v7))[glyph] = v6;
    (*(&self->super.super.isa + *MEMORY[0x1E6965600]))[glyph] = *&v5->var1[0].var0;
    (*(&self->super.super.isa + *MEMORY[0x1E6965618]))[glyph] = LODWORD(v5->var1[0].var1.height);
    (*(&self->super.super.isa + *MEMORY[0x1E6965620]))[glyph] = *&v5->var1[0].var2;
    v8 = *(&self->super.super.isa + *MEMORY[0x1E69655F8]);
    if (v8)
    {
      *(v8 + 8 * glyph) = v5->var1[0].var3;
    }

    *&self->_gFlags |= 0x30u;
  }
}

- (void)disposeGlyphStack
{
  if (self->_stack)
  {
    NSZoneFree([(NSATSGlyphStorage *)self zone], self->_stack);
    self->_stack = 0;
  }
}

- (void)setGlyphRange:characterRange:
{
  OUTLINED_FUNCTION_12();
  v279 = *MEMORY[0x1E69E9840];
  if (v0)
  {
    v5 = v4;
    v6 = v3;
    v7 = v2;
    v8 = v1;
    v266 = v0;
    _getATSTypesetterGuts = [*(v0 + 80) _getATSTypesetterGuts];
    __NSATSGlyphStorageInitBuffer(v266, v8, v7, v6, v5, v7);
    v17 = [OUTLINED_FUNCTION_8_0(v9 v10];
    v18 = *(v267 + 128);
    v19 = *(v267 + *MEMORY[0x1E6965610]);
    v20 = MEMORY[0x1E6965600];
    v21 = *(v267 + *MEMORY[0x1E6965600]);
    v22 = MEMORY[0x1E6965618];
    v275 = 0;
    v276 = 0;
    v23 = *(v267 + *MEMORY[0x1E6965618]);
    v24 = MEMORY[0x1E6965620];
    v25 = *(v267 + *MEMORY[0x1E6965620]);
    v33 = [OUTLINED_FUNCTION_8_0(v17 v26];
    v41 = [objc_msgSend(OUTLINED_FUNCTION_8_0(v33 v34];
    v49 = [OUTLINED_FUNCTION_8_0(v41 v42];
    v50 = v270;
    v201 = v49;
    v51 = *(v270 + 88);
    if (v51)
    {
      v52 = *(v270 + 104);
    }

    else
    {
      v51 = NSAllocateScannedUncollectable();
      v50 = v270;
      *(v270 + 88) = v51;
      v52 = 8;
      *(v270 + 104) = 8;
    }

    if (*(v50 + 152))
    {
      v53 = *(v50 + 152);
    }

    else
    {
      v53 = v50;
    }

    v54 = (v50 + 128);
    if (v18 < *(v50 + 136) + *(v50 + 128))
    {
      v240 = 0;
      v265 = *(v53 + 128);
      v55 = v51 + 104 * v52;
      while (1)
      {
        v56 = v51;
        while (1)
        {
          if (v56 >= v55)
          {
            v57 = v56 - *(v50 + 88);
            *(v50 + 104) += 8;
            v58 = NSReallocateScannedUncollectable();
            v50 = v270;
            *(v270 + 88) = v58;
            v56 = v58 + v57;
            v55 = v58 + 104 * *(v270 + 104);
          }

          v59 = [v221 attributesAtIndex:v18 longestEffectiveRange:&v275 inRange:{*(v50 + 128), *(v50 + 136)}];
          *v56 = v59;
          v60 = [v59 objectForKey:@"NSAttachment"];
          v61 = v275;
          v253 = v60;
          if (v275 == v18)
          {
            goto LABEL_34;
          }

          if (v275 < v18 && v60 != 0 && v276 >= 2)
          {
            v72 = v275 - v18 + v276;
            goto LABEL_33;
          }

          if (setGlyphRange_characterRange__lastAttributedString == v221)
          {
            v66 = v270;
          }

          else
          {
            v64 = objc_opt_class();
            v65 = NSStringFromClass(v64);
            v66 = v270;
            NSLog(@"%@: %@ (%p) returned run range {%lu %lu} for attributes at %ld in character range {%lu %lu}. Since attribute run ranges are in inconsistent state, there might be layout issues such as garbled text or incorrect glyph spacings", v270, v65, v221, v275, v276, v18, *(v270 + 128), *(v270 + 136));
            setGlyphRange_characterRange__lastAttributedString = v221;
            v61 = v275;
          }

          v54 = (v66 + 128);
          v67 = *(v66 + 128);
          v68 = v61 - v18;
          if (v61 >= v18)
          {
            break;
          }

          if (v18 == v67)
          {
            goto LABEL_32;
          }

          v69 = v276 + v61;
          v70 = v69 > v18;
          v71 = v69 - v18;
          if (!v70)
          {
            v72 = 1;
LABEL_33:
            v275 = v18;
            v276 = v72;
            goto LABEL_34;
          }

          v50 = v66;
          *(v56 - 88) += v71;
          v18 = v276 + v275;
          if (v276 + v275 >= *(v66 + 136) + *(v66 + 128))
          {
            v51 = v56;
            goto LABEL_146;
          }
        }

        if (v18 == v67)
        {
LABEL_32:
          v72 = v68 + v276;
          goto LABEL_33;
        }

        *(v56 - 88) += v68;
LABEL_34:
        v73 = [*v56 objectForKey:@"NSExpansion"];
        if (v73)
        {
          [v73 doubleValue];
        }

        else
        {
          v74 = 0.0;
        }

        v75 = v240;
        v235 = v55;
        v76 = exp(v74);
        *(v56 + 48) = v76;
        if (v76 != 1.0)
        {
          v75 = 1;
        }

        v240 = v75;
        v77 = [*v56 objectForKey:@"CTVerticalForms"];
        if ([v77 BOOLValue])
        {
          v78 = 1;
        }

        else
        {
          if (v77)
          {
            v79 = 1;
          }

          else
          {
            v79 = v230 == 0;
          }

          v78 = !v79;
        }

        v80 = *v56;
        if (!*v56)
        {
          goto LABEL_51;
        }

        verticalFont = [*v56 objectForKey:@"NSFont"];
        if ([objc_msgSend(v80 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
        {
          verticalFont = [verticalFont verticalFont];
        }

        if (!verticalFont)
        {
LABEL_51:
          verticalFont = NSDefaultFont();
        }

        *(v56 + 8) = verticalFont;
        *(v56 + 96) &= ~0x80u;
        if ([verticalFont isEqual:verticalFont])
        {
          verticalFont = *(v56 + 8);
          if (!v78)
          {
            goto LABEL_59;
          }
        }

        else
        {
          *(v56 + 8) = verticalFont;
          *(v56 + 96) |= 0x80u;
          if (!v78)
          {
            goto LABEL_59;
          }
        }

        v81VerticalFont = [verticalFont verticalFont];
        if (v81VerticalFont)
        {
          verticalFont = v81VerticalFont;
        }

        *(v56 + 8) = verticalFont;
LABEL_59:
        *(v56 + 8) = [*(v270 + 80) substituteFontForFont:verticalFont];
        v83 = *v56;
        if (!*v56)
        {
          goto LABEL_66;
        }

        if (!v201 || (verticalFont2 = [*v56 objectForKey:_NSOriginalFontAttributeName]) == 0)
        {
          verticalFont2 = [v83 objectForKey:@"NSFont"];
        }

        if ([objc_msgSend(v83 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
        {
          verticalFont2 = [verticalFont2 verticalFont];
        }

        if (!verticalFont2)
        {
LABEL_66:
          verticalFont2 = NSDefaultFont();
        }

        v84VerticalFont = verticalFont2;
        if (v78)
        {
          v84VerticalFont = [verticalFont2 verticalFont];
        }

        if (v84VerticalFont)
        {
          verticalFont2 = v84VerticalFont;
        }

        if (([*(v270 + 80) usesFontLeading] & 1) == 0)
        {
          [*(v270 + 80) paragraphSeparatorGlyphRange];
        }

        [verticalFont2 _defaultLineHeightForUILayout];
        *(v56 + 32) = v86 + 0.0;
        [verticalFont2 ascender];
        *(v56 + 40) = v87;
        *(v56 + 56) = 0;
        if (v230 && ([verticalFont2 isVertical] & 1) == 0)
        {
          v88 = *(v56 + 32);
          v89 = ceil(v88 * 0.5);
          if (v88 <= 2.0)
          {
            v90 = v88 * 0.5;
          }

          else
          {
            v90 = v89;
          }

          *(v56 + 56) = v90 - *(v56 + 40);
          *(v56 + 40) = v90;
        }

        v91 = [*v56 objectForKey:@"NSBaselineOffset"];
        if (v91)
        {
          [v91 doubleValue];
        }

        else
        {
          v92 = 0.0;
        }

        *(v56 + 56) = v92 + *(v56 + 56);
        v93 = [*v56 objectForKey:@"NSSuperScript"];
        if (v93)
        {
          *(v56 + 56) = *(v56 + 56) + ceil(*(v56 + 32) * [v93 integerValue] * 0.4);
        }

        if ((*(v270 + 224) & 0x10) != 0)
        {
          v96 = [*(v270 + 80) glyphRangeForCharacterRange:v275 actualCharacterRange:{v276, 0}];
          v94 = v97;
          v259 = v96;
          v95 = v96 - *(v270 + 112);
        }

        else
        {
          v94 = v276;
          v95 = v275 - *(v270 + 128);
          v259 = *(v270 + 112) + v95;
        }

        *(v56 + 24) = v95;
        if ((*(*(v226 + 40) + 217) & 0x80) == 0)
        {
          v98 = [*v56 objectForKey:@"NSWritingDirection"];
          if (v98)
          {
            v99 = v98;
            v273 = 0u;
            v274 = 0u;
            v271 = 0u;
            v272 = 0u;
            v100 = [v98 countByEnumeratingWithState:&v271 objects:v277 count:16];
            if (v100)
            {
              v101 = v100;
              v102 = *v272;
              while (2)
              {
                for (i = 0; i != v101; ++i)
                {
                  if (*v272 != v102)
                  {
                    objc_enumerationMutation(v99);
                  }

                  if ([*(*(&v271 + 1) + 8 * i) integerValue])
                  {
                    *(*(v226 + 40) + 216) |= 0x8000u;
                    *(v226 + 88) &= 0xFFFFFFFC;
                    goto LABEL_99;
                  }
                }

                v101 = [v99 countByEnumeratingWithState:&v271 objects:v277 count:16];
                if (v101)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

LABEL_99:
        v104 = *(MEMORY[0x1E696AA80] + 16);
        *(v56 + 64) = *MEMORY[0x1E696AA80];
        *(v56 + 80) = v104;
        if ([OUTLINED_FUNCTION_39(*(v56 + 96) & 0xFFFFFFFD) _isDefaultFace])
        {
          v105 = 4;
        }

        else
        {
          v105 = 0;
        }

        v106 = [OUTLINED_FUNCTION_39(*(v56 + 96) & 0xFFFFFFFB | v105) renderingMode] != 1;
        if ([OUTLINED_FUNCTION_39(*(v56 + 96) & 0xFFFFFFE7 | (16 * v106)) isVertical])
        {
          v107 = 64;
        }

        else
        {
          v107 = 0;
        }

        _kernOverride = [OUTLINED_FUNCTION_39(*(v56 + 96) & 0xFFFFFFBF | v107) _kernOverride];
        *(v56 + 96) = *(v56 + 96) & 0xFFFFFFDF | (32 * (_kernOverride != 0));
        if (_kernOverride)
        {
          [_kernOverride doubleValue];
          if (v109 == 0.0)
          {
            *(v56 + 96) |= 0x10u;
          }
        }

        if (!v253)
        {
          *(v56 + 96) &= ~1u;
          if (v94 < 1)
          {
            v50 = v270;
          }

          else
          {
            v50 = v270;
            v114 = v259;
            v254 = &v19[v94];
            do
            {
              v260 = v114;
              v115 = [*(v50 + 80) getGlyphsInRange:? glyphs:? properties:? characterIndexes:? bidiLevels:?];
              [*(v56 + 8) getAdvancements:v21 forCGGlyphs:v19 count:v115];
              if (v115 < 1)
              {
                v50 = v270;
              }

              else
              {
                v116 = &v19[v115];
                v117 = *(v56 + 48);
                v118 = 0x7FFFFFFFFFFFFFFFLL;
                v119 = &v278;
                v120 = v265;
                v50 = v270;
                do
                {
                  v121 = (v117 != 1.0) << 19;
                  v122 = *v119;
                  if ((*v119 & 2) != 0)
                  {
                    v123 = v121 | 0x10000;
                    if ((*(v56 + 96) & 4) == 0)
                    {
                      v124 = [*(v50 + 80) actionForControlCharacterAtIndex:*v25];
                      v120 = v265;
                      v50 = v270;
                      *v21 = 0.0;
                      if ((v124 & 6) != 0)
                      {
                        v123 = v121 | 0x110000 | v124 & 4;
                        *(v56 + 96) |= 2u;
                        *(v270 + 224) |= 2u;
                      }
                    }

                    *v19 = 0;
                    v122 = *v119;
                  }

                  else
                  {
                    if ((v122 & 1) != 0 || (v123 = (v117 != 1.0) << 19, !*v19))
                    {
                      *v21 = 0.0;
                      v123 = v121 | 0x20;
                    }

                    if (v118 == *v25)
                    {
                      v123 |= 0x80uLL;
                      *(v23 - 1) |= 0x80u;
                    }
                  }

                  v125 = (v122 >> 2) & 1 | v123;
                  if ((v122 & 8) != 0)
                  {
                    LODWORD(v125) = v125 | 0x40;
                    *(v56 + 96) |= 8u;
                  }

                  v117 = *(v56 + 48);
                  if (v117 != 1.0)
                  {
                    *v21 = v117 * *v21;
                  }

                  ++v19;
                  ++v119;
                  *v23++ = v125;
                  v21 += 2;
                  v118 = *v25;
                  *v25++ -= v120;
                }

                while (v19 < v116);
              }

              v114 = v115 + v260;
            }

            while (v19 < v254);
          }

          goto LABEL_141;
        }

        attachmentCell = [v253 attachmentCell];
        v111 = *(v56 + 96);
        *(v56 + 96) = v111 | 1;
        if (attachmentCell)
        {
          v112 = attachmentCell;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            [v112 cellSize];
            v127 = v126;
            v129 = v128;
            v130 = objc_opt_respondsToSelector();
            v131 = 0;
            v132 = 0;
            if (v130)
            {
              [v112 cellBaselineOffset];
            }

            *(v56 + 64) = v131;
            *(v56 + 72) = v132;
            *(v56 + 80) = v127;
            *(v56 + 88) = v129;
            v50 = v270;
            goto LABEL_140;
          }

          v113 = *(v56 + 96) | 2;
        }

        else
        {
          v113 = v111 | 3;
        }

        *(v56 + 96) = v113;
        v50 = v270;
        *(v270 + 224) |= 2u;
LABEL_140:
        *v19++ = 0;
        *v23++ = 0x10000;
        *v21 = *(v56 + 80);
        v21[1] = 0.0;
        v21 += 2;
        *v25++ = v275 - v265;
        v276 = 1;
LABEL_141:
        v51 = v56 + 104;
        v134 = v275;
        v133 = v276;
        *(v56 + 16) = v276;
        v18 = v134 + v133;
        v54 = (v50 + 128);
        v55 = v235;
        if (v18 >= *(v50 + 136) + *(v50 + 128))
        {
LABEL_146:
          v20 = MEMORY[0x1E6965600];
          v24 = MEMORY[0x1E6965620];
          v22 = MEMORY[0x1E6965618];
          break;
        }
      }
    }

    *(v50 + 96) = (v51 - *(v50 + 88)) / 104;
    if (!*(v50 + 152))
    {
      *(v50 + 168) = v54[1] + *v54;
      *(v50 + 176) = 0;
      v135 = *(v50 + *v22);
      v136 = *(v50 + 120);
      if (*(v135 + 4 * v136 - 4))
      {
        v137 = *(v50 + *v20);
        v138 = 4 * v136 - 8;
        do
        {
          v139 = v138;
          if (v135 + v138 + 4 <= v135)
          {
            break;
          }

          v138 -= 4;
        }

        while ((*(v135 + v139) & 1) != 0);
        v140 = v139 + 4;
        *(v50 + 168) = *(*(v50 + *v24) + 2 * v140) + *v54;
        if (v140 >> 2 < v136)
        {
          v141 = (v137 + 16 * (v140 >> 2));
          v142 = 0.0;
          do
          {
            v143 = *v141;
            v141 += 2;
            v142 = v143 + v142;
            *(v50 + 176) = v142;
          }

          while (v141 < v137 + 16 * v136);
        }
      }
    }

    v144 = *(v50 + 72);
    if (v144)
    {
      CFArrayRemoveAllValues(v144);
      v50 = v270;
    }

    if (*(v50 + 64))
    {
      MEMORY[0x193AD3A80]();
      v145 = v270;
    }

    else
    {
      MutableWithInterface = CTGlyphStorageCreateMutableWithInterface();
      v147 = CFMakeCollectable(MutableWithInterface);
      v145 = v270;
      *(v270 + 64) = v147;
    }

    v148 = *(v145 + *v20);
    if (*v148 < 0.0)
    {
      *v148 = fabs(*v148);
    }
  }

  OUTLINED_FUNCTION_13();
}

- (void)childGlyphStorageWithCharacterRange:(uint64_t)range
{
  if (!self)
  {
    return 0;
  }

  if ((*(self + 224) & 0x10) != 0)
  {
    [*(self + 80) glyphRangeForCharacterRange:a2 actualCharacterRange:{range, 0}];
  }

  v4 = +[NSATSGlyphStorage allocWithZone:](NSATSGlyphStorage, "allocWithZone:", [self zone]);
  v5 = *(self + 80);
  v10.receiver = v4;
  v10.super_class = NSATSGlyphStorage;
  v6 = objc_msgSendSuper2(&v10, sel_init);
  v6[10] = v5;
  v6[19] = self;
  [NSATSGlyphStorage setGlyphRange:characterRange:];
  Mutable = *(self + 160);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(self + 160) = Mutable;
  }

  CFSetAddValue(Mutable, v6);

  if (v6[8])
  {
    MEMORY[0x193AD3A80]();
  }

  else
  {
    MutableWithInterface = CTGlyphStorageCreateMutableWithInterface();
    v6[8] = CFMakeCollectable(MutableWithInterface);
  }

  return v6;
}

- (const)_createEllipsisRunWithStringRange:(uint64_t)range attributes:
{
  MutableRunsWithStorageAndOptions = self;
  if (self)
  {
    v6 = OUTLINED_FUNCTION_11_0([self zone]);
    if (v6)
    {
      v7 = *(MutableRunsWithStorageAndOptions + 80);
      v41.receiver = v6;
      v41.super_class = NSATSGlyphStorage;
      v8 = objc_msgSendSuper2(&v41, sel_init);
      v9 = v8;
      if (v8)
      {
        v8[10] = v7;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = *(MutableRunsWithStorageAndOptions + 88);
    v11 = *(MutableRunsWithStorageAndOptions + 96);
    LOWORD(v41.receiver) = 8230;
    glyphs = 0;
    *(v9 + 152) = MutableRunsWithStorageAndOptions;
    v12 = *(MutableRunsWithStorageAndOptions + 128);
    v13 = [*(MutableRunsWithStorageAndOptions + 80) glyphRangeForCharacterRange:v12 + a2 actualCharacterRange:{range, 0}];
    __NSATSGlyphStorageInitBuffer(v9, v13, v14, v12 + a2, range, 1);
    if (v11 >= 1)
    {
      v15 = 0;
      v16 = v10 + 104 * v11;
      do
      {
        v15 += *(v10 + 16);
        if (v15 > a2)
        {
          break;
        }

        v10 += 104;
      }

      while (v10 < v16);
    }

    v17 = *(v9 + 88);
    if (!v17)
    {
      v17 = NSAllocateScannedUncollectable();
      *(v9 + 88) = v17;
      *(v9 + 104) = 8;
    }

    memcpy(v17, v10, 0x68uLL);
    v18 = *(v9 + 88);
    *(v18 + 16) = range;
    *(v18 + 24) = 0;
    v19 = *(MEMORY[0x1E696AA80] + 16);
    *(v18 + 64) = *MEMORY[0x1E696AA80];
    *(v18 + 80) = v19;
    *(*(v9 + 88) + 96) &= ~1u;
    *(v9 + 96) = 1;
    GlyphsForCharacters = CTFontGetGlyphsForCharacters(*(*(v9 + 88) + 8), &v41, &glyphs, 1);
    v21 = glyphs;
    if (!GlyphsForCharacters)
    {
      v21 = 0;
    }

    v22 = MEMORY[0x1E6965610];
    **(v9 + *MEMORY[0x1E6965610]) = v21;
    v23 = MEMORY[0x1E6965600];
    if (**(v9 + *v22) || ([*(MutableRunsWithStorageAndOptions + 80) _allowsEllipsisGlyphSubstitution] & 1) == 0)
    {
      OUTLINED_FUNCTION_22();
      v29 = *(v32 + 8);
      v30 = *(v9 + *v23);
    }

    else
    {
      v24 = *(MutableRunsWithStorageAndOptions + 80);
      OUTLINED_FUNCTION_22();
      [v24 substituteFontForFont:{objc_msgSend(v24, "_ellipsisFontForFont:", *(v25 + 8))}];
      OUTLINED_FUNCTION_22();
      *(v27 + 8) = v26;
      CTFontGetGlyphsForCharacters(v26, &v41, &glyphs, 1);
      OUTLINED_FUNCTION_22();
      v29 = *(v28 + 8);
      v30 = *(v9 + *v23);
      p_glyphs = &glyphs;
    }

    [v29 getAdvancements:v30 forCGGlyphs:p_glyphs count:1];
    OUTLINED_FUNCTION_22();
    if (*(v33 + 48) != 1.0)
    {
      **(v9 + *v23) = *(v10 + 48) * **(v9 + *v23);
    }

    **(v9 + *MEMORY[0x1E6965618]) = 786432;
    **(v9 + *MEMORY[0x1E6965620]) = a2;
    v34 = MEMORY[0x1E69655F8];
    v35 = *(v9 + *MEMORY[0x1E69655F8]);
    if (!v35)
    {
      *(v9 + *v34) = NSZoneMalloc([v9 zone], 8uLL);
      v35 = *(v9 + *v34);
    }

    *v35 = range - 1;
    *(v9 + 224) |= 1u;
    *(v9 + 224) |= 8u;
    Mutable = *(MutableRunsWithStorageAndOptions + 160);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
      *(MutableRunsWithStorageAndOptions + 160) = Mutable;
    }

    CFSetAddValue(Mutable, v9);

    if (*(v9 + 64))
    {
      MEMORY[0x193AD3A80]();
    }

    else
    {
      MutableWithInterface = CTGlyphStorageCreateMutableWithInterface();
      *(v9 + 64) = CFMakeCollectable(MutableWithInterface);
    }

    OUTLINED_FUNCTION_7_0();
    MutableRunsWithStorageAndOptions = CTRunCreateMutableRunsWithStorageAndOptions();
    if (CFGetTypeID(MutableRunsWithStorageAndOptions) == qword_1ED4DF2E0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableRunsWithStorageAndOptions, 0);
      CFRetain(ValueAtIndex);
      CFRelease(MutableRunsWithStorageAndOptions);
      return ValueAtIndex;
    }
  }

  return MutableRunsWithStorageAndOptions;
}

- (void)_resolvePositionalStakeGlyphsForLineFragment:lineFragmentRect:minPosition:maxPosition:maxLineFragmentWidth:breakHint:
{
  OUTLINED_FUNCTION_12();
  v186 = v8;
  v187 = v9;
  v214 = *MEMORY[0x1E69E9840];
  if (!v0)
  {
    goto LABEL_213;
  }

  v10 = v2;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = v4;
  v15 = v3;
  v16 = v1;
  v17 = v0;
  currentTextContainer = [*(v0 + 80) currentTextContainer];
  theArray = CTLineGetGlyphRuns(v16);
  Count = CFArrayGetCount(theArray);
  v212 = 0;
  v211 = 0;
  [*(v17 + 80) lineFragmentPadding];
  v20 = v19;
  _baseWritingDirection = [*(v17 + 80) _baseWritingDirection];
  v22 = v10 != 0;
  applicationFrameworkContext = [*(v17 + 80) applicationFrameworkContext];
  memset(v213, 0, 128);
  bzero(buffer, 0xB8uLL);
  if ((*(v17 + 224) & 2) == 0)
  {
    goto LABEL_213;
  }

  v166 = v10;
  v196 = v17;
  v24 = _baseWritingDirection == 1;
  *&v170 = v20;
  if (_baseWritingDirection == 1)
  {
    v25 = -1;
  }

  else
  {
    v25 = 1;
  }

  if (_baseWritingDirection == 1)
  {
    v26 = v15 + v20 * -2.0 - v12;
  }

  else
  {
    v26 = v13;
  }

  if (v11 <= 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v26 + v11;
  }

  v198 = Count;
  if (Count < 17)
  {
    v28 = v213;
  }

  else
  {
    v28 = NSZoneMalloc(0, 8 * Count);
  }

  v29 = [objc_msgSend(*(v196 + 80) "attributedString")];
  theString = v29;
  v208 = *(v196 + 128);
  CharactersPtr = CFStringGetCharactersPtr(v29);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v29, 0x600u);
  }

  v209 = 0;
  v210 = 0;
  v207 = CStringPtr;
  if (Count >= 1)
  {
    v177 = v28;
    v163 = applicationFrameworkContext;
    HIDWORD(v192) = v22;
    *&v164 = v13;
    v165 = v16;
    v31 = 0;
    v32 = _baseWritingDirection;
    v33 = 0;
    v201 = 0;
    v188 = 0;
    v184 = 0;
    v34 = 0;
    HIDWORD(v189) = 0;
    v35 = 2 * v24;
    v199 = v32;
    v96 = v32 == 1;
    v36 = v32 != 1;
    v37 = v96;
    v173 = v37;
    v182 = *(MEMORY[0x1E696AA80] + 8);
    v183 = *MEMORY[0x1E696AA80];
    v180 = *(MEMORY[0x1E696AA80] + 24);
    v181 = *(MEMORY[0x1E696AA80] + 16);
    v167 = @"NSAttachment";
    v172 = v12 + 0.001;
    v168 = 2 * v36;
    v169 = @"NSTabColumnTerminatorsAttributeName";
    v178 = v15 - *&v170;
    v193 = 4 * v25;
    v194 = 16 * v25;
    v195 = 8 * v25;
    v176 = v35;
    v38 = 0.0;
    v39 = v196;
    v174 = v15;
    v175 = v14;
    v171 = v35;
    while (1)
    {
      if (v199 == 1)
      {
        v40 = Count + ~v33;
      }

      else
      {
        v40 = v33;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v40);
      StringRange = CTRunGetStringRange(ValueAtIndex);
      v200 = ValueAtIndex;
      GlyphStorage = CTRunGetGlyphStorage();
      v44 = MEMORY[0x193AD3A70](GlyphStorage);
      v45 = v44;
      v46 = v44[11];
      v47 = v46 + 104 * v44[12];
      if (v46 > v31 || v31 >= v47 || v34 > StringRange.location)
      {
        if (v44[25] && v44[26] <= StringRange.location)
        {
          v31 = *(v39 + 200);
          v34 = *(v39 + 208);
        }

        else
        {
          v50 = v44[19];
          if (v50)
          {
            v34 = v44[16] - *(v50 + 128);
          }

          else
          {
            v34 = 0;
          }

          v31 = v44[11];
        }
      }

      if (v31 && v31 < v47)
      {
        while (1)
        {
          v51 = *(v31 + 16) + v34;
          if (StringRange.location < v51)
          {
            break;
          }

          v31 += 104;
          v34 = v51;
          if (v31 >= v47)
          {
            goto LABEL_46;
          }
        }

        v52 = (*(v44 + *MEMORY[0x1E6965600]) + 16 * v211);
        Status = CTRunGetStatus(v200);
        LODWORD(v190) = (v199 == 1) ^ Status;
        HIDWORD(v192) &= v190 ^ 1;
        v61 = *(v31 + 96);
        if (v61)
        {
          v65 = *v52;
          if ((v61 & 2) != 0)
          {
            v66 = [*v31 objectForKey:v167];
            if (v66)
            {
              v67 = v66;
              attachmentCell = [v66 attachmentCell];
              [v67 lineLayoutPadding];
              v70 = v69;
              v217.origin.x = v186;
              v217.origin.y = v187;
              v217.size.width = v15;
              v217.size.height = v14;
              v191 = *&v70;
              v218 = NSInsetRect(v217, v70, 0.0);
              x = v218.origin.x;
              width = v218.size.width;
              height = v218.size.height;
              if (attachmentCell)
              {
                OUTLINED_FUNCTION_14(_allocatesTextContainer, v72, v73, v74, v75, v76, v77, v78, v218.origin.x, v218.origin.y, v218.size.width, v218.size.height, v79, v80, v81, v82, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, *&v170, v171, *&v172, v173, *&v174, *&v175, v176, v177, *&v178, v179, *&v180, *&v181, *&v182, *&v183, v184, currentTextContainer, *&v186, *&v187, v188, v189, v191, v192, v193, v194, v195, v196, theArray, v198, v199);
                v86 = OUTLINED_FUNCTION_38();
                [v87 cellFrameForTextContainer:v86 proposedLineFragment:? glyphPosition:? characterIndex:?];
                OUTLINED_FUNCTION_2_0();
                Count = v198;
                v88 = *&v190;
              }

              else
              {
                Count = v198;
                if (!currentTextContainer)
                {
                  _allocatesTextContainer = [v67 _allocatesTextContainer];
                  if (_allocatesTextContainer)
                  {
                    _allocatesTextContainer = [*(v39 + 80) _textContainerForAttachmentProtocol];
                  }
                }

                OUTLINED_FUNCTION_14(_allocatesTextContainer, v72, v73, v74, v75, v76, v77, v78, v218.origin.x, v218.origin.y, v218.size.width, v218.size.height, v79, v80, v81, v82, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, *&v170, v171, *&v172, v173, *&v174, *&v175, v176, v177, *&v178, v179, *&v180, *&v181, *&v182, *&v183, v184, currentTextContainer, *&v186, *&v187, v188, v189, v191, v192, v193, v194, v195, v196, theArray, v198, v199);
                OUTLINED_FUNCTION_34();
                v134 = OUTLINED_FUNCTION_38();
                v179 = v135;
                [v136 attachmentBoundsForTextContainer:v134 proposedLineFragment:? glyphPosition:? characterIndex:?];
                OUTLINED_FUNCTION_2_0();
                if (v163 == 2)
                {
                  [v67 bounds];
                  if (CGRectIsEmpty(v219))
                  {
                    if ([objc_msgSend(v67 "image")])
                    {
                      image = [v67 image];
                      [image size];
                      v220.origin.x = OUTLINED_FUNCTION_5_0();
                      if (CGRectEqualToRect(v220, v224) && [image willProvideAdaptedImageForPresentation])
                      {
                        v138 = OUTLINED_FUNCTION_5_0();
                        [v139 attachmentBoundsForAttributes:v138 location:? textContainer:? proposedLineFragment:? position:?];
                        OUTLINED_FUNCTION_2_0();
                      }

                      Count = v198;
                    }
                  }
                }

                [v67 lineLayoutPadding];
                v88 = *&v190;
                if (*&v190 != v140)
                {
                  [v67 lineLayoutPadding];
                  v88 = v141;
                  v221.origin.x = v186;
                  v221.origin.y = v187;
                  v221.size.width = v174;
                  v221.size.height = v175;
                  NSInsetRect(v221, v88, 0.0);
                  [OUTLINED_FUNCTION_34() attachmentBoundsForTextContainer:? proposedLineFragment:? glyphPosition:? characterIndex:?];
                  OUTLINED_FUNCTION_2_0();
                }
              }

              if (v88 != 0.0)
              {
                v222.origin.x = OUTLINED_FUNCTION_5_0();
                NSInsetRect(v222, v142, v143);
                OUTLINED_FUNCTION_2_0();
              }

              v89 = [v67 embeddingType] == 1;
              if (Count == 1)
              {
                v90 = v201;
                if (v27 <= 0.0)
                {
                  goto LABEL_185;
                }

LABEL_182:
                if (v26 + x <= v27)
                {
                  goto LABEL_185;
                }

                v65 = v27 - v26;
                if (!v90)
                {
                  goto LABEL_195;
                }

LABEL_186:
                if (v176 == 1)
                {
                  v144 = v65 * 0.5;
                }

                else
                {
                  v144 = v65;
                }

                if (v144 >= v38)
                {
                  v65 = v65 - v38;
                  *v90 = 0.0;
                  goto LABEL_195;
                }

                if (v176 == 1)
                {
                  v65 = v65 * 0.5;
                }

                else
                {
                  v65 = 0.0;
                }

                v38 = v38 - v144;
              }

              else
              {
                v90 = v201;
                if (v26 == *&v164 && v27 > 0.0)
                {
                  goto LABEL_182;
                }

LABEL_185:
                v65 = x;
                if (v90)
                {
                  goto LABEL_186;
                }

LABEL_195:
                v201 = 0;
              }

              v26 = v26 + v65;
              if (v27 > 0.0)
              {
                v145 = v33 > 0 && v89;
                if (v26 > v27 || v145 != 0)
                {
                  if ((v192 & 0x100000000) != 0)
                  {
                    v158 = *(v39 + 128) + StringRange.location;
                    goto LABEL_222;
                  }

LABEL_223:
                  v28 = v177;
                  break;
                }
              }

              v223.origin.x = OUTLINED_FUNCTION_5_0();
              v225.origin.y = v182;
              v225.origin.x = v183;
              v225.size.height = v180;
              v225.size.width = v181;
              v147 = NSEqualRects(v223, v225);
              if (!v147)
              {
                *(v31 + 64) = v15;
                *(v31 + 72) = height;
                *(v31 + 80) = x;
                *(v31 + 88) = width;
                OUTLINED_FUNCTION_21(v147, v148, v149, v150, v151, v152, v153, v154, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, *&v172, v173, *&v174, *&v175, v176, v177, *&v178, v179, *&v180, *&v181, *&v182, *&v183, v184, currentTextContainer, *&v186, *&v187, v188, v189, v190, v192, v193, v194, v195, v196, theArray, v198, v199, v200);
                v184 = v155;
                *v52 = x;
              }

              v15 = v174;
              v14 = v175;
              goto LABEL_48;
            }
          }

          v89 = 0;
          width = v180;
          x = v181;
          height = v182;
          v15 = v183;
          Count = v198;
          v90 = v201;
          if (!v201)
          {
            goto LABEL_195;
          }

          goto LABEL_186;
        }

        if ((v61 & 2) != 0 || v201)
        {
          v91 = v212;
          v92 = v212 - 1;
          v93 = *(v45 + *MEMORY[0x1E6965618]);
          v94 = *(v45 + *MEMORY[0x1E6965620]);
          if (v199 != 1)
          {
            v92 = 0;
          }

          v95 = *(v94 + 8 * v211 + 8 * v92);
          --v212;
          if (v91 < 1)
          {
LABEL_159:
            v103 = v26;
            Count = v198;
LABEL_160:
            if ((*(v31 + 96) & 2) != 0)
            {
              OUTLINED_FUNCTION_21(Status, v54, v55, v56, v57, v58, v59, v60, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, *&v172, v173, *&v174, *&v175, v176, v177, *&v178, v179, *&v180, *&v181, *&v182, *&v183, v184, currentTextContainer, *&v186, *&v187, v188, v189, v190, v192, v193, v194, v195, v196, theArray, v198, v199, v200);
              v26 = v103;
              v184 = v133;
            }

            else
            {
              v26 = v103;
            }

            goto LABEL_48;
          }

          v96 = v198 == 1 && StringRange.length == 1;
          v97 = v96;
          v98 = &v52[2 * v92];
          v99 = v93 + 4 * v211 + 4 * v92;
          if (v27 > 0.0)
          {
            v100 = v97;
          }

          else
          {
            v100 = 0;
          }

          LODWORD(v179) = v100;
          v101 = (v94 + v195 + 8 * v92 + 8 * v211);
          v102 = v176;
LABEL_78:
          v103 = v26;
          v104 = *v99;
          v105 = v201;
          if (v201)
          {
            if ((v104 & 4) != 0)
            {
              goto LABEL_87;
            }

            if (v188)
            {
              if (v95 < 0 || (v106 = *(&v208 + 1), *(&v208 + 1) <= v95))
              {
                v107 = v95;
                v108 = 0;
              }

              else if (CharactersPtr)
              {
                v107 = v95;
                v108 = CharactersPtr[v208 + v95];
              }

              else if (v207)
              {
                v107 = v95;
                v108 = v207[v208 + v95];
              }

              else
              {
                v128 = v209;
                if (v210 <= v95 || v209 > v95)
                {
                  v130 = v95 - 4;
                  if (v95 < 4)
                  {
                    v130 = 0;
                  }

                  if ((v130 + 64) < *(&v208 + 1))
                  {
                    v106 = v130 + 64;
                  }

                  v209 = v130;
                  v210 = v106;
                  v216.length = v106 - v130;
                  v216.location = v208 + v130;
                  v131 = v95;
                  CFStringGetCharacters(theString, v216, buffer);
                  v95 = v131;
                  v128 = v209;
                }

                v107 = v95;
                v108 = buffer[v95 - v128];
              }

              Status = CFCharacterSetIsLongCharacterMember(v188, v108);
              v105 = v201;
              v95 = v107;
              if (Status)
              {
LABEL_87:
                *v105 = v38;
                goto LABEL_88;
              }
            }

            v109 = *v98;
LABEL_104:
            if ((*(v99 + 2) & 0x10) != 0)
            {
              v118 = *(v39 + 80);
              v203 = v105;
              v119 = v95;
              v120 = [v118 glyphRangeForCharacterRange:*(v39 + 128) + v95 actualCharacterRange:{1, 0}];
              if (v199 == 1)
              {
                v121 = v178 - v26;
              }

              else
              {
                v121 = v26;
              }

              Status = [v118 boundingBoxForControlGlyphAtIndex:v120 forTextContainer:currentTextContainer proposedLineFragment:*(v39 + 128) + v119 glyphPosition:v186 characterIndex:{v187, v15, v14, v186 + v121, v187}];
              v95 = v119;
              v105 = v203;
              v111 = 0;
              v110 = v27 - v26;
              if ((v179 & (v26 + v122 > v27)) == 0)
              {
                v110 = v122;
              }

              v109 = v110;
            }

            else
            {
              v111 = 0;
              v110 = 0.0;
            }

LABEL_124:
            if (v105)
            {
              if (v102 == 1)
              {
                v124 = v109 * 0.5;
              }

              else
              {
                v124 = v109;
              }

              v111 = 0;
              if (v124 >= v38)
              {
                v109 = v109 - v38;
                *v105 = 0.0;
                v105 = 0;
              }

              else
              {
                if (v102 == 1)
                {
                  v109 = v109 * 0.5;
                }

                else
                {
                  v109 = 0.0;
                }

                v38 = v38 - v124;
              }
            }
          }

          else
          {
LABEL_88:
            v109 = *v98;
            if ((v104 & 4) == 0)
            {
              v105 = 0;
              goto LABEL_104;
            }

            if ((v189 & 0x100000000) != 0)
            {
              v105 = 0;
              v110 = 0.0;
              v111 = 1;
              HIDWORD(v189) = 1;
            }

            else
            {
              v202 = v95;
              Status = [*(v39 + 80) textTabForGlyphLocation:v173 writingDirection:v26 maxLocation:v172];
              v112 = Status;
              v111 = Status != 0;
              if (Status)
              {
                [Status location];
                v109 = v113 - v26;
                alignment = [v112 alignment];
                if (alignment == 3)
                {
                  v115 = 0;
                }

                else
                {
                  v115 = alignment;
                }

                Status = [objc_msgSend(v112 "options")];
                v188 = Status;
                if (v115 != 4 || Status == 0)
                {
                  v102 = v115;
                }

                else
                {
                  v102 = v168;
                }

                v117 = v171;
              }

              else
              {
                if (v27 > 0.0)
                {
                  if ((v192 & 0x100000000) == 0)
                  {
                    goto LABEL_223;
                  }

                  v158 = *(v196 + 128) + v202;
LABEL_222:
                  *v166 = v158;
                  goto LABEL_223;
                }

                v188 = 0;
                v109 = 0.0;
                v117 = v171;
                v102 = v171;
              }

              v95 = v202;
              HIDWORD(v189) = v112 == 0;
              v123 = v117 == v102 || v102 == 4;
              v110 = 0.0;
              if (v123)
              {
                v110 = v109;
              }

              else
              {
                v38 = v109;
              }

              if (v123)
              {
                v105 = 0;
              }

              else
              {
                v105 = v98;
              }

              if (!v111)
              {
                goto LABEL_124;
              }
            }
          }

          v26 = v26 + v109;
          v125 = v27 <= 0.0 || v26 <= v27;
          v201 = v105;
          if (!v125)
          {
            v28 = v177;
            if ((v192 & 0x100000000) == 0)
            {
              break;
            }

            v176 = v102;
            v39 = v196;
            v132 = *(v196 + 128) + v95;
            Count = v198;
            v33 = v198;
            if (v132 < *v166)
            {
              *v166 = v132;
              v28 = v177;
              break;
            }

            goto LABEL_160;
          }

          v126 = *v99;
          if ((*v99 & 0x100000) != 0)
          {
            *v98 = v110;
            if (((v190 | v111) & 1) == 0)
            {
              *v99 = v126 & 0xFFEFFFFF;
            }
          }

          v127 = v212;
          v95 = *v101;
          --v212;
          v98 = (v98 + v194);
          v99 += v193;
          v39 = v196;
          v101 = (v101 + v195);
          if (v127 <= 0)
          {
            v176 = v102;
            goto LABEL_159;
          }

          goto LABEL_78;
        }

        OUTLINED_FUNCTION_19();
        v26 = v26 + CTRunGetTypographicBounds(v62, v215, v63, 0, 0);
        if (v27 > 0.0 && v26 > v27)
        {
          if ((v192 & 0x100000000) != 0)
          {
            v159 = StringRange.location + StringRange.length + *(v39 + 128);
            if (v159 >= *v166)
            {
              v159 = *v166;
            }

            *v166 = v159;
          }

          goto LABEL_223;
        }

        v201 = 0;
      }

      else
      {
        v51 = v34;
LABEL_46:
        NSLog(@"NSATSGlyphStorage inconsistency. Cannot find run storage for character range {%ld %ld} for CTRun %p. Ignoring the run...", StringRange.location, StringRange.length, v200);
        v31 = 0;
        v34 = v51;
      }

      Count = v198;
LABEL_48:
      if (++v33 >= Count)
      {
        if (v201)
        {
          *v201 = v38;
        }

        v28 = v177;
        if (v184 >= 1)
        {
          v156 = v184 + 1;
          v157 = v177 + 8 * v184 - 8;
          do
          {
            v157 -= 8;
            CTRunSyncWithStorage();
            --v156;
          }

          while (v156 > 1);
          CTLineSyncWithRuns();
          v28 = v177;
        }

        break;
      }
    }
  }

  if (v28 != v213)
  {
    NSZoneFree(0, v28);
  }

LABEL_213:
  OUTLINED_FUNCTION_13();
}

- (uint64_t)_collectElasticRangeSurroundingCharacterAtIndex:(uint64_t)index minimumCharacterIndex:
{
  v107[16] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_0();
  if ((*(v6 + 224) & 4) != 0 || [OUTLINED_FUNCTION_24() _bidiLevels])
  {
    v7 = [OUTLINED_FUNCTION_24() glyphRangeForCharacterRange:v3 actualCharacterRange:{*(v4 + 128) - v3 + *(v4 + 136), 0}];
    v9 = v7 + v8;
    if (v7 < v7 + v8)
    {
      v10 = v7;
      while (1)
      {
        v11 = OUTLINED_FUNCTION_24();
        v12 = v9 - v10 >= 0x10 ? 16 : v9 - v10;
        v13 = [v11 getGlyphsInRange:v10 glyphs:v12 properties:0 characterIndexes:v106 bidiLevels:{v107, 0}];
        if (v13)
        {
          break;
        }

LABEL_13:
        v10 += v13;
        if (v10 >= v9)
        {
          goto LABEL_14;
        }
      }

      v14 = v107;
      v15 = v106;
      v16 = v13;
      while (1)
      {
        v17 = *v15;
        v15 += 8;
        if ((v17 & 4) == 0)
        {
          break;
        }

        ++v14;
        if (!--v16)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_14:
    v18 = [OUTLINED_FUNCTION_24() glyphRangeForCharacterRange:index actualCharacterRange:{v3 - index, 0}];
    v20 = v18 + v19;
    if (v18 < v18 + v19)
    {
      v21 = v18;
      while (1)
      {
        v22 = v20 - v21 >= 0x10 ? 16 : v20 - v21;
        v20 -= v22;
        v23 = [OUTLINED_FUNCTION_24() getGlyphsInRange:v20 glyphs:? properties:? characterIndexes:? bidiLevels:?];
        if (v23)
        {
          break;
        }

LABEL_22:
        if (v21 >= v20)
        {
          return index;
        }
      }

      while ((*&v106[8 * v23 - 8] & 4) != 0)
      {
        if (!--v23)
        {
          goto LABEL_22;
        }
      }

      return v107[v23 - 1] + 1;
    }

    return index;
  }

  v25 = *(v4 + 128);
  v26 = v3 - v25;
  v27 = index - v25;
  v28 = MEMORY[0x1E6965618];
  if ((*(v4 + 224) & 0x10) == 0)
  {
    v29 = *(v4 + *MEMORY[0x1E6965618]);
    v30 = v29 + 4 * v26;
    v31 = *(v4 + 120);
    if (v26 < v31)
    {
      v32 = v29 + 4 * v31;
      v33 = v29 - 4 * v25 + 4 * v3 + 4;
      do
      {
        v34 = v33;
        if ((*(v33 - 4) & 1) == 0)
        {
          break;
        }

        if (v33 >= v32)
        {
          break;
        }

        v30 += 4;
        v33 += 4;
      }

      while ((*v34 & 0x40) == 0);
    }

    v101 = v29 + 4 * v27;
    v102 = v29 - 4;
    v103 = 4 * v3 - 4 * v25;
    do
    {
      v104 = v103;
      v105 = (v102 + v103);
      if (v102 + v103 < v101)
      {
        break;
      }

      v103 -= 4;
    }

    while ((*v105 & 1) != 0);
    return v25 + (v104 >> 2);
  }

  v35 = *(v4 + 88);
  v36 = v35 + 104 * *(v4 + 96);
  if (*(v4 + 200))
  {
    if (*(v4 + 208) > v27)
    {
      v37 = 0;
    }

    else
    {
      v35 = *(v4 + 200);
      v37 = *(v4 + 208);
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = MEMORY[0x1E69655F8];
  v39 = MEMORY[0x1E6965608];
  if (v35 >= v36)
  {
    v40 = 0;
    v42 = v36;
    goto LABEL_122;
  }

  v40 = 0;
  v41 = MEMORY[0x1E6965620];
  v42 = v36;
  v43 = v35;
  while (1)
  {
    if (v27 >= v37 && v27 < v43[2] + v37)
    {
      if (v26 >= *(v4 + 136))
      {
        v35 = v43;
        goto LABEL_122;
      }

      *(v4 + 200) = v43;
      *(v4 + 208) = v37;
      v35 = v43;
    }

    v44 = v43[2] + v37;
    if (v26 < v44)
    {
      break;
    }

LABEL_118:
    v43 += 13;
    v37 = v44;
    if (v43 >= v36)
    {
      goto LABEL_122;
    }
  }

  v45 = v43[3];
  v46 = *(v4 + *v38);
  v47 = (v46 + 8 * v45);
  if (v46)
  {
    v48 = (v46 + 8 * v45);
  }

  else
  {
    v48 = 0;
  }

  if (v37 > v26)
  {
    v49 = 0;
    v50 = *v28;
    goto LABEL_103;
  }

  if ((v43 + 13) >= v36)
  {
    v51 = (v4 + *v39);
  }

  else
  {
    v51 = v43 + 16;
  }

  v52 = *(v4 + *v41);
  v53 = (v52 + 8 * v45);
  v54 = v52 + 8 * *v51;
  v55 = *(v4 + 224);
  if ((v55 & 0x20) != 0)
  {
    v49 = 0;
  }

  else
  {
    if (!v48)
    {
      v49 = 0;
LABEL_67:
      v60 = v54 - 8 * v49 - 8;
      if (v53 <= v60)
      {
        v61 = v53;
        do
        {
          v62 = &v61[(v60 - v61) >> 4];
          if (v26 >= *v62)
          {
            if (v26 <= *v62)
            {
              v48 = 0;
              v53 = v62;
              goto LABEL_75;
            }

            v61 = v62 + 1;
          }

          else
          {
            v60 = (v62 - 1);
          }
        }

        while (v61 <= v60);
      }

      v48 = 0;
      goto LABEL_75;
    }

    if (*(v4 + 96) == 1)
    {
      v56 = *(v4 + *v39);
      if (v56 >= 1001)
      {
        if ((v55 & 0x40) == 0)
        {
          v57 = v46 + 8 * v56;
          v58 = *(v4 + 216);
          if (v47 < v57 - 8 * v58)
          {
            do
            {
              v59 = *v47++;
              v58 += v59;
              *(v4 + 216) = v58;
            }

            while (v47 < v57 - 8 * v58);
            v55 = *(v4 + 224);
          }

          *(v4 + 224) = v55 | 0x40;
        }

        v49 = *(v4 + 216);
        goto LABEL_67;
      }
    }

    v49 = 0;
    v48 = v47;
  }

LABEL_75:
  if (v53 >= v54 - 8 * v49)
  {
    return v3;
  }

  v63 = v53;
  while (*v53 < v26)
  {
    if (v48)
    {
      v64 = *v48++;
      v49 += v64;
    }

    ++v53;
    ++v63;
    if (v53 >= v54 - 8 * v49)
    {
      return v3;
    }
  }

  if (*v53 != v26)
  {
    return v3;
  }

  v65 = v63 - *(v4 + *v41);
  v45 = v65 >> 3;
  v66 = *(v4 + *v38);
  if (v48)
  {
    v67 = 1;
  }

  else
  {
    v67 = v66 == 0;
  }

  v68 = (v65 + v66);
  if (!v67)
  {
    v48 = v68;
  }

  v50 = *v28;
  if (v37 < v26)
  {
    v69 = *(v4 + v50);
    v70 = (v69 + 4 * v45);
    v71 = v69 + 4 * v43[3];
    if (v70 - 4) >= v71 && (*(v70 - 4))
    {
      v73 = v70 - 8;
      while (1)
      {
        v74 = v73;
        if (v48)
        {
          if (*--v48)
          {
            break;
          }
        }

        if (v73 >= v71)
        {
          v73 -= 4;
          if (*v74)
          {
            continue;
          }
        }

        v72 = v74 + 4;
        goto LABEL_100;
      }

      v72 = v73 + 8;
    }

    else
    {
      v72 = v70;
    }

LABEL_100:
    v76 = v70 - v72;
    v3 -= v76 >> 2;
    v40 += v76 >> 2;
    if (v72 != v71)
    {
      v35 = v43;
    }
  }

  v42 = v43;
LABEL_103:
  if ((v43 + 13) >= v36)
  {
    v77 = (v4 + *v39);
  }

  else
  {
    v77 = v43 + 16;
  }

  v78 = *(v4 + v50);
  v79 = v78 + 4 * v45;
  v80 = v78 + 4 * *v77 - 4 * v49;
  if (v79 >= v80)
  {
    v83 = v79;
LABEL_117:
    v40 += (v83 - v79) >> 2;
    v44 = v43[2] + v37;
    goto LABEL_118;
  }

  v81 = 0;
  while ((*(v79 + v81) & 1) != 0)
  {
    v82 = (v79 + v81 + 4);
    if (v82 < v80 && (*v82 & 0x40) != 0)
    {
      break;
    }

    if (v48)
    {
      if (*v48 > 0)
      {
        break;
      }

      ++v48;
    }

    v81 += 4;
    v83 = v79 + v81;
    if (v79 + v81 >= v80)
    {
      goto LABEL_117;
    }
  }

  v40 += v81 >> 2;
  do
  {
LABEL_122:
    if (v42 - 104 < v35)
    {
      break;
    }

    v84 = (v42 >= v36 ? v4 + *v39 : v42 + 24);
    v85 = *(v4 + *v28);
    v86 = *(v42 - 80);
    v87 = (v85 + 4 * v86);
    v88 = *v84;
    v89 = v85 + 4 * *v84;
    if (v86 >= v88)
    {
      v90 = 0;
    }

    else
    {
      v90 = 0;
      v91 = *(v4 + *v38);
      v92 = v91 + 8 * v86;
      v93 = v91 ? v92 : 0;
      v94 = v87 + 4;
      do
      {
        if (v90 || (v90 = v94 - 4, (*(v94 - 4) & 1) == 0) || v94 < v89 && (*v94 & 0x40) != 0)
        {
          v90 = 0;
        }

        if (v93)
        {
          v96 = *v93++;
          v95 = v96;
          v97 = v96 <= 0;
          v98 = v96 > 0 ? -v95 : 0;
          v89 += 4 * v98;
          if (!v97)
          {
            v90 = 0;
          }
        }

        v99 = v94 >= v89;
        v94 += 4;
      }

      while (!v99);
    }

    v100 = (v89 - v90) >> 2;
    if (!v90)
    {
      v100 = 0;
    }

    v40 += v100;
    v3 -= v100;
    v42 -= 104;
  }

  while (v90 == v87);
  return v3;
}

@end