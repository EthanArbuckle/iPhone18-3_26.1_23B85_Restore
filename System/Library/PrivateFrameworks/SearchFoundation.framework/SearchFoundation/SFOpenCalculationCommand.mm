@interface SFOpenCalculationCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenCalculationCommand)initWithCoder:(id)a3;
- (SFOpenCalculationCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFOpenCalculationCommand

- (SFOpenCalculationCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFOpenCalculationCommand;
  v5 = [(SFOpenCalculationCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 input];

    if (v6)
    {
      v7 = [v4 input];
      [(SFOpenCalculationCommand *)v5 setInput:v7];
    }

    v8 = [v4 output];

    if (v8)
    {
      v9 = [v4 output];
      [(SFOpenCalculationCommand *)v5 setOutput:v9];
    }

    if ([v4 shouldOpenCurrencyConversionProvider])
    {
      -[SFOpenCalculationCommand setShouldOpenCurrencyConversionProvider:](v5, "setShouldOpenCurrencyConversionProvider:", [v4 shouldOpenCurrencyConversionProvider]);
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
  v4 = [(SFOpenCalculationCommand *)self input];
  v5 = [v4 hash];
  v6 = [(SFOpenCalculationCommand *)self output];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFOpenCalculationCommand *)self shouldOpenCurrencyConversionProvider];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFOpenCalculationCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFOpenCalculationCommand;
      if ([(SFCommand *)&v23 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFOpenCalculationCommand *)self input];
        v8 = [(SFOpenCalculationCommand *)v6 input];
        if ((v7 != 0) == (v8 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v9 = [(SFOpenCalculationCommand *)self input];
        if (v9)
        {
          v10 = [(SFOpenCalculationCommand *)self input];
          v3 = [(SFOpenCalculationCommand *)v6 input];
          if (![v10 isEqual:v3])
          {
            LOBYTE(v11) = 0;
            goto LABEL_23;
          }

          v22 = v10;
        }

        v12 = [(SFOpenCalculationCommand *)self output];
        v13 = [(SFOpenCalculationCommand *)v6 output];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          LOBYTE(v11) = 0;
          goto LABEL_22;
        }

        v15 = [(SFOpenCalculationCommand *)self output];
        if (v15)
        {
          v19 = v3;
          v16 = [(SFOpenCalculationCommand *)self output];
          v20 = [(SFOpenCalculationCommand *)v6 output];
          v21 = v16;
          if (![v16 isEqual:?])
          {
            LOBYTE(v11) = 0;
            v3 = v19;
LABEL_20:

LABEL_21:
LABEL_22:
            v10 = v22;
            if (!v9)
            {
LABEL_24:

              goto LABEL_25;
            }

LABEL_23:

            goto LABEL_24;
          }

          v3 = v19;
        }

        v17 = [(SFOpenCalculationCommand *)self shouldOpenCurrencyConversionProvider];
        v11 = v17 ^ [(SFOpenCalculationCommand *)v6 shouldOpenCurrencyConversionProvider]^ 1;
        if (!v15)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFOpenCalculationCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFOpenCalculationCommand *)self input];
  v6 = [v5 copy];
  [v4 setInput:v6];

  v7 = [(SFOpenCalculationCommand *)self output];
  v8 = [v7 copy];
  [v4 setOutput:v8];

  [v4 setShouldOpenCurrencyConversionProvider:{-[SFOpenCalculationCommand shouldOpenCurrencyConversionProvider](self, "shouldOpenCurrencyConversionProvider")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenCalculationCommand alloc] initWithFacade:self];
  v3 = [(_SFPBOpenCalculationCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenCalculationCommand alloc] initWithFacade:self];
  v3 = [(_SFPBOpenCalculationCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFOpenCalculationCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFOpenCalculationCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFOpenCalculationCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 input];
    [(SFOpenCalculationCommand *)v5 setInput:v9];

    v10 = [(SFCommand *)v8 output];
    [(SFOpenCalculationCommand *)v5 setOutput:v10];

    [(SFOpenCalculationCommand *)v5 setShouldOpenCurrencyConversionProvider:[(SFCommand *)v8 shouldOpenCurrencyConversionProvider]];
    v11 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v11];

    v12 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v12];

    v13 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v13];

    v14 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v14];
  }

  return v5;
}

@end