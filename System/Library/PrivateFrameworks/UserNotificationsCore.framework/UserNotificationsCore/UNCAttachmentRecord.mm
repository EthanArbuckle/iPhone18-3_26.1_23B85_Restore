@interface UNCAttachmentRecord
- (BOOL)isEqual:(id)a3;
- (UNCAttachmentRecord)initWithCoder:(id)a3;
- (UNCAttachmentRecord)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCAttachmentRecord

- (UNCAttachmentRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UNCAttachmentRecord;
  v5 = [(UNCAttachmentRecord *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AttachmentIdentifier"];
    [(UNCAttachmentRecord *)v5 setIdentifier:v6];

    v7 = [v4 objectForKey:@"AttachmentURL"];
    [(UNCAttachmentRecord *)v5 setURL:v7];

    v8 = [v4 objectForKey:@"AttachmentType"];
    [(UNCAttachmentRecord *)v5 setType:v8];

    -[UNCAttachmentRecord setThumbnailHidden:](v5, "setThumbnailHidden:", [v4 bs_BOOLForKey:@"AttachmentOptionsThumbnailHidden"]);
    v9 = [v4 bs_safeDictionaryForKey:@"AttachmentOptionsThumbnailClippingRect"];
    [(UNCAttachmentRecord *)v5 setThumbnailClippingRect:v9];

    v10 = [v4 bs_safeNumberForKey:@"AttachmentOptionsThumbnailFrameNumber"];
    [(UNCAttachmentRecord *)v5 setThumbnailFrameNumber:v10];

    v11 = [v4 bs_safeDictionaryForKey:@"AttachmentOptionsThumbnailTimestamp"];
    [(UNCAttachmentRecord *)v5 setThumbnailTimestamp:v11];

    -[UNCAttachmentRecord setHiddenFromDefaultExpandedView:](v5, "setHiddenFromDefaultExpandedView:", [v4 bs_BOOLForKey:@"AttachmentHiddenFromDefaultExpandedView"]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(UNCAttachmentRecord *)self identifier];
  [v3 bs_setSafeObject:v4 forKey:@"AttachmentIdentifier"];

  v5 = [(UNCAttachmentRecord *)self URL];
  [v3 bs_setSafeObject:v5 forKey:@"AttachmentURL"];

  v6 = [(UNCAttachmentRecord *)self type];
  [v3 bs_setSafeObject:v6 forKey:@"AttachmentType"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCAttachmentRecord thumbnailHidden](self, "thumbnailHidden")}];
  [v3 setObject:v7 forKey:@"AttachmentOptionsThumbnailHidden"];

  v8 = [(UNCAttachmentRecord *)self thumbnailClippingRect];
  [v3 bs_setSafeObject:v8 forKey:@"AttachmentOptionsThumbnailClippingRect"];

  v9 = [(UNCAttachmentRecord *)self thumbnailFrameNumber];
  [v3 bs_setSafeObject:v9 forKey:@"AttachmentOptionsThumbnailFrameNumber"];

  v10 = [(UNCAttachmentRecord *)self thumbnailTimestamp];
  [v3 bs_setSafeObject:v10 forKey:@"AttachmentOptionsThumbnailTimestamp"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCAttachmentRecord hiddenFromDefaultExpandedView](self, "hiddenFromDefaultExpandedView")}];
  [v3 setObject:v11 forKey:@"AttachmentHiddenFromDefaultExpandedView"];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(UNCAttachmentRecord *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"Identifier"];

  v6 = [(UNCAttachmentRecord *)self URL];
  v7 = [v3 appendObject:v6 withName:@"URL"];

  v8 = [(UNCAttachmentRecord *)self type];
  v9 = [v3 appendObject:v8 withName:@"Type"];

  v10 = [v3 appendBool:-[UNCAttachmentRecord thumbnailHidden](self withName:{"thumbnailHidden"), @"ThumbnailHidden"}];
  v11 = [(UNCAttachmentRecord *)self thumbnailClippingRect];
  v12 = [v3 appendObject:v11 withName:@"ThumbnailClippingRect"];

  v13 = [(UNCAttachmentRecord *)self thumbnailFrameNumber];
  v14 = [v3 appendObject:v13 withName:@"ThumbnailFrameNumber"];

  v15 = [(UNCAttachmentRecord *)self thumbnailTimestamp];
  v16 = [v3 appendObject:v15 withName:@"ThumbnailTimestamp"];

  v17 = [v3 appendBool:-[UNCAttachmentRecord hiddenFromDefaultExpandedView](self withName:{"hiddenFromDefaultExpandedView"), @"HiddenFromDefaultExpandedView"}];
  v18 = [v3 build];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v4 = a3;
    objc_opt_class();
    v5 = UNSafeCast();

    if (v5)
    {
      v6 = [(UNCAttachmentRecord *)self identifier];
      v7 = [v5 identifier];
      if (UNEqualObjects())
      {
        v8 = [(UNCAttachmentRecord *)self URL];
        v9 = [v5 URL];
        if (UNEqualObjects())
        {
          v10 = [(UNCAttachmentRecord *)self type];
          v11 = [v5 type];
          if (UNEqualObjects() && (v12 = -[UNCAttachmentRecord thumbnailHidden](self, "thumbnailHidden"), v12 == [v5 thumbnailHidden]))
          {
            v14 = [(UNCAttachmentRecord *)self thumbnailClippingRect];
            v15 = [v5 thumbnailClippingRect];
            if (UNEqualObjects())
            {
              v23 = v14;
              v16 = [(UNCAttachmentRecord *)self thumbnailFrameNumber];
              [v5 thumbnailFrameNumber];
              v22 = v24 = v16;
              if (UNEqualObjects())
              {
                v17 = [(UNCAttachmentRecord *)self thumbnailTimestamp];
                v20 = [v5 thumbnailTimestamp];
                v21 = v17;
                if (UNEqualObjects())
                {
                  v18 = [(UNCAttachmentRecord *)self hiddenFromDefaultExpandedView];
                  v13 = v18 ^ [v5 hiddenFromDefaultExpandedView] ^ 1;
                }

                else
                {
                  LOBYTE(v13) = 0;
                }

                v14 = v23;
              }

              else
              {
                LOBYTE(v13) = 0;
                v14 = v23;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(UNCAttachmentRecord *)self identifier];
  v5 = [v3 appendObject:v4];

  v6 = [(UNCAttachmentRecord *)self URL];
  v7 = [v3 appendObject:v6];

  v8 = [(UNCAttachmentRecord *)self type];
  v9 = [v3 appendObject:v8];

  v10 = [v3 appendBool:{-[UNCAttachmentRecord thumbnailHidden](self, "thumbnailHidden")}];
  v11 = [(UNCAttachmentRecord *)self thumbnailClippingRect];
  v12 = [v3 appendObject:v11];

  v13 = [(UNCAttachmentRecord *)self thumbnailFrameNumber];
  v14 = [v3 appendObject:v13];

  v15 = [(UNCAttachmentRecord *)self thumbnailTimestamp];
  v16 = [v3 appendObject:v15];

  v17 = [v3 appendBool:{-[UNCAttachmentRecord hiddenFromDefaultExpandedView](self, "hiddenFromDefaultExpandedView")}];
  v18 = [v3 hash];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCAttachmentRecord *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"dictionary"];
}

- (UNCAttachmentRecord)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17}];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCAttachmentRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end