@interface SFIndexState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFIndexState)initWithCoder:(id)coder;
- (SFIndexState)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFIndexState

- (unint64_t)hash
{
  percentMessagesIndexed = [(SFIndexState *)self percentMessagesIndexed];
  v4 = [percentMessagesIndexed hash];
  percentAttachmentsIndexed = [(SFIndexState *)self percentAttachmentsIndexed];
  v6 = [percentAttachmentsIndexed hash] ^ v4;
  searchIndex = [(SFIndexState *)self searchIndex];
  v8 = [searchIndex hash];
  totalMessageCount = [(SFIndexState *)self totalMessageCount];
  v10 = v6 ^ v8 ^ [totalMessageCount hash];
  indexedMessageCount = [(SFIndexState *)self indexedMessageCount];
  v12 = [indexedMessageCount hash];
  embeddedMessageCount = [(SFIndexState *)self embeddedMessageCount];
  v14 = v12 ^ [embeddedMessageCount hash];
  embeddedMessagePercentage = [(SFIndexState *)self embeddedMessagePercentage];
  v16 = v14 ^ [embeddedMessagePercentage hash];

  return v10 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFIndexState *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      percentMessagesIndexed = [(SFIndexState *)self percentMessagesIndexed];
      percentMessagesIndexed2 = [(SFIndexState *)v6 percentMessagesIndexed];
      if ((percentMessagesIndexed != 0) == (percentMessagesIndexed2 == 0))
      {
        v12 = 0;
LABEL_49:

        goto LABEL_50;
      }

      percentMessagesIndexed3 = [(SFIndexState *)self percentMessagesIndexed];
      if (percentMessagesIndexed3)
      {
        percentMessagesIndexed4 = [(SFIndexState *)self percentMessagesIndexed];
        percentMessagesIndexed5 = [(SFIndexState *)v6 percentMessagesIndexed];
        if (![percentMessagesIndexed4 isEqual:percentMessagesIndexed5])
        {
          v12 = 0;
          goto LABEL_47;
        }

        v70 = percentMessagesIndexed5;
        v71 = percentMessagesIndexed4;
      }

      percentAttachmentsIndexed = [(SFIndexState *)self percentAttachmentsIndexed];
      percentAttachmentsIndexed2 = [(SFIndexState *)v6 percentAttachmentsIndexed];
      if ((percentAttachmentsIndexed != 0) != (percentAttachmentsIndexed2 == 0))
      {
        v69 = percentAttachmentsIndexed2;
        percentAttachmentsIndexed3 = [(SFIndexState *)self percentAttachmentsIndexed];
        if (percentAttachmentsIndexed3)
        {
          percentAttachmentsIndexed4 = [(SFIndexState *)self percentAttachmentsIndexed];
          percentAttachmentsIndexed5 = [(SFIndexState *)v6 percentAttachmentsIndexed];
          if (([percentAttachmentsIndexed4 isEqual:percentAttachmentsIndexed5] & 1) == 0)
          {

LABEL_44:
LABEL_45:
            v12 = 0;
            goto LABEL_46;
          }

          v67 = percentAttachmentsIndexed5;
          v68 = percentAttachmentsIndexed;
          v3 = percentAttachmentsIndexed4;
          v18 = percentAttachmentsIndexed3;
        }

        else
        {
          v68 = percentAttachmentsIndexed;
          v18 = 0;
        }

        searchIndex = [(SFIndexState *)self searchIndex];
        searchIndex2 = [(SFIndexState *)v6 searchIndex];
        v21 = v18;
        v22 = v3;
        if ((searchIndex != 0) != (searchIndex2 == 0))
        {
          v65 = searchIndex;
          v66 = searchIndex2;
          searchIndex3 = [(SFIndexState *)self searchIndex];
          if (searchIndex3)
          {
            searchIndex4 = [(SFIndexState *)self searchIndex];
            searchIndex5 = [(SFIndexState *)v6 searchIndex];
            if (([searchIndex4 isEqual:searchIndex5] & 1) == 0)
            {

              if (v21)
              {
              }

              goto LABEL_45;
            }

            v62 = searchIndex5;
            v63 = searchIndex4;
            v25 = v21;
          }

          else
          {
            v25 = v21;
          }

          totalMessageCount = [(SFIndexState *)self totalMessageCount];
          totalMessageCount2 = [(SFIndexState *)v6 totalMessageCount];
          v21 = v25;
          v22 = v3;
          if ((totalMessageCount != 0) != (totalMessageCount2 == 0))
          {
            v61 = totalMessageCount2;
            totalMessageCount3 = [(SFIndexState *)self totalMessageCount];
            if (totalMessageCount3)
            {
              totalMessageCount4 = [(SFIndexState *)self totalMessageCount];
              totalMessageCount5 = [(SFIndexState *)v6 totalMessageCount];
              v58 = totalMessageCount4;
              if (![totalMessageCount4 isEqual:?])
              {
                v12 = 0;
                v34 = totalMessageCount3;
                goto LABEL_71;
              }

              v59 = v21;
            }

            else
            {
              v59 = v21;
            }

            indexedMessageCount = [(SFIndexState *)self indexedMessageCount];
            indexedMessageCount2 = [(SFIndexState *)v6 indexedMessageCount];
            if ((indexedMessageCount != 0) != (indexedMessageCount2 == 0))
            {
              v56 = indexedMessageCount2;
              indexedMessageCount3 = [(SFIndexState *)self indexedMessageCount];
              v55 = indexedMessageCount;
              if (indexedMessageCount3)
              {
                indexedMessageCount4 = [(SFIndexState *)self indexedMessageCount];
                indexedMessageCount5 = [(SFIndexState *)v6 indexedMessageCount];
                v53 = indexedMessageCount4;
                if (![indexedMessageCount4 isEqual:?])
                {
                  v12 = 0;
                  v37 = indexedMessageCount3;
                  v21 = v59;
LABEL_69:

LABEL_70:
                  v34 = totalMessageCount3;
                  if (!totalMessageCount3)
                  {
LABEL_72:

                    if (searchIndex3)
                    {
                    }

                    if (v21)
                    {
                    }

LABEL_46:
                    percentMessagesIndexed5 = v70;
                    percentMessagesIndexed4 = v71;
                    if (!percentMessagesIndexed3)
                    {
LABEL_48:

                      goto LABEL_49;
                    }

LABEL_47:

                    goto LABEL_48;
                  }

LABEL_71:

                  goto LABEL_72;
                }

                v54 = indexedMessageCount3;
              }

              else
              {
                v54 = 0;
              }

              embeddedMessageCount = [(SFIndexState *)self embeddedMessageCount];
              embeddedMessageCount2 = [(SFIndexState *)v6 embeddedMessageCount];
              if ((embeddedMessageCount != 0) == (embeddedMessageCount2 == 0))
              {

                v12 = 0;
                v21 = v59;
                goto LABEL_68;
              }

              v51 = embeddedMessageCount2;
              [(SFIndexState *)self embeddedMessageCount];
              v21 = v59;
              v50 = v49 = embeddedMessageCount;
              if (v50 && (-[SFIndexState embeddedMessageCount](self, "embeddedMessageCount"), v48 = objc_claimAutoreleasedReturnValue(), -[SFIndexState embeddedMessageCount](v6, "embeddedMessageCount"), v46 = objc_claimAutoreleasedReturnValue(), ![v48 isEqual:?]))
              {
                v12 = 0;
                v42 = v50;
              }

              else
              {
                embeddedMessagePercentage = [(SFIndexState *)self embeddedMessagePercentage];
                embeddedMessagePercentage2 = [(SFIndexState *)v6 embeddedMessagePercentage];
                if ((embeddedMessagePercentage != 0) == (embeddedMessagePercentage2 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                }

                else
                {
                  v45 = embeddedMessagePercentage2;
                  v47 = embeddedMessagePercentage;
                  embeddedMessagePercentage3 = [(SFIndexState *)self embeddedMessagePercentage];
                  v21 = v59;
                  if (embeddedMessagePercentage3)
                  {
                    v41 = embeddedMessagePercentage3;
                    embeddedMessagePercentage4 = [(SFIndexState *)self embeddedMessagePercentage];
                    embeddedMessagePercentage5 = [(SFIndexState *)v6 embeddedMessagePercentage];
                    v12 = [embeddedMessagePercentage4 isEqual:embeddedMessagePercentage5];
                  }

                  else
                  {

                    v12 = 1;
                  }
                }

                v42 = v50;
                if (!v50)
                {
                  goto LABEL_67;
                }
              }

LABEL_67:
LABEL_68:
              v37 = v54;
              if (!v54)
              {
                goto LABEL_70;
              }

              goto LABEL_69;
            }

            if (totalMessageCount3)
            {
            }

            v21 = v59;
            totalMessageCount2 = v61;
          }

          if (searchIndex3)
          {
          }

          searchIndex = v65;
          searchIndex2 = v66;
        }

        if (v21)
        {
        }

        percentAttachmentsIndexed = v68;
        percentAttachmentsIndexed2 = v69;
      }

      goto LABEL_44;
    }

    v12 = 0;
  }

