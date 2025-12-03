@interface SFTrack
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTrack)initWithCoder:(id)coder;
- (SFTrack)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTrack

- (unint64_t)hash
{
  title = [(SFTrack *)self title];
  v4 = [title hash];
  number = [(SFTrack *)self number];
  v6 = [number hash] ^ v4;
  duration = [(SFTrack *)self duration];
  v8 = v6 ^ [duration hash];
  highlighted = [(SFTrack *)self highlighted];
  preview = [(SFTrack *)self preview];
  v11 = v8 ^ highlighted ^ [preview hash];
  playAction = [(SFTrack *)self playAction];
  v13 = [playAction hash];

  return v11 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(SFTrack *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      title = [(SFTrack *)self title];
      title2 = [(SFTrack *)v5 title];
      if ((title != 0) == (title2 == 0))
      {
        v10 = 0;
LABEL_41:

        goto LABEL_42;
      }

      title3 = [(SFTrack *)self title];
      if (title3)
      {
        title4 = [(SFTrack *)self title];
        title5 = [(SFTrack *)v5 title];
        if (![title4 isEqual:?])
        {
          v10 = 0;
          goto LABEL_39;
        }

        v49 = title4;
      }

      number = [(SFTrack *)self number];
      number2 = [(SFTrack *)v5 number];
      if ((number != 0) != (number2 == 0))
      {
        number3 = [(SFTrack *)self number];
        if (number3)
        {
          v13 = number3;
          number4 = [(SFTrack *)self number];
          [(SFTrack *)v5 number];
          v48 = v46 = number4;
          if (![number4 isEqual:?])
          {
            v10 = 0;
            v19 = v48;
            v20 = v13;
            goto LABEL_36;
          }

          v47 = v13;
        }

        else
        {
          v47 = 0;
        }

        duration = [(SFTrack *)self duration];
        duration2 = [(SFTrack *)v5 duration];
        if ((duration != 0) != (duration2 == 0))
        {
          v44 = duration;
          v45 = duration2;
          duration3 = [(SFTrack *)self duration];
          if (duration3)
          {
            duration4 = [(SFTrack *)self duration];
            duration5 = [(SFTrack *)v5 duration];
            v42 = duration4;
            if (![duration4 isEqual:?])
            {
              v10 = 0;
              v20 = v47;
              v26 = v48;
              goto LABEL_34;
            }

            v43 = duration3;
          }

          else
          {
            v43 = 0;
          }

          highlighted = [(SFTrack *)self highlighted];
          if (highlighted == [(SFTrack *)v5 highlighted])
          {
            preview = [(SFTrack *)self preview];
            preview2 = [(SFTrack *)v5 preview];
            if ((preview != 0) != (preview2 == 0))
            {
              v39 = preview2;
              v40 = preview;
              preview3 = [(SFTrack *)self preview];
              v25 = preview3;
              v26 = v48;
              if (preview3)
              {
                v35 = preview3;
                preview4 = [(SFTrack *)self preview];
                preview5 = [(SFTrack *)v5 preview];
                v38 = preview4;
                if (![preview4 isEqual:?])
                {
                  v10 = 0;
                  v25 = v35;
                  goto LABEL_50;
                }

                v25 = v35;
              }

              playAction = [(SFTrack *)self playAction];
              playAction2 = [(SFTrack *)v5 playAction];
              if ((playAction != 0) == (playAction2 == 0))
              {

                v10 = 0;
              }

              else
              {
                v36 = playAction2;
                playAction3 = [(SFTrack *)self playAction];
                if (playAction3)
                {
                  v34 = playAction3;
                  playAction4 = [(SFTrack *)self playAction];
                  playAction5 = [(SFTrack *)v5 playAction];
                  v10 = [playAction4 isEqual:playAction5];
                }

                else
                {

                  v10 = 1;
                }
              }

              v26 = v48;
              if (!v25)
              {
LABEL_51:

                duration3 = v43;
                v20 = v47;
                if (!v43)
                {
LABEL_35:

                  v19 = v26;
                  if (!v20)
                  {
LABEL_37:

LABEL_38:
                    title4 = v49;
                    if (!title3)
                    {
LABEL_40:

                      goto LABEL_41;
                    }

LABEL_39:

                    goto LABEL_40;
                  }

LABEL_36:

                  goto LABEL_37;
                }

LABEL_34:

                goto LABEL_35;
              }

LABEL_50:

              goto LABEL_51;
            }
          }

          v10 = 0;
          v20 = v47;
          v26 = v48;
          duration3 = v43;
          if (!v43)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        if (v47)
        {
        }
      }

      v10 = 0;
      goto LABEL_38;
    }

    v10 = 0;
  }

LABEL_42:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(SFTrack *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  number = [(SFTrack *)self number];
  v8 = [number copy];
  [v4 setNumber:v8];

  duration = [(SFTrack *)self duration];
  v10 = [duration copy];
  [v4 setDuration:v10];

  [v4 setHighlighted:{-[SFTrack highlighted](self, "highlighted")}];
  preview = [(SFTrack *)self preview];
  v12 = [preview copy];
  [v4 setPreview:v12];

  playAction = [(SFTrack *)self playAction];
  v14 = [playAction copy];
  [v4 setPlayAction:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTrack alloc] initWithFacade:self];
  jsonData = [(_SFPBTrack *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTrack alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTrack *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBTrack alloc] initWithFacade:self];
  data = [(_SFPBTrack *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFTrack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTrack alloc] initWithData:v5];
  v7 = [(SFTrack *)self initWithProtobuf:v6];

  return v7;
}

- (SFTrack)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = SFTrack;
  v5 = [(SFTrack *)&v21 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFTrack *)v5 setTitle:title2];
    }

    number = [protobufCopy number];

    if (number)
    {
      number2 = [protobufCopy number];
      [(SFTrack *)v5 setNumber:number2];
    }

    duration = [protobufCopy duration];

    if (duration)
    {
      duration2 = [protobufCopy duration];
      [(SFTrack *)v5 setDuration:duration2];
    }

    if ([protobufCopy highlighted])
    {
      -[SFTrack setHighlighted:](v5, "setHighlighted:", [protobufCopy highlighted]);
    }

    preview = [protobufCopy preview];

    if (preview)
    {
      preview2 = [protobufCopy preview];
      v14 = _SFPBURLHandwrittenTranslator(preview2);
      [(SFTrack *)v5 setPreview:v14];
    }

    playAction = [protobufCopy playAction];

    if (playAction)
    {
      v16 = [SFActionItem alloc];
      playAction2 = [protobufCopy playAction];
      v18 = [(SFActionItem *)v16 initWithProtobuf:playAction2];
      [(SFTrack *)v5 setPlayAction:v18];
    }

    v19 = v5;
  }

  return v5;
}

@end