@interface NSLineFragmentRenderingContext
+ (id)allocWithZone:(_NSZone *)a3;
+ (void)initialize;
- (CGRect)imageBounds;
- (CGSize)sizeWithBehavior:(int64_t)a3 usesFontLeading:(BOOL)a4 baselineDelta:(double *)a5;
- (NSLineFragmentRenderingContext)initWithTextStorage:(id)a3 runs:(__CFArray *)a4 glyphOrigin:(double)a5 lineFragmentWidth:(double)a6 elasticWidth:(double)a7 usesScreenFonts:(BOOL)a8 isRTL:(BOOL)a9 applicationFrameworkContext:(int64_t)a10;
- (void)_setUsesSimpleTextEffects:(BOOL)a3;
- (void)dealloc;
- (void)drawAtPoint:(CGPoint)a3 inContext:(CGContext *)a4;
- (void)finalize;
- (void)getMaximumAscender:(double *)a3 minimumDescender:(double *)a4;
- (void)release;
- (void)setApplicationFrameworkContext:(int64_t)a3;
@end

@implementation NSLineFragmentRenderingContext

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    __NSImageBoundsOriginZero = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  }
}

- (CGRect)imageBounds
{
  v61[78] = *MEMORY[0x1E69E9840];
  v67 = **&MEMORY[0x1E696AA80];
  y = v67.origin.y;
  v52 = *MEMORY[0x1E696AA80];
  height = v67.size.height;
  width = v67.size.width;
  if (NSEqualRects(self->_imageBounds, *MEMORY[0x1E696AA80]))
  {
    numRuns = self->_numRuns;
    v4 = -1.0;
    if ((*&self->_flags & 4) == 0)
    {
      v4 = 1.0;
    }

    v54 = v4;
    v45 = self;
    if (numRuns >= 1)
    {
      runs = self->_runs;
      v46 = &runs[128 * numRuns];
      v6 = MEMORY[0x1E695EFD0];
      v53 = *(MEMORY[0x1E695EFD0] + 8);
      glyphs = self->_glyphs;
      advancements = self->_advancements;
      v9 = 0.0;
      v10 = v52;
      v11 = height;
      v57 = width;
      v58 = y;
      while (1)
      {
        v47 = v9;
        if (runs[120])
        {
          v31 = *(runs + 8);
          v33 = *(runs + 9);
          v32 = *(runs + 10);
          v34 = v9 + *(runs + 7);
          if ((__NSImageBoundsOriginZero & 1) != 0 || (v65.origin.x = v10, v65.size.width = v57, v65.origin.y = v58, v65.size.height = v11, v69.origin.y = y, v69.origin.x = v52, v69.size.height = height, v69.size.width = width, !NSEqualRects(v65, v69)))
          {
            v35 = v57 - (v34 - v10);
            if (v34 < v10)
            {
              v10 = v34;
            }

            else
            {
              v35 = v57;
            }

            if (v34 + v33 <= v10 + v35)
            {
              v36 = v35;
            }

            else
            {
              v36 = v35 + v34 + v33 - (v10 + v35);
            }

            v37 = v58;
            if (v31 < v58)
            {
              v11 = v11 - (v31 - v58);
              v37 = v31;
            }

            v57 = v36;
            v58 = v37;
            v38 = v37 + v11;
            if (v31 + v32 > v38)
            {
              v11 = v11 + v31 + v32 - v38;
            }
          }

          else
          {
            v11 = v32;
            v57 = v33;
            v58 = v31;
            v10 = v34;
          }
        }

        else
        {
          v12 = *(runs + 1);
          if (v12 >= 1)
          {
            v55 = *(runs + 12);
            v56 = *(runs + 11);
            v13 = *(runs + 14);
            v14 = v9 + *(runs + 13);
            v48 = runs;
            do
            {
              if (v12 >= 0x14)
              {
                v15 = 20;
              }

              else
              {
                v15 = v12;
              }

              [*(runs + 6) getBoundingRects:v60 forCGGlyphs:glyphs count:v15];
              v16 = __NSImageBoundsOriginZero;
              v17 = v61;
              v18 = v15;
              do
              {
                v62 = *(v17 - 2);
                v59.a = v56;
                v59.b = v53;
                v59.c = v55;
                *&v59.d = *(v6 + 24);
                v59.ty = *(v6 + 40);
                v63 = CGRectApplyAffineTransform(v62, &v59);
                v19 = v63.size.width;
                v20 = v63.size.height;
                v21 = v14 + v63.origin.x;
                v22 = v13 + v63.origin.y;
                if (v16)
                {
                  v16 = 1;
                }

                else
                {
                  v64.origin.x = v10;
                  v64.size.width = v57;
                  v64.origin.y = v58;
                  v64.size.height = v11;
                  v68.origin.y = y;
                  v68.origin.x = v52;
                  v68.size.height = height;
                  v68.size.width = width;
                  v23 = NSEqualRects(v64, v68);
                  v16 = __NSImageBoundsOriginZero;
                  if (v23)
                  {
                    v11 = v20;
                    v57 = v19;
                    v58 = v22;
                    v10 = v21;
                    goto LABEL_27;
                  }
                }

                v24 = v57 - (v21 - v10);
                if (v21 < v10)
                {
                  v10 = v21;
                }

                else
                {
                  v24 = v57;
                }

                if (v19 + v21 <= v10 + v24)
                {
                  v25 = v24;
                }

                else
                {
                  v25 = v24 + v19 + v21 - (v10 + v24);
                }

                v26 = v58;
                if (v22 < v58)
                {
                  v11 = v11 - (v22 - v58);
                  v26 = v22;
                }

                v57 = v25;
                v58 = v26;
                v27 = v26 + v11;
                if (v20 + v22 > v27)
                {
                  v11 = v11 + v20 + v22 - v27;
                }

LABEL_27:
                v28 = advancements->width;
                v29 = advancements->height;
                ++advancements;
                v14 = v14 + v28;
                v13 = v13 + v29 * v54;
                v17 += 4;
                --v18;
              }

              while (v18);
              glyphs += v15;
              v30 = v12 <= v15;
              v12 -= v15;
              runs = v48;
            }

            while (!v30);
          }
        }

        v9 = v47 + *(runs + 5);
        runs += 128;
        if (runs >= v46)
        {
          goto LABEL_48;
        }
      }
    }

    v11 = height;
    v10 = v52;
    v57 = width;
    v58 = y;
LABEL_48:
    leftControlWidth = v45->_leftControlWidth;
    rightControlWidth = v45->_rightControlWidth;
    x = v10 + v45->_leftSideDelta - leftControlWidth;
    v45->_imageBounds.origin.x = x;
    v45->_imageBounds.origin.y = v58;
    v40 = v57 + leftControlWidth + rightControlWidth;
    v45->_imageBounds.size.width = v40;
    v45->_imageBounds.size.height = v11;
  }

  else
  {
    x = self->_imageBounds.origin.x;
    v58 = self->_imageBounds.origin.y;
    v40 = self->_imageBounds.size.width;
    v11 = self->_imageBounds.size.height;
  }

  v43 = v58;
  v44 = v11;
  result.size.height = v44;
  result.size.width = v40;
  result.origin.y = v43;
  result.origin.x = x;
  return result;
}

