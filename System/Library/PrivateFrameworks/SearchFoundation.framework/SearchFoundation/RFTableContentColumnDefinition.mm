@interface RFTableContentColumnDefinition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableContentColumnDefinition)initWithCoder:(id)coder;
- (RFTableContentColumnDefinition)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFTableContentColumnDefinition

- (unint64_t)hash
{
  size_percent = [(RFTableContentColumnDefinition *)self size_percent];
  v4 = [size_percent hash];
  v5 = v4 ^ [(RFTableContentColumnDefinition *)self horizontal_alignment];
  drop_order = [(RFTableContentColumnDefinition *)self drop_order];
  v7 = [drop_order hash];
  equal_size_column_group = [(RFTableContentColumnDefinition *)self equal_size_column_group];
  v9 = v5 ^ v7 ^ [equal_size_column_group hash];
  disable_truncation = [(RFTableContentColumnDefinition *)self disable_truncation];
  v11 = disable_truncation ^ [(RFTableContentColumnDefinition *)self should_drop_in_flow_layout];

  return v9 ^ v11;
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
    if ([(RFTableContentColumnDefinition *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      size_percent = [(RFTableContentColumnDefinition *)self size_percent];
      size_percent2 = [(RFTableContentColumnDefinition *)v7 size_percent];
      if ((size_percent != 0) == (size_percent2 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_19:

        goto LABEL_20;
      }

      size_percent3 = [(RFTableContentColumnDefinition *)self size_percent];
      if (size_percent3)
      {
        size_percent4 = [(RFTableContentColumnDefinition *)self size_percent];
        size_percent5 = [(RFTableContentColumnDefinition *)v7 size_percent];
        if (![size_percent4 isEqual:size_percent5])
        {
          LOBYTE(v11) = 0;
          goto LABEL_17;
        }
      }

      horizontal_alignment = [(RFTableContentColumnDefinition *)self horizontal_alignment];
      if (horizontal_alignment == [(RFTableContentColumnDefinition *)v7 horizontal_alignment])
      {
        drop_order = [(RFTableContentColumnDefinition *)self drop_order];
        drop_order2 = [(RFTableContentColumnDefinition *)v7 drop_order];
        if ((drop_order != 0) != (drop_order2 == 0))
        {
          v36 = drop_order2;
          v34 = drop_order;
          drop_order3 = [(RFTableContentColumnDefinition *)self drop_order];
          if (drop_order3)
          {
            drop_order4 = [(RFTableContentColumnDefinition *)self drop_order];
            drop_order5 = [(RFTableContentColumnDefinition *)v7 drop_order];
            v33 = drop_order4;
            if (![drop_order4 isEqual:?])
            {
              LOBYTE(v11) = 0;
              v16 = drop_order;
              v17 = drop_order3;
              goto LABEL_26;
            }
          }

          equal_size_column_group = [(RFTableContentColumnDefinition *)self equal_size_column_group];
          equal_size_column_group2 = [(RFTableContentColumnDefinition *)v7 equal_size_column_group];
          if ((equal_size_column_group != 0) == (equal_size_column_group2 == 0))
          {

            LOBYTE(v11) = 0;
            v16 = v34;
            v17 = drop_order3;
            if (!drop_order3)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          v30 = equal_size_column_group2;
          v31 = equal_size_column_group;
          equal_size_column_group3 = [(RFTableContentColumnDefinition *)self equal_size_column_group];
          if (equal_size_column_group3)
          {
            equal_size_column_group4 = [(RFTableContentColumnDefinition *)self equal_size_column_group];
            [(RFTableContentColumnDefinition *)v7 equal_size_column_group];
            v28 = v27 = equal_size_column_group4;
            v22 = [equal_size_column_group4 isEqual:?];
            v17 = drop_order3;
            if (!v22)
            {
              LOBYTE(v11) = 0;
              v23 = v28;
              v24 = equal_size_column_group3;
              goto LABEL_34;
            }
          }

          else
          {
            v17 = drop_order3;
          }

          disable_truncation = [(RFTableContentColumnDefinition *)self disable_truncation];
          if (disable_truncation == [(RFTableContentColumnDefinition *)v7 disable_truncation])
          {
            should_drop_in_flow_layout = [(RFTableContentColumnDefinition *)self should_drop_in_flow_layout];
            v11 = should_drop_in_flow_layout ^ [(RFTableContentColumnDefinition *)v7 should_drop_in_flow_layout]^ 1;
          }

          else
          {
            LOBYTE(v11) = 0;
          }

          v23 = v28;
          v24 = equal_size_column_group3;
          if (!equal_size_column_group3)
          {
LABEL_35:

            v16 = v34;
            if (!v17)
            {
LABEL_27:

              if (!size_percent3)
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
      if (!size_percent3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  size_percent = [(RFTableContentColumnDefinition *)self size_percent];
  v6 = [size_percent copy];
  [v4 setSize_percent:v6];

  [v4 setHorizontal_alignment:{-[RFTableContentColumnDefinition horizontal_alignment](self, "horizontal_alignment")}];
  drop_order = [(RFTableContentColumnDefinition *)self drop_order];
  v8 = [drop_order copy];
  [v4 setDrop_order:v8];

  equal_size_column_group = [(RFTableContentColumnDefinition *)self equal_size_column_group];
  v10 = [equal_size_column_group copy];
  [v4 setEqual_size_column_group:v10];

  [v4 setDisable_truncation:{-[RFTableContentColumnDefinition disable_truncation](self, "disable_truncation")}];
  [v4 setShould_drop_in_flow_layout:{-[RFTableContentColumnDefinition should_drop_in_flow_layout](self, "should_drop_in_flow_layout")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableContentColumnDefinition alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTableContentColumnDefinition *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableContentColumnDefinition alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTableContentColumnDefinition *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFTableContentColumnDefinition alloc] initWithFacade:self];
  data = [(_SFPBRFTableContentColumnDefinition *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFTableContentColumnDefinition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTableContentColumnDefinition alloc] initWithData:v5];
  v7 = [(RFTableContentColumnDefinition *)self initWithProtobuf:v6];

  return v7;
}

- (RFTableContentColumnDefinition)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v13.receiver = self;
  v13.super_class = RFTableContentColumnDefinition;
  v5 = [(RFTableContentColumnDefinition *)&v13 init];
  if (v5)
  {
    [protobufCopy size_percent];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [protobufCopy size_percent];
      v8 = [v7 numberWithFloat:?];
      [(RFTableContentColumnDefinition *)v5 setSize_percent:v8];
    }

    if ([protobufCopy horizontal_alignment])
    {
      -[RFTableContentColumnDefinition setHorizontal_alignment:](v5, "setHorizontal_alignment:", [protobufCopy horizontal_alignment]);
    }

    if ([protobufCopy drop_order])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "drop_order")}];
      [(RFTableContentColumnDefinition *)v5 setDrop_order:v9];
    }

    if ([protobufCopy equal_size_column_group])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "equal_size_column_group")}];
      [(RFTableContentColumnDefinition *)v5 setEqual_size_column_group:v10];
    }

    if ([protobufCopy disable_truncation])
    {
      -[RFTableContentColumnDefinition setDisable_truncation:](v5, "setDisable_truncation:", [protobufCopy disable_truncation]);
    }

    if ([protobufCopy should_drop_in_flow_layout])
    {
      -[RFTableContentColumnDefinition setShould_drop_in_flow_layout:](v5, "setShould_drop_in_flow_layout:", [protobufCopy should_drop_in_flow_layout]);
    }

    v11 = v5;
  }

  return v5;
}

@end