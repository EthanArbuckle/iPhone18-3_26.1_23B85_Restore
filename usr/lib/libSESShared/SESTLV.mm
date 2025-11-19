@interface SESTLV
+ (id)TLVWithData:(id)a3;
+ (id)TLVWithTag:(unsigned int)a3 children:(id)a4;
+ (id)TLVWithTag:(unsigned int)a3 fromData:(id)a4;
+ (id)TLVWithTag:(unsigned int)a3 value:(id)a4;
+ (id)TLVsWithData:(id)a3;
+ (id)_intToData:(unsigned int)a3;
+ (id)dataWithTLVs:(id)a3;
+ (id)simpleTLVsWithData:(id)a3;
+ (id)simpleTLVsWithTag:(unsigned int)a3 fromData:(id)a4;
- (id)asData;
- (id)childWithTag:(unsigned int)a3;
- (id)childrenWithTag:(unsigned int)a3;
- (id)description;
- (id)valueAsString;
- (unint64_t)valueAsUnsignedLongLong;
- (unsigned)valueAsUnsignedChar;
- (unsigned)valueAsUnsignedLong;
- (unsigned)valueAsUnsignedShort;
@end

@implementation SESTLV

+ (id)dataWithTLVs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) asData];
        [v4 appendData:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)TLVsWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v10 = [v6 bytes];
  v7 = [v6 length];

  v8 = [a1 _parseTLVs:&v10 end:v10 + v7 simple:0];

  return v8;
}

+ (id)simpleTLVsWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v10 = [v6 bytes];
  v7 = [v6 length];

  v8 = [a1 _parseTLVs:&v10 end:v10 + v7 simple:1];

  return v8;
}

+ (id)TLVWithData:(id)a3
{
  v3 = [a1 TLVsWithData:a3];
  if (![v3 count])
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "No TLV detected";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v7 = 0;
    goto LABEL_10;
  }

  if ([v3 count] >= 2)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v5 = "More than one TLV detected";
      v6 = &v9;
LABEL_7:
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = [v3 lastObject];
LABEL_10:

  return v7;
}

+ (id)TLVWithTag:(unsigned int)a3 fromData:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [SESTLV TLVsWithData:a4, 0];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 tag] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)simpleTLVsWithTag:(unsigned int)a3 fromData:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [SESTLV simpleTLVsWithData:v5, 0];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 tag] == a3)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)TLVWithTag:(unsigned int)a3 children:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_opt_new();
  *(v7 + 8) = a3;
  objc_storeStrong((v7 + 24), a4);
  if (*(v7 + 24))
  {
    v8 = [MEMORY[0x1E695DF88] data];
    v9 = *(v7 + 16);
    *(v7 + 16) = v8;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = *(v7 + 24);
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(v7 + 16);
          v16 = [*(*(&v19 + 1) + 8 * i) asData];
          [v15 appendData:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)TLVWithTag:(unsigned int)a3 value:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  *(v6 + 8) = a3;
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_children)
  {
    v13.receiver = self;
    v13.super_class = SESTLV;
    v4 = [(SESTLV *)&v13 description];
    tag = self->_tag;
    v6 = [(SESTLV *)self children];
    [v3 stringWithFormat:@"%@ %02x : %@", v4, tag, v6, v10];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_value encoding:1];
    v7 = MEMORY[0x1E696AEC0];
    if (v4)
    {
      v12.receiver = self;
      v12.super_class = SESTLV;
      v6 = [(SESTLV *)&v12 description];
      [v7 stringWithFormat:@"%@ %02x = %@ %@", v6, self->_tag, self->_value, v4];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = SESTLV;
      v6 = [(SESTLV *)&v11 description];
      [v7 stringWithFormat:@"%@ %02x = %@", v6, self->_tag, self->_value, v10];
    }
  }
  v8 = ;

  return v8;
}

- (id)valueAsString
{
  if (self->_value)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_value encoding:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)valueAsUnsignedChar
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(NSData *)self->_value length]== 1)
  {
    result = *[(NSData *)self->_value bytes];
  }

  else
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      value = self->_value;
      v7 = 138412290;
      v8 = value;
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Unexpected length %@", &v7, 0xCu);
    }

    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)valueAsUnsignedLong
{
  v13 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    goto LABEL_10;
  }

  if ([(NSData *)value length]>= 5)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_value;
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Value too large: %@", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  v6 = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 = v6[v7++] | (v8 << 8);
  }

  while ([(NSData *)self->_value length]> v7);
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unsigned)valueAsUnsignedShort
{
  v13 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    goto LABEL_10;
  }

  if ([(NSData *)value length]>= 3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_value;
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Value too large: %@", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  v6 = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 = v6[v7++] | (v8 << 8);
  }

  while ([(NSData *)self->_value length]> v7);
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)valueAsUnsignedLongLong
{
  v13 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    goto LABEL_10;
  }

  if ([(NSData *)value length]>= 9)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_value;
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Value too large: %@", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  v6 = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 = v6[v7++] | (v8 << 8);
  }

  while ([(NSData *)self->_value length]> v7);
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)childrenWithTag:(unsigned int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(SESTLV *)self children];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 tag] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)childWithTag:(unsigned int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SESTLV *)self children];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 tag] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_intToData:(unsigned int)a3
{
  v4 = [MEMORY[0x1E695DF88] dataWithCapacity:4];
  v5 = v4;
  v9 = 0;
  if (a3)
  {
    v6 = 4;
    if (HIBYTE(a3))
    {
      goto LABEL_14;
    }

    do
    {
      v7 = HIWORD(a3);
      a3 <<= 8;
      --v6;
    }

    while (!v7 && v6);
    if (v6)
    {
LABEL_14:
      do
      {
        v9 = HIBYTE(a3);
        [v5 appendBytes:&v9 length:1];
        a3 <<= 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    [v4 appendBytes:&v9 length:1];
  }

  return v5;
}

- (id)asData
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF88] data];
  v4 = [SESTLV _intToData:self->_tag];
  [v3 appendData:v4];

  v5 = self->_value;
  if (!v5)
  {
    if (self->_children)
    {
      v5 = [MEMORY[0x1E695DF88] data];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = self->_children;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v18 + 1) + 8 * i) asData];
            [(NSData *)v5 appendData:v11];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v12 = [(NSData *)v5 length];
  v13 = [SESTLV _intToData:v12];
  v14 = v13;
  if (v12 >= 0x80)
  {
    v17 = [v13 length] | 0x80;
    [v3 appendBytes:&v17 length:1];
  }

  [v3 appendData:v14];
  if (v5)
  {
    [v3 appendData:v5];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

@end