- (void)release
{
  os_unfair_lock_lock_with_options();
  if ([(NSLineFragmentRenderingContext *)self retainCount]== 1 && (self->_textStorage, self->_textStorage = 0, v3 = __NSRenderingContextCacheNextIndex, __NSRenderingContextCacheNextIndex <= 2))
  {
    ++__NSRenderingContextCacheNextIndex;
    __NSRenderingContextCache[v3] = self;
    runs = self->_runs;
    numRuns = self->_numRuns;
    self->_runs = 0;
    os_unfair_lock_unlock(&__NSRenderingContextLock);
    if (runs)
    {
      if (numRuns >= 1)
      {
        v6 = &runs[16 * numRuns];
        v7 = runs;
        do
        {
          if ((v7[15] & 1) == 0)
          {
            CFRelease(v7[6]);
          }

          v8 = *v7;
          v7 += 16;
          CFRelease(v8);
        }

        while (v7 < v6);
      }

      NSZoneFree(0, runs);
    }
  }

  else
  {
    os_unfair_lock_unlock(&__NSRenderingContextLock);
    v9.receiver = self;
    v9.super_class = NSLineFragmentRenderingContext;
    [(NSLineFragmentRenderingContext *)&v9 release];
  }
}

+ (id)allocWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v5 = __NSRenderingContextCacheNextIndex;
  if (!__NSRenderingContextCacheNextIndex)
  {
    os_unfair_lock_unlock(&__NSRenderingContextLock);
LABEL_5:
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NSLineFragmentRenderingContext;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
  }

  --__NSRenderingContextCacheNextIndex;
  v6 = __NSRenderingContextCache[v5 - 1];
  os_unfair_lock_unlock(&__NSRenderingContextLock);
  if (!v6)
  {
    goto LABEL_5;
  }

  return v6;
}

