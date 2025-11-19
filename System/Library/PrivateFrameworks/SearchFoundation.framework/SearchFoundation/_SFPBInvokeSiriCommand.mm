@interface _SFPBInvokeSiriCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBInvokeSiriCommand)initWithDictionary:(id)a3;
- (_SFPBInvokeSiriCommand)initWithFacade:(id)a3;
- (_SFPBInvokeSiriCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setUtteranceText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBInvokeSiriCommand

- (_SFPBInvokeSiriCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBInvokeSiriCommand *)self init];
  if (v5)
  {
    v6 = [v4 utteranceText];

    if (v6)
    {
      v7 = [v4 utteranceText];
      [(_SFPBInvokeSiriCommand *)v5 setUtteranceText:v7];
    }

    if ([v4 hasServiceProvider])
    {
      -[_SFPBInvokeSiriCommand setServiceProvider:](v5, "setServiceProvider:", [v4 serviceProvider]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBInvokeSiriCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBInvokeSiriCommand;
  v5 = [(_SFPBInvokeSiriCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"utteranceText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBInvokeSiriCommand *)v5 setUtteranceText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"serviceProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBInvokeSiriCommand setServiceProvider:](v5, "setServiceProvider:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBInvokeSiriCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBInvokeSiriCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBInvokeSiriCommand *)self dictionaryRepresentation];
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
  if (self->_serviceProvider)
  {
    v4 = [(_SFPBInvokeSiriCommand *)self serviceProvider];
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = @"1";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
      }
    }

    else
    {
      v5 = @"0";
    }

    [v3 setObject:v5 forKeyedSubscript:@"serviceProvider"];
  }

  if (self->_utteranceText)
  {
    v6 = [(_SFPBInvokeSiriCommand *)self utteranceText];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"utteranceText"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBInvokeSiriCommand *)self utteranceText];
    v6 = [v4 utteranceText];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBInvokeSiriCommand *)self utteranceText];
      if (!v8)
      {

LABEL_10:
        serviceProvider = self->_serviceProvider;
        v13 = serviceProvider == [v4 serviceProvider];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBInvokeSiriCommand *)self utteranceText];
      v11 = [v4 utteranceText];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBInvokeSiriCommand *)self utteranceText];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBInvokeSiriCommand *)self serviceProvider])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setUtteranceText:(id)a3
{
  v4 = [a3 copy];
  utteranceText = self->_utteranceText;
  self->_utteranceText = v4;

  MEMORY[0x1EEE66BB8]();
}

@end