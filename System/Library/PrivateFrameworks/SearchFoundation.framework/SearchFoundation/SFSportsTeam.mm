@interface SFSportsTeam
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSportsTeam)initWithCoder:(id)coder;
- (SFSportsTeam)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSportsTeam

- (unint64_t)hash
{
  logo = [(SFSportsTeam *)self logo];
  v4 = [logo hash];
  record = [(SFSportsTeam *)self record];
  v6 = [record hash] ^ v4;
  score = [(SFSportsTeam *)self score];
  v8 = [score hash];
  accessibilityDescription = [(SFSportsTeam *)self accessibilityDescription];
  v10 = v6 ^ v8 ^ [accessibilityDescription hash];
  name = [(SFSportsTeam *)self name];
  v12 = [name hash];
  button = [(SFSportsTeam *)self button];
  v14 = v12 ^ [button hash];
  v15 = v14 ^ [(SFSportsTeam *)self isWinner];

  return v10 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if ([(SFSportsTeam *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      logo = [(SFSportsTeam *)self logo];
      logo2 = [(SFSportsTeam *)v6 logo];
      if ((logo != 0) == (logo2 == 0))
      {
        LOBYTE(v12) = 0;
LABEL_49:

        goto LABEL_50;
      }

      logo3 = [(SFSportsTeam *)self logo];
      if (logo3)
      {
        logo4 = [(SFSportsTeam *)self logo];
        logo5 = [(SFSportsTeam *)v6 logo];
        if (![logo4 isEqual:logo5])
        {
          LOBYTE(v12) = 0;
          goto LABEL_47;
        }

        v62 = logo5;
        v63 = logo4;
      }

      record = [(SFSportsTeam *)self record];
      record2 = [(SFSportsTeam *)v6 record];
      if ((record != 0) != (record2 == 0))
      {
        v61 = record2;
        record3 = [(SFSportsTeam *)self record];
        if (record3)
        {
          record4 = [(SFSportsTeam *)self record];
          record5 = [(SFSportsTeam *)v6 record];
          if (([record4 isEqual:record5] & 1) == 0)
          {

LABEL_44:
LABEL_45:
            LOBYTE(v12) = 0;
            goto LABEL_46;
          }

          v59 = record5;
          v60 = record;
          v3 = record4;
          v18 = record3;
        }

        else
        {
          v60 = record;
          v18 = 0;
        }

        score = [(SFSportsTeam *)self score];
        score2 = [(SFSportsTeam *)v6 score];
        v21 = v18;
        v22 = v3;
        if ((score != 0) != (score2 == 0))
        {
          v58 = score2;
          v57 = score;
          score3 = [(SFSportsTeam *)self score];
          if (score3)
          {
            score4 = [(SFSportsTeam *)self score];
            score5 = [(SFSportsTeam *)v6 score];
            if (([score4 isEqual:score5] & 1) == 0)
            {

              if (v21)
              {
              }

              goto LABEL_45;
            }

            v54 = score5;
            v55 = score4;
            v25 = v21;
          }

          else
          {
            v25 = v21;
          }

          accessibilityDescription = [(SFSportsTeam *)self accessibilityDescription];
          accessibilityDescription2 = [(SFSportsTeam *)v6 accessibilityDescription];
          v21 = v25;
          v22 = v3;
          if ((accessibilityDescription != 0) != (accessibilityDescription2 == 0))
          {
            v53 = accessibilityDescription2;
            accessibilityDescription3 = [(SFSportsTeam *)self accessibilityDescription];
            if (accessibilityDescription3)
            {
              accessibilityDescription4 = [(SFSportsTeam *)self accessibilityDescription];
              [(SFSportsTeam *)v6 accessibilityDescription];
              v49 = v51 = accessibilityDescription4;
              if (![accessibilityDescription4 isEqual:?])
              {
                LOBYTE(v12) = 0;
                v34 = accessibilityDescription3;
                goto LABEL_65;
              }

              v50 = v21;
            }

            else
            {
              v50 = v21;
            }

            name = [(SFSportsTeam *)self name];
            name2 = [(SFSportsTeam *)v6 name];
            if ((name != 0) != (name2 == 0))
            {
              v48 = name2;
              name3 = [(SFSportsTeam *)self name];
              v47 = name;
              if (name3)
              {
                name4 = [(SFSportsTeam *)self name];
                name5 = [(SFSportsTeam *)v6 name];
                v44 = name4;
                if (![name4 isEqual:?])
                {
                  LOBYTE(v12) = 0;
                  v37 = name3;
                  v21 = v50;
LABEL_63:

LABEL_64:
                  v34 = accessibilityDescription3;
                  if (!accessibilityDescription3)
                  {
LABEL_66:

                    if (score3)
                    {
                    }

                    if (v21)
                    {
                    }

LABEL_46:
                    logo5 = v62;
                    logo4 = v63;
                    if (!logo3)
                    {
LABEL_48:

                      goto LABEL_49;
                    }

LABEL_47:

                    goto LABEL_48;
                  }

LABEL_65:

                  goto LABEL_66;
                }

                v46 = name3;
              }

              else
              {
                v46 = 0;
              }

              button = [(SFSportsTeam *)self button];
              button2 = [(SFSportsTeam *)v6 button];
              if ((button != 0) == (button2 == 0))
              {

                LOBYTE(v12) = 0;
                v21 = v50;
                goto LABEL_62;
              }

              v41 = button2;
              v42 = button;
              [(SFSportsTeam *)self button];
              v45 = v21 = v50;
              if (!v45 || (-[SFSportsTeam button](self, "button"), v40 = objc_claimAutoreleasedReturnValue(), -[SFSportsTeam button](v6, "button"), v39 = objc_claimAutoreleasedReturnValue(), [v40 isEqual:?]))
              {
                isWinner = [(SFSportsTeam *)self isWinner];
                v12 = isWinner ^ [(SFSportsTeam *)v6 isWinner]^ 1;
                if (!v45)
                {
LABEL_61:

LABEL_62:
                  v37 = v46;
                  if (!v46)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_63;
                }
              }

              else
              {
                LOBYTE(v12) = 0;
              }

              goto LABEL_61;
            }

            if (accessibilityDescription3)
            {
            }

            v21 = v50;
            accessibilityDescription2 = v53;
          }

          if (score3)
          {
          }

          score = v57;
          score2 = v58;
        }

        if (v21)
        {
        }

        record = v60;
        record2 = v61;
      }

      goto LABEL_44;
    }

    LOBYTE(v12) = 0;
  }

LABEL_50:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  logo = [(SFSportsTeam *)self logo];
  v6 = [logo copy];
  [v4 setLogo:v6];

  record = [(SFSportsTeam *)self record];
  v8 = [record copy];
  [v4 setRecord:v8];

  score = [(SFSportsTeam *)self score];
  v10 = [score copy];
  [v4 setScore:v10];

  accessibilityDescription = [(SFSportsTeam *)self accessibilityDescription];
  v12 = [accessibilityDescription copy];
  [v4 setAccessibilityDescription:v12];

  name = [(SFSportsTeam *)self name];
  v14 = [name copy];
  [v4 setName:v14];

  button = [(SFSportsTeam *)self button];
  v16 = [button copy];
  [v4 setButton:v16];

  [v4 setIsWinner:{-[SFSportsTeam isWinner](self, "isWinner")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSportsTeam alloc] initWithFacade:self];
  jsonData = [(_SFPBSportsTeam *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSportsTeam alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSportsTeam *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBSportsTeam alloc] initWithFacade:self];
  data = [(_SFPBSportsTeam *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSportsTeam)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSportsTeam alloc] initWithData:v5];
  v7 = [(SFSportsTeam *)self initWithProtobuf:v6];

  return v7;
}

