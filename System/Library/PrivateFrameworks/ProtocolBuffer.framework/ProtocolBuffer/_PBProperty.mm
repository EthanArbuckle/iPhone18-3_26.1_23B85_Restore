@interface _PBProperty
+ (id)getValidPropertiesForType:(void *)a3 withCache:;
- (id)_parseStructDefinition:(uint64_t)a1;
- (id)description;
- (uint64_t)getCountOfRepeatedValuesFromInstance:(uint64_t)a1;
- (void)dealloc;
- (void)setNumberValue:(uint64_t)a3 onInstance:;
@end

@implementation _PBProperty

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  subType = self->_subType;
  if (subType <= 0x5D)
  {
    if (self->_subType > 0x48u)
    {
      if (self->_subType > 0x50u)
      {
        if (subType == 81)
        {
          v7 = @"unsigned long long";
          goto LABEL_44;
        }

        if (subType == 83)
        {
          v7 = @"unsigned short";
          goto LABEL_44;
        }
      }

      else
      {
        if (subType == 73)
        {
          v7 = @"unsigned int";
          goto LABEL_44;
        }

        if (subType == 76)
        {
          v7 = @"unsigned long";
          goto LABEL_44;
        }
      }
    }

    else if (self->_subType > 0x41u)
    {
      if (subType == 66)
      {
        v7 = @"BOOL";
        goto LABEL_44;
      }

      if (subType == 67)
      {
        v7 = @"unsigned char";
        goto LABEL_44;
      }
    }

    else
    {
      if (!self->_subType)
      {
        goto LABEL_45;
      }

      if (subType == 64)
      {
        v7 = @"id";
        goto LABEL_44;
      }
    }

LABEL_43:
    v7 = @"?";
    goto LABEL_44;
  }

  if (self->_subType <= 0x68u)
  {
    if (self->_subType > 0x63u)
    {
      if (subType == 100)
      {
        v7 = @"double";
        goto LABEL_44;
      }

      if (subType == 102)
      {
        v7 = @"float";
        goto LABEL_44;
      }
    }

    else
    {
      if (subType == 94)
      {
        v7 = @"*";
        goto LABEL_44;
      }

      if (subType == 99)
      {
        v7 = @"char";
        goto LABEL_44;
      }
    }

    goto LABEL_43;
  }

  if (self->_subType <= 0x70u)
  {
    if (subType == 105)
    {
      v7 = @"int";
      goto LABEL_44;
    }

    if (subType == 108)
    {
      v7 = @"long";
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  switch(subType)
  {
    case 'q':
      v7 = @"long long";
      break;
    case 's':
      v7 = @"short";
      break;
    case '{':
      structName = self->_structName;
      if (!structName)
      {
        structName = @"?";
      }

      [v3 appendFormat:@"{%@=", structName];
      [v4 appendString:{-[NSArray componentsJoinedByString:](self->_structFields, "componentsJoinedByString:", &stru_1F48EFF70)}];
      v7 = @"}";
      break;
    default:
      goto LABEL_43;
  }

LABEL_44:
  [v4 appendString:v7];
LABEL_45:
  type = self->_type;
  if (type > 0x62)
  {
    if (self->_type > 0x6Bu)
    {
      if (self->_type > 0x72u)
      {
        if (type == 115)
        {
          v9 = @"short";
          goto LABEL_88;
        }

        if (type == 123)
        {
          v10 = self->_structName;
          if (!v10)
          {
            v10 = @"?";
          }

          [v4 appendFormat:@"{%@=", v10];
          [v4 appendString:{-[NSArray componentsJoinedByString:](self->_structFields, "componentsJoinedByString:", &stru_1F48EFF70)}];
          v9 = @"}";
          goto LABEL_88;
        }
      }

      else
      {
        if (type == 108)
        {
          v9 = @"long";
          goto LABEL_88;
        }

        if (type == 113)
        {
          v9 = @"long long";
          goto LABEL_88;
        }
      }
    }

    else if (self->_type > 0x65u)
    {
      if (type == 102)
      {
        v9 = @"float";
        goto LABEL_88;
      }

      if (type == 105)
      {
        v9 = @"int";
        goto LABEL_88;
      }
    }

    else
    {
      if (type == 99)
      {
        v9 = @"char";
        goto LABEL_88;
      }

      if (type == 100)
      {
        v9 = @"double";
        goto LABEL_88;
      }
    }

LABEL_87:
    v9 = @"?";
    goto LABEL_88;
  }

  if (self->_type > 0x4Bu)
  {
    if (self->_type > 0x52u)
    {
      if (type == 83)
      {
        v9 = @"unsigned short";
        goto LABEL_88;
      }

      if (type == 94)
      {
        v9 = @"*";
        goto LABEL_88;
      }
    }

    else
    {
      if (type == 76)
      {
        v9 = @"unsigned long";
        goto LABEL_88;
      }

      if (type == 81)
      {
        v9 = @"unsigned long long";
        goto LABEL_88;
      }
    }

    goto LABEL_87;
  }

  if (self->_type > 0x42u)
  {
    if (type == 67)
    {
      v9 = @"unsigned char";
      goto LABEL_88;
    }

    if (type == 73)
    {
      v9 = @"unsigned int";
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  if (type == 64)
  {
    subObjectType = self->_subObjectType;
    v12 = NSStringFromClass(self->_objectType);
    if (subObjectType)
    {
      [v4 appendFormat:@"%@<%@*>*", v12, NSStringFromClass(self->_subObjectType)];
    }

    else
    {
      [v4 appendFormat:@"%@*", v12, v15];
    }

    goto LABEL_89;
  }

  if (type != 66)
  {
    goto LABEL_87;
  }

  v9 = @"BOOL";
LABEL_88:
  [v4 appendString:v9];
LABEL_89:
  [v4 appendFormat:@" %@;", self->_name];
  if (self->_has)
  {
    v13 = @" (optional)";
  }

  else if (self->_count)
  {
    v13 = @" (repeated)";
  }

  else
  {
    v13 = @" (required)";
  }

  [v4 appendFormat:v13];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PBProperty;
  [(_PBProperty *)&v3 dealloc];
}

- (id)_parseStructDefinition:(uint64_t)a1
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "length")}];
  v5 = 1;
  if ([a2 length])
  {
    v27 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [a2 characterAtIndex:v6];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", v7];
      if (v7 <= 93)
      {
        break;
      }

      if ((v7 - 99) > 0x1A)
      {
        goto LABEL_23;
      }

      if (((1 << (v7 - 99)) & 0x1424B) != 0)
      {
        goto LABEL_11;
      }

      if (v7 == 123)
      {
        v13 = v6 + 1;
        if (v6 + 1 >= [a2 length])
        {
          ++v6;
        }

        else
        {
          ++v6;
          do
          {
            if ([a2 characterAtIndex:v6] == 61)
            {
              break;
            }

            ++v6;
          }

          while (v6 < [a2 length]);
          if (*(a1 + 104))
          {
            v14 = 1;
          }

          else
          {
            v14 = v6 == v13;
          }

          if (!v14)
          {
            *(a1 + 104) = [a2 substringWithRange:{v13, v6 - v13}];
          }
        }

        goto LABEL_12;
      }

      if (v7 != 125)
      {
LABEL_23:
        if (v7 != 94)
        {
          if (v7 != 98)
          {
            goto LABEL_29;
          }

          v9 = a1;
          v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
          for (i = v6 + 1; i < [a2 length]; ++i)
          {
            v12 = [a2 characterAtIndex:i];
            if ((v12 - 48) > 9)
            {
              break;
            }

            v6 = i;
            [v10 appendFormat:@"%C", v12];
          }

          v15 = [v10 intValue];
          v27 += v15;
          a1 = v9;
          if (!v15)
          {
            goto LABEL_12;
          }
        }

LABEL_11:
        [v4 addObject:v8];
      }

LABEL_12:
      if (++v6 >= [a2 length])
      {
        v5 = v27 == 0;
        goto LABEL_42;
      }
    }

    if (v7 > 72)
    {
      if (v7 > 80)
      {
        if (v7 != 81 && v7 != 83)
        {
          goto LABEL_29;
        }
      }

      else if (v7 != 73 && v7 != 76)
      {
        goto LABEL_29;
      }
    }

    else if ((v7 - 66) >= 2)
    {
      if (v7 == 61 || v7 == 63)
      {
        goto LABEL_12;
      }

LABEL_29:
      NSLog(&cfstr_IgnoringStruct.isa, v7, a2);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_42:
  if ([v4 count])
  {
    v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(a2, "length")}];
    [v16 appendString:@"{?="];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", 98];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v4);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          if (([v22 isEqualToString:v17] & 1) == 0)
          {
            [v16 appendString:v22];
          }
        }

        v19 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    if (!v5)
    {
      [v16 appendFormat:@"%c", 105];
    }

    [v16 appendString:@"}"];
    sizep = 0;
    NSGetSizeAndAlignment([v16 UTF8String], &sizep, 0);
    v23 = [v4 copy];
    v24 = sizep;
    *(a1 + 112) = v23;
    *(a1 + 120) = v24;
    if (*(a1 + 32) == 94)
    {
      [v16 insertString:@"^" atIndex:0];
    }
  }

  else
  {
    v16 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v16;
}

