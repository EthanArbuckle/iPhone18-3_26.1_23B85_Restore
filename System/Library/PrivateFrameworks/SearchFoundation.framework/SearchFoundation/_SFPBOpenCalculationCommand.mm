@interface _SFPBOpenCalculationCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBOpenCalculationCommand)initWithDictionary:(id)dictionary;
- (_SFPBOpenCalculationCommand)initWithFacade:(id)facade;
- (_SFPBOpenCalculationCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setInput:(id)input;
- (void)setOutput:(id)output;
- (void)writeTo:(id)to;
@end

@implementation _SFPBOpenCalculationCommand

- (_SFPBOpenCalculationCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBOpenCalculationCommand *)self init];
  if (v5)
  {
    input = [facadeCopy input];

    if (input)
    {
      input2 = [facadeCopy input];
      [(_SFPBOpenCalculationCommand *)v5 setInput:input2];
    }

    output = [facadeCopy output];

    if (output)
    {
      output2 = [facadeCopy output];
      [(_SFPBOpenCalculationCommand *)v5 setOutput:output2];
    }

    if ([facadeCopy hasShouldOpenCurrencyConversionProvider])
    {
      -[_SFPBOpenCalculationCommand setShouldOpenCurrencyConversionProvider:](v5, "setShouldOpenCurrencyConversionProvider:", [facadeCopy shouldOpenCurrencyConversionProvider]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBOpenCalculationCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBOpenCalculationCommand;
  v5 = [(_SFPBOpenCalculationCommand *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"input"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBOpenCalculationCommand *)v5 setInput:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"output"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBOpenCalculationCommand *)v5 setOutput:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"shouldOpenCurrencyConversionProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBOpenCalculationCommand setShouldOpenCurrencyConversionProvider:](v5, "setShouldOpenCurrencyConversionProvider:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBOpenCalculationCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBOpenCalculationCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBOpenCalculationCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_input)
  {
    input = [(_SFPBOpenCalculationCommand *)self input];
    v5 = [input copy];
    [dictionary setObject:v5 forKeyedSubscript:@"input"];
  }

  if (self->_output)
  {
    output = [(_SFPBOpenCalculationCommand *)self output];
    v7 = [output copy];
    [dictionary setObject:v7 forKeyedSubscript:@"output"];
  }

  if (self->_shouldOpenCurrencyConversionProvider)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBOpenCalculationCommand shouldOpenCurrencyConversionProvider](self, "shouldOpenCurrencyConversionProvider")}];
    [dictionary setObject:v8 forKeyedSubscript:@"shouldOpenCurrencyConversionProvider"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_input hash];
  v4 = [(NSString *)self->_output hash];
  v5 = 2654435761;
  if (!self->_shouldOpenCurrencyConversionProvider)
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  input = [(_SFPBOpenCalculationCommand *)self input];
  input2 = [equalCopy input];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_11;
  }

  input3 = [(_SFPBOpenCalculationCommand *)self input];
  if (input3)
  {
    v8 = input3;
    input4 = [(_SFPBOpenCalculationCommand *)self input];
    input5 = [equalCopy input];
    v11 = [input4 isEqual:input5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  input = [(_SFPBOpenCalculationCommand *)self output];
  input2 = [equalCopy output];
  if ((input != 0) != (input2 == 0))
  {
    output = [(_SFPBOpenCalculationCommand *)self output];
    if (!output)
    {

LABEL_15:
      shouldOpenCurrencyConversionProvider = self->_shouldOpenCurrencyConversionProvider;
      v17 = shouldOpenCurrencyConversionProvider == [equalCopy shouldOpenCurrencyConversionProvider];
      goto LABEL_13;
    }

    v13 = output;
    output2 = [(_SFPBOpenCalculationCommand *)self output];
    output3 = [equalCopy output];
    v16 = [output2 isEqual:output3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  input = [(_SFPBOpenCalculationCommand *)self input];
  if (input)
  {
    PBDataWriterWriteStringField();
  }

  output = [(_SFPBOpenCalculationCommand *)self output];
  if (output)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBOpenCalculationCommand *)self shouldOpenCurrencyConversionProvider])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setOutput:(id)output
{
  v4 = [output copy];
  output = self->_output;
  self->_output = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setInput:(id)input
{
  v4 = [input copy];
  input = self->_input;
  self->_input = v4;

  MEMORY[0x1EEE66BB8]();
}

@end