- (NSLineFragmentRenderingContext)initWithTextStorage:(id)a3 runs:(__CFArray *)a4 glyphOrigin:(double)a5 lineFragmentWidth:(double)a6 elasticWidth:(double)a7 usesScreenFonts:(BOOL)a8 isRTL:(BOOL)a9 applicationFrameworkContext:(int64_t)a10
{
  v11 = a9;
  v15 = a4;
  Count = CFArrayGetCount(a4);
  if (!Count)
  {

    return 0;
  }

  v19 = Count;
  self->_rightControlWidth = 0.0;
  self->_appContext = a10;
  self->_leftControlWidth = 0.0;
  v20 = MEMORY[0x1E696AA80];
  self->_leftSideDelta = a5;
  self->_lineWidth = a6;
  v21 = *(v20 + 16);
  self->_imageBounds.origin = *v20;
  self->_imageBounds.size = v21;
  self->_elasticWidth = a7;
  self->_textStorage = a3;
  self->_flags = (*&self->_flags & 0xFFFFFFFE | v11);
  p_rightControlWidth = &self->_rightControlWidth;
  self->_flags = (*&self->_flags & 0xFFFFFF8F | (16 * (_NSTextScalingTypeForCurrentEnvironment() & 7)));
  if (v19 < 1)
  {
    v23 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, v22);
      v23 += CTRunGetGlyphCount(ValueAtIndex);
      ++v22;
    }

    while (v19 != v22);
  }

  runs = NSAllocateScannedUncollectable();
  self->_runs = runs;
  if (!runs)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@: Failed to allocate space for %ld runs and %ld glyphs", objc_opt_class(), v19, v23}];
    runs = self->_runs;
  }

  bzero(runs, 18 * v23 + (v19 << 7));
  v26 = self->_runs;
  v27 = &v26[128 * v19];
  self->_glyphs = &v27[v23];
  self->_advancements = v27;
  v115 = &v27[v23];
  if (v19 < 1)
  {
    v108 = v26;
    goto LABEL_119;
  }

  v116 = v26;
  p_leftControlWidth = &self->_leftControlWidth;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v120 = 0;
  v121 = 0;
  v31 = *v20;
  v32 = *(v20 + 8);
  v33 = *(v20 + 16);
  v34 = *(v20 + 24);
  v117 = v19;
  v118 = v15;
  do
  {
    v35 = CFArrayGetValueAtIndex(v15, v29);
    StringRange = CTRunGetStringRange(v35);
    GlyphStorage = CTRunGetGlyphStorage();
    v38 = MEMORY[0x193AD3A70](GlyphStorage);
    v39 = v38;
    v40 = v38[11];
    v41 = v40 + 104 * v38[12];
    if (v40 > v28 || v28 >= v41 || v30 > StringRange.location)
    {
      v44 = v38[19];
      if (v44)
      {
        v30 = v38[16] - *(v44 + 128);
      }

      else
      {
        v30 = 0;
      }

      v28 = v38[11];
    }

    if (!v28 || v28 >= v41)
    {
      v45 = v30;
LABEL_29:
      NSLog(@"NSATSGlyphStorage inconsistency. Cannot find run storage for character range {%ld %ld} for CTRun %p. Ignoring the run...", StringRange.location, StringRange.length, v35);
      v28 = 0;
      v30 = v45;
      goto LABEL_30;
    }

    while (1)
    {
      v45 = *(v28 + 16) + v30;
      if (StringRange.location < v45)
      {
        break;
      }

      v28 += 104;
      v30 = v45;
      if (v28 >= v41)
      {
        goto LABEL_29;
      }
    }

    v47 = *v28;
    v48 = v116;
    *v116 = CFRetain(*v28);
    *(v116 + 1) = *(v28 + 32);
    *(v116 + 4) = *(v28 + 56);
    v122.location = 0;
    v122.length = 0;
    *(v116 + 5) = CTRunGetTypographicBounds(v35, v122, 0, 0, 0);
    v123.origin.x = v31;
    v123.origin.y = v32;
    v123.size.width = v33;
    v123.size.height = v34;
    if (!NSEqualRects(*(v28 + 64), v123))
    {
      *(v116 + 30) |= 1u;
      v55 = *(v28 + 64);
      *(v116 + 72) = *(v28 + 80);
      *(v116 + 56) = v55;
      *(v116 + 8) = *(*(v39 + *MEMORY[0x1E6965600]) + 16 * v120 + 8) + *(v116 + 8);
      *(v116 + 6) = [v47 objectForKey:@"NSAttachment"];
      *(v116 + 12) = [v47 objectForKey:@"NSColor"];
      if ([*(v116 + 6) attachmentCell] && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v56 = -1;
      }

      else
      {
        v56 = *(v28 + 24);
      }

      v46 = v117;
      v15 = v118;
      *(v116 + 11) = v56;
      v121 = 0;
      v63 = v115;
      *p_rightControlWidth = 0.0;
      goto LABEL_68;
    }

    *(v116 + 6) = CFRetain(*(v28 + 8));
    *(v116 + 7) = [v47 objectForKey:@"NSColor"];
    *(v116 + 8) = [v47 objectForKey:@"NSStrokeColor"];
    *(v116 + 9) = [v47 objectForKey:@"NSShadow"];
    v49 = [v47 objectForKey:@"NSStrokeWidth"];
    if (v49)
    {
      v50 = v49;
      [*(v28 + 8) pointSize];
      v52 = v51 * 0.01;
      [v50 doubleValue];
      v54 = v52 * v53;
    }

    else
    {
      v54 = 0.0;
    }

    v48 = v116;
    *(v116 + 10) = v54;
    v57 = [v47 objectForKey:@"NSExpansion"];
    if (v57)
    {
      [v57 doubleValue];
      v59 = exp(v58);
    }

    else
    {
      v59 = 1.0;
    }

    *(v116 + 11) = v59;
    v60 = [v47 objectForKey:@"NSObliqueness"];
    if (v60)
    {
      [v60 doubleValue];
      v62 = -v61;
    }

    else
    {
      v62 = 0.0;
    }

    v63 = v115;
    *(v116 + 12) = v62;
    CTRunGetInitialAdvance();
    *(v116 + 13) = v64;
    *(v116 + 14) = v65;
    if ((*(v28 + 96) & 4) != 0)
    {
      v76 = v121;
      if (v121 >= 1)
      {
        v77 = (*(v39 + *MEMORY[0x1E6965610]) + 2 * v120);
        v78 = &v77[v121];
        v79 = (*(v39 + *MEMORY[0x1E6965618]) + 4 * v120);
        v80 = (*(v39 + *MEMORY[0x1E6965600]) + 16 * v120 + 8);
        v46 = v117;
        v15 = v118;
        do
        {
          v81 = (*v79 >> 5) & 1;
          if (!*v77)
          {
            v81 = 1;
          }

          if (v81 == 1 && (*v79 & 0x10000) == 0)
          {
            v121 = --v76;
          }

          else
          {
            *v63++ = *v77;
            v83 = *v80;
            if (*v80 != 0.0)
            {
              *&self->_flags |= 2u;
              v83 = *v80;
            }

            v27->width = *(v80 - 1);
            v27->height = -v83;
            ++v27;
          }

          ++v77;
          ++v79;
          v80 += 2;
        }

        while (v77 < v78);
        goto LABEL_68;
      }

      goto LABEL_114;
    }

    v66 = v120;
    v67 = (*(v39 + *MEMORY[0x1E6965610]) + 2 * v120);
    if ((v39[28] & 8) != 0)
    {
      *p_rightControlWidth = 0.0;
      if (v121 == 1)
      {
        if (!*v67)
        {
          characters = 8230;
          v48 = v116;
          CTFontGetGlyphsForCharacters(*(v116 + 6), &characters, v115, 1);
          [*(v116 + 6) advancementForGlyph:*v115];
          v46 = v117;
          v15 = v118;
          if (v85 != 0.0)
          {
            *&self->_flags |= 2u;
          }

          v27->width = v84;
          v27->height = -v85;
          ++v27;
          v63 = v115 + 1;
          goto LABEL_68;
        }
      }

      else if (v121 < 1)
      {
        v88 = v115;
        v46 = v117;
        v15 = v118;
LABEL_85:
        v121 = v88 - v115;
        v63 = v88;
        goto LABEL_86;
      }

      v86 = &v67[v121];
      v87 = (*(v39 + *MEMORY[0x1E6965600]) + 16 * v66 + 8);
      v88 = v115;
      v46 = v117;
      v15 = v118;
      do
      {
        if (*v67)
        {
          *v88++ = *v67;
          v89 = *v87;
          if (*v87 != 0.0)
          {
            *&self->_flags |= 2u;
            v89 = *v87;
          }

          v27->width = *(v87 - 1);
          v27->height = -v89;
          ++v27;
        }

        ++v67;
        v87 += 2;
      }

      while (v67 < v86);
      goto LABEL_85;
    }

    v68 = v121;
    if (v121 < 1)
    {
      goto LABEL_115;
    }

    v69 = *(v39 + *MEMORY[0x1E6965618]) + 4 * v120;
    v70 = v69 + 4 * v121;
    v71 = (*(v39 + *MEMORY[0x1E6965600]) + 16 * v120);
    v72 = 0.0;
    v73 = v69;
    while ((*v73 & 0x10020) != 0 || !*v67)
    {
      v74 = *v71;
      v71 += 2;
      v72 = v72 + v74;
      ++v73;
      ++v67;
      if (v73 >= v70)
      {
        v75 = 0;
        goto LABEL_88;
      }
    }

    v75 = 1;
LABEL_88:
    if (v72 != 0.0)
    {
      v90 = p_leftControlWidth;
      if (self->_runs != v116)
      {
        *(v116 - 11) = v72 + *(v116 - 11);
        v90 = p_rightControlWidth;
      }

      *v90 = v72 + *v90;
      *(v116 + 5) = *(v116 + 5) - v72;
    }

    if ((v75 & 1) == 0)
    {
LABEL_115:
      CFRelease(*v116);
      *v116 = 0;
      v107 = *(v116 + 6);
      if (v107)
      {
        CFRelease(v107);
        *(v116 + 6) = 0;
      }

LABEL_30:
      v46 = v117;
      v15 = v118;
      goto LABEL_69;
    }

    v91 = v68 - ((v73 - v69) >> 2);
    v121 = v91;
    if (v73 < v70)
    {
      v92 = v73;
      v93 = v67;
      v94 = p_rightControlWidth;
      v112 = self;
      v113 = v70;
      do
      {
        if ((*v92 & 0x10020) != 0 || !*v67)
        {
          v95 = v63;
          v96 = v92 - v73;
          v97 = v96 >> 2;
          if (v96 >> 2 <= 0)
          {
            v101 = *v94;
          }

          else
          {
            v98 = &v71[2 * v97];
            do
            {
              v99 = -v71[1];
              v27->width = *v71;
              v27->height = v99;
              if (v71[1] != 0.0)
              {
                *&self->_flags |= 2u;
              }

              ++v27;
              v71 += 2;
            }

            while (v71 < v98);
            v100 = v93;
            memcpy(v95, v93, v96 >> 1);
            v93 = v100;
            self = v112;
            v70 = v113;
            v95 += v97;
            v94 = p_rightControlWidth;
            *p_rightControlWidth = 0.0;
            v101 = 0.0;
            v91 = v121;
          }

          v93 += 2 * v97 + 2;
          *v94 = *v71 + v101;
          v102 = *v71;
          v71 += 2;
          v27[-1].width = v102 + v27[-1].width;
          v73 = v92 + 1;
          v121 = --v91;
          v63 = v95;
        }

        ++v92;
        ++v67;
      }

      while (v92 < v70);
      v48 = v116;
      if (v73 < v92)
      {
        v103 = v92 - v73;
        if (v103 >= 1)
        {
          v104 = (v71 + 4 * v103);
          do
          {
            v105 = -v71[1];
            v27->width = *v71;
            v27->height = v105;
            if (v71[1] != 0.0)
            {
              *&self->_flags |= 2u;
            }

            ++v27;
            v71 += 2;
          }

          while (v71 < v104);
        }

        v106 = v103 >> 2;
        memcpy(v63, v93, v103 >> 1);
        v63 += v106;
        *p_rightControlWidth = 0.0;
      }

LABEL_114:
      v46 = v117;
      v15 = v118;
      goto LABEL_68;
    }

    v46 = v117;
    v15 = v118;
LABEL_86:
    v48 = v116;
LABEL_68:
    *(v48 + 1) = v121;
    v115 = v63;
    v116 = v48 + 128;
LABEL_69:
    ++v29;
  }

  while (v29 != v46);
  v108 = self->_runs;
  v26 = v116;
