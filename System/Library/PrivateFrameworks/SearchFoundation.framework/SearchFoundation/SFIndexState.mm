@interface SFIndexState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFIndexState)initWithCoder:(id)a3;
- (SFIndexState)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFIndexState

- (unint64_t)hash
{
  v3 = [(SFIndexState *)self percentMessagesIndexed];
  v4 = [v3 hash];
  v5 = [(SFIndexState *)self percentAttachmentsIndexed];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFIndexState *)self searchIndex];
  v8 = [v7 hash];
  v9 = [(SFIndexState *)self totalMessageCount];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SFIndexState *)self indexedMessageCount];
  v12 = [v11 hash];
  v13 = [(SFIndexState *)self embeddedMessageCount];
  v14 = v12 ^ [v13 hash];
  v15 = [(SFIndexState *)self embeddedMessagePercentage];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFIndexState *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFIndexState *)self percentMessagesIndexed];
      v8 = [(SFIndexState *)v6 percentMessagesIndexed];
      if ((v7 != 0) == (v8 == 0))
      {
        v12 = 0;
LABEL_49:

        goto LABEL_50;
      }

      v9 = [(SFIndexState *)self percentMessagesIndexed];
      if (v9)
      {
        v10 = [(SFIndexState *)self percentMessagesIndexed];
        v11 = [(SFIndexState *)v6 percentMessagesIndexed];
        if (![v10 isEqual:v11])
        {
          v12 = 0;
          goto LABEL_47;
        }

        v70 = v11;
        v71 = v10;
      }

      v13 = [(SFIndexState *)self percentAttachmentsIndexed];
      v14 = [(SFIndexState *)v6 percentAttachmentsIndexed];
      if ((v13 != 0) != (v14 == 0))
      {
        v69 = v14;
        v15 = [(SFIndexState *)self percentAttachmentsIndexed];
        if (v15)
        {
          v16 = [(SFIndexState *)self percentAttachmentsIndexed];
          v17 = [(SFIndexState *)v6 percentAttachmentsIndexed];
          if (([v16 isEqual:v17] & 1) == 0)
          {

LABEL_44:
LABEL_45:
            v12 = 0;
            goto LABEL_46;
          }

          v67 = v17;
          v68 = v13;
          v3 = v16;
          v18 = v15;
        }

        else
        {
          v68 = v13;
          v18 = 0;
        }

        v19 = [(SFIndexState *)self searchIndex];
        v20 = [(SFIndexState *)v6 searchIndex];
        v21 = v18;
        v22 = v3;
        if ((v19 != 0) != (v20 == 0))
        {
          v65 = v19;
          v66 = v20;
          v64 = [(SFIndexState *)self searchIndex];
          if (v64)
          {
            v23 = [(SFIndexState *)self searchIndex];
            v24 = [(SFIndexState *)v6 searchIndex];
            if (([v23 isEqual:v24] & 1) == 0)
            {

              if (v21)
              {
              }

              goto LABEL_45;
            }

            v62 = v24;
            v63 = v23;
            v25 = v21;
          }

          else
          {
            v25 = v21;
          }

          v26 = [(SFIndexState *)self totalMessageCount];
          v27 = [(SFIndexState *)v6 totalMessageCount];
          v21 = v25;
          v22 = v3;
          if ((v26 != 0) != (v27 == 0))
          {
            v61 = v27;
            v60 = [(SFIndexState *)self totalMessageCount];
            if (v60)
            {
              v28 = [(SFIndexState *)self totalMessageCount];
              v57 = [(SFIndexState *)v6 totalMessageCount];
              v58 = v28;
              if (![v28 isEqual:?])
              {
                v12 = 0;
                v34 = v60;
                goto LABEL_71;
              }

              v59 = v21;
            }

            else
            {
              v59 = v21;
            }

            v29 = [(SFIndexState *)self indexedMessageCount];
            v30 = [(SFIndexState *)v6 indexedMessageCount];
            if ((v29 != 0) != (v30 == 0))
            {
              v56 = v30;
              v31 = [(SFIndexState *)self indexedMessageCount];
              v55 = v29;
              if (v31)
              {
                v32 = [(SFIndexState *)self indexedMessageCount];
                v52 = [(SFIndexState *)v6 indexedMessageCount];
                v53 = v32;
                if (![v32 isEqual:?])
                {
                  v12 = 0;
                  v37 = v31;
                  v21 = v59;
LABEL_69:

LABEL_70:
                  v34 = v60;
                  if (!v60)
                  {
LABEL_72:

                    if (v64)
                    {
                    }

                    if (v21)
                    {
                    }

LABEL_46:
                    v11 = v70;
                    v10 = v71;
                    if (!v9)
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

                v54 = v31;
              }

              else
              {
                v54 = 0;
              }

              v35 = [(SFIndexState *)self embeddedMessageCount];
              v36 = [(SFIndexState *)v6 embeddedMessageCount];
              if ((v35 != 0) == (v36 == 0))
              {

                v12 = 0;
                v21 = v59;
                goto LABEL_68;
              }

              v51 = v36;
              [(SFIndexState *)self embeddedMessageCount];
              v21 = v59;
              v50 = v49 = v35;
              if (v50 && (-[SFIndexState embeddedMessageCount](self, "embeddedMessageCount"), v48 = objc_claimAutoreleasedReturnValue(), -[SFIndexState embeddedMessageCount](v6, "embeddedMessageCount"), v46 = objc_claimAutoreleasedReturnValue(), ![v48 isEqual:?]))
              {
                v12 = 0;
                v42 = v50;
              }

              else
              {
                v38 = [(SFIndexState *)self embeddedMessagePercentage];
                v39 = [(SFIndexState *)v6 embeddedMessagePercentage];
                if ((v38 != 0) == (v39 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                }

                else
                {
                  v45 = v39;
                  v47 = v38;
                  v40 = [(SFIndexState *)self embeddedMessagePercentage];
                  v21 = v59;
                  if (v40)
                  {
                    v41 = v40;
                    v44 = [(SFIndexState *)self embeddedMessagePercentage];
                    v43 = [(SFIndexState *)v6 embeddedMessagePercentage];
                    v12 = [v44 isEqual:v43];
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

            if (v60)
            {
            }

            v21 = v59;
            v27 = v61;
          }

          if (v64)
          {
          }

          v19 = v65;
          v20 = v66;
        }

        if (v21)
        {
        }

        v13 = v68;
        v14 = v69;
      }

      goto LABEL_44;
    }

    v12 = 0;
  }

LABEL_50:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFIndexState *)self percentMessagesIndexed];
  v6 = [v5 copy];
  [v4 setPercentMessagesIndexed:v6];

  v7 = [(SFIndexState *)self percentAttachmentsIndexed];
  v8 = [v7 copy];
  [v4 setPercentAttachmentsIndexed:v8];

  v9 = [(SFIndexState *)self searchIndex];
  v10 = [v9 copy];
  [v4 setSearchIndex:v10];

  v11 = [(SFIndexState *)self totalMessageCount];
  v12 = [v11 copy];
  [v4 setTotalMessageCount:v12];

  v13 = [(SFIndexState *)self indexedMessageCount];
  v14 = [v13 copy];
  [v4 setIndexedMessageCount:v14];

  v15 = [(SFIndexState *)self embeddedMessageCount];
  v16 = [v15 copy];
  [v4 setEmbeddedMessageCount:v16];

  v17 = [(SFIndexState *)self embeddedMessagePercentage];
  v18 = [v17 copy];
  [v4 setEmbeddedMessagePercentage:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBIndexState alloc] initWithFacade:self];
  v3 = [(_SFPBIndexState *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBIndexState alloc] initWithFacade:self];
  v3 = [(_SFPBIndexState *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBIndexState alloc] initWithFacade:self];
  v5 = [(_SFPBIndexState *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFIndexState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBIndexState alloc] initWithData:v5];
  v7 = [(SFIndexState *)self initWithProtobuf:v6];

  return v7;
}

- (SFIndexState)initWithProtobuf:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFIndexState;
  v5 = [(SFIndexState *)&v15 init];
  if (v5)
  {
    if ([v4 percentMessagesIndexed])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "percentMessagesIndexed")}];
      [(SFIndexState *)v5 setPercentMessagesIndexed:v6];
    }

    if ([v4 percentAttachmentsIndexed])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "percentAttachmentsIndexed")}];
      [(SFIndexState *)v5 setPercentAttachmentsIndexed:v7];
    }

    if ([v4 searchIndex])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "searchIndex")}];
      [(SFIndexState *)v5 setSearchIndex:v8];
    }

    if ([v4 totalMessageCount])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "totalMessageCount")}];
      [(SFIndexState *)v5 setTotalMessageCount:v9];
    }

    if ([v4 indexedMessageCount])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "indexedMessageCount")}];
      [(SFIndexState *)v5 setIndexedMessageCount:v10];
    }

    if ([v4 embeddedMessageCount])
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "embeddedMessageCount")}];
      [(SFIndexState *)v5 setEmbeddedMessageCount:v11];
    }

    if ([v4 embeddedMessagePercentage])
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "embeddedMessagePercentage")}];
      [(SFIndexState *)v5 setEmbeddedMessagePercentage:v12];
    }

    v13 = v5;
  }

  return v5;
}

@end