- (uint64_t)getCountOfRepeatedValuesFromInstance:(uint64_t)a1
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v4 = [objc_msgSend(*(a1 + 64) "methodSignature")];
    v5 = 0;
    v6 = *v4;
    if (v6 <= 98)
    {
      if (v6 > 75)
      {
        switch(v6)
        {
          case 'L':
            v9 = 0.0;
            [v2 invokeWithTarget:a2];
            [v2 getReturnValue:&v9];
            v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*&v9];
            break;
          case 'Q':
            v9 = 0.0;
            [v2 invokeWithTarget:a2];
            [v2 getReturnValue:&v9];
            v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v9];
            break;
          case 'S':
            LOWORD(v9) = 0;
            [v2 invokeWithTarget:a2];
            [v2 getReturnValue:&v9];
            v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:LOWORD(v9)];
            break;
        }
      }

      else
      {
        switch(v6)
        {
          case 'B':
            LOBYTE(v9) = 0;
            [v2 invokeWithTarget:a2];
            [v2 getReturnValue:&v9];
            v5 = [MEMORY[0x1E696AD98] numberWithBool:LOBYTE(v9)];
            break;
          case 'C':
            LOBYTE(v9) = 0;
            [v2 invokeWithTarget:a2];
            [v2 getReturnValue:&v9];
            v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:LOBYTE(v9)];
            break;
          case 'I':
            LODWORD(v9) = 0;
            [v2 invokeWithTarget:a2];
            [v2 getReturnValue:&v9];
            v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(v9)];
            break;
        }
      }
    }

    else if (v6 <= 104)
    {
      switch(v6)
      {
        case 'c':
          LOBYTE(v9) = 0;
          [v2 invokeWithTarget:a2];
          [v2 getReturnValue:&v9];
          v5 = [MEMORY[0x1E696AD98] numberWithChar:SLOBYTE(v9)];
          break;
        case 'd':
          v9 = 0.0;
          [v2 invokeWithTarget:a2];
          [v2 getReturnValue:&v9];
          v5 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
          break;
        case 'f':
          LODWORD(v9) = 0;
          [v2 invokeWithTarget:a2];
          [v2 getReturnValue:&v9];
          LODWORD(v8) = LODWORD(v9);
          v5 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
          break;
      }
    }

    else if (v6 > 112)
    {
      if (v6 == 113)
      {
        v9 = 0.0;
        [v2 invokeWithTarget:a2];
        [v2 getReturnValue:&v9];
        v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*&v9];
      }

      else if (v6 == 115)
      {
        LOWORD(v9) = 0;
        [v2 invokeWithTarget:a2];
        [v2 getReturnValue:&v9];
        v5 = [MEMORY[0x1E696AD98] numberWithShort:SLOWORD(v9)];
      }
    }

    else if (v6 == 105)
    {
      LODWORD(v9) = 0;
      [v2 invokeWithTarget:a2];
      [v2 getReturnValue:&v9];
      v5 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(v9)];
    }

    else if (v6 == 108)
    {
      v9 = 0.0;
      [v2 invokeWithTarget:a2];
      [v2 getReturnValue:&v9];
      v5 = [MEMORY[0x1E696AD98] numberWithLong:*&v9];
    }
  }

  else
  {
    v5 = 0;
  }

  return [v5 unsignedIntegerValue];
}

