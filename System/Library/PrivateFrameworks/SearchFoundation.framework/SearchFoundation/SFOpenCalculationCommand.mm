@interface SFOpenCalculationCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenCalculationCommand)initWithCoder:(id)coder;
- (SFOpenCalculationCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFOpenCalculationCommand

- (SFOpenCalculationCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFOpenCalculationCommand;
  v5 = [(SFOpenCalculationCommand *)&v12 init];
  if (v5)
  {
    input = [protobufCopy input];

    if (input)
    {
      input2 = [protobufCopy input];
      [(SFOpenCalculationCommand *)v5 setInput:input2];
    }

    output = [protobufCopy output];

    if (output)
    {
      output2 = [protobufCopy output];
      [(SFOpenCalculationCommand *)v5 setOutput:output2];
    }

    if ([protobufCopy shouldOpenCurrencyConversionProvider])
    {
      -[SFOpenCalculationCommand setShouldOpenCurrencyConversionProvider:](v5, "setShouldOpenCurrencyConversionProvider:", [protobufCopy shouldOpenCurrencyConversionProvider]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFOpenCalculationCommand;
  v3 = [(SFCommand *)&v10 hash];
  input = [(SFOpenCalculationCommand *)self input];
  v5 = [input hash];
  output = [(SFOpenCalculationCommand *)self output];
  v7 = v5 ^ [output hash];
  v8 = v7 ^ [(SFOpenCalculationCommand *)self shouldOpenCurrencyConversionProvider];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFOpenCalculationCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFOpenCalculationCommand;
      if ([(SFCommand *)&v23 isEqual:equalCopy])
      {
        v6 = equalCopy;
        input = [(SFOpenCalculationCommand *)self input];
        input2 = [(SFOpenCalculationCommand *)v6 input];
        if ((input != 0) == (input2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_25:

          goto LABEL_26;
        }

        input3 = [(SFOpenCalculationCommand *)self input];
        if (input3)
        {
          input4 = [(SFOpenCalculationCommand *)self input];
          input5 = [(SFOpenCalculationCommand *)v6 input];
          if (![input4 isEqual:input5])
          {
            LOBYTE(v11) = 0;
            goto LABEL_23;
          }

          v22 = input4;
        }

        output = [(SFOpenCalculationCommand *)self output];
        output2 = [(SFOpenCalculationCommand *)v6 output];
        v14 = output2;
        if ((output != 0) == (output2 == 0))
        {

          LOBYTE(v11) = 0;
          goto LABEL_22;
        }

        output3 = [(SFOpenCalculationCommand *)self output];
        if (output3)
        {
          v19 = input5;
          output4 = [(SFOpenCalculationCommand *)self output];
          output5 = [(SFOpenCalculationCommand *)v6 output];
          v21 = output4;
          if (![output4 isEqual:?])
          {
            LOBYTE(v11) = 0;
            input5 = v19;
LABEL_20:

LABEL_21:
LABEL_22:
            input4 = v22;
            if (!input3)
            {
LABEL_24:

              goto LABEL_25;
            }

LABEL_23:

            goto LABEL_24;
          }

          input5 = v19;
        }

        shouldOpenCurrencyConversionProvider = [(SFOpenCalculationCommand *)self shouldOpenCurrencyConversionProvider];
        v11 = shouldOpenCurrencyConversionProvider ^ [(SFOpenCalculationCommand *)v6 shouldOpenCurrencyConversionProvider]^ 1;
        if (!output3)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_26:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFOpenCalculationCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  input = [(SFOpenCalculationCommand *)self input];
  v6 = [input copy];
  [v4 setInput:v6];

  output = [(SFOpenCalculationCommand *)self output];
  v8 = [output copy];
  [v4 setOutput:v8];

  [v4 setShouldOpenCurrencyConversionProvider:{-[SFOpenCalculationCommand shouldOpenCurrencyConversionProvider](self, "shouldOpenCurrencyConversionProvider")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenCalculationCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBOpenCalculationCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenCalculationCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBOpenCalculationCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFOpenCalculationCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFOpenCalculationCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFOpenCalculationCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    input = [(SFCommand *)v8 input];
    [(SFOpenCalculationCommand *)v5 setInput:input];

    output = [(SFCommand *)v8 output];
    [(SFOpenCalculationCommand *)v5 setOutput:output];

    [(SFOpenCalculationCommand *)v5 setShouldOpenCurrencyConversionProvider:[(SFCommand *)v8 shouldOpenCurrencyConversionProvider]];
    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

@end