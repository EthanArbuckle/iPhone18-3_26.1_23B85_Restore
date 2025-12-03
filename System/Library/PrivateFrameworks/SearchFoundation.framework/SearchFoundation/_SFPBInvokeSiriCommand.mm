@interface _SFPBInvokeSiriCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBInvokeSiriCommand)initWithDictionary:(id)dictionary;
- (_SFPBInvokeSiriCommand)initWithFacade:(id)facade;
- (_SFPBInvokeSiriCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setUtteranceText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation _SFPBInvokeSiriCommand

- (_SFPBInvokeSiriCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBInvokeSiriCommand *)self init];
  if (v5)
  {
    utteranceText = [facadeCopy utteranceText];

    if (utteranceText)
    {
      utteranceText2 = [facadeCopy utteranceText];
      [(_SFPBInvokeSiriCommand *)v5 setUtteranceText:utteranceText2];
    }

    if ([facadeCopy hasServiceProvider])
    {
      -[_SFPBInvokeSiriCommand setServiceProvider:](v5, "setServiceProvider:", [facadeCopy serviceProvider]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBInvokeSiriCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBInvokeSiriCommand;
  v5 = [(_SFPBInvokeSiriCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"utteranceText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBInvokeSiriCommand *)v5 setUtteranceText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"serviceProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBInvokeSiriCommand setServiceProvider:](v5, "setServiceProvider:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBInvokeSiriCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBInvokeSiriCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBInvokeSiriCommand *)self dictionaryRepresentation];
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
  if (self->_serviceProvider)
  {
    serviceProvider = [(_SFPBInvokeSiriCommand *)self serviceProvider];
    if (serviceProvider)
    {
      if (serviceProvider == 1)
      {
        v5 = @"1";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", serviceProvider];
      }
    }

    else
    {
      v5 = @"0";
    }

    [dictionary setObject:v5 forKeyedSubscript:@"serviceProvider"];
  }

  if (self->_utteranceText)
  {
    utteranceText = [(_SFPBInvokeSiriCommand *)self utteranceText];
    v7 = [utteranceText copy];
    [dictionary setObject:v7 forKeyedSubscript:@"utteranceText"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    utteranceText = [(_SFPBInvokeSiriCommand *)self utteranceText];
    utteranceText2 = [equalCopy utteranceText];
    v7 = utteranceText2;
    if ((utteranceText != 0) != (utteranceText2 == 0))
    {
      utteranceText3 = [(_SFPBInvokeSiriCommand *)self utteranceText];
      if (!utteranceText3)
      {

LABEL_10:
        serviceProvider = self->_serviceProvider;
        v13 = serviceProvider == [equalCopy serviceProvider];
        goto LABEL_8;
      }

      v9 = utteranceText3;
      utteranceText4 = [(_SFPBInvokeSiriCommand *)self utteranceText];
      utteranceText5 = [equalCopy utteranceText];
      v12 = [utteranceText4 isEqual:utteranceText5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  utteranceText = [(_SFPBInvokeSiriCommand *)self utteranceText];
  if (utteranceText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBInvokeSiriCommand *)self serviceProvider])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setUtteranceText:(id)text
{
  v4 = [text copy];
  utteranceText = self->_utteranceText;
  self->_utteranceText = v4;

  MEMORY[0x1EEE66BB8]();
}

@end