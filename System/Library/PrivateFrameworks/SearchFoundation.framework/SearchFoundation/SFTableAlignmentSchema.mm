@interface SFTableAlignmentSchema
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTableAlignmentSchema)initWithCoder:(id)coder;
- (SFTableAlignmentSchema)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTableAlignmentSchema

- (unint64_t)hash
{
  tableColumnAlignment = [(SFTableAlignmentSchema *)self tableColumnAlignment];
  v4 = [tableColumnAlignment hash];
  metadata = [(SFTableAlignmentSchema *)self metadata];
  v6 = [metadata hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFTableAlignmentSchema *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      tableColumnAlignment = [(SFTableAlignmentSchema *)self tableColumnAlignment];
      tableColumnAlignment2 = [(SFTableAlignmentSchema *)v6 tableColumnAlignment];
      if ((tableColumnAlignment != 0) == (tableColumnAlignment2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      tableColumnAlignment3 = [(SFTableAlignmentSchema *)self tableColumnAlignment];
      if (tableColumnAlignment3)
      {
        tableColumnAlignment4 = [(SFTableAlignmentSchema *)self tableColumnAlignment];
        tableColumnAlignment5 = [(SFTableAlignmentSchema *)v6 tableColumnAlignment];
        if (![tableColumnAlignment4 isEqual:tableColumnAlignment5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = tableColumnAlignment5;
      }

      metadata = [(SFTableAlignmentSchema *)self metadata];
      metadata2 = [(SFTableAlignmentSchema *)v6 metadata];
      v14 = metadata2;
      if ((metadata != 0) == (metadata2 == 0))
      {

        v11 = 0;
      }

      else
      {
        metadata3 = [(SFTableAlignmentSchema *)self metadata];
        if (metadata3)
        {
          v16 = metadata3;
          metadata4 = [(SFTableAlignmentSchema *)self metadata];
          [(SFTableAlignmentSchema *)v6 metadata];
          v17 = v20 = tableColumnAlignment4;
          v11 = [metadata4 isEqual:v17];

          tableColumnAlignment4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      tableColumnAlignment5 = v21;
      if (!tableColumnAlignment3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  tableColumnAlignment = [(SFTableAlignmentSchema *)self tableColumnAlignment];
  v6 = [tableColumnAlignment copy];
  [v4 setTableColumnAlignment:v6];

  metadata = [(SFTableAlignmentSchema *)self metadata];
  v8 = [metadata copy];
  [v4 setMetadata:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTableAlignmentSchema alloc] initWithFacade:self];
  jsonData = [(_SFPBTableAlignmentSchema *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTableAlignmentSchema alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTableAlignmentSchema *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBTableAlignmentSchema alloc] initWithFacade:self];
  data = [(_SFPBTableAlignmentSchema *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFTableAlignmentSchema)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTableAlignmentSchema alloc] initWithData:v5];
  v7 = [(SFTableAlignmentSchema *)self initWithProtobuf:v6];

  return v7;
}

- (SFTableAlignmentSchema)initWithProtobuf:(id)protobuf
{
  v26 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = SFTableAlignmentSchema;
  v5 = [(SFTableAlignmentSchema *)&v24 init];
  if (v5)
  {
    tableColumnAlignments = [protobufCopy tableColumnAlignments];
    if (tableColumnAlignments)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    tableColumnAlignments2 = [protobufCopy tableColumnAlignments];
    v9 = [tableColumnAlignments2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(tableColumnAlignments2);
          }

          v13 = [[SFTableColumnAlignment alloc] initWithProtobuf:*(*(&v20 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [tableColumnAlignments2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    [(SFTableAlignmentSchema *)v5 setTableColumnAlignment:v7];
    metadata = [protobufCopy metadata];

    if (metadata)
    {
      metadata2 = [protobufCopy metadata];
      v16 = _SFPBStringDictionaryHandwrittenTranslator(metadata2);
      [(SFTableAlignmentSchema *)v5 setMetadata:v16];
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

@end