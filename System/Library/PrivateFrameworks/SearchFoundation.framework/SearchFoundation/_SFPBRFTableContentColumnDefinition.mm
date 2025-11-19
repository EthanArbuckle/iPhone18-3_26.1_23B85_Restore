@interface _SFPBRFTableContentColumnDefinition
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFTableContentColumnDefinition)initWithDictionary:(id)a3;
- (_SFPBRFTableContentColumnDefinition)initWithFacade:(id)a3;
- (_SFPBRFTableContentColumnDefinition)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFTableContentColumnDefinition

- (_SFPBRFTableContentColumnDefinition)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFTableContentColumnDefinition *)self init];
  if (v5)
  {
    v6 = [v4 size_percent];

    if (v6)
    {
      v7 = [v4 size_percent];
      [v7 floatValue];
      [(_SFPBRFTableContentColumnDefinition *)v5 setSize_percent:?];
    }

    if ([v4 hasHorizontal_alignment])
    {
      -[_SFPBRFTableContentColumnDefinition setHorizontal_alignment:](v5, "setHorizontal_alignment:", [v4 horizontal_alignment]);
    }

    v8 = [v4 drop_order];

    if (v8)
    {
      v9 = [v4 drop_order];
      -[_SFPBRFTableContentColumnDefinition setDrop_order:](v5, "setDrop_order:", [v9 intValue]);
    }

    v10 = [v4 equal_size_column_group];

    if (v10)
    {
      v11 = [v4 equal_size_column_group];
      -[_SFPBRFTableContentColumnDefinition setEqual_size_column_group:](v5, "setEqual_size_column_group:", [v11 intValue]);
    }

    if ([v4 hasDisable_truncation])
    {
      -[_SFPBRFTableContentColumnDefinition setDisable_truncation:](v5, "setDisable_truncation:", [v4 disable_truncation]);
    }

    if ([v4 hasShould_drop_in_flow_layout])
    {
      -[_SFPBRFTableContentColumnDefinition setShould_drop_in_flow_layout:](v5, "setShould_drop_in_flow_layout:", [v4 should_drop_in_flow_layout]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFTableContentColumnDefinition)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBRFTableContentColumnDefinition;
  v5 = [(_SFPBRFTableContentColumnDefinition *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sizePercent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(_SFPBRFTableContentColumnDefinition *)v5 setSize_percent:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"horizontalAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableContentColumnDefinition setHorizontal_alignment:](v5, "setHorizontal_alignment:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"dropOrder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableContentColumnDefinition setDrop_order:](v5, "setDrop_order:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"equalSizeColumnGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableContentColumnDefinition setEqual_size_column_group:](v5, "setEqual_size_column_group:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"disableTruncation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableContentColumnDefinition setDisable_truncation:](v5, "setDisable_truncation:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"shouldDropInFlowLayout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableContentColumnDefinition setShould_drop_in_flow_layout:](v5, "setShould_drop_in_flow_layout:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFTableContentColumnDefinition)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFTableContentColumnDefinition *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFTableContentColumnDefinition *)self dictionaryRepresentation];
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
  if (self->_disable_truncation)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFTableContentColumnDefinition disable_truncation](self, "disable_truncation")}];
    [v3 setObject:v4 forKeyedSubscript:@"disableTruncation"];
  }

  if (self->_drop_order)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRFTableContentColumnDefinition drop_order](self, "drop_order")}];
    [v3 setObject:v5 forKeyedSubscript:@"dropOrder"];
  }

  if (self->_equal_size_column_group)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRFTableContentColumnDefinition equal_size_column_group](self, "equal_size_column_group")}];
    [v3 setObject:v6 forKeyedSubscript:@"equalSizeColumnGroup"];
  }

  if (self->_horizontal_alignment)
  {
    v7 = [(_SFPBRFTableContentColumnDefinition *)self horizontal_alignment];
    if (v7 >= 4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
    }

    else
    {
      v8 = off_1E7ACE560[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"horizontalAlignment"];
  }

  if (self->_should_drop_in_flow_layout)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFTableContentColumnDefinition should_drop_in_flow_layout](self, "should_drop_in_flow_layout")}];
    [v3 setObject:v9 forKeyedSubscript:@"shouldDropInFlowLayout"];
  }

  if (self->_size_percent != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(_SFPBRFTableContentColumnDefinition *)self size_percent];
    v11 = [v10 numberWithFloat:?];
    [v3 setObject:v11 forKeyedSubscript:@"sizePercent"];
  }

  return v3;
}

- (unint64_t)hash
{
  v4 = 2654435761;
  size_percent = self->_size_percent;
  v6 = size_percent < 0.0;
  if (size_percent == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v7 = size_percent;
    if (v6)
    {
      v7 = -v7;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v10 += v8;
      }
    }

    else
    {
      v10 -= fabs(v8);
    }
  }

  if (self->_disable_truncation)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  if (!self->_should_drop_in_flow_layout)
  {
    v4 = 0;
  }

  return (2654435761 * self->_horizontal_alignment) ^ v10 ^ (2654435761 * self->_drop_order) ^ (2654435761 * self->_equal_size_column_group) ^ v11 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (size_percent = self->_size_percent, objc_msgSend(v4, "size_percent"), size_percent == v6) && (horizontal_alignment = self->_horizontal_alignment, horizontal_alignment == objc_msgSend(v4, "horizontal_alignment")) && (drop_order = self->_drop_order, drop_order == objc_msgSend(v4, "drop_order")) && (equal_size_column_group = self->_equal_size_column_group, equal_size_column_group == objc_msgSend(v4, "equal_size_column_group")) && (disable_truncation = self->_disable_truncation, disable_truncation == objc_msgSend(v4, "disable_truncation")))
  {
    should_drop_in_flow_layout = self->_should_drop_in_flow_layout;
    v12 = should_drop_in_flow_layout == [v4 should_drop_in_flow_layout];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  [(_SFPBRFTableContentColumnDefinition *)self size_percent];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBRFTableContentColumnDefinition *)self horizontal_alignment])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFTableContentColumnDefinition *)self drop_order])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFTableContentColumnDefinition *)self equal_size_column_group])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFTableContentColumnDefinition *)self disable_truncation])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRFTableContentColumnDefinition *)self should_drop_in_flow_layout])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end