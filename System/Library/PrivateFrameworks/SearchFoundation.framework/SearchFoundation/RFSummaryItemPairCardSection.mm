@interface RFSummaryItemPairCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemPairCardSection)initWithCoder:(id)coder;
- (RFSummaryItemPairCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemPairCardSection

- (RFSummaryItemPairCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v48.receiver = self;
  v48.super_class = RFSummaryItemPairCardSection;
  v5 = [(SFCardSection *)&v48 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSummaryItemPairCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFSummaryItemPairCardSection *)v5 setText_2:v13];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v15 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text6];
      [(RFSummaryItemPairCardSection *)v5 setText_3:v17];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v19 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v21 = [(RFVisualProperty *)v19 initWithProtobuf:thumbnail2];
      [(RFSummaryItemPairCardSection *)v5 setThumbnail_1:v21];
    }

    thumbnail3 = [protobufCopy thumbnail];

    if (thumbnail3)
    {
      v23 = [RFVisualProperty alloc];
      thumbnail4 = [protobufCopy thumbnail];
      v25 = [(RFVisualProperty *)v23 initWithProtobuf:thumbnail4];
      [(RFSummaryItemPairCardSection *)v5 setThumbnail_2:v25];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v27 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:text8];
      [(RFSummaryItemPairCardSection *)v5 setText_4:v29];
    }

    text9 = [protobufCopy text];

    if (text9)
    {
      v31 = [RFTextProperty alloc];
      text10 = [protobufCopy text];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:text10];
      [(RFSummaryItemPairCardSection *)v5 setText_5:v33];
    }

    text11 = [protobufCopy text];

    if (text11)
    {
      v35 = [RFTextProperty alloc];
      text12 = [protobufCopy text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:text12];
      [(RFSummaryItemPairCardSection *)v5 setText_6:v37];
    }

    text13 = [protobufCopy text];

    if (text13)
    {
      v39 = [RFTextProperty alloc];
      text14 = [protobufCopy text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:text14];
      [(RFSummaryItemPairCardSection *)v5 setText_7:v41];
    }

    text15 = [protobufCopy text];

    if (text15)
    {
      v43 = [RFTextProperty alloc];
      text16 = [protobufCopy text];
      v45 = [(RFTextProperty *)v43 initWithProtobuf:text16];
      [(RFSummaryItemPairCardSection *)v5 setText_8:v45];
    }

    v46 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v25.receiver = self;
  v25.super_class = RFSummaryItemPairCardSection;
  v3 = [(SFCardSection *)&v25 hash];
  text = [(RFSummaryItemPairCardSection *)self text];
  v4 = [text hash];
  text2 = [(RFSummaryItemPairCardSection *)self text];
  v6 = v4 ^ [text2 hash];
  text3 = [(RFSummaryItemPairCardSection *)self text];
  v8 = v6 ^ [text3 hash];
  thumbnail = [(RFSummaryItemPairCardSection *)self thumbnail];
  v10 = v8 ^ [thumbnail hash];
  thumbnail2 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v23 = v10 ^ [thumbnail2 hash] ^ v3;
  text4 = [(RFSummaryItemPairCardSection *)self text];
  v13 = [text4 hash];
  text5 = [(RFSummaryItemPairCardSection *)self text];
  v15 = v13 ^ [text5 hash];
  text6 = [(RFSummaryItemPairCardSection *)self text];
  v17 = v15 ^ [text6 hash];
  text7 = [(RFSummaryItemPairCardSection *)self text];
  v19 = v17 ^ [text7 hash];
  text8 = [(RFSummaryItemPairCardSection *)self text];
  v21 = v19 ^ [text8 hash];

  return v23 ^ v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_121;
  }

  if (![(RFSummaryItemPairCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v110.receiver = self, v110.super_class = RFSummaryItemPairCardSection, ![(SFCardSection *)&v110 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_121;
  }

  v5 = equalCopy;
  text = [(RFSummaryItemPairCardSection *)self text];
  text2 = [(RFSummaryItemPairCardSection *)v5 text];
  v105 = text2 == 0;
  v106 = text != 0;
  if (v106 == v105)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v103, 0, sizeof(v103));
    v13 = 0;
    v14 = 0;
    memset(v104, 0, sizeof(v104));
    v15 = 0;
    memset(v109, 0, sizeof(v109));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_66;
  }

  text3 = [(RFSummaryItemPairCardSection *)self text];
  v8 = text3 != 0;
  v102 = text3;
  if (text3)
  {
    text4 = [(RFSummaryItemPairCardSection *)self text];
    text5 = [(RFSummaryItemPairCardSection *)v5 text];
    v98 = text4;
    if (![text4 isEqual:?])
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v103, 0, sizeof(v103));
      v13 = 0;
      v14 = 0;
      memset(v104, 0, 48);
      v15 = 0;
      memset(v109, 0, sizeof(v109));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v104[48] = 1;
      goto LABEL_66;
    }
  }

  text6 = [(RFSummaryItemPairCardSection *)self text];
  text7 = [(RFSummaryItemPairCardSection *)v5 text];
  *&v104[48] = v8;
  if ((text6 != 0) == (text7 == 0))
  {
    *&v104[40] = 0;
    memset(v104, 0, 24);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v103, 0, sizeof(v103));
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v109, 0, sizeof(v109));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v104[24] = 1uLL;
    goto LABEL_66;
  }

  text8 = [(RFSummaryItemPairCardSection *)self text];
  v21 = text8 != 0;
  v96 = text8;
  if (text8)
  {
    text9 = [(RFSummaryItemPairCardSection *)self text];
    text10 = [(RFSummaryItemPairCardSection *)v5 text];
    v93 = text9;
    if (![text9 isEqual:?])
    {
      *&v104[28] = 0;
      *&v104[36] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v103, 0, sizeof(v103));
      v13 = 0;
      v14 = 0;
      memset(v104, 0, 20);
      v15 = 0;
      memset(v109, 0, sizeof(v109));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v104[20] = 1;
      *&v104[24] = 1;
      *&v104[44] = 1;
      goto LABEL_66;
    }

    *&v104[44] = v21;
  }

  else
  {
    *&v104[44] = 0;
  }

  text11 = [(RFSummaryItemPairCardSection *)self text];
  text12 = [(RFSummaryItemPairCardSection *)v5 text];
  if ((text11 != 0) == (text12 == 0))
  {
    *&v104[28] = 0;
    *&v104[36] = 0;
    *&v104[4] = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v103, 0, sizeof(v103));
    v13 = 0;
    v14 = 0;
    *v104 = 0;
    v15 = 0;
    memset(v109, 0, sizeof(v109));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v104[20] = 1;
    *&v104[24] = 1;
    *&v104[12] = 1;
    goto LABEL_66;
  }

  text13 = [(RFSummaryItemPairCardSection *)self text];
  v24 = text13 != 0;
  v91 = text13;
  if (text13)
  {
    text14 = [(RFSummaryItemPairCardSection *)self text];
    text15 = [(RFSummaryItemPairCardSection *)v5 text];
    v88 = text14;
    if (![text14 isEqual:?])
    {
      *&v104[4] = 0;
      *&v104[32] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v103, 0, sizeof(v103));
      v13 = 0;
      v14 = 0;
      *v104 = 0;
      v15 = 0;
      memset(v109, 0, sizeof(v109));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v104[24] = 1;
      *&v104[28] = 0;
      *&v104[20] = 1;
      *&v104[12] = 0x100000001;
      *&v104[40] = 1;
      goto LABEL_66;
    }

    *&v104[40] = v24;
  }

  else
  {
    *&v104[40] = 0;
  }

  thumbnail = [(RFSummaryItemPairCardSection *)self thumbnail];
  thumbnail2 = [(RFSummaryItemPairCardSection *)v5 thumbnail];
  if ((thumbnail != 0) == (thumbnail2 == 0))
  {
    *&v104[8] = 0;
    *&v104[32] = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v103, 0, sizeof(v103));
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v109, 0, sizeof(v109));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v104[24] = 1;
    *&v104[28] = 0;
    *&v104[20] = 1;
    *&v104[12] = 0x100000001;
    *v104 = 0x100000000;
    goto LABEL_66;
  }

  thumbnail3 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v27 = thumbnail3 != 0;
  v86 = thumbnail3;
  if (thumbnail3)
  {
    thumbnail4 = [(RFSummaryItemPairCardSection *)self thumbnail];
    thumbnail5 = [(RFSummaryItemPairCardSection *)v5 thumbnail];
    v83 = thumbnail4;
    if (![thumbnail4 isEqual:?])
    {
      v10 = 0;
      v11 = 0;
      *&v104[28] = 0;
      v12 = 0;
      memset(v103, 0, sizeof(v103));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v109, 0, sizeof(v109));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v104[20] = 1;
      *&v104[24] = 1;
      *&v104[12] = 0x100000001;
      *v104 = 0x100000000;
      *&v104[8] = 1;
      *&v104[36] = 1;
      goto LABEL_66;
    }

    *&v104[36] = v27;
  }

  else
  {
    *&v104[36] = 0;
  }

  thumbnail6 = [(RFSummaryItemPairCardSection *)self thumbnail];
  thumbnail7 = [(RFSummaryItemPairCardSection *)v5 thumbnail];
  if ((thumbnail6 != 0) == (thumbnail7 == 0))
  {
    v11 = 0;
    *&v104[28] = 0;
    v12 = 0;
    memset(v103, 0, sizeof(v103));
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v109, 0, sizeof(v109));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v104[20] = 1;
    *&v104[24] = 1;
    *&v104[12] = 0x100000001;
    *v104 = 0x100000000;
    *&v104[8] = 1;
    v10 = 1;
    goto LABEL_66;
  }

  thumbnail8 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v30 = thumbnail8 != 0;
  v81 = thumbnail8;
  if (thumbnail8)
  {
    thumbnail9 = [(RFSummaryItemPairCardSection *)self thumbnail];
    thumbnail10 = [(RFSummaryItemPairCardSection *)v5 thumbnail];
    v78 = thumbnail9;
    if (![thumbnail9 isEqual:?])
    {
      v12 = 0;
      memset(v103, 0, sizeof(v103));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v109, 0, sizeof(v109));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v104[24] = 1;
      *&v104[28] = 0;
      *&v104[20] = 1;
      *&v104[8] = 1;
      *&v104[12] = 0x100000001;
      *v104 = 0x100000000;
      v10 = 1;
      v11 = 1;
      *&v104[32] = 1;
      goto LABEL_66;
    }

    *&v104[32] = v30;
  }

  else
  {
    *&v104[32] = 0;
  }

  text16 = [(RFSummaryItemPairCardSection *)self text];
  text17 = [(RFSummaryItemPairCardSection *)v5 text];
  if ((text16 != 0) == (text17 == 0))
  {
    v12 = 0;
    *v103 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v109, 0, sizeof(v109));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v104[24] = 1;
    *&v104[28] = 0;
    *&v104[20] = 1;
    *&v104[8] = 1;
    *&v104[12] = 0x100000001;
    *v104 = 0x100000000;
    v10 = 1;
    v11 = 1;
    *&v103[8] = 1;
    goto LABEL_66;
  }

  text18 = [(RFSummaryItemPairCardSection *)self text];
  v33 = text18 != 0;
  v76 = text18;
  if (text18)
  {
    text19 = [(RFSummaryItemPairCardSection *)self text];
    text20 = [(RFSummaryItemPairCardSection *)v5 text];
    v73 = text19;
    if (![text19 isEqual:?])
    {
      *v103 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v109, 0, sizeof(v109));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v104[20] = 1;
      *&v104[24] = 1;
      *&v104[12] = 0x100000001;
      *v104 = 0x100000000;
      *&v104[8] = 1;
      v10 = 1;
      v11 = 1;
      *&v103[8] = 1;
      v12 = 1;
      *&v104[28] = 1;
      goto LABEL_66;
    }

    *&v104[28] = v33;
  }

  else
  {
    *&v104[28] = 0;
  }

  text21 = [(RFSummaryItemPairCardSection *)self text];
  text22 = [(RFSummaryItemPairCardSection *)v5 text];
  if ((text21 != 0) == (text22 == 0))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v109, 0, sizeof(v109));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v104[20] = 1;
    *&v104[24] = 1;
    *&v104[12] = 0x100000001;
    *v104 = 0x100000000;
    *&v104[8] = 1;
    v10 = 1;
    v11 = 1;
    *&v103[8] = 1;
    v12 = 1;
    *v103 = 1;
  }

  else
  {
    text23 = [(RFSummaryItemPairCardSection *)self text];
    *&v109[8] = text23 != 0;
    v71 = text23;
    if (!text23 || (-[RFSummaryItemPairCardSection text](self, "text"), v36 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairCardSection text](v5, "text"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v36, [v36 isEqual:?]))
    {
      text24 = [(RFSummaryItemPairCardSection *)self text];
      text25 = [(RFSummaryItemPairCardSection *)v5 text];
      if ((text24 != 0) == (text25 == 0))
      {
        v14 = 0;
        *v109 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v104[20] = 1;
        *&v104[24] = 1;
        *&v104[12] = 1;
        *&v104[16] = 1;
        *v104 = 0;
        *&v104[4] = 1;
        *&v104[8] = 1;
        v10 = 1;
        v11 = 1;
        *&v103[8] = 1;
        v12 = 1;
        *v103 = 1;
        v13 = 1;
        *&v103[4] = 1;
      }

      else
      {
        text26 = [(RFSummaryItemPairCardSection *)self text];
        *&v109[4] = text26 != 0;
        v66 = text26;
        if (!text26 || (-[RFSummaryItemPairCardSection text](self, "text"), v38 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairCardSection text](v5, "text"), v62 = objc_claimAutoreleasedReturnValue(), v63 = v38, [v38 isEqual:?]))
        {
          text27 = [(RFSummaryItemPairCardSection *)self text];
          text28 = [(RFSummaryItemPairCardSection *)v5 text];
          if ((text27 != 0) == (text28 == 0))
          {
            v15 = 0;
            *v109 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *&v104[20] = 1;
            *&v104[24] = 1;
            *&v104[12] = 1;
            *&v104[16] = 1;
            *&v104[4] = 1;
            *&v104[8] = 1;
            v10 = 1;
            v11 = 1;
            *&v103[4] = 1;
            *&v103[8] = 1;
            v12 = 1;
            *v103 = 1;
            v13 = 1;
            v14 = 1;
            *v104 = 1;
          }

          else
          {
            text29 = [(RFSummaryItemPairCardSection *)self text];
            *v109 = text29 != 0;
            v61 = text29;
            if (!text29 || (-[RFSummaryItemPairCardSection text](self, "text"), v40 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairCardSection text](v5, "text"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v40, [v40 isEqual:?]))
            {
              text30 = [(RFSummaryItemPairCardSection *)self text];
              text31 = [(RFSummaryItemPairCardSection *)v5 text];
              if ((text30 != 0) == (text31 == 0))
              {
                v17 = 0;
                v18 = 0;
                v19 = 0;
                *&v104[20] = 1;
                *&v104[24] = 1;
                *&v104[12] = 1;
                *&v104[16] = 1;
                *&v104[4] = 1;
                *&v104[8] = 1;
                v10 = 1;
                v11 = 1;
                *&v103[4] = 1;
                *&v103[8] = 1;
                v12 = 1;
                *v103 = 1;
                v13 = 1;
                v14 = 1;
                *v104 = 1;
                v15 = 1;
                v16 = 1;
              }

              else
              {
                text32 = [(RFSummaryItemPairCardSection *)self text];
                if (text32)
                {
                  text33 = [(RFSummaryItemPairCardSection *)self text];
                  text34 = [(RFSummaryItemPairCardSection *)v5 text];
                  v55 = text33;
                  v19 = [text33 isEqual:text34];
                  v6 = text34;
                  v18 = 1;
                  *&v104[20] = 1;
                  *&v104[24] = 1;
                  *&v104[12] = 1;
                  *&v104[16] = 1;
                  *&v104[4] = 1;
                  *&v104[8] = 1;
                  v10 = 1;
                  v11 = 1;
                  *&v103[4] = 1;
                  *&v103[8] = 1;
                  v12 = 1;
                  *v103 = 1;
                  v13 = 1;
                  v14 = 1;
                  *v104 = 1;
                  v15 = 1;
                  v16 = 1;
                  v17 = 1;
                }

                else
                {
                  text32 = 0;
                  v18 = 0;
                  *&v104[20] = 1;
                  *&v104[24] = 1;
                  *&v104[12] = 0x100000001;
                  *&v104[8] = 1;
                  v10 = 1;
                  v11 = 1;
                  *&v103[8] = 1;
                  v12 = 1;
                  *v103 = 0x100000001;
                  v13 = 1;
                  v14 = 1;
                  *v104 = 0x100000001;
                  v15 = 1;
                  v16 = 1;
                  v17 = 1;
                  v19 = 1;
                }
              }
            }

            else
            {
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              *&v104[20] = 1;
              *&v104[24] = 1;
              *&v104[12] = 1;
              *&v104[16] = 1;
              *&v104[4] = 1;
              *&v104[8] = 1;
              v10 = 1;
              v11 = 1;
              *&v103[4] = 1;
              *&v103[8] = 1;
              v12 = 1;
              *v103 = 1;
              v13 = 1;
              v14 = 1;
              *v104 = 1;
              v15 = 1;
              *v109 = 1;
            }
          }
        }

        else
        {
          v15 = 0;
          *v109 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *&v104[20] = 1;
          *&v104[24] = 1;
          *&v104[12] = 1;
          *&v104[16] = 1;
          *v104 = 0;
          *&v104[4] = 1;
          *&v104[8] = 1;
          v10 = 1;
          v11 = 1;
          *&v103[4] = 1;
          *&v103[8] = 1;
          v12 = 1;
          *v103 = 1;
          v13 = 1;
          v14 = 1;
          *&v109[4] = 1;
        }
      }
    }

    else
    {
      v14 = 0;
      *v109 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v104[20] = 1;
      *&v104[24] = 1;
      *&v104[12] = 1;
      *&v104[16] = 1;
      *v104 = 0;
      *&v104[4] = 1;
      *&v104[8] = 1;
      v10 = 1;
      v11 = 1;
      *&v103[4] = 0;
      *&v103[8] = 1;
      v12 = 1;
      *v103 = 1;
      v13 = 1;
      *&v109[8] = 1;
    }
  }

