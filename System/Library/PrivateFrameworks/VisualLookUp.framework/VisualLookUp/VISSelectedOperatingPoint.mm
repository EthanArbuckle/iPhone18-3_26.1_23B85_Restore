@interface VISSelectedOperatingPoint
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VISSelectedOperatingPoint)initWithDictionary:(id)a3;
- (VISSelectedOperatingPoint)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation VISSelectedOperatingPoint

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(VISSelectedOperatingPoint *)self selector];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(VISSelectedOperatingPoint *)self selected];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(VISSelectedOperatingPoint *)self selector];
  v6 = [v4 selector];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(VISSelectedOperatingPoint *)self selector];
  if (v7)
  {
    v8 = v7;
    v9 = [(VISSelectedOperatingPoint *)self selector];
    v10 = [v4 selector];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(VISSelectedOperatingPoint *)self selected];
  v6 = [v4 selected];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(VISSelectedOperatingPoint *)self selected];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(VISSelectedOperatingPoint *)self selected];
    v15 = [v4 selected];
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

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_selected)
  {
    v4 = [(VISSelectedOperatingPoint *)self selected];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"selected"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"selected"];
    }
  }

  if (self->_selector)
  {
    v7 = [(VISSelectedOperatingPoint *)self selector];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"selector"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"selector"];
    }
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VISSelectedOperatingPoint *)self dictionaryRepresentation];
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

- (VISSelectedOperatingPoint)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VISSelectedOperatingPoint *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VISSelectedOperatingPoint)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VISSelectedOperatingPoint;
  v5 = [(VISSelectedOperatingPoint *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"selector"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[VISOperatingPointSelectors alloc] initWithDictionary:v6];
      [(VISSelectedOperatingPoint *)v5 setSelector:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"selected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[VISLabeledPRPoint alloc] initWithDictionary:v8];
      [(VISSelectedOperatingPoint *)v5 setSelected:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end