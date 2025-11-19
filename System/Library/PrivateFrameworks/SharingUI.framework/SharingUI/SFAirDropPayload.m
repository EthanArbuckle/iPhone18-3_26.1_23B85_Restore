@interface SFAirDropPayload
+ (id)newPayloadWithData:(id)a3 ofType:(id)a4 description:(id)a5 previewImage:(id)a6 identifier:(int64_t)a7;
+ (id)newPayloadWithURL:(id)a3 description:(id)a4 previewImage:(id)a5 identifier:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 URL];
    if ([v5 isEqual:self->_URL])
    {
      v6 = [v4 data];
      if ([v6 isEqual:self->_data])
      {
        v7 = [v4 type];
        if ([v7 isEqual:self->_type])
        {
          v8 = [v4 previewImage];
          if ([v8 isEqual:self->_previewImage])
          {
            v9 = [v4 payloadDescription];
            if ([v9 isEqual:self->_payloadDescription])
            {
              v10 = [v4 identifer] == self->_identifer;
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

+ (id)newPayloadWithData:(id)a3 ofType:(id)a4 description:(id)a5 previewImage:(id)a6 identifier:(int64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(SFAirDropPayload);
  [(SFAirDropPayload *)v15 setData:v14];

  [(SFAirDropPayload *)v15 setType:v13];
  [(SFAirDropPayload *)v15 setPreviewImage:v11];

  [(SFAirDropPayload *)v15 setPayloadDescription:v12];
  [(SFAirDropPayload *)v15 setIdentifer:a7];
  return v15;
}

+ (id)newPayloadWithURL:(id)a3 description:(id)a4 previewImage:(id)a5 identifier:(int64_t)a6
{
  v9 = a3;
  v10 = [SFAirDropPayload newPayloadWithData:0 ofType:0 description:a4 previewImage:a5 identifier:a6];
  [v10 setURL:v9];

  return v10;
}

@end