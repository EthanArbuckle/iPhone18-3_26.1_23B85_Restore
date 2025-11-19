@interface PBTextWriter
- (BOOL)write:(id)a3;
- (PBTextWriter)init;
- (id)string;
- (uint64_t)_printLine:(uint64_t)a3 format:(uint64_t)a4;
- (uint64_t)_write:(uint64_t)a1;
- (uint64_t)_writeResult:(uint64_t)a3 forProperty:(uint64_t)a4 bracePrefix:(uint64_t)a5;
- (void)dealloc;
@end

@implementation PBTextWriter

- (BOOL)write:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self && !self->_newlinesPrinted)
  {
    [(NSMutableString *)self->_dest appendString:@"\n"];
    self->_newlinesPrinted = 1;
  }

  return [(PBTextWriter *)self _write:a3];
}

- (uint64_t)_write:(uint64_t)a1
{
  v82 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v73 = v3;
  if (!v2)
  {
    v6 = objc_opt_class();
    v7 = [_PBProperty getValidPropertiesForType:v6 withCache:*(a1 + 32)];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v75 objects:v81 count:16];
    if (v8)
    {
      v13 = v8;
      v14 = 0x1E833D000uLL;
      v15 = *v76;
      v16 = 0x1E696A000uLL;
      v74 = v7;
      do
      {
        v17 = 0;
        do
        {
          if (*v76 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v18 = *(*(&v75 + 1) + 8 * v17);
          if (v18)
          {
            v19 = *(v18 + 56);
            if (v19)
            {
              v20 = [objc_msgSend(*(v18 + 56) "methodSignature")];
              v21 = 0;
              v22 = *v20;
              if (v22 <= 98)
              {
                if (v22 > 75)
                {
                  switch(v22)
                  {
                    case 'L':
                      v80 = 0.0;
                      [v19 invokeWithTarget:a2];
                      [v19 getReturnValue:&v80];
                      v21 = [*(v16 + 3480) numberWithUnsignedLong:*&v80];
                      break;
                    case 'Q':
                      v80 = 0.0;
                      [v19 invokeWithTarget:a2];
                      [v19 getReturnValue:&v80];
                      v21 = [*(v16 + 3480) numberWithUnsignedLongLong:*&v80];
                      break;
                    case 'S':
                      LOWORD(v80) = 0;
                      [v19 invokeWithTarget:a2];
                      [v19 getReturnValue:&v80];
                      v21 = [*(v16 + 3480) numberWithUnsignedShort:LOWORD(v80)];
                      break;
                  }
                }

                else
                {
                  switch(v22)
                  {
                    case 'B':
                      LOBYTE(v80) = 0;
                      [v19 invokeWithTarget:a2];
                      [v19 getReturnValue:&v80];
                      v21 = [*(v16 + 3480) numberWithBool:LOBYTE(v80)];
                      break;
                    case 'C':
                      LOBYTE(v80) = 0;
                      [v19 invokeWithTarget:a2];
                      [v19 getReturnValue:&v80];
                      v21 = [*(v16 + 3480) numberWithUnsignedChar:LOBYTE(v80)];
                      break;
                    case 'I':
                      LODWORD(v80) = 0;
                      [v19 invokeWithTarget:a2];
                      [v19 getReturnValue:&v80];
                      v21 = [*(v16 + 3480) numberWithUnsignedInt:LODWORD(v80)];
                      break;
                  }
                }
              }

              else if (v22 <= 104)
              {
                switch(v22)
                {
                  case 'c':
                    LOBYTE(v80) = 0;
                    [v19 invokeWithTarget:a2];
                    [v19 getReturnValue:&v80];
                    v21 = [*(v16 + 3480) numberWithChar:SLOBYTE(v80)];
                    break;
                  case 'd':
                    v80 = 0.0;
                    [v19 invokeWithTarget:a2];
                    [v19 getReturnValue:&v80];
                    v21 = [*(v16 + 3480) numberWithDouble:v80];
                    break;
                  case 'f':
                    LODWORD(v80) = 0;
                    [v19 invokeWithTarget:a2];
                    [v19 getReturnValue:&v80];
                    LODWORD(v23) = LODWORD(v80);
                    v21 = [*(v16 + 3480) numberWithFloat:v23];
                    break;
                }
              }

              else if (v22 > 112)
              {
                if (v22 == 113)
                {
                  v80 = 0.0;
                  [v19 invokeWithTarget:a2];
                  [v19 getReturnValue:&v80];
                  v21 = [*(v16 + 3480) numberWithLongLong:*&v80];
                }

                else if (v22 == 115)
                {
                  LOWORD(v80) = 0;
                  [v19 invokeWithTarget:a2];
                  [v19 getReturnValue:&v80];
                  v21 = [*(v16 + 3480) numberWithShort:SLOWORD(v80)];
                }
              }

              else if (v22 == 105)
              {
                LODWORD(v80) = 0;
                [v19 invokeWithTarget:a2];
                [v19 getReturnValue:&v80];
                v21 = [*(v16 + 3480) numberWithInt:LODWORD(v80)];
              }

              else if (v22 == 108)
              {
                v80 = 0.0;
                [v19 invokeWithTarget:a2];
                [v19 getReturnValue:&v80];
                v21 = [*(v16 + 3480) numberWithLong:*&v80];
              }

              if (![v21 BOOLValue])
              {
                goto LABEL_129;
              }
            }

            else if (*(v18 + 64) && ![(_PBProperty *)*(*(&v75 + 1) + 8 * v17) getCountOfRepeatedValuesFromInstance:a2])
            {
              goto LABEL_129;
            }

            v24 = *(v18 + 32);
            if (v24 == 64)
            {
              v25 = *(v14 + 816);
              if ([*(v18 + 16) isSubclassOfClass:objc_opt_class()])
              {
                [(PBTextWriter *)a1 _printLine:@"%@: {" format:v26, v9, v10, v11, v12, *(v18 + 8)];
                ++*(a1 + 16);
                v80 = 0.0;
                [*(v18 + 48) invokeWithTarget:a2];
                [*(v18 + 48) getReturnValue:&v80];
                [(PBTextWriter *)a1 _write:?];
                --*(a1 + 16);
                [(PBTextWriter *)a1 _printLine:@"}" format:v27, v28, v29, v30, v31, v72];
                goto LABEL_129;
              }

              v24 = *(v18 + 32);
            }

            v32 = (v24 - 66);
            if (v32 > 0x39)
            {
LABEL_80:
              if (v24 != 64)
              {
                goto LABEL_129;
              }

              v80 = 0.0;
              [*(v18 + 48) invokeWithTarget:a2];
              v38 = *(v18 + 48);
LABEL_110:
              [v38 getReturnValue:&v80];
              v33 = v80;
LABEL_128:
              [(PBTextWriter *)a1 _writeResult:v18 forProperty:0 bracePrefix:v9, v10, v11, v12, v71];
              v16 = 0x1E696A000;
              goto LABEL_129;
            }

            if (((1 << (v24 - 66)) & 0x2849600028483) != 0)
            {
              v33 = 0.0;
              if (v24 <= 98)
              {
                if (v24 > 75)
                {
                  if (v24 == 76)
                  {
                    v80 = 0.0;
                    [*(v18 + 48) invokeWithTarget:a2];
                    [*(v18 + 48) getReturnValue:&v80];
                    v34 = *(v18 + 72);
                    if (!v34)
                    {
                      *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithUnsignedLong:*&v80]);
                      goto LABEL_127;
                    }

                    goto LABEL_112;
                  }

                  if (v24 == 81)
                  {
                    v80 = 0.0;
                    [*(v18 + 48) invokeWithTarget:a2];
                    [*(v18 + 48) getReturnValue:&v80];
                    v34 = *(v18 + 72);
                    if (!v34)
                    {
                      *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v80]);
                      goto LABEL_127;
                    }

                    goto LABEL_112;
                  }

                  if (v24 != 83)
                  {
                    goto LABEL_128;
                  }

                  LOWORD(v79) = 0;
                  [*(v18 + 48) invokeWithTarget:a2];
                  [*(v18 + 48) getReturnValue:&v79];
                  v36 = *(v18 + 72);
                  if (!v36)
                  {
                    *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithUnsignedShort:LOWORD(v79)]);
                    goto LABEL_127;
                  }
                }

                else
                {
                  switch(v24)
                  {
                    case 'B':
                      LOBYTE(v79) = 0;
                      [*(v18 + 48) invokeWithTarget:a2];
                      [*(v18 + 48) getReturnValue:&v79];
                      v36 = *(v18 + 72);
                      if (!v36)
                      {
                        *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithBool:LOBYTE(v79)]);
                        goto LABEL_127;
                      }

                      break;
                    case 'C':
                      LOBYTE(v79) = 0;
                      [*(v18 + 48) invokeWithTarget:a2];
                      [*(v18 + 48) getReturnValue:&v79];
                      v36 = *(v18 + 72);
                      if (!v36)
                      {
                        *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithUnsignedChar:LOBYTE(v79)]);
                        goto LABEL_127;
                      }

                      break;
                    case 'I':
                      LODWORD(v79) = 0;
                      [*(v18 + 48) invokeWithTarget:a2];
                      [*(v18 + 48) getReturnValue:&v79];
                      v36 = *(v18 + 72);
                      if (!v36)
                      {
                        *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(v79)]);
                        goto LABEL_127;
                      }

                      break;
                    default:
                      goto LABEL_128;
                  }
                }
              }

              else if (v24 <= 104)
              {
                switch(v24)
                {
                  case 'c':
                    LOBYTE(v79) = 0;
                    [*(v18 + 48) invokeWithTarget:a2];
                    [*(v18 + 48) getReturnValue:&v79];
                    v36 = *(v18 + 72);
                    if (!v36)
                    {
                      *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithChar:SLOBYTE(v79)]);
                      goto LABEL_127;
                    }

                    break;
                  case 'd':
                    v80 = 0.0;
                    [*(v18 + 48) invokeWithTarget:a2];
                    [*(v18 + 48) getReturnValue:&v80];
                    v34 = *(v18 + 72);
                    if (!v34)
                    {
                      *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithDouble:v80]);
                      goto LABEL_127;
                    }

                    goto LABEL_112;
                  case 'f':
                    LODWORD(v79) = 0;
                    [*(v18 + 48) invokeWithTarget:a2];
                    [*(v18 + 48) getReturnValue:&v79];
                    v36 = *(v18 + 72);
                    if (!v36)
                    {
                      LODWORD(v37) = LODWORD(v79);
                      *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithFloat:v37]);
                      goto LABEL_127;
                    }

                    break;
                  default:
                    goto LABEL_128;
                }
              }

              else if (v24 > 112)
              {
                if (v24 == 113)
                {
                  v80 = 0.0;
                  [*(v18 + 48) invokeWithTarget:a2];
                  [*(v18 + 48) getReturnValue:&v80];
                  v34 = *(v18 + 72);
                  if (!v34)
                  {
                    *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithLongLong:*&v80]);
                    goto LABEL_127;
                  }

                  goto LABEL_112;
                }

                if (v24 != 115)
                {
                  goto LABEL_128;
                }

                LOWORD(v79) = 0;
                [*(v18 + 48) invokeWithTarget:a2];
                [*(v18 + 48) getReturnValue:&v79];
                v36 = *(v18 + 72);
                if (!v36)
                {
                  *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithShort:SLOWORD(v79)]);
                  goto LABEL_127;
                }
              }

              else
              {
                if (v24 != 105)
                {
                  if (v24 != 108)
                  {
                    goto LABEL_128;
                  }

                  v80 = 0.0;
                  [*(v18 + 48) invokeWithTarget:a2];
                  [*(v18 + 48) getReturnValue:&v80];
                  v34 = *(v18 + 72);
                  if (!v34)
                  {
                    *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithLong:*&v80]);
LABEL_127:
                    v33 = *&v35;
                    goto LABEL_128;
                  }

