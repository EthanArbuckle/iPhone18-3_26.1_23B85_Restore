@interface PBTextReader
- (PBTextReader)init;
- (id)_readString;
- (id)readMessageType:(Class)a3 fromString:(id)a4;
- (objc_class)_readObject:(uint64_t)a1;
- (uint64_t)_rangeOfCharactersInSetAtCurrentPosition:(uint64_t)a1;
- (uint64_t)_readTag:(uint64_t *)a3 andType:;
- (uint64_t)_readValue;
- (void)_parseNumber:(void *)a1 maxValue:(unint64_t)a2 isSigned:(int)a3;
- (void)dealloc;
@end

@implementation PBTextReader

- (id)readMessageType:(Class)a3 fromString:(id)a4
{
  result = [a4 length];
  if (result)
  {
    v8 = [a4 copy];
    self->_string = v8;
    self->_pos = 0;
    self->_length = [(NSString *)v8 length];
    v9 = [(PBTextReader *)self _readObject:a3];

    self->_pos = 0;
    self->_length = 0;
    self->_string = 0;
    return v9;
  }

  return result;
}

- (objc_class)_readObject:(uint64_t)a1
{
  v130[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_190;
  }

  v2 = a2;
  v3 = a1;
  if (!a2)
  {
    v5 = 0;
    while (1)
    {
      while (1)
      {
LABEL_19:
        if (*(v3 + 32) >= *(v3 + 40))
        {
          goto LABEL_191;
        }

        v117 = 0;
        v118 = 0;
        [(PBTextReader *)v3 _readTag:&v117 andType:?];
        v15 = v118;
        if ([v118 length])
        {
          break;
        }

        v19 = 0;
LABEL_29:
        if (v117 > 2)
        {
          switch(v117)
          {
            case 3:
              v33 = [(PBTextReader *)v3 _readString];
              if (v33)
              {
                v129[0] = v33;
                if (v19)
                {
LABEL_56:
                  [*(v19 + 40) setArgument:v129 atIndex:2];
                  [*(v19 + 40) invokeWithTarget:v2];
                }
              }

              break;
            case 4:
              v22 = [(PBTextReader *)v3 _readValue];
              if ([v22 length])
              {
                if ([v22 characterAtIndex:0] == 48)
                {
                  goto LABEL_43;
                }

                v63 = [v22 rangeOfCharacterFromSet:{objc_msgSend(*(v3 + 24), "invertedSet")}];
                if (v19)
                {
                  v23 = *(v19 + 80);
                  if (v23 || v63 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_45;
                  }
                }

                else if (v63 == 0x7FFFFFFFFFFFFFFFLL)
                {
LABEL_189:
                  v86 = 0;
                  v100 = -67;
                  goto LABEL_185;
                }

                v64 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v22 options:0];
                if (![v64 length])
                {
LABEL_43:
                  if (!v19)
                  {
                    goto LABEL_189;
                  }

                  v23 = *(v19 + 80);
LABEL_45:
                  if (v23)
                  {
                    v24 = v19;
                    v25 = v22;
                    goto LABEL_187;
                  }

                  v86 = 0;
                  v87 = *(v19 + 32);
                  if (v87 > 0x63)
                  {
                    if (*(v19 + 32) <= 0x68u)
                    {
                      if (v87 == 100 || v87 == 102)
                      {
                        v86 = 0;
                      }
                    }

                    else
                    {
                      switch(v87)
                      {
                        case 'i':
                          v86 = 0x7FFFFFFFLL;
                          break;
                        case 's':
                          v86 = 0x7FFFLL;
                          break;
                        case 'q':
                          v86 = 0x7FFFFFFFFFFFFFFFLL;
                          break;
                      }
                    }
                  }

                  else if (*(v19 + 32) <= 0x50u)
                  {
                    if (v87 == 66)
                    {
                      v86 = 1;
                    }

                    else if (v87 == 73)
                    {
                      v86 = 0xFFFFFFFFLL;
                    }
                  }

                  else
                  {
                    switch(v87)
                    {
                      case 'Q':
                        v86 = -1;
                        break;
                      case 'S':
                        v86 = 0xFFFFLL;
                        break;
                      case 'c':
                        v86 = 127;
                        break;
                    }
                  }

                  v100 = v87 - 67;
LABEL_185:
                  v101 = [PBTextReader _parseNumber:v22 maxValue:v86 isSigned:(v100 > 0x30u) | ((0x1FFFFFFFEBFBEuLL >> v100) & 1)];
                  if (v101)
                  {
                    v25 = v101;
                    v24 = v19;
LABEL_187:
                    [(_PBProperty *)v24 setNumberValue:v25 onInstance:v2];
                  }
                }

                else
                {
                  v129[0] = v64;
                  if (v19)
                  {
                    goto LABEL_56;
                  }
                }
              }

              break;
            case 5:
              goto LABEL_191;
          }
        }

        else
        {
          switch(v117)
          {
            case 0:
              v26 = *(v3 + 32);
              v27 = *(a1 + 40);
              v28 = 20;
              if (v26 > 20)
              {
                v28 = v26;
              }

              if ((v27 - v26) >= 0x28)
              {
                v29 = 40;
              }

              else
              {
                v29 = v27 - v26;
              }

              v30 = [*(a1 + 48) substringWithRange:{v28 - 20, v29}];
              v31 = v118;
              v111 = [(NSString *)v118 camelCase];
              v115 = v19;
              v109 = v30;
              v110 = v31;
              v104 = v26;
              v105 = v27;
              v3 = a1;
              v32 = @"read unknown tag";
              goto LABEL_53;
            case 1:
              if (!v19)
              {
                goto LABEL_156;
              }

              if (*(v19 + 16))
              {
                if (*(v19 + 24))
                {
                  v20 = *(v19 + 24);
                }

                else
                {
                  v20 = *(v19 + 16);
                }

                v21 = [(PBTextReader *)v3 _readObject:v20];
                if (v21)
                {
                  v129[0] = v21;
                  goto LABEL_56;
                }

                v71 = *(v3 + 32);
                v72 = *(a1 + 40);
                v73 = 20;
                if (v71 > 20)
                {
                  v73 = v71;
                }

                if ((v72 - v71) >= 0x28)
                {
                  v74 = 40;
                }

                else
                {
                  v74 = v72 - v71;
                }

                v75 = [*(a1 + 48) substringWithRange:{v73 - 20, v74}];
                v76 = v118;
                v111 = [(NSString *)v118 camelCase];
                v115 = v19;
                v109 = v75;
                v110 = v76;
                v104 = v71;
                v105 = v72;
                v3 = a1;
                v32 = @"unable to parse object";
LABEL_53:
                NSLog(&cfstr_AtIITagForProp.isa, v32, v104, v105, v109, v110, v111, v115);
              }

              else
              {
                if (!*(v19 + 120))
                {
LABEL_156:
                  v88 = *(v3 + 32);
                  v89 = *(a1 + 40);
                  v90 = 20;
                  if (v88 > 20)
                  {
                    v90 = v88;
                  }

                  if ((v89 - v88) >= 0x28)
                  {
                    v91 = 40;
                  }

                  else
                  {
                    v91 = v89 - v88;
                  }

                  v92 = [*(a1 + 48) substringWithRange:{v90 - 20, v91}];
                  v93 = v118;
                  v111 = [(NSString *)v118 camelCase];
                  v115 = v19;
                  v109 = v92;
                  v110 = v93;
                  v104 = v88;
                  v105 = v89;
                  v3 = a1;
                  v32 = @"expected object/struct type";
                  goto LABEL_53;
                }

                v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
                while (*(v3 + 32) < *(v3 + 40))
                {
                  v129[0] = 0;
                  *&v124 = 0;
                  [(PBTextReader *)v3 _readTag:v129 andType:&v124];
                  if (v124 > 2)
                  {
                    switch(v124)
                    {
                      case 3:
                        v51 = [(PBTextReader *)v3 _readString];
                        goto LABEL_100;
                      case 4:
                        v51 = [(PBTextReader *)v3 _readValue];
                        v52 = [PBTextReader _parseNumber:v51 maxValue:0xFFFFFFFFFFFFFFFFLL isSigned:0];
                        if (!v52)
                        {
                          v52 = [PBTextReader _parseNumber:v51 maxValue:0x7FFFFFFFFFFFFFFFuLL isSigned:1];
                        }

                        if (v52)
                        {
                          v51 = v52;
                        }

LABEL_100:
                        v59 = v129[0];
                        if (v129[0] && v51)
                        {
                          v60 = [v44 objectForKeyedSubscript:v129[0]];
                          if (v60 && ((v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v62 = objc_alloc_init(MEMORY[0x1E695DF70]), [v62 addObject:v61], objc_msgSend(v44, "setObject:forKeyedSubscript:", v62, v59), (v61 = v62) != 0)))
                          {
                            [v61 addObject:v51];
                          }

                          else
                          {
                            [v44 setObject:v51 forKeyedSubscript:v59];
                          }
                        }

                        break;
                      case 5:
                        goto LABEL_130;
                    }
                  }

                  else if (v124)
                  {
                    if (v124 == 1)
                    {
                      v45 = *(v3 + 32);
                      v46 = *(a1 + 40);
                      v47 = 20;
                      if (v45 > 20)
                      {
                        v47 = v45;
                      }

                      if ((v46 - v45) >= 0x28)
                      {
                        v48 = 40;
                      }

                      else
                      {
                        v48 = v46 - v45;
                      }

                      v49 = [*(a1 + 48) substringWithRange:{v47 - 20, v48}];
                      v50 = v129[0];
                      v112 = [(NSString *)v129[0] camelCase];
                      v106 = v46;
                      v3 = a1;
                      NSLog(&cfstr_AtIITagForProp.isa, @"unexpected nested tag", v45, v106, v49, v50, v112, v19);
                    }

                    else if (v124 == 2)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v53 = *(v3 + 32);
                    v54 = *(a1 + 40);
                    v55 = 20;
                    if (v53 > 20)
                    {
                      v55 = v53;
                    }

                    if ((v54 - v53) >= 0x28)
                    {
                      v56 = 40;
                    }

                    else
                    {
                      v56 = v54 - v53;
                    }

                    v57 = [*(a1 + 48) substringWithRange:{v55 - 20, v56}];
                    v58 = v129[0];
                    v113 = [(NSString *)v129[0] camelCase];
                    v107 = v54;
                    v3 = a1;
                    NSLog(&cfstr_AtIITagForProp.isa, @"read unrecoginzed struct tag", v53, v107, v57, v58, v113, v19);
                  }
                }

LABEL_130:
                if (!v44)
                {
                  v94 = *(v3 + 32);
                  v95 = *(a1 + 40);
                  v96 = 20;
                  if (v94 > 20)
                  {
                    v96 = v94;
                  }

                  if ((v95 - v94) >= 0x28)
                  {
                    v97 = 40;
                  }

                  else
                  {
                    v97 = v95 - v94;
                  }

                  v98 = [*(a1 + 48) substringWithRange:{v96 - 20, v97}];
                  v99 = v118;
                  v111 = [(NSString *)v118 camelCase];
                  v115 = v19;
                  v109 = v98;
                  v110 = v99;
                  v104 = v94;
                  v105 = v95;
                  v3 = a1;
                  v32 = @"unable to parse struct";
                  goto LABEL_53;
                }

                if (*(v19 + 96) || (v77 = dlsym(0xFFFFFFFFFFFFFFFELL, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@FromDictionaryRepresentation", *(v19 + 104)), "UTF8String"]), (*(v19 + 96) = v77) != 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v130[0] = v44;
                    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:1];
                  }

                  v126 = 0u;
                  v127 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v78 = [v44 countByEnumeratingWithState:&v124 objects:v129 count:16];
                  if (v78)
                  {
                    v79 = v78;
                    v80 = *v125;
                    do
                    {
                      for (i = 0; i != v79; ++i)
                      {
                        if (*v125 != v80)
                        {
                          objc_enumerationMutation(v44);
                        }

                        v82 = *(*(&v124 + 1) + 8 * i);
                        v83 = *(v19 + 120);
                        if (v83)
                        {
                          v83 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v83];
                        }

                        (*(v19 + 96))(v82, [v83 mutableBytes]);
                        v84 = [v83 bytes];
                        v123 = v84;
                        if (*(v19 + 32) == 94)
                        {
                          if (-[NSString hasPrefix:](NSStringFromSelector([*(v19 + 40) selector]), "hasPrefix:", @"set"))
                          {
                            v85 = *(v19 + 40);
                            v84 = &v123;
                            goto LABEL_147;
                          }

                          v84 = v123;
                        }

                        v85 = *(v19 + 40);
LABEL_147:
                        [v85 setArgument:v84 atIndex:2];
                        [*(v19 + 40) invokeWithTarget:v2];
                      }

                      v79 = [v44 countByEnumeratingWithState:&v124 objects:v129 count:16];
                    }

                    while (v79);
                  }
                }

                v3 = a1;
              }

              break;
            case 2:
              goto LABEL_191;
          }
        }
      }

      if ([v15 length])
      {
        v16 = [(NSString *)v15 camelCase];
        v17 = [v5 objectForKeyedSubscript:v16];
        if (v17 || (![v16 hasSuffix:@"s"] ? (v18 = objc_msgSend(v16, "stringByAppendingString:", @"s")) : (v18 = objc_msgSend(v16, "substringToIndex:", objc_msgSend(v16, "length") - 1)), (v17 = objc_msgSend(v5, "objectForKeyedSubscript:", v18)) != 0))
        {
          v19 = v17;
          goto LABEL_29;
        }

        v15 = v118;
      }

      v34 = v3;
      v35 = *(v3 + 32);
      v36 = *(v3 + 40);
      v37 = *(v34 + 48);
      v38 = 20;
      if (v35 > 20)
      {
        v38 = v35;
      }

      if ((v36 - v35) >= 0x28)
      {
        v39 = 40;
      }

      else
      {
        v39 = v36 - v35;
      }

      v40 = [v37 substringWithRange:{v38 - 20, v39}];
      v41 = [(NSString *)v15 camelCase];
      NSLog(&cfstr_AtIITagForProp.isa, @"read unrecoginzed tag", v35, v36, v40, v15, v41, 0);
      v42 = 0;
      if (v117 <= 2)
      {
        if (v117 == 1)
        {
          v43 = a1;
          v42 = [(PBTextReader *)a1 _readObject:?];
        }

        else
        {
          v43 = a1;
          if (v117 == 2)
          {
            goto LABEL_191;
          }
        }
      }

      else if (v117 == 3)
      {
        v43 = a1;
        v42 = [(PBTextReader *)a1 _readString];
      }

      else
      {
        v43 = a1;
        if (v117 == 4)
        {
          v42 = [(PBTextReader *)a1 _readValue];
        }
      }

      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"     value: %@", v42];
      v66 = *(v43 + 32);
      v67 = *(a1 + 40);
      v68 = 20;
      if (v66 > 20)
      {
        v68 = *(v43 + 32);
      }

      if ((v67 - v66) >= 0x28)
      {
        v69 = 40;
      }

      else
      {
        v69 = v67 - v66;
      }

      v70 = [*(a1 + 48) substringWithRange:{v68 - 20, v69}];
      v114 = [(NSString *)v15 camelCase];
      v108 = v67;
      v3 = a1;
      NSLog(&cfstr_AtIITagForProp.isa, v65, v66, v108, v70, v15, v114, 0);
    }
  }

  v4 = NSStringFromClass(a2);
  v5 = [*(v3 + 56) objectForKeyedSubscript:v4];
  if (v5)
  {
LABEL_17:
    v2 = objc_alloc_init(v2);
    goto LABEL_19;
  }

  v6 = [_PBProperty getValidPropertiesForType:v2 withCache:*(v3 + 64)];
  if (v6)
  {
    v7 = v6;
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v119 objects:v128 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v120;
      do
      {
        v11 = 0;
        do
        {
          if (*v120 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v119 + 1) + 8 * v11);
          if (v12)
          {
            v13 = *(v12 + 8);
          }

          else
          {
            v13 = 0;
          }

          [v5 setObject:v12 forKeyedSubscript:v13];
          ++v11;
        }

        while (v9 != v11);
        v14 = [v7 countByEnumeratingWithState:&v119 objects:v128 count:16];
        v9 = v14;
      }

      while (v14);
    }

    v3 = a1;
    [*(a1 + 56) setObject:v5 forKeyedSubscript:v4];
    goto LABEL_17;
  }

