@interface SFAirDropPayload
+ (id)newPayloadWithData:(id)data ofType:(id)type description:(id)description previewImage:(id)image identifier:(int64_t)identifier;
+ (id)newPayloadWithURL:(id)l description:(id)description previewImage:(id)image identifier:(int64_t)identifier;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation SFAirDropPayload

- (id)description
{
  URL = self->_URL;
  if (URL)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<SFAirDropPayload: %p, URL:%@, description:%@, previewImage:%@, identifier:%d>", self, URL, self->_payloadDescription, self->_previewImage, self->_identifer];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<SFAirDropPayload: %p, data-type:%@, description:%@, previewImage:%@, identifier:%d>", self, self->_type, self->_payloadDescription, self->_previewImage, self->_identifer];
  }
  v3 = ;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_URL hash];
  v4 = [(NSData *)self->_data hash]+ v3;
  v5 = [(NSString *)self->_type hash];
  v6 = v4 + v5 + [(UIImage *)self->_previewImage hash];
  return v6 + [(NSString *)self->_payloadDescription hash]+ self->_identifer;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy URL];
    if ([v5 isEqual:self->_URL])
    {
      data = [equalCopy data];
      if ([data isEqual:self->_data])
      {
        type = [equalCopy type];
        if ([type isEqual:self->_type])
        {
          previewImage = [equalCopy previewImage];
          if ([previewImage isEqual:self->_previewImage])
          {
            payloadDescription = [equalCopy payloadDescription];
            if ([payloadDescription isEqual:self->_payloadDescription])
            {
              v10 = [equalCopy identifer] == self->_identifer;
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)newPayloadWithData:(id)data ofType:(id)type description:(id)description previewImage:(id)image identifier:(int64_t)identifier
{
  imageCopy = image;
  descriptionCopy = description;
  typeCopy = type;
  dataCopy = data;
  v15 = objc_alloc_init(SFAirDropPayload);
  [(SFAirDropPayload *)v15 setData:dataCopy];

  [(SFAirDropPayload *)v15 setType:typeCopy];
  [(SFAirDropPayload *)v15 setPreviewImage:imageCopy];

  [(SFAirDropPayload *)v15 setPayloadDescription:descriptionCopy];
  [(SFAirDropPayload *)v15 setIdentifer:identifier];
  return v15;
}

+ (id)newPayloadWithURL:(id)l description:(id)description previewImage:(id)image identifier:(int64_t)identifier
{
  lCopy = l;
  v10 = [SFAirDropPayload newPayloadWithData:0 ofType:0 description:description previewImage:image identifier:identifier];
  [v10 setURL:lCopy];

  return v10;
}

@end