- (SFSportsTeam)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = SFSportsTeam;
  v5 = [(SFSportsTeam *)&v24 init];
  if (v5)
  {
    logo = [protobufCopy logo];

    if (logo)
    {
      v7 = [SFImage alloc];
      logo2 = [protobufCopy logo];
      v9 = [(SFImage *)v7 initWithProtobuf:logo2];
      [(SFSportsTeam *)v5 setLogo:v9];
    }

    record = [protobufCopy record];

    if (record)
    {
      record2 = [protobufCopy record];
      [(SFSportsTeam *)v5 setRecord:record2];
    }

    score = [protobufCopy score];

    if (score)
    {
      score2 = [protobufCopy score];
      [(SFSportsTeam *)v5 setScore:score2];
    }

    accessibilityDescription = [protobufCopy accessibilityDescription];

    if (accessibilityDescription)
    {
      accessibilityDescription2 = [protobufCopy accessibilityDescription];
      [(SFSportsTeam *)v5 setAccessibilityDescription:accessibilityDescription2];
    }

    name = [protobufCopy name];

    if (name)
    {
      name2 = [protobufCopy name];
      [(SFSportsTeam *)v5 setName:name2];
    }

    button = [protobufCopy button];

    if (button)
    {
      v19 = [SFButtonItem alloc];
      button2 = [protobufCopy button];
      v21 = [(SFButtonItem *)v19 initWithProtobuf:button2];
      [(SFSportsTeam *)v5 setButton:v21];
    }

    if ([protobufCopy isWinner])
    {
      -[SFSportsTeam setIsWinner:](v5, "setIsWinner:", [protobufCopy isWinner]);
    }

    v22 = v5;
  }

  return v5;
}

@end