@interface VCSParsedLine
+ (int64_t)tokenizeKeyword:(const char *)a3 withType:(unint64_t *)a4;
+ (int64_t)tokenizeNSStringKeyword:(id)a3 withType:(unint64_t *)a4;
- (VCSParsedLine)init;
- (id)convertedContent;
- (id)description;
- (id)loadFromCString:(char *)a3 withParseState:(id)a4;
- (void)reset;
- (void)setContentFromCString:(char *)a3;
- (void)setKeywordFromCString:(char *)a3;
@end

@implementation VCSParsedLine

+ (int64_t)tokenizeKeyword:(const char *)a3 withType:(unint64_t *)a4
{
  v5 = bsearch(a3, &vcsTokensList, 0x29uLL, 0x18uLL, vcsTokenCompare);
  if (v5)
  {
    if (a4)
    {
      *a4 = v5[2];
    }

    return *v5;
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 50;
  }
}

+ (int64_t)tokenizeNSStringKeyword:(id)a3 withType:(unint64_t *)a4
{
  v7 = a3;
  v8 = [a3 UTF8String];

  return [a1 tokenizeKeyword:v8 withType:a4];
}

- (VCSParsedLine)init
{
  v10.receiver = self;
  v10.super_class = VCSParsedLine;
  v2 = [(VCSParsedLine *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 40) = xmmword_2754F54C0;
    v4 = *(v2 + 1);
    *(v2 + 1) = 0;

    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    content = v3->_content;
    v3->_content = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    params = v3->_params;
    v3->_params = v7;

    v3->_usePalmD4Hooks = 0;
  }

  return v3;
}

- (void)reset
{
  *&self->_type = xmmword_2754F54C0;
  keyword = self->_keyword;
  self->_keyword = 0;

  [(NSMutableData *)self->_content setLength:0];
  params = self->_params;

  [(NSMutableDictionary *)params removeAllObjects];
}

- (id)loadFromCString:(char *)a3 withParseState:(id)a4
{
  v6 = a4;
  v45 = 0;
  v7 = strlen(a3);
  switch(v7)
  {
    case 0uLL:
      goto LABEL_66;
    case 2uLL:
      v10 = *a3;
      if (v10 == 10 || v10 == 13)
      {
        goto LABEL_66;
      }

      break;
    case 1uLL:
      v8 = 0;
      v9 = *a3;
      if (v9 == 10 || v9 == 13)
      {
        goto LABEL_67;
      }

      break;
  }

  v12 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  [(VCSParsedLine *)self reset];
  for (i = 0; ; ++i)
  {
    v14 = a3[i];
    if (v14 != 45)
    {
      if (!a3[i])
      {
        i = 0;
        goto LABEL_18;
      }

      if ((v14 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        break;
      }
    }
  }

  v15 = v6;
  memcpy(v12, a3, i);
  *(v12 + i) = 0;
  [(VCSParsedLine *)self setKeywordFromCString:v12];
  v16 = [VCSParsedLine tokenizeKeyword:v12 withType:&v45];
  [(VCSParsedLine *)self setType:v45];
  v17 = v16;
  v6 = v15;
  [(VCSParsedLine *)self setTokenID:v17];
LABEL_18:
  for (LODWORD(v18) = i; ; LODWORD(v18) = v18 + 1)
  {
    v19 = a3[v18];
    if (v19 != 32)
    {
      break;
    }
  }

  if ((v19 - 58) >= 2)
  {
    v36 = VCSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [VCSParsedLine loadFromCString:v6 withParseState:&a3[v18]];
    }

    goto LABEL_65;
  }

  if (v45 == 1)
  {
    if (v19 == 58)
    {
      v38 = v18 + 1;
      v44 = 0;
      do
      {
        v39 = v38;
        v40 = a3[v38++];
      }

      while (v40 == 32);
      v41 = v39;
      [VCSParsedLine tokenizeKeyword:&a3[v39] withType:&v44];
      if (v44 != 2)
      {
        v42 = VCSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [VCSParsedLine loadFromCString:v6 withParseState:?];
        }
      }

      v37 = &a3[v41];
      goto LABEL_57;
    }

    v36 = VCSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [VCSParsedLine loadFromCString:v6 withParseState:?];
    }

    goto LABEL_65;
  }

  if (v45 != 3)
  {
    v36 = VCSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [VCSParsedLine loadFromCString:v12 withParseState:v6];
    }

LABEL_65:

    free(v12);
