@interface PXMiniHTMLParser
+ (NSDictionary)charactersForEntityNames;
+ (id)stringByConvertingToHTML:(id)a3;
- (PXMiniHTMLParser)initWithString:(id)a3;
- (void)parse;
@end

@implementation PXMiniHTMLParser

- (void)parse
{
  v3 = [PXMiniXMLParser alloc];
  v4 = [(PXMiniHTMLParser *)self _string];
  v5 = [(PXMiniXMLParser *)v3 initWithString:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25__PXMiniHTMLParser_parse__block_invoke;
  v9[3] = &unk_1E774BE48;
  v9[4] = self;
  [(PXMiniXMLParser *)v5 setParsedCharactersBlock:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25__PXMiniHTMLParser_parse__block_invoke_2;
  v8[3] = &unk_1E774BE70;
  v8[4] = self;
  [(PXMiniXMLParser *)v5 setParsedTagBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__PXMiniHTMLParser_parse__block_invoke_3;
  v7[3] = &unk_1E774BE48;
  v7[4] = self;
  [(PXMiniXMLParser *)v5 setParsedEntityBlock:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__PXMiniHTMLParser_parse__block_invoke_4;
  v6[3] = &unk_1E774BE98;
  v6[4] = self;
  [(PXMiniXMLParser *)v5 setParsedErrorBlock:v6];
  [(PXMiniXMLParser *)v5 parse];
}

void __25__PXMiniHTMLParser_parse__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) parsedCharactersBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) parsedCharactersBlock];
    (v4)[2](v4, v5);
  }
}

void __25__PXMiniHTMLParser_parse__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if ([v10 isEqualToString:@"b"])
  {
    v5 = 1;
  }

  else
  {
    if (![v10 isEqualToString:@"i"])
    {
      goto LABEL_12;
    }

    v5 = 2;
  }

  if (a2 == 1)
  {
    v8 = [*(a1 + 32) parsedMarkupElementEndBlock];

    if (!v8)
    {
      goto LABEL_12;
    }

    v7 = [*(a1 + 32) parsedMarkupElementEndBlock];
    goto LABEL_11;
  }

  if (!a2)
  {
    v6 = [*(a1 + 32) parsedMarkupElementStartBlock];

    if (v6)
    {
      v7 = [*(a1 + 32) parsedMarkupElementStartBlock];
LABEL_11:
      v9 = v7;
      (*(v7 + 16))(v7, v5);
    }
  }

LABEL_12:
}

void __25__PXMiniHTMLParser_parse__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PXMiniHTMLParser charactersForEntityNames];
  v7 = [v4 objectForKeyedSubscript:v3];

  if (v7)
  {
    v5 = [*(a1 + 32) parsedCharactersBlock];

    if (v5)
    {
      v6 = [*(a1 + 32) parsedCharactersBlock];
      (v6)[2](v6, v7);
    }
  }
}

void __25__PXMiniHTMLParser_parse__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) parsedErrorBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) parsedErrorBlock];
    (v4)[2](v4, v5);
  }
}

- (PXMiniHTMLParser)initWithString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXMiniHTMLParser;
  v6 = [(PXMiniHTMLParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__string, a3);
  }

  return v7;
}

+ (id)stringByConvertingToHTML:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__256372;
  v14 = __Block_byref_object_dispose__256373;
  v3 = a3;
  v15 = v3;
  v4 = [v3 stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;
  v5 = v11[5];
  v11[5] = v4;

  v6 = +[PXMiniHTMLParser charactersForEntityNames];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PXMiniHTMLParser_stringByConvertingToHTML___block_invoke;
  v9[3] = &unk_1E774BEC0;
  v9[4] = &v10;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __45__PXMiniHTMLParser_stringByConvertingToHTML___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([v5 isEqualToString:@"&"] & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"&%@;", v10];
    v7 = [*(*(*(a1 + 32) + 8) + 40) stringByReplacingOccurrencesOfString:v5 withString:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

+ (NSDictionary)charactersForEntityNames
{
  if (charactersForEntityNames_onceToken != -1)
  {
    dispatch_once(&charactersForEntityNames_onceToken, &__block_literal_global_256385);
  }

  v3 = charactersForEntityNames_charactersForEntityNames;

  return v3;
}

void __44__PXMiniHTMLParser_charactersForEntityNames__block_invoke()
{
  v0 = charactersForEntityNames_charactersForEntityNames;
  charactersForEntityNames_charactersForEntityNames = &unk_1F190F8A0;
}

@end