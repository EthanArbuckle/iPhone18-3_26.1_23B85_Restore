@interface PXMiniXMLParser
- (BOOL)_isAtEnd;
- (BOOL)_parseCharacters;
- (BOOL)_parseEntity;
- (BOOL)_parseTag;
- (BOOL)_tryScanningUsingBlock:(id)block;
- (PXMiniXMLParser)initWithString:(id)string;
- (void)parse;
@end

@implementation PXMiniXMLParser

- (BOOL)_tryScanningUsingBlock:(id)block
{
  blockCopy = block;
  _scanner = [(PXMiniXMLParser *)self _scanner];
  scanLocation = [_scanner scanLocation];
  v7 = blockCopy[2](blockCopy, _scanner);

  if ((v7 & 1) == 0)
  {
    [_scanner setScanLocation:scanLocation];
  }

  return v7;
}

- (BOOL)_parseEntity
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__PXMiniXMLParser__parseEntity__block_invoke;
  v3[3] = &unk_1E7747C68;
  v3[4] = self;
  return [(PXMiniXMLParser *)self _tryScanningUsingBlock:v3];
}

uint64_t __31__PXMiniXMLParser__parseEntity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 scanString:@"&" intoString:0])
  {
    v4 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v11 = 0;
    v5 = [v3 scanCharactersFromSet:v4 intoString:&v11];
    v6 = v11;

    if (v5 && [v3 scanString:@";" intoString:0])
    {
      v7 = [*(a1 + 32) parsedEntityBlock];

      if (v7)
      {
        v8 = [*(a1 + 32) parsedEntityBlock];
        (v8)[2](v8, v6);
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  return v9;
}

- (BOOL)_parseTag
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__PXMiniXMLParser__parseTag__block_invoke;
  v3[3] = &unk_1E7747C68;
  v3[4] = self;
  return [(PXMiniXMLParser *)self _tryScanningUsingBlock:v3];
}

uint64_t __28__PXMiniXMLParser__parseTag__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scanString:@"<" intoString:0];
  v5 = [v3 scanString:@"/" intoString:0];
  v6 = v5;
  if (v4)
  {
    v7 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v15 = 0;
    v8 = [v3 scanCharactersFromSet:v7 intoString:&v15];
    v9 = v15;

    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ([v3 scanString:@"/" intoString:0])
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  v10 = 1;
  if (!v8)
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_10:
  if (![v3 scanString:@">" intoString:0])
  {
    goto LABEL_14;
  }

  v11 = [*(a1 + 32) parsedTagBlock];

  if (v11)
  {
    v12 = [*(a1 + 32) parsedTagBlock];
    (v12)[2](v12, v10, v9);
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (BOOL)_parseCharacters
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__PXMiniXMLParser__parseCharacters__block_invoke;
  v3[3] = &unk_1E7747C68;
  v3[4] = self;
  return [(PXMiniXMLParser *)self _tryScanningUsingBlock:v3];
}

uint64_t __35__PXMiniXMLParser__parseCharacters__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _syntaxMarkerCharactersSet];
  v11 = 0;
  v6 = [v4 scanUpToCharactersFromSet:v5 intoString:&v11];

  v7 = v11;
  if (v6)
  {
    v8 = [*(a1 + 32) parsedCharactersBlock];

    if (v8)
    {
      v9 = [*(a1 + 32) parsedCharactersBlock];
      (v9)[2](v9, v7);
    }
  }

  return v6;
}

- (BOOL)_isAtEnd
{
  _scanner = [(PXMiniXMLParser *)self _scanner];
  isAtEnd = [_scanner isAtEnd];

  return isAtEnd;
}

- (void)parse
{
  if (![(PXMiniXMLParser *)self _isAtEnd])
  {
    while (1)
    {
      if (![(PXMiniXMLParser *)self _parseCharacters]&& ![(PXMiniXMLParser *)self _parseTag]&& ![(PXMiniXMLParser *)self _parseEntity])
      {
        parsedErrorBlock = [(PXMiniXMLParser *)self parsedErrorBlock];

        if (parsedErrorBlock)
        {
          break;
        }
      }

      if ([(PXMiniXMLParser *)self _isAtEnd])
      {
        goto LABEL_7;
      }
    }

    parsedErrorBlock2 = [(PXMiniXMLParser *)self parsedErrorBlock];
    parsedErrorBlock2[2](parsedErrorBlock2, 0);
  }

LABEL_7:
  [(PXMiniXMLParser *)self setParsedCharactersBlock:0];
  [(PXMiniXMLParser *)self setParsedTagBlock:0];
  [(PXMiniXMLParser *)self setParsedEntityBlock:0];

  [(PXMiniXMLParser *)self setParsedErrorBlock:0];
}

- (PXMiniXMLParser)initWithString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = PXMiniXMLParser;
  v5 = [(PXMiniXMLParser *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:stringCopy];
    scanner = v5->__scanner;
    v5->__scanner = v6;

    [(NSScanner *)v5->__scanner setCharactersToBeSkipped:0];
    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"<&"];
    syntaxMarkerCharactersSet = v5->__syntaxMarkerCharactersSet;
    v5->__syntaxMarkerCharactersSet = v8;
  }

  return v5;
}

@end