LABEL_50:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  percentMessagesIndexed = [(SFIndexState *)self percentMessagesIndexed];
  v6 = [percentMessagesIndexed copy];
  [v4 setPercentMessagesIndexed:v6];

  percentAttachmentsIndexed = [(SFIndexState *)self percentAttachmentsIndexed];
  v8 = [percentAttachmentsIndexed copy];
  [v4 setPercentAttachmentsIndexed:v8];

  searchIndex = [(SFIndexState *)self searchIndex];
  v10 = [searchIndex copy];
  [v4 setSearchIndex:v10];

  totalMessageCount = [(SFIndexState *)self totalMessageCount];
  v12 = [totalMessageCount copy];
  [v4 setTotalMessageCount:v12];

  indexedMessageCount = [(SFIndexState *)self indexedMessageCount];
  v14 = [indexedMessageCount copy];
  [v4 setIndexedMessageCount:v14];

  embeddedMessageCount = [(SFIndexState *)self embeddedMessageCount];
  v16 = [embeddedMessageCount copy];
  [v4 setEmbeddedMessageCount:v16];

  embeddedMessagePercentage = [(SFIndexState *)self embeddedMessagePercentage];
  v18 = [embeddedMessagePercentage copy];
  [v4 setEmbeddedMessagePercentage:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBIndexState alloc] initWithFacade:self];
  jsonData = [(_SFPBIndexState *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBIndexState alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBIndexState *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBIndexState alloc] initWithFacade:self];
  data = [(_SFPBIndexState *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFIndexState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBIndexState alloc] initWithData:v5];
  v7 = [(SFIndexState *)self initWithProtobuf:v6];

  return v7;
}