LABEL_119:
  self->_numRuns = (v26 - v108) >> 7;
  self->_leftSideDelta = self->_leftControlWidth + self->_leftSideDelta;
  flags = self->_flags;
  if ((*&flags & 2) != 0)
  {
    self->_flags = (*&flags | 4);
  }

  return self;
}

- (void)dealloc
{
  runs = self->_runs;
  if (runs)
  {
    numRuns = self->_numRuns;
    if (numRuns >= 1)
    {
      v5 = &runs[128 * numRuns];
      v6 = self->_runs;
      do
      {
        if ((v6[15] & 1) == 0)
        {
          CFRelease(v6[6]);
        }

        v7 = *v6;
        v6 += 16;
        CFRelease(v7);
      }

      while (v6 < v5);
    }

    NSZoneFree(0, runs);
  }

  v8.receiver = self;
  v8.super_class = NSLineFragmentRenderingContext;
  [(NSLineFragmentRenderingContext *)&v8 dealloc];
}

- (void)finalize
{
  runs = self->_runs;
  if (runs)
  {
    numRuns = self->_numRuns;
    if (numRuns >= 1)
    {
      v5 = &runs[128 * numRuns];
      v6 = self->_runs;
      do
      {
        if ((v6[15] & 1) == 0)
        {
          CFRelease(v6[6]);
        }

        v7 = *v6;
        v6 += 16;
        CFRelease(v7);
      }

      while (v6 < v5);
    }

    NSZoneFree(0, runs);
  }

  v8.receiver = self;
  v8.super_class = NSLineFragmentRenderingContext;
  [(NSLineFragmentRenderingContext *)&v8 finalize];
}

