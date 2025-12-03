@interface UNCAttachmentRecord
- (BOOL)isEqual:(id)equal;
- (UNCAttachmentRecord)initWithCoder:(id)coder;
- (UNCAttachmentRecord)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCAttachmentRecord

- (UNCAttachmentRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = UNCAttachmentRecord;
  v5 = [(UNCAttachmentRecord *)&v13 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"AttachmentIdentifier"];
    [(UNCAttachmentRecord *)v5 setIdentifier:v6];

    v7 = [representationCopy objectForKey:@"AttachmentURL"];
    [(UNCAttachmentRecord *)v5 setURL:v7];

    v8 = [representationCopy objectForKey:@"AttachmentType"];
    [(UNCAttachmentRecord *)v5 setType:v8];

    -[UNCAttachmentRecord setThumbnailHidden:](v5, "setThumbnailHidden:", [representationCopy bs_BOOLForKey:@"AttachmentOptionsThumbnailHidden"]);
    v9 = [representationCopy bs_safeDictionaryForKey:@"AttachmentOptionsThumbnailClippingRect"];
    [(UNCAttachmentRecord *)v5 setThumbnailClippingRect:v9];

    v10 = [representationCopy bs_safeNumberForKey:@"AttachmentOptionsThumbnailFrameNumber"];
    [(UNCAttachmentRecord *)v5 setThumbnailFrameNumber:v10];

    v11 = [representationCopy bs_safeDictionaryForKey:@"AttachmentOptionsThumbnailTimestamp"];
    [(UNCAttachmentRecord *)v5 setThumbnailTimestamp:v11];

    -[UNCAttachmentRecord setHiddenFromDefaultExpandedView:](v5, "setHiddenFromDefaultExpandedView:", [representationCopy bs_BOOLForKey:@"AttachmentHiddenFromDefaultExpandedView"]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifier = [(UNCAttachmentRecord *)self identifier];
  [dictionary bs_setSafeObject:identifier forKey:@"AttachmentIdentifier"];

  v5 = [(UNCAttachmentRecord *)self URL];
  [dictionary bs_setSafeObject:v5 forKey:@"AttachmentURL"];

  type = [(UNCAttachmentRecord *)self type];
  [dictionary bs_setSafeObject:type forKey:@"AttachmentType"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCAttachmentRecord thumbnailHidden](self, "thumbnailHidden")}];
  [dictionary setObject:v7 forKey:@"AttachmentOptionsThumbnailHidden"];

  thumbnailClippingRect = [(UNCAttachmentRecord *)self thumbnailClippingRect];
  [dictionary bs_setSafeObject:thumbnailClippingRect forKey:@"AttachmentOptionsThumbnailClippingRect"];

  thumbnailFrameNumber = [(UNCAttachmentRecord *)self thumbnailFrameNumber];
  [dictionary bs_setSafeObject:thumbnailFrameNumber forKey:@"AttachmentOptionsThumbnailFrameNumber"];

  thumbnailTimestamp = [(UNCAttachmentRecord *)self thumbnailTimestamp];
  [dictionary bs_setSafeObject:thumbnailTimestamp forKey:@"AttachmentOptionsThumbnailTimestamp"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCAttachmentRecord hiddenFromDefaultExpandedView](self, "hiddenFromDefaultExpandedView")}];
  [dictionary setObject:v11 forKey:@"AttachmentHiddenFromDefaultExpandedView"];

  return dictionary;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(UNCAttachmentRecord *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"Identifier"];

  v6 = [(UNCAttachmentRecord *)self URL];
  v7 = [v3 appendObject:v6 withName:@"URL"];

  type = [(UNCAttachmentRecord *)self type];
  v9 = [v3 appendObject:type withName:@"Type"];

  v10 = [v3 appendBool:-[UNCAttachmentRecord thumbnailHidden](self withName:{"thumbnailHidden"), @"ThumbnailHidden"}];
  thumbnailClippingRect = [(UNCAttachmentRecord *)self thumbnailClippingRect];
  v12 = [v3 appendObject:thumbnailClippingRect withName:@"ThumbnailClippingRect"];

  thumbnailFrameNumber = [(UNCAttachmentRecord *)self thumbnailFrameNumber];
  v14 = [v3 appendObject:thumbnailFrameNumber withName:@"ThumbnailFrameNumber"];

  thumbnailTimestamp = [(UNCAttachmentRecord *)self thumbnailTimestamp];
  v16 = [v3 appendObject:thumbnailTimestamp withName:@"ThumbnailTimestamp"];

  v17 = [v3 appendBool:-[UNCAttachmentRecord hiddenFromDefaultExpandedView](self withName:{"hiddenFromDefaultExpandedView"), @"HiddenFromDefaultExpandedView"}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = UNSafeCast();

    if (v5)
    {
      identifier = [(UNCAttachmentRecord *)self identifier];
      identifier2 = [v5 identifier];
      if (UNEqualObjects())
      {
        v8 = [(UNCAttachmentRecord *)self URL];
        v9 = [v5 URL];
        if (UNEqualObjects())
        {
          type = [(UNCAttachmentRecord *)self type];
          type2 = [v5 type];
          if (UNEqualObjects() && (v12 = -[UNCAttachmentRecord thumbnailHidden](self, "thumbnailHidden"), v12 == [v5 thumbnailHidden]))
          {
            thumbnailClippingRect = [(UNCAttachmentRecord *)self thumbnailClippingRect];
            thumbnailClippingRect2 = [v5 thumbnailClippingRect];
            if (UNEqualObjects())
            {
              v23 = thumbnailClippingRect;
              thumbnailFrameNumber = [(UNCAttachmentRecord *)self thumbnailFrameNumber];
              [v5 thumbnailFrameNumber];
              v22 = v24 = thumbnailFrameNumber;
              if (UNEqualObjects())
              {
                thumbnailTimestamp = [(UNCAttachmentRecord *)self thumbnailTimestamp];
                thumbnailTimestamp2 = [v5 thumbnailTimestamp];
                v21 = thumbnailTimestamp;
                if (UNEqualObjects())
                {
                  hiddenFromDefaultExpandedView = [(UNCAttachmentRecord *)self hiddenFromDefaultExpandedView];
                  v13 = hiddenFromDefaultExpandedView ^ [v5 hiddenFromDefaultExpandedView] ^ 1;
                }

                else
                {
                  LOBYTE(v13) = 0;
                }

                thumbnailClippingRect = v23;
              }

              else
              {
                LOBYTE(v13) = 0;
                thumbnailClippingRect = v23;
              }
            }

            else
            {
              LOBYTE(v13) = 0;
            }
          }

          else
          {
            LOBYTE(v13) = 0;
          }
        }

        else
        {
          LOBYTE(v13) = 0;
        }
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  identifier = [(UNCAttachmentRecord *)self identifier];
  v5 = [builder appendObject:identifier];

  v6 = [(UNCAttachmentRecord *)self URL];
  v7 = [builder appendObject:v6];

  type = [(UNCAttachmentRecord *)self type];
  v9 = [builder appendObject:type];

  v10 = [builder appendBool:{-[UNCAttachmentRecord thumbnailHidden](self, "thumbnailHidden")}];
  thumbnailClippingRect = [(UNCAttachmentRecord *)self thumbnailClippingRect];
  v12 = [builder appendObject:thumbnailClippingRect];

  thumbnailFrameNumber = [(UNCAttachmentRecord *)self thumbnailFrameNumber];
  v14 = [builder appendObject:thumbnailFrameNumber];

  thumbnailTimestamp = [(UNCAttachmentRecord *)self thumbnailTimestamp];
  v16 = [builder appendObject:thumbnailTimestamp];

  v17 = [builder appendBool:{-[UNCAttachmentRecord hiddenFromDefaultExpandedView](self, "hiddenFromDefaultExpandedView")}];
  v18 = [builder hash];

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(UNCAttachmentRecord *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"dictionary"];
}

- (UNCAttachmentRecord)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCAttachmentRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end