@interface RFTableContentColumnDefinition
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableContentColumnDefinition)initWithCoder:(id)a3;
- (RFTableContentColumnDefinition)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFTableContentColumnDefinition

- (unint64_t)hash
{
  v3 = [(RFTableContentColumnDefinition *)self size_percent];
  v4 = [v3 hash];
  v5 = v4 ^ [(RFTableContentColumnDefinition *)self horizontal_alignment];
  v6 = [(RFTableContentColumnDefinition *)self drop_order];
  v7 = [v6 hash];
  v8 = [(RFTableContentColumnDefinition *)self equal_size_column_group];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(RFTableContentColumnDefinition *)self disable_truncation];
  v11 = v10 ^ [(RFTableContentColumnDefinition *)self should_drop_in_flow_layout];

  return v9 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFTableContentColumnDefinition *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(RFTableContentColumnDefinition *)self size_percent];
      v9 = [(RFTableContentColumnDefinition *)v7 size_percent];
      if ((v8 != 0) == (v9 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_19:

        goto LABEL_20;
      }

      v10 = [(RFTableContentColumnDefinition *)self size_percent];
      if (v10)
      {
        v3 = [(RFTableContentColumnDefinition *)self size_percent];
        v4 = [(RFTableContentColumnDefinition *)v7 size_percent];
        if (![v3 isEqual:v4])
        {
          LOBYTE(v11) = 0;
          goto LABEL_17;
        }
      }

      v12 = [(RFTableContentColumnDefinition *)self horizontal_alignment];
      if (v12 == [(RFTableContentColumnDefinition *)v7 horizontal_alignment])
      {
        v13 = [(RFTableContentColumnDefinition *)self drop_order];
        v14 = [(RFTableContentColumnDefinition *)v7 drop_order];
        if ((v13 != 0) != (v14 == 0))
        {
          v36 = v14;
          v34 = v13;
          v35 = [(RFTableContentColumnDefinition *)self drop_order];
          if (v35)
          {
            v15 = [(RFTableContentColumnDefinition *)self drop_order];
            v32 = [(RFTableContentColumnDefinition *)v7 drop_order];
            v33 = v15;
            if (![v15 isEqual:?])
            {
              LOBYTE(v11) = 0;
              v16 = v13;
              v17 = v35;
              goto LABEL_26;
            }
          }

          v19 = [(RFTableContentColumnDefinition *)self equal_size_column_group];
          v20 = [(RFTableContentColumnDefinition *)v7 equal_size_column_group];
          if ((v19 != 0) == (v20 == 0))
          {

            LOBYTE(v11) = 0;
            v16 = v34;
            v17 = v35;
            if (!v35)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          v30 = v20;
          v31 = v19;
          v29 = [(RFTableContentColumnDefinition *)self equal_size_column_group];
          if (v29)
          {
            v21 = [(RFTableContentColumnDefinition *)self equal_size_column_group];
            [(RFTableContentColumnDefinition *)v7 equal_size_column_group];
            v28 = v27 = v21;
            v22 = [v21 isEqual:?];
            v17 = v35;
            if (!v22)
            {
              LOBYTE(v11) = 0;
              v23 = v28;
              v24 = v29;
              goto LABEL_34;
            }
          }

          else
          {
            v17 = v35;
          }

          v25 = [(RFTableContentColumnDefinition *)self disable_truncation];
          if (v25 == [(RFTableContentColumnDefinition *)v7 disable_truncation])
          {
            v26 = [(RFTableContentColumnDefinition *)self should_drop_in_flow_layout];
            v11 = v26 ^ [(RFTableContentColumnDefinition *)v7 should_drop_in_flow_layout]^ 1;
          }

          else
          {
            LOBYTE(v11) = 0;
          }

          v23 = v28;
          v24 = v29;
          if (!v29)
          {
LABEL_35:

            v16 = v34;
            if (!v17)
            {
LABEL_27:

              if (!v10)
              {
                goto LABEL_18;
              }

              goto LABEL_17;
            }

LABEL_26:

            goto LABEL_27;
          }

LABEL_34:

          goto LABEL_35;
        }
      }

      LOBYTE(v11) = 0;
      if (!v10)
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_18;
    }

    LOBYTE(v11) = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFTableContentColumnDefinition *)self size_percent];
  v6 = [v5 copy];
  [v4 setSize_percent:v6];

  [v4 setHorizontal_alignment:{-[RFTableContentColumnDefinition horizontal_alignment](self, "horizontal_alignment")}];
  v7 = [(RFTableContentColumnDefinition *)self drop_order];
  v8 = [v7 copy];
  [v4 setDrop_order:v8];

  v9 = [(RFTableContentColumnDefinition *)self equal_size_column_group];
  v10 = [v9 copy];
  [v4 setEqual_size_column_group:v10];

  [v4 setDisable_truncation:{-[RFTableContentColumnDefinition disable_truncation](self, "disable_truncation")}];
  [v4 setShould_drop_in_flow_layout:{-[RFTableContentColumnDefinition should_drop_in_flow_layout](self, "should_drop_in_flow_layout")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableContentColumnDefinition alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableContentColumnDefinition *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableContentColumnDefinition alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableContentColumnDefinition *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFTableContentColumnDefinition alloc] initWithFacade:self];
  v5 = [(_SFPBRFTableContentColumnDefinition *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFTableContentColumnDefinition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTableContentColumnDefinition alloc] initWithData:v5];
  v7 = [(RFTableContentColumnDefinition *)self initWithProtobuf:v6];

  return v7;
}

- (RFTableContentColumnDefinition)initWithProtobuf:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RFTableContentColumnDefinition;
  v5 = [(RFTableContentColumnDefinition *)&v13 init];
  if (v5)
  {
    [v4 size_percent];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [v4 size_percent];
      v8 = [v7 numberWithFloat:?];
      [(RFTableContentColumnDefinition *)v5 setSize_percent:v8];
    }

    if ([v4 horizontal_alignment])
    {
      -[RFTableContentColumnDefinition setHorizontal_alignment:](v5, "setHorizontal_alignment:", [v4 horizontal_alignment]);
    }

    if ([v4 drop_order])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "drop_order")}];
      [(RFTableContentColumnDefinition *)v5 setDrop_order:v9];
    }

    if ([v4 equal_size_column_group])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "equal_size_column_group")}];
      [(RFTableContentColumnDefinition *)v5 setEqual_size_column_group:v10];
    }

    if ([v4 disable_truncation])
    {
      -[RFTableContentColumnDefinition setDisable_truncation:](v5, "setDisable_truncation:", [v4 disable_truncation]);
    }

    if ([v4 should_drop_in_flow_layout])
    {
      -[RFTableContentColumnDefinition setShould_drop_in_flow_layout:](v5, "setShould_drop_in_flow_layout:", [v4 should_drop_in_flow_layout]);
    }

    v11 = v5;
  }

  return v5;
}

@end