- (void)_setUsesSimpleTextEffects:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFF7 | v3);
}

- (void)drawAtPoint:(CGPoint)a3 inContext:(CGContext *)a4
{
  v4 = (MEMORY[0x1EEE9AC00])(self, a2, a4);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v11 = v10;
  v117 = *MEMORY[0x1E69E9840];
  v12 = -[objc_class graphicsContextForApplicationFrameworkContext:](+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider, "textGraphicsContextProviderClass"), "graphicsContextForApplicationFrameworkContext:", [v10 applicationFrameworkContext]);
  v13 = v11[1];
  v14 = v11[2];
  CGContextGetFontRenderingStyle();
  v108 = v11;
  v15 = [v11 applicationFrameworkContext];
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    v16 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", v15];
  }

  else
  {
    v16 = +[NSTextGraphicsContextProvider __defaultColorClass];
  }

  v104 = [(objc_class *)v16 blackColor];
  v17 = v11[3];
  v111 = v108[4];
  v101 = v108[20];
  if (v12)
  {
    v18 = [v12 isFlipped];
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v108 + 28);
  if ((v19 & 2) == 0 || v18 == (v108[14] & 4u) >> 2)
  {
    v102 = 0;
  }

  else
  {
    *(v108 + 28) = v19 ^ 4;
    v102 = 1;
  }

  v20 = v13 + (v14 << 7);
  v21 = *(MEMORY[0x1E695EFD0] + 8);
  v22 = *(v108 + 6);
  v23 = v9 + *(v108 + 5);
  v24 = 0.0;
  if (v22 == 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v23 + v22;
  }

  [v104 set];
  v109 = 0;
  v105 = 0;
  v26 = 0;
  v27 = 0;
  v106 = v13 + (v14 << 7);
  v103 = v12;
  while (v13 < v20)
  {
    v28 = v13;
    if (*(v13 + 120))
    {
      v37 = *(v13 + 56);
      v38 = *(v13 + 64);
      width = *(v13 + 72);
      height = *(v13 + 80);
      v41 = [*(v13 + 48) attachmentCell];
      if (v18)
      {
        v42 = -(v38 + height) - *(v13 + 32);
      }

      else
      {
        v42 = v38 + *(v13 + 32);
      }

      x = v23 + v37;
      y = v8 + v42;
      [*(v13 + 48) lineLayoutPadding];
      if (v45 != 0.0)
      {
        v46 = v45;
        v118.origin.x = x;
        v118.origin.y = y;
        v118.size.width = width;
        v118.size.height = height;
        v119 = NSInsetRect(v118, v46, 0.0);
        x = v119.origin.x;
        y = v119.origin.y;
        width = v119.size.width;
        height = v119.size.height;
      }

      if (v41)
      {
        if (*(v13 + 88) == -1)
        {
          [v41 drawWithFrame:0 inView:{x, y, width, height}];
        }

        else
        {
          [v41 drawWithFrame:0 inView:x characterIndex:{y, width, height}];
        }

        v26 = 0;
        v27 = 0;
        v24 = 0.0;
      }

      else
      {
        v47 = v26;
        v48 = v105;
        if (!v105)
        {
          v49 = v108[19];
          if (v49)
          {
            v48 = [v49 textContainer];
          }

          else
          {
            v48 = 0;
          }
        }

        v93 = *(v28 + 48);
        v94 = [v93 imageForBounds:v48 textContainer:*(v28 + 88) characterIndex:{x, y, width, height}];
        v95 = [v93 image];
        v105 = v48;
        if (v101 == 2)
        {
          v96 = v95;
          if (v94 == v95)
          {
            if ([v95 conformsToProtocol:&unk_1F01F0D38])
            {
              v97 = *v28;
              if ([v96 willProvideAdaptedImageForPresentation])
              {
                v94 = [v96 imageForBounds:v97 attributes:0 location:v48 textContainer:{x, y, width, height}];
              }
            }
          }
        }

        v98 = *(v28 + 96);
        if (v47 != v98)
        {
          if (v98)
          {
            v99 = *(v28 + 96);
          }

          else
          {
            v99 = v104;
          }

          [v99 set];
        }

        [v94 drawInRect:{x, y, width, height}];
        v26 = 0;
        v27 = 0;
        v24 = 0.0;
        v20 = v106;
      }

      goto LABEL_114;
    }

    if (*(v13 + 8) >= 1)
    {
      v29 = *(v13 + 72);
      v30 = *(v13 + 48);
      if ((v27 != v30) | v109 & 1)
      {
        CGContextSetFontRenderingStyle();
        [v30 applyToGraphicsContext:v12];
        v27 = v30;
      }

      v31 = *(v13 + 56);
      if (v26 != v31)
      {
        if (v31)
        {
          v32 = *(v28 + 56);
        }

        else
        {
          v32 = v104;
        }

        [v32 set];
        v26 = v31;
      }

      v33 = *(v28 + 64);
      if (v33)
      {
        [v33 setStroke];
        v26 = 0;
      }

      v34 = *(v28 + 80);
      if (v24 != v34)
      {
        if (v34 == 0.0)
        {
          v35 = kCGTextFill;
          v36 = 1.0;
        }

        else if (v34 < 0.0)
        {
          v36 = -v34;
          v35 = kCGTextFillStroke;
        }

        else
        {
          v35 = kCGTextStroke;
          v36 = *(v28 + 80);
        }

        CGContextSetTextDrawingMode(v6, v35);
        CGContextSetLineWidth(v6, v36);
        v24 = v34;
      }

      v50 = *(v28 + 88);
      if (v50 == 1.0 && *(v28 + 96) == 0.0)
      {
        v109 = 0;
        if (v29)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v18)
        {
          v51 = *(v28 + 96);
        }

        else
        {
          v51 = -*(v28 + 96);
        }

        CGContextGetTextMatrix(&t1, v6);
        t2.a = v50;
        t2.b = v21;
        t2.c = v51;
        *&t2.d = *(MEMORY[0x1E695EFD0] + 24);
        t2.ty = *(MEMORY[0x1E695EFD0] + 40);
        CGAffineTransformConcat(&v116, &t1, &t2);
        CGContextSetTextMatrix(v6, &v116);
        v109 = 1;
        if (v29)
        {
LABEL_53:
          CGContextSaveGState(v6);
          [v29 applyToGraphicsContext:v12];
        }
      }

      v107 = v29;
      v110 = v26;
      if (v102)
      {
        v52 = *(v28 + 8);
        if (v52 >= 1)
        {
          v53 = v111;
          v54 = v111 + 16 * v52;
          do
          {
            *(v53 + 8) = -*(v53 + 8);
            v53 += 16;
          }

          while (v53 < v54);
        }
      }

      v55 = *(v28 + 32) + *(v28 + 112);
      v56 = [__NSTextAppearanceEffectContext alloc];
      v57 = [*v28 objectForKey:@"NSTextEffect"];
      v59 = v108[17];
      v58 = v108[18];
      v60 = [v108 applicationFrameworkContext];
      LOBYTE(v100) = (v108[14] & 8) != 0;
      v61 = [(__NSTextAppearanceEffectContext *)v56 initWithTextEffectName:v57 catalog:v59 styleEffectConfiguration:v58 font:v27 color:v26 applicationFrameworkContext:v60 useSimplifiedEffect:v100];
      if ([v27 isVertical])
      {
        v62 = *(v28 + 8);
        v63 = *(v28 + 104);
        memset(&t1, 0, sizeof(t1));
        CGContextGetTextMatrix(&v116, v6);
        CGAffineTransformInvert(&t1, &v116);
        if (*(v28 + 8) >= 1)
        {
          v64 = 0;
          v65 = -v55;
          if (!v18)
          {
            v65 = v55;
          }

          v66 = v8 + v65;
          v67 = v23 + v63;
          if (v62 >= 256)
          {
            v68 = 256;
          }

          else
          {
            v68 = v62;
          }

          do
          {
            [v27 getVerticalOriginTranslations:&v116 forCGGlyphs:v17 + 2 * v64 count:v68];
            if (v68 >= 1)
            {
              v69 = *&t1.a;
              v70 = *&t1.c;
              v71 = (v111 + 8 + 16 * v64);
              v72 = &v116;
              v73 = v68;
              v74 = *&t1.tx;
              do
              {
                v75 = v72->f64[1];
                if (v18)
                {
                  v75 = -v75;
                }

                *v72 = vaddq_f64(v74, vmlaq_n_f64(vmulq_n_f64(v70, v66 + v75), v69, v67 + v72->f64[0]));
                ++v72;
                v67 = v67 + *(v71 - 1);
                v66 = v66 + *v71;
                v71 += 2;
                --v73;
              }

              while (v73);
            }

            if (v61)
            {
              [(__NSTextAppearanceEffectContext *)v61 drawGlyphs:v17 + 2 * v64 positions:&v116 count:v68 context:v6];
            }

            else
            {
              CTFontDrawGlyphsAtPositions();
            }

            v64 += v68;
            v76 = *(v28 + 8);
            if (v76 - v64 >= 256)
            {
              v68 = 256;
            }

            else
            {
              v68 = v76 - v64;
            }
          }

          while (v76 > v64);
        }

        v20 = v106;
        goto LABEL_92;
      }

      v20 = v106;
      if (v61)
      {
        v77 = *(v28 + 8);
        v78 = *(v28 + 104);
        memset(&t1, 0, sizeof(t1));
        CGContextGetTextMatrix(&v116, v6);
        CGAffineTransformInvert(&t1, &v116);
        if (*(v28 + 8) >= 1)
        {
          v81 = 0;
          v82 = -v55;
          if (!v18)
          {
            v82 = v55;
          }

          *&v79 = v8 + v82;
          *&v80 = v23 + v78;
          if (v77 >= 256)
          {
            v83 = 256;
          }

          else
          {
            v83 = v77;
          }

          do
          {
            if (v83 >= 1)
            {
              v84 = *&t1.a;
              v85 = *&t1.c;
              v86 = (v111 + 8 + 16 * v81);
              v87 = &v116;
              v88 = v83;
              v89 = *&t1.tx;
              do
              {
                *&v87->a = vaddq_f64(v89, vmlaq_n_f64(vmulq_n_f64(v85, *&v79), v84, *&v80));
                v87 = (v87 + 16);
                *&v80 = *&v80 + *(v86 - 1);
                *&v79 = *&v79 + *v86;
                v86 += 2;
                --v88;
              }

              while (v88);
            }

            v112 = v80;
            v113 = v79;
            [(__NSTextAppearanceEffectContext *)v61 drawGlyphs:v17 + 2 * v81 positions:&v116 count:v83 context:v6];
            v80 = v112;
            v79 = v113;
            v81 += v83;
            v90 = *(v28 + 8);
            if (v90 - v81 >= 256)
            {
              v83 = 256;
            }

            else
            {
              v83 = v90 - v81;
            }
          }

          while (v90 > v81);
        }

LABEL_92:
        v26 = v110;
      }

      else
      {
        v92 = -v55;
        if (!v18)
        {
          v92 = v55;
        }

        CGContextSetTextPosition(v6, v23 + *(v28 + 104), v8 + v92);
        if (v27)
        {
          CTFontDrawGlyphsWithAdvances();
        }
      }

      v12 = v103;
      if (v107)
      {
        CGContextRestoreGState(v6);
      }

      v91 = *(v28 + 8);
      v17 += 2 * v91;
      v111 += 16 * v91;
    }