LABEL_66:
    v8 = 0;
    goto LABEL_67;
  }

  while (v19 == 59)
  {
    v20 = 0;
    v21 = v18 + 1;
    for (j = v18 + 1; ; ++j)
    {
      v23 = a3[j];
      if (v23 != 45)
      {
        if (!a3[j])
        {
          v24 = &a3[j];
          goto LABEL_32;
        }

        if ((v23 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          break;
        }
      }

      ++v20;
    }

    v24 = &a3[j];
    memcpy(v12, &a3[v21], v20);
    *(v12 + v20) = 0;
    i = j;
LABEL_32:
    for (LODWORD(v18) = i; ; LODWORD(v18) = v18 + 1)
    {
      v25 = a3[v18];
      if (v25 != 32)
      {
        break;
      }
    }

    if (v25 == 61)
    {
      v26 = strlen(v24);
      v27 = malloc_type_malloc(v26 + 1, 0x100004077774924uLL);
      LODWORD(v18) = v18 + 1;
      v28 = a3[v18];
      v29 = v27;
      do
      {
        if (v28 == 92)
        {
          if (a3[(v18 + 1)] == 59)
          {
            LODWORD(v18) = v18 + 1;
          }

          LOBYTE(v28) = a3[v18];
        }

        *v29++ = v28;
        v18 = (v18 + 1);
        v28 = a3[v18];
      }

      while ((v28 & 0xFE) != 0x3A);
      *v29 = 0;
      params = self->_params;
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      [(NSMutableDictionary *)params setObject:v31 forKey:v32];

      free(v27);
      v33 = v18;
    }

    else
    {
      v33 = v18;
      v34 = self->_params;
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      [(NSMutableDictionary *)v34 setObject:&stru_28841D818 forKey:v35];
    }

    v19 = a3[v33];
  }

  if (v19 != 58)
  {
    goto LABEL_58;
  }

  v37 = &a3[(v18 + 1)];
LABEL_57:
  [(VCSParsedLine *)self setContentFromCString:v37];
LABEL_58:
  if (self)
  {
    -[VCSParsedLine setUsePalmD4Hooks:](self, "setUsePalmD4Hooks:", [v6 palmImport]);
  }

  free(v12);
  v8 = self;
LABEL_67:

  return v8;
}

- (void)setKeywordFromCString:(char *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3];
  keyword = self->_keyword;
  self->_keyword = v4;

  MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = VCSParsedLine;
  v4 = [(VCSParsedLine *)&v10 description];
  keyword = self->_keyword;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v6 initWithData:self->_content encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v8 = [v3 stringWithFormat:@"%@ %@, %@", v4, keyword, v7];

  return v8;
}

- (void)setContentFromCString:(char *)a3
{
  [(NSMutableData *)self->_content setLength:0];
  v5 = strlen(a3) + 1;
  content = self->_content;

  [(NSMutableData *)content appendBytes:a3 length:v5];
}

- (id)convertedContent
{
  v3 = [(NSMutableDictionary *)self->_params objectForKeyedSubscript:@"ENCODING"];
  params = self->_params;
  if (v3)
  {
    [(NSMutableDictionary *)params removeObjectForKey:@"ENCODING"];
  }

  else
  {
    v5 = [(NSMutableDictionary *)params objectForKeyedSubscript:@"QUOTED-PRINTABLE"];
    if (!v5)
    {
      v10 = self->_content;
      goto LABEL_11;
    }

    v6 = v5;
    v3 = @"QUOTED-PRINTABLE";
    [(NSMutableDictionary *)self->_params removeObjectForKey:@"QUOTED-PRINTABLE"];
  }

  if ([(__CFString *)v3 isEqualToString:@"QUOTED-PRINTABLE"])
  {
    v7 = [(NSMutableData *)self->_content VCSDecodeQuotedPrintableForText:0];
  }

  else
  {
    v8 = [(__CFString *)v3 isEqualToString:@"BASE64"];
    content = self->_content;
    if (v8)
    {
      v7 = [(NSMutableData *)content VCSDecodeBase64];
    }

    else
    {
      v7 = content;
    }
  }

  v10 = v7;

LABEL_11:
  v11 = [(NSMutableDictionary *)self->_params objectForKey:@"CHARSET"];
  v12 = v11;
  if (v11 && ![(__CFString *)v11 isEqualToString:@"macintosh"])
  {
    [(NSMutableDictionary *)self->_params removeObjectForKey:@"CHARSET"];
    SystemEncoding = CFStringConvertIANACharSetNameToEncoding(v12);
  }

  else
  {
    if (!self->_usePalmD4Hooks)
    {
      v14 = 134217984;
      goto LABEL_18;
    }

    SystemEncoding = CFStringGetSystemEncoding();
  }

  v14 = SystemEncoding;
LABEL_18:
  v15 = [(NSMutableData *)v10 VCSConvert8bitBufferToUTF8From:v14];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)loadFromCString:(void *)a1 withParseState:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 lineNumber];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadFromCString:(uint64_t)a1 withParseState:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  [a2 lineNumber];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)loadFromCString:(uint64_t)a1 withParseState:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  [a2 lineNumber];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)loadFromCString:(void *)a1 withParseState:(char *)a2 .cold.4(void *a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 lineNumber];
  v9 = *a2;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

@end