- (void)setNumberValue:(uint64_t)a3 onInstance:
{
  v18 = a2;
  if (a1)
  {
    v5 = *(a1 + 32);
    if (v5 == 94)
    {
      v5 = *(a1 + 33);
    }

    if (v5 <= 98)
    {
      if (v5 > 75)
      {
        switch(v5)
        {
          case 'L':
            v17 = 0;
            v6 = *(a1 + 80);
            if (!v6)
            {
              v7 = [a2 unsignedLongValue];
              goto LABEL_57;
            }

            break;
          case 'Q':
            v17 = 0;
            v6 = *(a1 + 80);
            if (!v6)
            {
              v7 = [a2 unsignedLongLongValue];
              goto LABEL_57;
            }

            break;
          case 'S':
            LOWORD(v17) = 0;
            v11 = *(a1 + 80);
            if (v11)
            {
LABEL_30:
              [v11 setArgument:&v18 atIndex:{2, v17}];
              [*(a1 + 80) invokeWithTarget:a3];
              [*(a1 + 80) getReturnValue:&v17];
LABEL_52:
              v16 = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
              *v16 = v17;
              goto LABEL_59;
            }

            v12 = [a2 unsignedShortValue];
LABEL_51:
            LOWORD(v17) = v12;
            goto LABEL_52;
          default:
            return;
        }

        goto LABEL_46;
      }

      switch(v5)
      {
        case 'B':
          LOBYTE(v17) = 0;
          v13 = *(a1 + 80);
          if (!v13)
          {
            v14 = [a2 BOOLValue];
            goto LABEL_54;
          }

          break;
        case 'C':
          LOBYTE(v17) = 0;
          v13 = *(a1 + 80);
          if (!v13)
          {
            v14 = [a2 unsignedCharValue];
            goto LABEL_54;
          }

          break;
        case 'I':
          LODWORD(v17) = 0;
          v8 = *(a1 + 80);
          if (!v8)
          {
            v9 = [a2 unsignedIntValue];
            goto LABEL_48;
          }

LABEL_32:
          [v8 setArgument:&v18 atIndex:{2, v17}];
          [*(a1 + 80) invokeWithTarget:a3];
          [*(a1 + 80) getReturnValue:&v17];
          goto LABEL_49;
        default:
          return;
      }
    }

    else
    {
      if (v5 > 104)
      {
        if (v5 <= 112)
        {
          if (v5 != 105)
          {
            if (v5 != 108)
            {
              return;
            }

            v17 = 0;
            v6 = *(a1 + 80);
            if (!v6)
            {
              v7 = [a2 longValue];
LABEL_57:
              v17 = v7;
              goto LABEL_58;
            }

            goto LABEL_46;
          }

          LODWORD(v17) = 0;
          v8 = *(a1 + 80);
          if (v8)
          {
            goto LABEL_32;
          }

          v9 = [a2 intValue];
LABEL_48:
          LODWORD(v17) = v9;
          goto LABEL_49;
        }

        if (v5 == 113)
        {
          v17 = 0;
          v6 = *(a1 + 80);
          if (!v6)
          {
            v7 = [a2 longLongValue];
            goto LABEL_57;
          }

          goto LABEL_46;
        }

        if (v5 != 115)
        {
          return;
        }

        LOWORD(v17) = 0;
        v11 = *(a1 + 80);
        if (v11)
        {
          goto LABEL_30;
        }

        v12 = [a2 shortValue];
        goto LABEL_51;
      }

      if (v5 != 99)
      {
        if (v5 != 100)
        {
          if (v5 != 102)
          {
            return;
          }

          LODWORD(v17) = 0;
          v8 = *(a1 + 80);
          if (!v8)
          {
            [a2 floatValue];
            LODWORD(v17) = v10;
LABEL_49:
            v16 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
            *v16 = v17;
LABEL_59:
            [*(a1 + 40) setArgument:v16 atIndex:{2, v17}];
            [*(a1 + 40) invokeWithTarget:a3];
            free(v16);
            return;
          }

          goto LABEL_32;
        }

        v17 = 0;
        v6 = *(a1 + 80);
        if (!v6)
        {
          [a2 doubleValue];
          v17 = v15;
LABEL_58:
          v16 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
          *v16 = v17;
          goto LABEL_59;
        }

LABEL_46:
        [v6 setArgument:&v18 atIndex:{2, v17}];
        [*(a1 + 80) invokeWithTarget:a3];
        [*(a1 + 80) getReturnValue:&v17];
        goto LABEL_58;
      }

      LOBYTE(v17) = 0;
      v13 = *(a1 + 80);
      if (!v13)
      {
        v14 = [a2 charValue];
LABEL_54:
        LOBYTE(v17) = v14;
        goto LABEL_55;
      }
    }

    [v13 setArgument:&v18 atIndex:{2, v17}];
    [*(a1 + 80) invokeWithTarget:a3];
    [*(a1 + 80) getReturnValue:&v17];
LABEL_55:
    v16 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    *v16 = v17;
    goto LABEL_59;
  }
}

