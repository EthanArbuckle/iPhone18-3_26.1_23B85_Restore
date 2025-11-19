@interface _SFPBOpenCalculationCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBOpenCalculationCommand)initWithDictionary:(id)a3;
- (_SFPBOpenCalculationCommand)initWithFacade:(id)a3;
- (_SFPBOpenCalculationCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setInput:(id)a3;
- (void)setOutput:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBOpenCalculationCommand

- (_SFPBOpenCalculationCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBOpenCalculationCommand *)self init];
  if (v5)
  {
    v6 = [v4 input];

    if (v6)
    {
      v7 = [v4 input];
      [(_SFPBOpenCalculationCommand *)v5 setInput:v7];
    }

    v8 = [v4 output];

    if (v8)
    {
      v9 = [v4 output];
      [(_SFPBOpenCalculationCommand *)v5 setOutput:v9];
    }

    if ([v4 hasShouldOpenCurrencyConversionProvider])
    {
      -[_SFPBOpenCalculationCommand setShouldOpenCurrencyConversionProvider:](v5, "setShouldOpenCurrencyConversionProvider:", [v4 shouldOpenCurrencyConversionProvider]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBOpenCalculationCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBOpenCalculationCommand;
  v5 = [(_SFPBOpenCalculationCommand *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"input"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBOpenCalculationCommand *)v5 setInput:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"output"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBOpenCalculationCommand *)v5 setOutput:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"shouldOpenCurrencyConversionProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBOpenCalculationCommand setShouldOpenCurrencyConversionProvider:](v5, "setShouldOpenCurrencyConversionProvider:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBOpenCalculationCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBOpenCalculationCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBOpenCalculationCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_input)
  {
    v4 = [(_SFPBOpenCalculationCommand *)self input];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"input"];
  }

  if (self->_output)
  {
    v6 = [(_SFPBOpenCalculationCommand *)self output];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"output"];
  }

  if (self->_shouldOpenCurrencyConversionProvider)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBOpenCalculationCommand shouldOpenCurrencyConversionProvider](self, "shouldOpenCurrencyConversionProvider")}];
    [v3 setObject:v8 forKeyedSubscript:@"shouldOpenCurrencyConversionProvider"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBOpenCalculationCommand *)self input];
  v6 = [v4 input];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBOpenCalculationCommand *)self input];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBOpenCalculationCommand *)self input];
    v10 = [v4 input];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBOpenCalculationCommand *)self output];
  v6 = [v4 output];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBOpenCalculationCommand *)self output];
    if (!v12)
    {

LABEL_15:
      shouldOpenCurrencyConversionProvider = self->_shouldOpenCurrencyConversionProvider;
      v17 = shouldOpenCurrencyConversionProvider == [v4 shouldOpenCurrencyConversionProvider];
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBOpenCalculationCommand *)self output];
    v15 = [v4 output];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_SFPBOpenCalculationCommand *)self input];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBOpenCalculationCommand *)self output];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBOpenCalculationCommand *)self shouldOpenCurrencyConversionProvider])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setOutput:(id)a3
{
  v4 = [a3 copy];
  output = self->_output;
  self->_output = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setInput:(id)a3
{
  v4 = [a3 copy];
  input = self->_input;
  self->_input = v4;

  MEMORY[0x1EEE66BB8]();
}

@end