LABEL_190:
  v2 = 0;
LABEL_191:
  v102 = *MEMORY[0x1E69E9840];
  return v2;
}

- (uint64_t)_readTag:(uint64_t *)a3 andType:
{
  v6 = [(PBTextReader *)a1 _rangeOfCharactersInSetAtCurrentPosition:?];
  if (v6 == *(a1 + 32))
  {
    *(a1 + 32) = v6 + v7;
  }

  result = [(PBTextReader *)a1 _rangeOfCharactersInSetAtCurrentPosition:?];
  v10 = result;
  if (result == *(a1 + 32) && v9 != 0)
  {
    *(a1 + 32) = result + v9;
    result = [*(a1 + 48) substringWithRange:{result, v9 - (objc_msgSend(*(a1 + 48), "characterAtIndex:", result + v9 - 1) == 58)}];
    *a2 = result;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [(PBTextReader *)a1 _rangeOfCharactersInSetAtCurrentPosition:?];
    if (result == 0x7FFFFFFFFFFFFFFFLL || result == *(a1 + 32))
    {
      if (v12)
      {
        *(a1 + 32) = result + v12;
      }
    }
  }

  if (*(a1 + 32) >= *(a1 + 40))
  {
    v14 = 5;
LABEL_19:
    *a3 = v14;
    return result;
  }

  result = [*(a1 + 48) characterAtIndex:?];
  if (result == 34)
  {
    v14 = 3;
    goto LABEL_19;
  }

  if (result == 125)
  {
    v13 = 2;
    goto LABEL_21;
  }

  if (result != 123)
  {
    v14 = 4;
    goto LABEL_19;
  }

  v13 = 1;
LABEL_21:
  *a3 = v13;
  ++*(a1 + 32);
  return result;
}

