@interface _SFPBPointSize
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPointSize)initWithCGSize:(CGSize)a3;
- (_SFPBPointSize)initWithDictionary:(id)a3;
- (_SFPBPointSize)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPointSize

- (_SFPBPointSize)initWithCGSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = _SFPBPointSize;
  v5 = [(_SFPBPointSize *)&v10 init];
  if (v5)
  {
    v6 = [[_SFPBGraphicalFloat alloc] initWithCGFloat:width];
    [(_SFPBPointSize *)v5 setWidth:v6];

    v7 = [[_SFPBGraphicalFloat alloc] initWithCGFloat:height];
    [(_SFPBPointSize *)v5 setHeight:v7];

    v8 = v5;
  }

  return v5;
}

- (_SFPBPointSize)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBPointSize;
  v5 = [(_SFPBPointSize *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"width"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v6];
      [(_SFPBPointSize *)v5 setWidth:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v8];
      [(_SFPBPointSize *)v5 setHeight:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPointSize)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPointSize *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPointSize *)self dictionaryRepresentation];
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
  if (self->_height)
  {
    v4 = [(_SFPBPointSize *)self height];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"height"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"height"];
    }
  }

  if (self->_width)
  {
    v7 = [(_SFPBPointSize *)self width];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"width"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"width"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBPointSize *)self width];
  v6 = [v4 width];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBPointSize *)self width];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPointSize *)self width];
    v10 = [v4 width];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPointSize *)self height];
  v6 = [v4 height];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBPointSize *)self height];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBPointSize *)self height];
    v15 = [v4 height];
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
  v4 = [(_SFPBPointSize *)self width];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBPointSize *)self height];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end