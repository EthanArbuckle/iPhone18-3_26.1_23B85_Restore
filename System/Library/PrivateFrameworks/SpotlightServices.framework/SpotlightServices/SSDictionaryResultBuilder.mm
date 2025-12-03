@interface SSDictionaryResultBuilder
- (NSString)definitionString;
- (SSDictionaryResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildTitle;
@end

@implementation SSDictionaryResultBuilder

- (SSDictionaryResultBuilder)initWithResult:(id)result
{
  v4.receiver = self;
  v4.super_class = SSDictionaryResultBuilder;
  return [(SSResultBuilder *)&v4 initWithResult:result];
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  word = [(SSDictionaryResultBuilder *)self word];
  if (word)
  {
    v5 = [MEMORY[0x1E69CA0F0] textWithString:word];
    [v5 setIsEmphasized:1];
    [v3 addObject:v5];
  }

  dictionaryName = [(SSDictionaryResultBuilder *)self dictionaryName];
  if (dictionaryName)
  {
    v7 = dictionaryName;
    v8 = isMacOS();

    if (v8)
    {
      v9 = [MEMORY[0x1E69CA0F0] textWithString:@" — "];
      [v3 addObject:v9];

      v10 = MEMORY[0x1E69CA0F0];
      dictionaryName2 = [(SSDictionaryResultBuilder *)self dictionaryName];
      v12 = [v10 textWithString:dictionaryName2];
      [v3 addObject:v12];
    }
  }

  v13 = objc_opt_new();
  [v13 setFormattedTextPieces:v3];

  return v13;
}

- (id)buildDescriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69CA3A0];
  definitionString = [(SSDictionaryResultBuilder *)self definitionString];
  v4 = [v2 textWithString:definitionString];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)buildCommand
{
  dictionaryURL = [(SSDictionaryResultBuilder *)self dictionaryURL];

  if (dictionaryURL)
  {
    buildCommand = objc_opt_new();
    v5 = MEMORY[0x1E69CA320];
    dictionaryURL2 = [(SSDictionaryResultBuilder *)self dictionaryURL];
    v7 = [v5 punchoutWithURL:dictionaryURL2];
    [buildCommand setPunchout:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SSDictionaryResultBuilder;
    buildCommand = [(SSResultBuilder *)&v9 buildCommand];
  }

  return buildCommand;
}

- (NSString)definitionString
{
  definitionString = self->_definitionString;
  if (definitionString)
  {
  }

  else
  {
    selfCopy = self;
    definitions = [(SSDictionaryResultBuilder *)self definitions];
    v7 = objc_opt_new();
    if ([definitions count])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (definitionString_onceToken != -1)
        {
          [SSDictionaryResultBuilder definitionString];
        }

        v10 = &stru_1F556FE60;
        if ([definitions count] >= 2)
        {
          v11 = MEMORY[0x1E696AEC0];
          v12 = definitionString_numberFormatter;
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 + 1];
          v14 = [v12 stringFromNumber:v13];
          v10 = [v11 stringWithFormat:@"%@. ", v14];
        }

        v15 = &stru_1F556FE60;
        if (v8)
        {
          v16 = [definitions count];
          v15 = @"…";
          if (v16 <= 2)
          {
            v15 = &stru_1F556FE60;
          }
        }

        v17 = MEMORY[0x1E696AEC0];
        v18 = v15;
        v19 = [definitions objectAtIndexedSubscript:v9];
        v20 = [v17 stringWithFormat:@"%@%@%@", v10, v19, v18];

        [v7 addObject:v20];
        v21 = v9 + 1;
        v22 = [definitions count];
        v23 = 2;
        if (v22 < 2)
        {
          v23 = v22;
        }

        v8 = 1;
        v9 = 1;
      }

      while (v21 < v23);
    }

    v24 = [v7 componentsJoinedByString:@" "];
    v25 = selfCopy->_definitionString;
    selfCopy->_definitionString = v24;

    definitionString = selfCopy->_definitionString;
  }

  return definitionString;
}

uint64_t __45__SSDictionaryResultBuilder_definitionString__block_invoke()
{
  v0 = objc_opt_new();
  v1 = definitionString_numberFormatter;
  definitionString_numberFormatter = v0;

  v2 = definitionString_numberFormatter;

  return [v2 setNumberStyle:1];
}

@end