- (id)_readString
{
  if ([*(a1 + 48) characterAtIndex:*(a1 + 32)] != 34)
  {
    return 0;
  }

  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = [MEMORY[0x1E696AD50] indexSet];
  while (1)
  {
    v4 = *(a1 + 40);
    if (v2 >= v4)
    {
      break;
    }

    v5 = [*(a1 + 48) characterAtIndex:v2];
    if (v5 == 92)
    {
      if (v2 + 3 >= *(a1 + 40))
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = v2 + 1;
        if ([*(a1 + 48) characterAtIndex:v2 + 1] - 48 <= 9)
        {
          [v3 addIndexesInRange:{v2 - *(a1 + 32), 4}];
        }
      }
    }

    else
    {
      if (v5 == 34)
      {
        ++v2;
        v4 = *(a1 + 40);
        break;
      }

      v6 = v2;
    }

    v2 = v6 + 1;
  }

  if (v2 >= v4)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = v2 + 1;
  v8 = [*(a1 + 48) substringWithRange:?];
  if ([v3 count])
  {
    v9 = [v8 mutableCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __27__PBTextReader__readString__block_invoke;
    v11[3] = &unk_1E833D548;
    v11[4] = v9;
    [v3 enumerateRangesWithOptions:2 usingBlock:v11];
    return [v9 copy];
  }

  return v8;
}