LABEL_112:
                  [v34 setArgument:&v80 atIndex:2];
                  [*(v18 + 72) invokeWithTarget:a2];
                  v79 = 0.0;
                  [*(v18 + 72) getReturnValue:&v79];
                  v33 = v79;
                  goto LABEL_128;
                }

                LODWORD(v79) = 0;
                [*(v18 + 48) invokeWithTarget:a2];
                [*(v18 + 48) getReturnValue:&v79];
                v36 = *(v18 + 72);
                if (!v36)
                {
                  *&v35 = COERCE_DOUBLE([MEMORY[0x1E696AD98] numberWithInt:LODWORD(v79)]);
                  goto LABEL_127;
                }
              }

              [v36 setArgument:&v79 atIndex:2];
              [*(v18 + 72) invokeWithTarget:a2];
              v80 = 0.0;
              v38 = *(v18 + 72);
              goto LABEL_110;
            }

            if (v32 == 28)
            {
              if (*(v18 + 33) != 123)
              {
                v51 = [(_PBProperty *)v18 getCountOfRepeatedValuesFromInstance:a2];
                if (!v51)
                {
                  v33 = 0.0;
                  goto LABEL_128;
                }

                v52 = v51;
                v33 = 0.0;
                v53 = *(v18 + 33);
                if (v53 <= 0x62)
                {
                  if (*(v18 + 33) > 0x4Bu)
                  {
                    switch(v53)
                    {
                      case 'L':
                        v80 = 0.0;
                        [*(v18 + 48) invokeWithTarget:a2];
                        [*(v18 + 48) getReturnValue:&v80];
                        v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                        for (i = 0; i != v52; ++i)
                        {
                          [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", *(*&v80 + 8 * i))}];
                        }

                        break;
                      case 'Q':
                        v80 = 0.0;
                        [*(v18 + 48) invokeWithTarget:a2];
                        [*(v18 + 48) getReturnValue:&v80];
                        v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                        for (j = 0; j != v52; ++j)
                        {
                          [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(*&v80 + 8 * j))}];
                        }

                        break;
                      case 'S':
                        v80 = 0.0;
                        [*(v18 + 48) invokeWithTarget:a2];
                        [*(v18 + 48) getReturnValue:&v80];
                        v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                        for (k = 0; k != v52; ++k)
                        {
                          [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *(*&v80 + 2 * k))}];
                        }

                        break;
                      default:
                        goto LABEL_128;
                    }
                  }

                  else
                  {
                    switch(v53)
                    {
                      case 'B':
                        v80 = 0.0;
                        [*(v18 + 48) invokeWithTarget:a2];
                        [*(v18 + 48) getReturnValue:&v80];
                        v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                        for (m = 0; m != v52; ++m)
                        {
                          [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(*&v80 + m))}];
                        }

                        break;
                      case 'C':
                        v80 = 0.0;
                        [*(v18 + 48) invokeWithTarget:a2];
                        [*(v18 + 48) getReturnValue:&v80];
                        v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                        for (n = 0; n != v52; ++n)
                        {
                          [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", *(*&v80 + n))}];
                        }

                        break;
                      case 'I':
                        v80 = 0.0;
                        [*(v18 + 48) invokeWithTarget:a2];
                        [*(v18 + 48) getReturnValue:&v80];
                        v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                        for (ii = 0; ii != v52; ++ii)
                        {
                          [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(*&v80 + 4 * ii))}];
                        }

                        break;
                      default:
                        goto LABEL_128;
                    }
                  }
                }

                else if (*(v18 + 33) <= 0x68u)
                {
                  switch(v53)
                  {
                    case 'c':
                      v80 = 0.0;
                      [*(v18 + 48) invokeWithTarget:a2];
                      [*(v18 + 48) getReturnValue:&v80];
                      v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                      for (jj = 0; jj != v52; ++jj)
                      {
                        [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithChar:", *(*&v80 + jj))}];
                      }

                      break;
                    case 'd':
                      v80 = 0.0;
                      [*(v18 + 48) invokeWithTarget:a2];
                      [*(v18 + 48) getReturnValue:&v80];
                      v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                      for (kk = 0; kk != v52; ++kk)
                      {
                        [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", *(*&v80 + 8 * kk))}];
                      }

                      break;
                    case 'f':
                      v80 = 0.0;
                      [*(v18 + 48) invokeWithTarget:a2];
                      [*(v18 + 48) getReturnValue:&v80];
                      v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                      for (mm = 0; mm != v52; ++mm)
                      {
                        LODWORD(v56) = *(*&v80 + 4 * mm);
                        [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v56)}];
                      }

                      break;
                    default:
                      goto LABEL_128;
                  }
                }

                else if (*(v18 + 33) > 0x70u)
                {
                  if (v53 == 113)
                  {
                    v80 = 0.0;
                    [*(v18 + 48) invokeWithTarget:a2];
                    [*(v18 + 48) getReturnValue:&v80];
                    v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                    for (nn = 0; nn != v52; ++nn)
                    {
                      [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", *(*&v80 + 8 * nn))}];
                    }
                  }

                  else
                  {
                    if (v53 != 115)
                    {
                      goto LABEL_128;
                    }

                    v80 = 0.0;
                    [*(v18 + 48) invokeWithTarget:a2];
                    [*(v18 + 48) getReturnValue:&v80];
                    v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                    for (i1 = 0; i1 != v52; ++i1)
                    {
                      [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", *(*&v80 + 2 * i1))}];
                    }
                  }
                }

                else if (v53 == 105)
                {
                  v80 = 0.0;
                  [*(v18 + 48) invokeWithTarget:a2];
                  [*(v18 + 48) getReturnValue:&v80];
                  v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                  for (i2 = 0; i2 != v52; ++i2)
                  {
                    [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(*&v80 + 4 * i2))}];
                  }
                }

                else
                {
                  if (v53 != 108)
                  {
                    goto LABEL_128;
                  }

                  v80 = 0.0;
                  [*(v18 + 48) invokeWithTarget:a2];
                  [*(v18 + 48) getReturnValue:&v80];
                  v33 = COERCE_DOUBLE([objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v52]);
                  for (i3 = 0; i3 != v52; ++i3)
                  {
                    [*&v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", *(*&v80 + 8 * i3))}];
                  }
                }

                v14 = 0x1E833D000;
                v7 = v74;
                goto LABEL_128;
              }
            }

            else if (v32 != 57)
            {
              goto LABEL_80;
            }

            v39 = [*(v18 + 8) hasSuffix:@"s"];
            v40 = *(v18 + 8);
            if (v39)
            {
              v40 = [v40 substringToIndex:{objc_msgSend(*(v18 + 8), "length") - 1}];
            }

            if (*(v18 + 88) || (v71 = *(v18 + 104), v41 = dlsym(0xFFFFFFFFFFFFFFFELL, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@DictionaryRepresentation", "UTF8String"]), (*(v18 + 88) = v41) != 0))
            {
              if (*(v18 + 32) == 94)
              {
                v46 = [(_PBProperty *)v18 getCountOfRepeatedValuesFromInstance:a2];
                if (v46)
                {
                  v47 = v46;
                  v80 = 0.0;
                  [*(v18 + 48) invokeWithTarget:a2];
                  [*(v18 + 48) getReturnValue:&v80];
                  v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v47];
                  v49 = v80;
                  do
                  {
                    [v48 addObject:(*(v18 + 88))(COERCE_DOUBLE(*&v49))];
                    *&v49 = *&v80 + *(v18 + 120);
                    v80 = v49;
                    --v47;
                  }

                  while (v47);
                }

                else
                {
                  v48 = 0;
                }
              }

              else
              {
                v50 = *(v18 + 120);
                if (v50)
                {
                  v50 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v50];
                }

                [*(v18 + 48) invokeWithTarget:a2];
                [*(v18 + 48) getReturnValue:{objc_msgSend(v50, "mutableBytes")}];
                v48 = (*(v18 + 88))([v50 bytes]);
              }

              v16 = 0x1E696A000;
            }

            else
            {
              v48 = 0;
            }

            [(PBTextWriter *)a1 _writeResult:v48 forProperty:v18 bracePrefix:v40, v42, v43, v44, v45, v71];
            v14 = 0x1E833D000;
          }