+ (id)getValidPropertiesForType:(void *)a3 withCache:
{
  v126 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = NSStringFromClass(a2);
  v6 = [a3 objectForKeyedSubscript:v5];
  if (v6)
  {
    goto LABEL_152;
  }

  v105 = v5;
  v106 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  outCount = 0;
  v8 = class_copyProtocolList(a2, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      LODWORD(v123.receiver) = 0;
      v10 = protocol_copyPropertyList(v8[i], &v123);
      if (LODWORD(v123.receiver))
      {
        v11 = 0;
        do
        {
          [v7 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", property_getName(v10[v11++]))}];
        }

        while (v11 < LODWORD(v123.receiver));
      }

      free(v10);
    }
  }

  v104 = v7;
  free(v8);
  v120 = 0;
  v12 = class_copyPropertyList(a2, &v120);
  v13 = objc_alloc(MEMORY[0x1E695DF70]);
  obj = [v13 initWithCapacity:v120];
  if (v120)
  {
    v14 = 0;
    v15 = 0x1EEBA5000uLL;
    v16 = &selRef_writeDouble_forTag_;
    v107 = v12;
    while (1)
    {
      v17 = v12[v14];
      objc_opt_self();
      v18 = objc_alloc((v15 + 1456));
      if (!v18)
      {
        goto LABEL_13;
      }

      v19 = v16[118];
      v123.receiver = v18;
      v123.super_class = v19;
      v20 = objc_msgSendSuper2(&v123, sel_init);
      if (v20)
      {
        break;
      }

LABEL_112:
      v78 = v20;
      if (v78)
      {
        [obj addObject:v78];
      }

      if (++v14 >= v120)
      {
        goto LABEL_115;
      }
    }

    Name = property_getName(v17);
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
    v20[1] = v22;
    if (([v22 hasSuffix:@"Count"] & 1) == 0)
    {
      v122 = 0;
      v23 = property_copyAttributeList(v17, &v122);
      if (v122)
      {
        v24 = 0;
        v25 = v23;
        while (*v25->name != 84)
        {
          ++v24;
          ++v25;
          if (v122 == v24)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v110 = v23;
      v26 = &v23[v24];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26->value];
      v28 = v27;
      v29 = 0;
      v30 = *v26->value;
      *(v20 + 32) = v30;
      if (v30 <= 63)
      {
        if ((v30 - 40) >= 3 && v30 != 63)
        {
          goto LABEL_38;
        }

        goto LABEL_110;
      }

      if (v30 > 122)
      {
        if (v30 != 125)
        {
          if (v30 == 123)
          {
            v33 = v20;
            v34 = v28;
            goto LABEL_32;
          }

LABEL_38:
          v109 = Name;
          v108 = [v20[1] stringByReplacingCharactersInRange:0 withString:{1, objc_msgSend(objc_msgSend(v20[1], "substringToIndex:", 1), "uppercaseString")}];
          if ([v20[2] isSubclassOfClass:objc_opt_class()])
          {
            v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
            for (j = 1; ; j = 0)
            {
              v38 = sel_registerName([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v36, @"Type", "UTF8String"]);
              if (objc_opt_respondsToSelector())
              {
                break;
              }

              if ((j & 1) == 0)
              {
                goto LABEL_47;
              }

              if ([v36 hasSuffix:@"s"])
              {
                v39 = [v36 substringToIndex:{objc_msgSend(v36, "length") - 1}];
              }

              else
              {
                v39 = [v36 stringByAppendingString:@"s"];
              }

              v36 = v39;
            }

            v40 = [(objc_class *)a2 methodSignatureForSelector:v38];
            v41 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v40];
            [v41 setSelector:v38];
            [v41 invokeWithTarget:a2];
            [v41 getReturnValue:v20 + 3];
            v42 = v20[3];
          }

LABEL_47:
          if (v122)
          {
            v43 = 0;
            v44 = v110;
            while (*v44->name != 71)
            {
              ++v43;
              ++v44;
              if (v122 == v43)
              {
                goto LABEL_51;
              }
            }

            v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v110[v43].value];
          }

          else
          {
LABEL_51:
            v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v109];
            v43 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (!v29)
          {
            v29 = v28;
          }

          v46 = sel_registerName([v45 UTF8String]);
          if ([(objc_class *)a2 instancesRespondToSelector:v46])
          {
            if ([v29 length])
            {
              v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@:", v29];
              v48 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v47, "UTF8String")}];
            }

            else
            {
              v48 = [(objc_class *)a2 instanceMethodSignatureForSelector:v46];
            }

            v49 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v48];
            [v49 setSelector:v46];
          }

          else
          {
            v49 = 0;
          }

          v20[6] = v49;
          v50 = v122;
          v51 = v110;
          if (v122)
          {
            while (*v51->name != 83)
            {
              ++v51;
              if (!--v50)
              {
                goto LABEL_64;
              }
            }

            v53 = sel_registerName([objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v110[v43].value), "UTF8String"}]);
            if ([(objc_class *)a2 instancesRespondToSelector:v53])
            {
              if ([v28 length])
              {
                v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v@:%@", v28];
                v55 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v54, "UTF8String")}];
              }

              else
              {
                v55 = [(objc_class *)a2 instanceMethodSignatureForSelector:v53];
              }

              v65 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v55];
              [v65 setSelector:v53];
            }

            else
            {
              v65 = 0;
            }

            v20[5] = v65;
            goto LABEL_89;
          }