- (SFIndexState)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v15.receiver = self;
  v15.super_class = SFIndexState;
  v5 = [(SFIndexState *)&v15 init];
  if (v5)
  {
    if ([protobufCopy percentMessagesIndexed])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "percentMessagesIndexed")}];
      [(SFIndexState *)v5 setPercentMessagesIndexed:v6];
    }

    if ([protobufCopy percentAttachmentsIndexed])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "percentAttachmentsIndexed")}];
      [(SFIndexState *)v5 setPercentAttachmentsIndexed:v7];
    }

    if ([protobufCopy searchIndex])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "searchIndex")}];
      [(SFIndexState *)v5 setSearchIndex:v8];
    }

    if ([protobufCopy totalMessageCount])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "totalMessageCount")}];
      [(SFIndexState *)v5 setTotalMessageCount:v9];
    }

    if ([protobufCopy indexedMessageCount])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "indexedMessageCount")}];
      [(SFIndexState *)v5 setIndexedMessageCount:v10];
    }

    if ([protobufCopy embeddedMessageCount])
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "embeddedMessageCount")}];
      [(SFIndexState *)v5 setEmbeddedMessageCount:v11];
    }

    if ([protobufCopy embeddedMessagePercentage])
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "embeddedMessagePercentage")}];
      [(SFIndexState *)v5 setEmbeddedMessagePercentage:v12];
    }

    v13 = v5;
  }

  return v5;
}

@end