LABEL_129:
          ++v17;
        }

        while (v17 != v13);
        v68 = [v7 countByEnumeratingWithState:&v75 objects:v81 count:16];
        v13 = v68;
      }

      while (v68);
    }
  }

  v69 = *MEMORY[0x1E69E9840];
  return v73;
}

- (uint64_t)_printLine:(uint64_t)a3 format:(uint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = result;
    *(result + 8) = 0;
    v23 = &a9;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 arguments:&a9];
    v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (*(v9 + 16) >= 1)
    {
      v12 = 0;
      do
      {
        [v11 appendString:@"    "];
        ++v12;
      }

      while (*(v9 + 16) > v12);
    }

    v13 = [v10 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    result = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (result)
    {
      v14 = result;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          [*(v9 + 24) appendString:v11];
          [*(v9 + 24) appendString:v17];
          [*(v9 + 24) appendString:@"\n"];
          ++v16;
        }

        while (v14 != v16);
        result = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
        v14 = result;
      }

      while (result);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_writeResult:(uint64_t)a3 forProperty:(uint64_t)a4 bracePrefix:(uint64_t)a5
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_33;
  }

  v12 = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3)
    {
      v18 = *(a3 + 8);
      if (*(a3 + 32) == 64)
      {
        result = [(PBTextWriter *)v12 _printLine:@"%@: %@" format:v13, v14, v15, v16, v17, *(a3 + 8)];
LABEL_33:
        v36 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    result = [a2 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (result)
    {
      v19 = result;
      v20 = *v40;
      do
      {
        v21 = 0;
        do
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(a2);
          }

          [(PBTextWriter *)v12 _writeResult:a3 forProperty:a4 bracePrefix:?];
        }

        while (v19 != v21);
        result = [a2 countByEnumeratingWithState:&v39 objects:v43 count:16];
        v19 = result;
      }

      while (result);
    }

    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      [(PBTextWriter *)v12 _printLine:@"%@ {" format:v22, v23, v24, v25, v26, a4];
      ++*(v12 + 16);
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __53__PBTextWriter__writeResult_forProperty_bracePrefix___block_invoke;
    v38[3] = &unk_1E833D4D8;
    v38[4] = v12;
    result = [a2 enumerateKeysAndObjectsUsingBlock:v38];
    if (!a4)
    {
      goto LABEL_33;
    }

    --*(v12 + 16);
    v27 = @"}";
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3)
    {
      v28 = *(a3 + 8);
    }

    else
    {
      v28 = 0;
    }

    v37 = v28;
    [a2 base64EncodedStringWithOptions:0];
    goto LABEL_31;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!a3)
  {
    v18 = 0;
    if (isKindOfClass)
    {
      goto LABEL_26;
    }

LABEL_30:
    v37 = v18;
LABEL_31:
    v27 = @"%@: %@";
LABEL_32:
    result = [(PBTextWriter *)v12 _printLine:v27 format:v13, v14, v15, v16, v17, v37];
    goto LABEL_33;
  }

  v18 = *(a3 + 8);
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  [(PBTextWriter *)v12 _printLine:@"%@: {" format:v13, v14, v15, v16, v17, v18];
  ++*(v12 + 16);
  [(PBTextWriter *)v12 _write:a2];
  --*(v12 + 16);
  v35 = *MEMORY[0x1E69E9840];

  return [(PBTextWriter *)v12 _printLine:@"}" format:v30, v31, v32, v33, v34, a9];
}

uint64_t __53__PBTextWriter__writeResult_forProperty_bracePrefix___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = @"%@: %@";
  }

  else
  {
    v9 = @"%@: %@";
  }

  return [(PBTextWriter *)*(a1 + 32) _printLine:v9 format:v4, v5, v6, v7, v8, a2];
}

- (id)string
{
  v2 = [(NSMutableString *)self->_dest copy];

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PBTextWriter;
  [(PBTextWriter *)&v3 dealloc];
}

- (PBTextWriter)init
{
  v4.receiver = self;
  v4.super_class = PBTextWriter;
  v2 = [(PBTextWriter *)&v4 init];
  if (v2)
  {
    v2->_dest = objc_alloc_init(MEMORY[0x1E696AD60]);
    v2->_newlinesPrinted = 1;
    v2->_cachedObjectTypes = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

@end