LABEL_114:
    v13 = v28 + 128;
    v23 = v23 + *(v28 + 40);
    if (v25 > 0.0 && v23 >= v25)
    {
      break;
    }
  }

  CGContextSetFontRenderingStyle();
  if (v24 != 0.0)
  {
    CGContextSetTextDrawingMode(v6, kCGTextFill);
    CGContextSetLineWidth(v6, 1.0);
  }
}

- (CGSize)sizeWithBehavior:(int64_t)a3 usesFontLeading:(BOOL)a4 baselineDelta:(double *)a5
{
  v56 = a5;
  v5 = a4;
  v6 = a3;
  runs = self->_runs;
  numRuns = self->_numRuns;
  if (a3 < 0)
  {
    v6 = sizeWithBehavior_usesFontLeading_baselineDelta__defaultBehavior;
    if (sizeWithBehavior_usesFontLeading_baselineDelta__defaultBehavior == -1)
    {
      v6 = +[NSTypesetter defaultTypesetterBehavior];
      sizeWithBehavior_usesFontLeading_baselineDelta__defaultBehavior = v6;
    }
  }

  if (numRuns < 1)
  {
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v9 = &runs[16 * numRuns];
    v10 = (v6 < NSTypesetterBehavior_10_2) & ~v5;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      if (runs[15])
      {
        v14 = runs[10];
        v15 = v14 + runs[8];
      }

      else
      {
        v14 = runs[2];
        v15 = runs[3];
      }

      v16 = 0.0;
      if (v5)
      {
        v17 = *runs;
        if (!*runs)
        {
          goto LABEL_16;
        }

        v18 = [*runs objectForKey:{_NSOriginalFontAttributeName, 0.0}];
        if (!v18)
        {
          v18 = [v17 objectForKey:@"NSFont"];
        }

        if ([objc_msgSend(v17 objectForKey:{@"CTVerticalForms", v56), "BOOLValue"}])
        {
          v18 = [v18 verticalFont];
        }

        if (!v18)
        {
LABEL_16:
          v18 = NSDefaultFont();
        }

        [v18 _leading];
      }

      v19 = runs[4];
      if (v19 <= 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = runs[4];
      }

      v21 = v15 + v20;
      v22 = v19 < 0.0;
      if (v19 >= 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = runs[4];
      }

      v24 = v15 - v14 + v23;
      v25 = v19 + v24;
      if ((v10 & (v19 > 0.0)) == 0)
      {
        v25 = v24;
      }

      if (v24 < v13)
      {
        v13 = v25;
        v24 = v25;
      }

      v26 = v19 + v21;
      if ((v10 & v22) == 0)
      {
        v26 = v21;
      }

      if (v21 > v11)
      {
        v11 = v26;
      }

      v27 = v16 - v24;
      if (v27 > v12)
      {
        v12 = v27;
      }

      runs += 16;
    }

    while (runs < v9);
  }

  v28 = [*self->_runs objectForKey:{@"NSParagraphStyle", v56}];
  v29 = sizeWithBehavior_usesFontLeading_baselineDelta__defaultParagraphStyle;
  if (!sizeWithBehavior_usesFontLeading_baselineDelta__defaultParagraphStyle)
  {
    v29 = +[NSParagraphStyle defaultParagraphStyle];
    sizeWithBehavior_usesFontLeading_baselineDelta__defaultParagraphStyle = v29;
  }

  v30 = v11 - v13;
  v31 = 0.0;
  if (v28)
  {
    v32 = v29 == v28;
  }

  else
  {
    v32 = 1;
  }

  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  if (!v32)
  {
    [(NSParagraphStyle *)v28 lineHeightMultiple];
    v31 = v36;
    [(NSParagraphStyle *)v28 minimumLineHeight];
    v33 = v37;
    [(NSParagraphStyle *)v28 maximumLineHeight];
    v34 = v38;
    [(NSParagraphStyle *)v28 lineSpacing];
    v35 = v39;
  }

  v40 = v30 * v31;
  v41 = v11 + v30 * v31 - v30;
  if (v6 <= NSTypesetterBehavior_10_2 || v31 <= 0.0)
  {
    v40 = v11 - v13;
    v41 = v11;
  }

  if (v40 >= v33)
  {
    v42 = v40;
  }

  else
  {
    v42 = v33;
  }

  if (v40 >= v33)
  {
    v43 = v41;
  }

  else
  {
    v43 = v41 + v33 - v40;
  }

  v44 = v34 > 0.0;
  v45 = v42 > v34;
  v46 = v44 && v45;
  if (v44 && v45)
  {
    v47 = v43 - (v42 - v34);
  }

  else
  {
    v47 = v43;
  }

  if (v5 && v6 <= NSTypesetterBehavior_10_2)
  {
    v48 = *self->_runs;
    if (!v48)
    {
      goto LABEL_63;
    }

    v49 = [v48 objectForKey:_NSOriginalFontAttributeName];
    if (!v49)
    {
      v49 = [v48 objectForKey:@"NSFont"];
    }

    if ([objc_msgSend(v48 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
    {
      v49 = [v49 verticalFont];
    }

    if (!v49)
    {
LABEL_63:
      v49 = NSDefaultFont();
    }

    [v49 _leading];
  }

  else
  {
    v50 = v13 + v12;
  }

  if (v6 < NSTypesetterBehavior_10_2)
  {
    v51 = v57;
    if (v57)
    {
LABEL_71:
      *v51 = v47;
    }
  }

  else
  {
    v51 = v57;
    if (v35 < 0.0)
    {
      v50 = v35 + v50;
      if (v50 < 0.0)
      {
        v50 = 0.0;
      }
    }

    if (v57)
    {
      goto LABEL_71;
    }
  }

  if (v46)
  {
    v52 = v34;
  }

  else
  {
    v52 = v42;
  }

  if (v50 >= v35)
  {
    v53 = v50;
  }

  else
  {
    v53 = v35;
  }

  lineWidth = self->_lineWidth;
  v55 = v52 + v53;
  result.height = v55;
  result.width = lineWidth;
  return result;
}

- (void)getMaximumAscender:(double *)a3 minimumDescender:(double *)a4
{
  numRuns = self->_numRuns;
  if (numRuns < 1)
  {
    v11 = 0.0;
    v10 = 0.0;
  }

  else
  {
    runs = self->_runs;
    v8 = &runs[128 * numRuns];
    v9 = runs + 80;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v13 = v9 - 80;
      v12 = *(v9 - 10);
      if (!v12)
      {
        goto LABEL_9;
      }

      v14 = [*(v9 - 10) objectForKey:_NSOriginalFontAttributeName];
      if (!v14)
      {
        v14 = [v12 objectForKey:@"NSFont"];
      }

      if ([objc_msgSend(v12 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
      {
        v14 = [v14 verticalFont];
      }

      if (!v14)
      {
LABEL_9:
        v14 = NSDefaultFont();
      }

      [v14 boundingRectForFont];
      if (v9[40])
      {
        v17 = *(v9 - 2);
        if (v17 < v15)
        {
          v16 = v16 - (v17 - v15);
          v15 = *(v9 - 2);
        }

        v18 = v17 + *v9;
        if (v18 > v15 + v16)
        {
          v16 = v16 + v18 - (v15 + v16);
        }
      }

      v19 = v15 + *(v9 - 6);
      if (v19 < v10)
      {
        v10 = v15 + *(v9 - 6);
      }

      v20 = v16 + v19;
      if (v20 > v11)
      {
        v11 = v20;
      }

      v9 += 128;
    }

    while ((v13 + 128) < v8);
  }

  *a3 = ceil(v11);
  *a4 = floor(v10);
}

- (void)setApplicationFrameworkContext:(int64_t)a3
{
  if (!a3)
  {
    LOBYTE(a3) = _NSTextScalingTypeForCurrentEnvironment();
  }

  self->_flags = (*&self->_flags & 0xFFFFFF8F | (16 * (a3 & 7)));
}

@end