LABEL_64:
          v52 = *(v20 + 32);
          if (v52 == 64)
          {
            if (([v20[2] isSubclassOfClass:objc_opt_class()] & 1) == 0)
            {
              goto LABEL_72;
            }

LABEL_71:
            v56 = @"add";
          }

          else
          {
            if (v52 == 94)
            {
              v29 = [v29 substringFromIndex:1];
              goto LABEL_71;
            }

LABEL_72:
            v56 = @"set";
          }

          v57 = 1;
          v58 = v108;
          while (1)
          {
            v59 = sel_registerName([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@:", v56, v58), "UTF8String"]);
            if ([(objc_class *)a2 instancesRespondToSelector:v59])
            {
              if ([v29 length])
              {
                v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v@:%@", v29];
                v61 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v60, "UTF8String")}];
              }

              else
              {
                v61 = [(objc_class *)a2 instanceMethodSignatureForSelector:v59];
              }

              v62 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v61];
              [v62 setSelector:v59];
            }

            else
            {
              v62 = 0;
            }

            v63 = v62;
            v20[5] = v63;
            if (v63 != 0 || (v57 & 1) == 0)
            {
              break;
            }

            if ([v58 hasSuffix:@"s"])
            {
              v64 = [v58 substringToIndex:{objc_msgSend(v58, "length") - 1}];
            }

            else
            {
              v64 = [v58 stringByAppendingString:@"s"];
            }

            v58 = v64;
            v57 = 0;
          }