- (uint64_t)_readValue
{
  v2 = -[PBTextReader _rangeOfCharactersInSetAtCurrentPosition:](a1, [*(a1 + 8) invertedSet]);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40) - v4;
  }

  else
  {
    v4 = v2;
  }

  *(a1 + 32) = v4 + v3;
  v5 = *(a1 + 48);

  return [v5 substringWithRange:?];
}

- (void)_parseNumber:(void *)a1 maxValue:(unint64_t)a2 isSigned:(int)a3
{
  v6 = [MEMORY[0x1E696AE88] scannerWithString:a1];
  if ([a1 characterAtIndex:0] == 48)
  {
    if ([a1 length] == 1)
    {
      return &unk_1F48F2158;
    }

    v8 = [a1 characterAtIndex:1];
    if (v8 != 46)
    {
      if (v8 == 120 || v8 == 88)
      {
        v13 = 0.0;
        v7 = 0;
        if (![v6 scanHexLongLong:&v13])
        {
          goto LABEL_11;
        }

        v9 = MEMORY[0x1E696AD98];
        v10 = *&v13;
      }

      else
      {
        v10 = strtoull([a1 UTF8String], 0, 8);
        v9 = MEMORY[0x1E696AD98];
      }

      v7 = [v9 numberWithUnsignedLongLong:v10];
LABEL_11:
      if (v7)
      {
        goto LABEL_25;
      }
    }
  }

  if ([a1 isEqualToString:@"true"])
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    if (([a1 isEqualToString:@"false"] & 1) == 0)
    {
      if ([a1 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (a3)
        {
          v13 = 0.0;
          v7 = 0;
          if (![v6 scanLongLong:&v13])
          {
            goto LABEL_25;
          }

          v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*&v13];
        }

        else
        {
          v13 = 0.0;
          v7 = 0;
          if (![v6 scanUnsignedLongLong:&v13])
          {
            goto LABEL_25;
          }

          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v13];
        }
      }

      else
      {
        v13 = 0.0;
        v7 = 0;
        if (![v6 scanDouble:&v13])
        {
          goto LABEL_25;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      }

      v7 = v11;
      goto LABEL_25;
    }

    v7 = MEMORY[0x1E695E110];
  }

