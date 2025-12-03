@interface _SFPBRFMapAnnotation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMapAnnotation)initWithDictionary:(id)dictionary;
- (_SFPBRFMapAnnotation)initWithFacade:(id)facade;
- (_SFPBRFMapAnnotation)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMapAnnotation

- (_SFPBRFMapAnnotation)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFMapAnnotation *)self init];
  if (v5)
  {
    coordinate = [facadeCopy coordinate];

    if (coordinate)
    {
      v7 = [_SFPBLatLng alloc];
      coordinate2 = [facadeCopy coordinate];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:coordinate2];
      [(_SFPBRFMapAnnotation *)v5 setCoordinate:v9];
    }

    content = [facadeCopy content];

    if (content)
    {
      v11 = [_SFPBRFVisualProperty alloc];
      content2 = [facadeCopy content];
      v13 = [(_SFPBRFVisualProperty *)v11 initWithFacade:content2];
      [(_SFPBRFMapAnnotation *)v5 setContent:v13];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBRFMapAnnotation *)v5 setTitle:title2];
    }

    anchor = [facadeCopy anchor];

    if (anchor)
    {
      v17 = [_SFPBRFMapPoint alloc];
      anchor2 = [facadeCopy anchor];
      v19 = [(_SFPBRFMapPoint *)v17 initWithFacade:anchor2];
      [(_SFPBRFMapAnnotation *)v5 setAnchor:v19];
    }

    label = [facadeCopy label];

    if (label)
    {
      v21 = [_SFPBRFTextProperty alloc];
      label2 = [facadeCopy label];
      v23 = [(_SFPBRFTextProperty *)v21 initWithFacade:label2];
      [(_SFPBRFMapAnnotation *)v5 setLabel:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (_SFPBRFMapAnnotation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = _SFPBRFMapAnnotation;
  v5 = [(_SFPBRFMapAnnotation *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"coordinate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBRFMapAnnotation *)v5 setCoordinate:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v8];
      [(_SFPBRFMapAnnotation *)v5 setContent:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBRFMapAnnotation *)v5 setTitle:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"anchor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFMapPoint alloc] initWithDictionary:v12];
      [(_SFPBRFMapAnnotation *)v5 setAnchor:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
      [(_SFPBRFMapAnnotation *)v5 setLabel:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBRFMapAnnotation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMapAnnotation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMapAnnotation *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_anchor)
  {
    anchor = [(_SFPBRFMapAnnotation *)self anchor];
    dictionaryRepresentation = [anchor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"anchor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"anchor"];
    }
  }

  if (self->_content)
  {
    content = [(_SFPBRFMapAnnotation *)self content];
    dictionaryRepresentation2 = [content dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"content"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"content"];
    }
  }

  if (self->_coordinate)
  {
    coordinate = [(_SFPBRFMapAnnotation *)self coordinate];
    dictionaryRepresentation3 = [coordinate dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"coordinate"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"coordinate"];
    }
  }

  if (self->_label)
  {
    label = [(_SFPBRFMapAnnotation *)self label];
    dictionaryRepresentation4 = [label dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"label"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"label"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBRFMapAnnotation *)self title];
    v17 = [title copy];
    [dictionary setObject:v17 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBLatLng *)self->_coordinate hash];
  v4 = [(_SFPBRFVisualProperty *)self->_content hash]^ v3;
  v5 = [(NSString *)self->_title hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFMapPoint *)self->_anchor hash];
  return v6 ^ [(_SFPBRFTextProperty *)self->_label hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  coordinate = [(_SFPBRFMapAnnotation *)self coordinate];
  coordinate2 = [equalCopy coordinate];
  if ((coordinate != 0) == (coordinate2 == 0))
  {
    goto LABEL_26;
  }

  coordinate3 = [(_SFPBRFMapAnnotation *)self coordinate];
  if (coordinate3)
  {
    v8 = coordinate3;
    coordinate4 = [(_SFPBRFMapAnnotation *)self coordinate];
    coordinate5 = [equalCopy coordinate];
    v11 = [coordinate4 isEqual:coordinate5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  coordinate = [(_SFPBRFMapAnnotation *)self content];
  coordinate2 = [equalCopy content];
  if ((coordinate != 0) == (coordinate2 == 0))
  {
    goto LABEL_26;
  }

  content = [(_SFPBRFMapAnnotation *)self content];
  if (content)
  {
    v13 = content;
    content2 = [(_SFPBRFMapAnnotation *)self content];
    content3 = [equalCopy content];
    v16 = [content2 isEqual:content3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  coordinate = [(_SFPBRFMapAnnotation *)self title];
  coordinate2 = [equalCopy title];
  if ((coordinate != 0) == (coordinate2 == 0))
  {
    goto LABEL_26;
  }

  title = [(_SFPBRFMapAnnotation *)self title];
  if (title)
  {
    v18 = title;
    title2 = [(_SFPBRFMapAnnotation *)self title];
    title3 = [equalCopy title];
    v21 = [title2 isEqual:title3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  coordinate = [(_SFPBRFMapAnnotation *)self anchor];
  coordinate2 = [equalCopy anchor];
  if ((coordinate != 0) == (coordinate2 == 0))
  {
    goto LABEL_26;
  }

  anchor = [(_SFPBRFMapAnnotation *)self anchor];
  if (anchor)
  {
    v23 = anchor;
    anchor2 = [(_SFPBRFMapAnnotation *)self anchor];
    anchor3 = [equalCopy anchor];
    v26 = [anchor2 isEqual:anchor3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  coordinate = [(_SFPBRFMapAnnotation *)self label];
  coordinate2 = [equalCopy label];
  if ((coordinate != 0) != (coordinate2 == 0))
  {
    label = [(_SFPBRFMapAnnotation *)self label];
    if (!label)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = label;
    label2 = [(_SFPBRFMapAnnotation *)self label];
    label3 = [equalCopy label];
    v31 = [label2 isEqual:label3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  coordinate = [(_SFPBRFMapAnnotation *)self coordinate];
  if (coordinate)
  {
    PBDataWriterWriteSubmessage();
  }

  content = [(_SFPBRFMapAnnotation *)self content];
  if (content)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBRFMapAnnotation *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  anchor = [(_SFPBRFMapAnnotation *)self anchor];
  if (anchor)
  {
    PBDataWriterWriteSubmessage();
  }

  label = [(_SFPBRFMapAnnotation *)self label];
  if (label)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end