LABEL_89:
          v66 = sel_registerName([objc_msgSend(v20[1] stringByAppendingString:{@"Count", "UTF8String"}]);
          if ([(objc_class *)a2 instancesRespondToSelector:v66])
          {
            v12 = v107;
            v15 = 0x1EEBA5000;
            v16 = &selRef_writeDouble_forTag_;
            if ([0 length])
            {
              v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@:", 0];
              v68 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v67, "UTF8String")}];
            }

            else
            {
              v68 = [(objc_class *)a2 instanceMethodSignatureForSelector:v66];
            }

            v69 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v68];
            [v69 setSelector:v66];
          }

          else
          {
            v69 = 0;
            v12 = v107;
            v15 = 0x1EEBA5000;
            v16 = &selRef_writeDouble_forTag_;
          }

          v20[8] = v69;
          v70 = sel_registerName([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%sAsString:", v109), "UTF8String"]);
          if ([(objc_class *)a2 instancesRespondToSelector:v70])
          {
            if ([0 length])
            {
              v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@:", 0];
              v72 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v71, "UTF8String")}];
            }

            else
            {
              v72 = [(objc_class *)a2 instanceMethodSignatureForSelector:v70];
            }

            v73 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v72];
            [v73 setSelector:v70];
          }

          else
          {
            v73 = 0;
          }

          v20[9] = v73;
          v74 = sel_registerName([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"StringAs%@:", v108), "UTF8String"]);
          if ([(objc_class *)a2 instancesRespondToSelector:v74])
          {
            if ([0 length])
            {
              v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@:", 0];
              v76 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v75, "UTF8String")}];
            }

            else
            {
              v76 = [(objc_class *)a2 instanceMethodSignatureForSelector:v74];
            }

            v77 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v76];
            [v77 setSelector:v74];
          }

          else
          {
            v77 = 0;
          }

          v20[10] = v77;
          free(v110);
          goto LABEL_112;
        }

