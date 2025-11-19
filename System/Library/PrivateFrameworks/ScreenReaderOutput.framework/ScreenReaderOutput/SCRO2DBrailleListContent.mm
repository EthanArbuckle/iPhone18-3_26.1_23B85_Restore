@interface SCRO2DBrailleListContent
- (id)multiLineBraille;
- (void)drawOnCanvas:(id)a3;
@end

@implementation SCRO2DBrailleListContent

- (void)drawOnCanvas:(id)a3
{
  v4 = a3;
  v5 = [(SCRO2DBrailleListContent *)self multiLineBraille];
  v11 = v4;
  v6 = [MEMORY[0x277CBEA90] data];
  [v11 setImageData:v6];

  v7 = [v5 componentsJoinedByString:&stru_28763D5C8];
  v8 = [v7 length];
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v9[i] = [v7 characterAtIndex:i];
    }
  }

  [v11 setBrailleText:v9 length:v8];
  free(v9);
}

- (id)multiLineBraille
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_height >= 1)
  {
    firstDisplayedLine = self->_firstDisplayedLine;
    do
    {
      if (firstDisplayedLine < 0 || firstDisplayedLine >= -[NSArray count](self->_strings, "count") || (-[NSArray objectAtIndex:](self->_brailleLineLists, "objectAtIndex:", firstDisplayedLine), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, !v6))
      {
        v11 = [&stru_28763D5C8 stringByPaddingToLength:self->_width withString:@"⠀" startingAtIndex:0];
      }

      else
      {
        focusedIndex = self->_focusedIndex;
        v8 = [(NSArray *)self->_brailleLineLists objectAtIndex:firstDisplayedLine];
        v9 = [v8 objectAtIndex:0];
        if (firstDisplayedLine == focusedIndex)
        {
          v10 = @"⣿";
        }

        else
        {
          v10 = @"⠀";
        }

        v11 = [(__CFString *)v10 stringByAppendingString:v9];
      }

      [v3 addObject:v11];

      ++firstDisplayedLine;
    }

    while (firstDisplayedLine < self->_height + self->_firstDisplayedLine);
  }

  return v3;
}

@end