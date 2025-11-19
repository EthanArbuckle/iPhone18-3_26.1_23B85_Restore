@interface RFSummaryItemPairCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemPairCardSection)initWithCoder:(id)a3;
- (RFSummaryItemPairCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSummaryItemPairCardSection

- (RFSummaryItemPairCardSection)initWithProtobuf:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = RFSummaryItemPairCardSection;
  v5 = [(SFCardSection *)&v48 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFSummaryItemPairCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSummaryItemPairCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFSummaryItemPairCardSection *)v5 setText_3:v17];
    }

    v18 = [v4 thumbnail];

    if (v18)
    {
      v19 = [RFVisualProperty alloc];
      v20 = [v4 thumbnail];
      v21 = [(RFVisualProperty *)v19 initWithProtobuf:v20];
      [(RFSummaryItemPairCardSection *)v5 setThumbnail_1:v21];
    }

    v22 = [v4 thumbnail];

    if (v22)
    {
      v23 = [RFVisualProperty alloc];
      v24 = [v4 thumbnail];
      v25 = [(RFVisualProperty *)v23 initWithProtobuf:v24];
      [(RFSummaryItemPairCardSection *)v5 setThumbnail_2:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [RFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:v28];
      [(RFSummaryItemPairCardSection *)v5 setText_4:v29];
    }

    v30 = [v4 text];

    if (v30)
    {
      v31 = [RFTextProperty alloc];
      v32 = [v4 text];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:v32];
      [(RFSummaryItemPairCardSection *)v5 setText_5:v33];
    }

    v34 = [v4 text];

    if (v34)
    {
      v35 = [RFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:v36];
      [(RFSummaryItemPairCardSection *)v5 setText_6:v37];
    }

    v38 = [v4 text];

    if (v38)
    {
      v39 = [RFTextProperty alloc];
      v40 = [v4 text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:v40];
      [(RFSummaryItemPairCardSection *)v5 setText_7:v41];
    }

    v42 = [v4 text];

    if (v42)
    {
      v43 = [RFTextProperty alloc];
      v44 = [v4 text];
      v45 = [(RFTextProperty *)v43 initWithProtobuf:v44];
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
  v24 = [(RFSummaryItemPairCardSection *)self text];
  v4 = [v24 hash];
  v5 = [(RFSummaryItemPairCardSection *)self text];
  v6 = v4 ^ [v5 hash];
  v7 = [(RFSummaryItemPairCardSection *)self text];
  v8 = v6 ^ [v7 hash];
  v9 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v10 = v8 ^ [v9 hash];
  v11 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v23 = v10 ^ [v11 hash] ^ v3;
  v12 = [(RFSummaryItemPairCardSection *)self text];
  v13 = [v12 hash];
  v14 = [(RFSummaryItemPairCardSection *)self text];
  v15 = v13 ^ [v14 hash];
  v16 = [(RFSummaryItemPairCardSection *)self text];
  v17 = v15 ^ [v16 hash];
  v18 = [(RFSummaryItemPairCardSection *)self text];
  v19 = v17 ^ [v18 hash];
  v20 = [(RFSummaryItemPairCardSection *)self text];
  v21 = v19 ^ [v20 hash];

  return v23 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_121;
  }

  if (![(RFSummaryItemPairCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v110.receiver = self, v110.super_class = RFSummaryItemPairCardSection, ![(SFCardSection *)&v110 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_121;
  }

  v5 = v4;
  v108 = [(RFSummaryItemPairCardSection *)self text];
  v107 = [(RFSummaryItemPairCardSection *)v5 text];
  v105 = v107 == 0;
  v106 = v108 != 0;
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

  v7 = [(RFSummaryItemPairCardSection *)self text];
  v8 = v7 != 0;
  v102 = v7;
  if (v7)
  {
    v9 = [(RFSummaryItemPairCardSection *)self text];
    v97 = [(RFSummaryItemPairCardSection *)v5 text];
    v98 = v9;
    if (![v9 isEqual:?])
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

  v100 = [(RFSummaryItemPairCardSection *)self text];
  v99 = [(RFSummaryItemPairCardSection *)v5 text];
  *&v104[48] = v8;
  if ((v100 != 0) == (v99 == 0))
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

  v20 = [(RFSummaryItemPairCardSection *)self text];
  v21 = v20 != 0;
  v96 = v20;
  if (v20)
  {
    v22 = [(RFSummaryItemPairCardSection *)self text];
    v92 = [(RFSummaryItemPairCardSection *)v5 text];
    v93 = v22;
    if (![v22 isEqual:?])
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

  v95 = [(RFSummaryItemPairCardSection *)self text];
  v94 = [(RFSummaryItemPairCardSection *)v5 text];
  if ((v95 != 0) == (v94 == 0))
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

  v23 = [(RFSummaryItemPairCardSection *)self text];
  v24 = v23 != 0;
  v91 = v23;
  if (v23)
  {
    v25 = [(RFSummaryItemPairCardSection *)self text];
    v87 = [(RFSummaryItemPairCardSection *)v5 text];
    v88 = v25;
    if (![v25 isEqual:?])
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

  v90 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v89 = [(RFSummaryItemPairCardSection *)v5 thumbnail];
  if ((v90 != 0) == (v89 == 0))
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

  v26 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v27 = v26 != 0;
  v86 = v26;
  if (v26)
  {
    v28 = [(RFSummaryItemPairCardSection *)self thumbnail];
    v82 = [(RFSummaryItemPairCardSection *)v5 thumbnail];
    v83 = v28;
    if (![v28 isEqual:?])
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

  v85 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v84 = [(RFSummaryItemPairCardSection *)v5 thumbnail];
  if ((v85 != 0) == (v84 == 0))
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

  v29 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v30 = v29 != 0;
  v81 = v29;
  if (v29)
  {
    v31 = [(RFSummaryItemPairCardSection *)self thumbnail];
    v77 = [(RFSummaryItemPairCardSection *)v5 thumbnail];
    v78 = v31;
    if (![v31 isEqual:?])
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

  v80 = [(RFSummaryItemPairCardSection *)self text];
  v79 = [(RFSummaryItemPairCardSection *)v5 text];
  if ((v80 != 0) == (v79 == 0))
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

  v32 = [(RFSummaryItemPairCardSection *)self text];
  v33 = v32 != 0;
  v76 = v32;
  if (v32)
  {
    v34 = [(RFSummaryItemPairCardSection *)self text];
    v72 = [(RFSummaryItemPairCardSection *)v5 text];
    v73 = v34;
    if (![v34 isEqual:?])
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

  v75 = [(RFSummaryItemPairCardSection *)self text];
  v74 = [(RFSummaryItemPairCardSection *)v5 text];
  if ((v75 != 0) == (v74 == 0))
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
    v35 = [(RFSummaryItemPairCardSection *)self text];
    *&v109[8] = v35 != 0;
    v71 = v35;
    if (!v35 || (-[RFSummaryItemPairCardSection text](self, "text"), v36 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairCardSection text](v5, "text"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v36, [v36 isEqual:?]))
    {
      v70 = [(RFSummaryItemPairCardSection *)self text];
      v69 = [(RFSummaryItemPairCardSection *)v5 text];
      if ((v70 != 0) == (v69 == 0))
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
        v37 = [(RFSummaryItemPairCardSection *)self text];
        *&v109[4] = v37 != 0;
        v66 = v37;
        if (!v37 || (-[RFSummaryItemPairCardSection text](self, "text"), v38 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairCardSection text](v5, "text"), v62 = objc_claimAutoreleasedReturnValue(), v63 = v38, [v38 isEqual:?]))
        {
          v65 = [(RFSummaryItemPairCardSection *)self text];
          v64 = [(RFSummaryItemPairCardSection *)v5 text];
          if ((v65 != 0) == (v64 == 0))
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
            v39 = [(RFSummaryItemPairCardSection *)self text];
            *v109 = v39 != 0;
            v61 = v39;
            if (!v39 || (-[RFSummaryItemPairCardSection text](self, "text"), v40 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairCardSection text](v5, "text"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v40, [v40 isEqual:?]))
            {
              v60 = [(RFSummaryItemPairCardSection *)self text];
              v59 = [(RFSummaryItemPairCardSection *)v5 text];
              if ((v60 != 0) == (v59 == 0))
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
                v56 = [(RFSummaryItemPairCardSection *)self text];
                if (v56)
                {
                  v41 = [(RFSummaryItemPairCardSection *)self text];
                  v42 = [(RFSummaryItemPairCardSection *)v5 text];
                  v55 = v41;
                  v19 = [v41 isEqual:v42];
                  v6 = v42;
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
                  v56 = 0;
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
    v101 = v4;
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
    v4 = v101;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v26.receiver = self;
  v26.super_class = RFSummaryItemPairCardSection;
  v4 = [(SFCardSection *)&v26 copyWithZone:a3];
  v5 = [(RFSummaryItemPairCardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_1:v6];

  v7 = [(RFSummaryItemPairCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_2:v8];

  v9 = [(RFSummaryItemPairCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_3:v10];

  v11 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v12 = [v11 copy];
  [v4 setThumbnail_1:v12];

  v13 = [(RFSummaryItemPairCardSection *)self thumbnail];
  v14 = [v13 copy];
  [v4 setThumbnail_2:v14];

  v15 = [(RFSummaryItemPairCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText_4:v16];

  v17 = [(RFSummaryItemPairCardSection *)self text];
  v18 = [v17 copy];
  [v4 setText_5:v18];

  v19 = [(RFSummaryItemPairCardSection *)self text];
  v20 = [v19 copy];
  [v4 setText_6:v20];

  v21 = [(RFSummaryItemPairCardSection *)self text];
  v22 = [v21 copy];
  [v4 setText_7:v22];

  v23 = [(RFSummaryItemPairCardSection *)self text];
  v24 = [v23 copy];
  [v4 setText_8:v24];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemPairCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemPairCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemPairCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFSummaryItemPairCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_1:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_2:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_3:v11];

    v12 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPairCardSection *)v5 setThumbnail_1:v12];

    v13 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPairCardSection *)v5 setThumbnail_2:v13];

    v14 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_4:v14];

    v15 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_5:v15];

    v16 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_6:v16];

    v17 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_7:v17];

    v18 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairCardSection *)v5 setText_8:v18];

    v19 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v19];

    v20 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v20];

    v21 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v21];

    v22 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v22];

    v23 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v23];

    v24 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v24];

    v25 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v25];

    v26 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v26];

    v27 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v27];

    v28 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v28];

    v29 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v29];

    v30 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v30];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v31 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v31];

    v32 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v32];

    v33 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v33];

    v34 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v34];

    v35 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v35];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v36 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v36];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v37 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v37];

    v38 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v38];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v39 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v39];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v40 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v40];

    v41 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v41];

    v42 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v42];

    v43 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v43];
  }

  return v5;
}

@end