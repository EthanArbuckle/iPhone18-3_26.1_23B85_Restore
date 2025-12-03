@interface RFAttribution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFAttribution)initWithCoder:(id)coder;
- (RFAttribution)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFAttribution

- (RFAttribution)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v31.receiver = self;
  v31.super_class = RFAttribution;
  v5 = [(RFAttribution *)&v31 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      v7 = [RFTextProperty alloc];
      title2 = [protobufCopy title];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:title2];
      [(RFAttribution *)v5 setTitle:v9];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      v11 = [RFTextProperty alloc];
      subtitle2 = [protobufCopy subtitle];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:subtitle2];
      [(RFAttribution *)v5 setSubtitle:v13];
    }

    image = [protobufCopy image];

    if (image)
    {
      v15 = [RFVisualProperty alloc];
      image2 = [protobufCopy image];
      v17 = [(RFVisualProperty *)v15 initWithProtobuf:image2];
      [(RFAttribution *)v5 setImage:v17];
    }

    if ([protobufCopy index])
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "index")}];
      [(RFAttribution *)v5 setIndex:v18];
    }

    localized_index = [protobufCopy localized_index];

    if (localized_index)
    {
      localized_index2 = [protobufCopy localized_index];
      [(RFAttribution *)v5 setLocalized_index:localized_index2];
    }

    localized_separator = [protobufCopy localized_separator];

    if (localized_separator)
    {
      localized_separator2 = [protobufCopy localized_separator];
      [(RFAttribution *)v5 setLocalized_separator:localized_separator2];
    }

    locale = [protobufCopy locale];

    if (locale)
    {
      locale2 = [protobufCopy locale];
      [(RFAttribution *)v5 setLocale:locale2];
    }

    commandReference = [protobufCopy commandReference];

    if (commandReference)
    {
      v26 = [SFCommandReference alloc];
      commandReference2 = [protobufCopy commandReference];
      v28 = [(SFCommandReference *)v26 initWithProtobuf:commandReference2];
      [(RFAttribution *)v5 setCommandReference:v28];
    }

    v29 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  title = [(RFAttribution *)self title];
  v4 = [title hash];
  subtitle = [(RFAttribution *)self subtitle];
  v6 = [subtitle hash] ^ v4;
  image = [(RFAttribution *)self image];
  v8 = [image hash];
  index = [(RFAttribution *)self index];
  v10 = v6 ^ v8 ^ [index hash];
  localized_index = [(RFAttribution *)self localized_index];
  v12 = [localized_index hash];
  localized_separator = [(RFAttribution *)self localized_separator];
  v14 = v12 ^ [localized_separator hash];
  locale = [(RFAttribution *)self locale];
  v16 = v10 ^ v14 ^ [locale hash];
  commandReference = [(RFAttribution *)self commandReference];
  v18 = [commandReference hash];

  return v16 ^ v18;
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
    if ([(RFAttribution *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      title = [(RFAttribution *)self title];
      title2 = [(RFAttribution *)v5 title];
      if ((title != 0) == (title2 == 0))
      {
        v11 = 0;
LABEL_26:

        goto LABEL_27;
      }

      title3 = [(RFAttribution *)self title];
      if (title3)
      {
        title4 = [(RFAttribution *)self title];
        title5 = [(RFAttribution *)v5 title];
        if (![title4 isEqual:title5])
        {
          v11 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v71 = title5;
        v72 = title4;
      }

      subtitle = [(RFAttribution *)self subtitle];
      subtitle2 = [(RFAttribution *)v5 subtitle];
      if ((subtitle != 0) == (subtitle2 == 0))
      {
        goto LABEL_22;
      }

      subtitle3 = [(RFAttribution *)self subtitle];
      if (subtitle3)
      {
        subtitle4 = [(RFAttribution *)self subtitle];
        subtitle5 = [(RFAttribution *)v5 subtitle];
        v69 = subtitle4;
        if (![subtitle4 isEqual:subtitle5])
        {
          goto LABEL_20;
        }
      }

      v70 = subtitle3;
      image = [(RFAttribution *)self image];
      image2 = [(RFAttribution *)v5 image];
      if ((image != 0) == (image2 == 0))
      {

        if (!subtitle3)
        {
LABEL_21:

LABEL_22:
          v11 = 0;
          if (!title3)
          {
LABEL_25:

            goto LABEL_26;
          }

          goto LABEL_23;
        }

LABEL_20:

        goto LABEL_21;
      }

      v65 = image;
      v66 = image2;
      image3 = [(RFAttribution *)self image];
      if (image3)
      {
        image4 = [(RFAttribution *)self image];
        [(RFAttribution *)v5 image];
        v64 = v63 = image4;
        if (![image4 isEqual:v64])
        {
LABEL_49:

LABEL_50:
          if (!subtitle3)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }

      index = [(RFAttribution *)self index];
      index2 = [(RFAttribution *)v5 index];
      if ((index != 0) == (index2 == 0))
      {

        goto LABEL_48;
      }

      v61 = index;
      v62 = index2;
      index3 = [(RFAttribution *)self index];
      if (index3)
      {
        index = [(RFAttribution *)self index];
        index4 = [(RFAttribution *)v5 index];
        if (![index isEqual:?])
        {
          goto LABEL_46;
        }
      }

      v58 = index;
      v60 = index3;
      localized_index = [(RFAttribution *)self localized_index];
      localized_index2 = [(RFAttribution *)v5 localized_index];
      if ((localized_index != 0) == (localized_index2 == 0))
      {

        goto LABEL_45;
      }

      v55 = localized_index;
      v56 = localized_index2;
      localized_index3 = [(RFAttribution *)self localized_index];
      if (localized_index3)
      {
        localized_index4 = [(RFAttribution *)self localized_index];
        [(RFAttribution *)v5 localized_index];
        v54 = v53 = localized_index4;
        if (![localized_index4 isEqual:v54])
        {
          goto LABEL_43;
        }
      }

      localized_separator = [(RFAttribution *)self localized_separator];
      localized_separator2 = [(RFAttribution *)v5 localized_separator];
      if ((localized_separator != 0) == (localized_separator2 == 0))
      {

        if (!localized_index3)
        {
LABEL_44:

LABEL_45:
          index = v58;
          if (!index3)
          {
LABEL_47:

LABEL_48:
            subtitle3 = v70;
            if (!image3)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }

LABEL_46:

          goto LABEL_47;
        }

LABEL_43:

        goto LABEL_44;
      }

      v51 = localized_separator;
      v52 = localized_separator2;
      localized_separator3 = [(RFAttribution *)self localized_separator];
      if (localized_separator3)
      {
        localized_separator4 = [(RFAttribution *)self localized_separator];
        [(RFAttribution *)v5 localized_separator];
        v50 = v48 = localized_separator4;
        if (![localized_separator4 isEqual:?])
        {
          v11 = 0;
          v34 = v50;
LABEL_70:

LABEL_71:
          if (localized_index3)
          {
          }

          if (v60)
          {
          }

          if (image3)
          {
          }

          if (v70)
          {
          }

          if (!title3)
          {
            goto LABEL_25;
          }

LABEL_23:
          title5 = v71;
          title4 = v72;
          goto LABEL_24;
        }

        v49 = localized_separator3;
      }

      else
      {
        v49 = 0;
      }

      locale = [(RFAttribution *)self locale];
      locale2 = [(RFAttribution *)v5 locale];
      if ((locale != 0) == (locale2 == 0))
      {

        v11 = 0;
        goto LABEL_69;
      }

      v46 = locale;
      v47 = locale2;
      locale3 = [(RFAttribution *)self locale];
      if (locale3)
      {
        locale4 = [(RFAttribution *)self locale];
        locale5 = [(RFAttribution *)v5 locale];
        v44 = locale4;
        if (![locale4 isEqual:?])
        {
          v11 = 0;
          v38 = v54;
          v39 = v46;
LABEL_67:
          v54 = v38;

LABEL_68:
LABEL_69:
          localized_separator3 = v49;
          v34 = v50;
          if (!v49)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        v45 = locale3;
      }

      else
      {
        v45 = 0;
      }

      commandReference = [(RFAttribution *)self commandReference];
      commandReference2 = [(RFAttribution *)v5 commandReference];
      if ((commandReference != 0) == (commandReference2 == 0))
      {

        v11 = 0;
      }

      else
      {
        v42 = commandReference2;
        commandReference3 = [(RFAttribution *)self commandReference];
        if (commandReference3)
        {
          commandReference4 = [(RFAttribution *)self commandReference];
          commandReference5 = [(RFAttribution *)v5 commandReference];
          v11 = [commandReference4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }
      }

      v38 = v54;
      locale3 = v45;
      v39 = v46;
      if (!v45)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    v11 = 0;
  }

LABEL_27:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(RFAttribution *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  subtitle = [(RFAttribution *)self subtitle];
  v8 = [subtitle copy];
  [v4 setSubtitle:v8];

  image = [(RFAttribution *)self image];
  v10 = [image copy];
  [v4 setImage:v10];

  index = [(RFAttribution *)self index];
  v12 = [index copy];
  [v4 setIndex:v12];

  localized_index = [(RFAttribution *)self localized_index];
  v14 = [localized_index copy];
  [v4 setLocalized_index:v14];

  localized_separator = [(RFAttribution *)self localized_separator];
  v16 = [localized_separator copy];
  [v4 setLocalized_separator:v16];

  locale = [(RFAttribution *)self locale];
  v18 = [locale copy];
  [v4 setLocale:v18];

  commandReference = [(RFAttribution *)self commandReference];
  v20 = [commandReference copy];
  [v4 setCommandReference:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFAttribution alloc] initWithFacade:self];
  jsonData = [(_SFPBRFAttribution *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFAttribution alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFAttribution *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFAttribution alloc] initWithFacade:self];
  data = [(_SFPBRFAttribution *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFAttribution alloc] initWithData:v5];
  v7 = [(RFAttribution *)self initWithProtobuf:v6];

  return v7;
}

@end