LABEL_110:
        NSLog(&cfstr_IgnoringProper.isa, Name, v28);
      }

      else
      {
        if (v30 != 64)
        {
          if (v30 != 94)
          {
            goto LABEL_38;
          }

          v31 = [v27 characterAtIndex:1];
          *(v20 + 33) = v31;
          v32 = v31 - 66;
          if (v32 <= 0x39)
          {
            if (((1 << (v31 - 66)) & 0x849600008481) != 0)
            {
              v29 = 0;
              goto LABEL_38;
            }

            if (v32 == 57)
            {
              v34 = [v28 substringFromIndex:1];
              v33 = v20;
LABEL_32:
              v29 = [(_PBProperty *)v33 _parseStructDefinition:v34];
              goto LABEL_38;
            }
          }

          goto LABEL_110;
        }

        v35 = [v27 substringFromIndex:1];
        if ([v35 length] >= 3 && objc_msgSend(v35, "characterAtIndex:", 0) == 34)
        {
          v35 = [v35 substringWithRange:{1, objc_msgSend(v35, "length") - 2}];
        }

        if (([v35 hasPrefix:@"<"] & 1) == 0)
        {
          v29 = 0;
          v20[2] = NSClassFromString(v35);
          goto LABEL_38;
        }
      }

      free(v110);
      v20 = 0;
      v15 = 0x1EEBA5000;
      v16 = &selRef_writeDouble_forTag_;
      goto LABEL_112;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_112;
  }

LABEL_115:
  free(v12);
  [obj sortUsingComparator:&__block_literal_global_405];
  v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v81 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
  if (!v81)
  {
    goto LABEL_136;
  }

  v82 = v81;
  v83 = *v117;
  do
  {
    v84 = 0;
    do
    {
      if (*v117 != v83)
      {
        objc_enumerationMutation(obj);
      }

      v85 = *(*(&v116 + 1) + 8 * v84);
      if (v85)
      {
        v86 = *(v85 + 8);
      }

      else
      {
        v86 = 0;
      }

      v87 = [v86 lowercaseString];
      if ([v87 hasPrefix:@"has"])
      {
        v88 = [v87 substringFromIndex:3];
        v89 = [v79 objectForKeyedSubscript:v88];
        if (v89)
        {
          v90 = v89;
          *(v89 + 56) = *(v85 + 48);
          [v80 addObject:v90];
          v91 = v79;
          v92 = v88;
LABEL_129:
          [v91 removeObjectForKey:v92];
          goto LABEL_131;
        }
      }

      else
      {
        if (v85)
        {
          v93 = *(v85 + 16);
        }

        else
        {
          v93 = 0;
        }

        if ([v93 isSubclassOfClass:objc_opt_class()])
        {
          [v80 addObject:v85];
          v91 = v79;
          v92 = v87;
          goto LABEL_129;
        }
      }

      [v79 setObject:v85 forKeyedSubscript:v87];
LABEL_131:
      ++v84;
    }

    while (v82 != v84);
    v94 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
    v82 = v94;
  }

  while (v94);
LABEL_136:
  [v80 addObjectsFromArray:{objc_msgSend(v79, "allValues")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v80, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v95 = [v80 countByEnumeratingWithState:&v112 objects:v124 count:16];
  if (v95)
  {
    v96 = v95;
    v97 = *v113;
    do
    {
      v98 = 0;
      do
      {
        if (*v113 != v97)
        {
          objc_enumerationMutation(v80);
        }

        v99 = *(*(&v112 + 1) + 8 * v98);
        if (v99)
        {
          v100 = v99[1];
        }

        else
        {
          v100 = 0;
        }

        if (![v104 containsObject:v100] || v99[7] || v99[8])
        {
          [v6 addObject:v99];
        }

        ++v98;
      }

      while (v96 != v98);
      v101 = [v80 countByEnumeratingWithState:&v112 objects:v124 count:16];
      v96 = v101;
    }

    while (v101);
  }

  [v106 setObject:v6 forKeyedSubscript:v105];
LABEL_152:
  v102 = *MEMORY[0x1E69E9840];
  return v6;
}

@end