LABEL_66:
  if (v18)
  {
    v101 = equalCopy;
    v44 = v19;
    v45 = v10;
    v46 = v13;
    v47 = v5;
    v48 = v14;
    v49 = v16;
    v50 = v12;
    v51 = v15;
    v52 = v11;
    v53 = v17;

    v54 = v53;
    v11 = v52;
    v15 = v51;
    v12 = v50;
    v16 = v49;
    v14 = v48;
    v5 = v47;
    v13 = v46;
    v10 = v45;
    v19 = v44;
    equalCopy = v101;
    if (!v54)
    {
LABEL_68:
      if (!v16)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }
  }

  else if (!v17)
  {
    goto LABEL_68;
  }

  if (v16)
  {
LABEL_69:
  }

LABEL_70:
  if (*v109)
  {
  }

  if (v15)
  {
  }

  if (*v104)
  {
  }

  if (*&v109[4])
  {
  }

  if (v14)
  {
  }

  if (*&v103[4])
  {
  }

  if (*&v109[8])
  {
  }

  if (v13)
  {
  }

  if (*v103)
  {
  }

  if (*&v104[28])
  {
  }

  if (v12)
  {
  }

  if (*&v103[8])
  {
  }

  if (!*&v104[32])
  {
    if (!v11)
    {
      goto LABEL_96;
    }

LABEL_126:

    if (!v10)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (v11)
  {
    goto LABEL_126;
  }

LABEL_96:
  if (v10)
  {
LABEL_97:
  }

LABEL_98:
  if (*&v104[36])
  {
  }

  if (*&v104[8])
  {
  }

  if (*&v104[4])
  {
  }

  if (*&v104[40])
  {
  }

  if (*&v104[16])
  {
  }

  if (*&v104[12])
  {
  }

  if (*&v104[44])
  {
  }

  if (*&v104[20])
  {
  }

  if (*&v104[24])
  {
  }

  if (*&v104[48])
  {
  }

  if (v106 != v105)
  {
  }

LABEL_121:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26.receiver = self;
  v26.super_class = RFSummaryItemPairCardSection;
  v4 = [(SFCardSection *)&v26 copyWithZone:zone];
  text = [(RFSummaryItemPairCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFSummaryItemPairCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFSummaryItemPairCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  thumbnail = [(RFSummaryItemPairCardSection *)self thumbnail];
  v12 = [thumbnail copy];
  [v4 setThumbnail_1:v12];

  thumbnail2 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v14 = [thumbnail2 copy];
  [v4 setThumbnail_2:v14];

  text4 = [(RFSummaryItemPairCardSection *)self text];
  v16 = [text4 copy];
  [v4 setText_4:v16];

  text5 = [(RFSummaryItemPairCardSection *)self text];
  v18 = [text5 copy];
  [v4 setText_5:v18];

  text6 = [(RFSummaryItemPairCardSection *)self text];
  v20 = [text6 copy];
  [v4 setText_6:v20];

  text7 = [(RFSummaryItemPairCardSection *)self text];
  v22 = [text7 copy];
  [v4 setText_7:v22];

  text8 = [(RFSummaryItemPairCardSection *)self text];
  v24 = [text8 copy];
  [v4 setText_8:v24];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemPairCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemPairCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemPairCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSummaryItemPairCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_3:text3];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPairCardSection *)v5 setThumbnail_1:thumbnail];

    thumbnail2 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPairCardSection *)v5 setThumbnail_2:thumbnail2];

    text4 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_4:text4];

    text5 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_5:text5];

    text6 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_6:text6];

    text7 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_7:text7];

    text8 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_8:text8];

    nextCard = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:nextCard];

    commands = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:commands];

    parameterKeyPaths = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:parameterKeyPaths];

    cardSectionId = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:cardSectionId];

    resultIdentifier = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:resultIdentifier];

    userReportRequest = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:userReportRequest];

    command = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:command];

    previewCommand = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:previewCommand];

    previewButtonItems = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:previewButtonItems];

    cardSectionDetail = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:cardSectionDetail];

    previewButtonItemsTitle = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:previewButtonItemsTitle];

    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    referencedCommands = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:referencedCommands];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    appEntityAnnotation = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:appEntityAnnotation];

    emphasisSubjectId = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:emphasisSubjectId];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    secondaryCommand = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:secondaryCommand];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    racFeedbackSubfeatureId = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId];

    racFeedbackLoggingContent = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:racFeedbackLoggingContent];

    copyableItems = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:copyableItems];

    applicationBundleIdentifier = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];
  }

  return v5;
}

@end