LABEL_25:
  if (a2 && [v7 unsignedLongLongValue] > a2)
  {
    return 0;
  }

  return v7;
}

- (uint64_t)_rangeOfCharactersInSetAtCurrentPosition:(uint64_t)a1
{
  v4 = [*(a1 + 48) rangeOfCharacterFromSet:a2 options:0 range:{*(a1 + 32), *(a1 + 40) - *(a1 + 32)}];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && [*(a1 + 48) rangeOfCharacterFromSet:objc_msgSend(a2 options:"invertedSet") range:{0, v4, *(a1 + 40) - v4}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(a1 + 40);
  }

  return v4;
}

uint64_t __27__PBTextReader__readString__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 2;
  v7 = [MEMORY[0x1E695DF88] dataWithCapacity:a3 >> 2];
  if (a3 >= 4)
  {
    v8 = a2 + 1;
    do
    {
      v10 = strtol([objc_msgSend(*(a1 + 32) substringWithRange:{v8, 3), "UTF8String"}], 0, 8);
      [v7 appendBytes:&v10 length:1];
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  return [*(a1 + 32) replaceCharactersInRange:a2 withString:{a3, objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v7, 4)}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PBTextReader;
  [(PBTextReader *)&v3 dealloc];
}

- (PBTextReader)init
{
  v6.receiver = self;
  v6.super_class = PBTextReader;
  v2 = [(PBTextReader *)&v6 init];
  if (v2)
  {
    v2->_whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v3 = objc_alloc_init(MEMORY[0x1E696AD48]);
    [v3 addCharactersInRange:{97, 26}];
    [v3 addCharactersInRange:{65, 26}];
    [v3 addCharactersInRange:{48, 10}];
    [v3 addCharactersInString:@"_:"];
    v2->_tagNameCharacterSet = [v3 copy];
    v4 = [objc_msgSend(MEMORY[0x1E696AB08] "decimalDigitCharacterSet")];
    [v4 addCharactersInString:@"."];
    v2->_nonHexDigitCharacterSet = [v4 copy];
    v2->_objects = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_cachedObjectTypes = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

@end