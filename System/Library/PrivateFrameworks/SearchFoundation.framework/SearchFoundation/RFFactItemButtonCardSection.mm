@interface RFFactItemButtonCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemButtonCardSection)initWithCoder:(id)a3;
- (RFFactItemButtonCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFFactItemButtonCardSection

- (unint64_t)hash
{
  v26.receiver = self;
  v26.super_class = RFFactItemButtonCardSection;
  v3 = [(SFCardSection *)&v26 hash];
  v25 = [(RFFactItemButtonCardSection *)self text];
  v4 = [v25 hash];
  v24 = [(RFFactItemButtonCardSection *)self button];
  v5 = v4 ^ [v24 hash];
  v6 = [(RFFactItemButtonCardSection *)self button];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFFactItemButtonCardSection *)self button];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFFactItemButtonCardSection *)self text];
  v23 = v9 ^ [v10 hash] ^ v3;
  v11 = [(RFFactItemButtonCardSection *)self text];
  v12 = [v11 hash];
  v13 = [(RFFactItemButtonCardSection *)self text];
  v14 = v12 ^ [v13 hash];
  v15 = [(RFFactItemButtonCardSection *)self text];
  v16 = v14 ^ [v15 hash];
  v17 = [(RFFactItemButtonCardSection *)self thumbnail];
  v18 = v16 ^ [v17 hash];
  v19 = [(RFFactItemButtonCardSection *)self thumbnail2];
  v20 = v18 ^ [v19 hash];
  v21 = v20 ^ [(RFFactItemButtonCardSection *)self buttonItemsAreBottom];

  return v23 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(self) = 1;
    goto LABEL_123;
  }

  if (![(RFFactItemButtonCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v111.receiver = self, v111.super_class = RFFactItemButtonCardSection, ![(SFCardSection *)&v111 isEqual:v4]))
  {
    LOBYTE(self) = 0;
    goto LABEL_123;
  }

  v5 = v4;
  v109 = [(RFFactItemButtonCardSection *)self text];
  v108 = [(RFFactItemButtonCardSection *)v5 text];
  v106 = v108 == 0;
  v107 = v109 != 0;
  if (v107 == v106)
  {
    memset(v105, 0, sizeof(v105));
    v10 = 0;
    v11 = 0;
    memset(v104, 0, sizeof(v104));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v110, 0, sizeof(v110));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    goto LABEL_68;
  }

  v7 = [(RFFactItemButtonCardSection *)self text];
  v8 = v7 != 0;
  v103 = v7;
  if (v7)
  {
    v9 = [(RFFactItemButtonCardSection *)self text];
    v97 = [(RFFactItemButtonCardSection *)v5 text];
    v98 = v9;
    if (![v9 isEqual:?])
    {
      memset(v105, 0, 48);
      v10 = 0;
      v11 = 0;
      memset(v104, 0, sizeof(v104));
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v110, 0, sizeof(v110));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      *&v105[48] = 1;
      goto LABEL_68;
    }
  }

  v100 = [(RFFactItemButtonCardSection *)self button];
  v99 = [(RFFactItemButtonCardSection *)v5 button];
  *&v105[48] = v8;
  if ((v100 != 0) == (v99 == 0))
  {
    *&v105[40] = 0;
    memset(v105, 0, 24);
    v10 = 0;
    v11 = 0;
    memset(v104, 0, sizeof(v104));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v110, 0, sizeof(v110));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    *&v105[24] = 1uLL;
    goto LABEL_68;
  }

  v19 = [(RFFactItemButtonCardSection *)self button];
  v20 = v19 != 0;
  v96 = v19;
  if (v19)
  {
    v21 = [(RFFactItemButtonCardSection *)self button];
    v92 = [(RFFactItemButtonCardSection *)v5 button];
    v93 = v21;
    if (![v21 isEqual:?])
    {
      *&v105[28] = 0;
      *&v105[36] = 0;
      memset(v105, 0, 20);
      v10 = 0;
      v11 = 0;
      memset(v104, 0, sizeof(v104));
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v110, 0, sizeof(v110));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      *&v105[20] = 1;
      *&v105[24] = 1;
      *&v105[44] = 1;
      goto LABEL_68;
    }

    *&v105[44] = v20;
  }

  else
  {
    *&v105[44] = 0;
  }

  v95 = [(RFFactItemButtonCardSection *)self button];
  v94 = [(RFFactItemButtonCardSection *)v5 button];
  if ((v95 != 0) == (v94 == 0))
  {
    *&v105[16] = 0;
    *&v105[28] = 0;
    *&v105[36] = 0;
    *v105 = 0;
    v10 = 0;
    v11 = 0;
    memset(v104, 0, sizeof(v104));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v110, 0, sizeof(v110));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    *&v105[20] = 1;
    *&v105[24] = 1;
    *&v105[8] = 0x100000000;
    goto LABEL_68;
  }

  v22 = [(RFFactItemButtonCardSection *)self button];
  v23 = v22 != 0;
  v91 = v22;
  if (v22)
  {
    v24 = [(RFFactItemButtonCardSection *)self button];
    v87 = [(RFFactItemButtonCardSection *)v5 button];
    v88 = v24;
    if (![v24 isEqual:?])
    {
      *v105 = 0;
      *&v105[32] = 0;
      v10 = 0;
      v11 = 0;
      memset(v104, 0, sizeof(v104));
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v110, 0, sizeof(v110));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      *&v105[24] = 1;
      *&v105[28] = 0;
      *&v105[16] = 1;
      *&v105[20] = 1;
      *&v105[8] = 0x100000000;
      *&v105[40] = 1;
      goto LABEL_68;
    }

    *&v105[40] = v23;
  }

  else
  {
    *&v105[40] = 0;
  }

  v90 = [(RFFactItemButtonCardSection *)self button];
  v89 = [(RFFactItemButtonCardSection *)v5 button];
  if ((v90 != 0) == (v89 == 0))
  {
    *&v105[4] = 0;
    *&v105[32] = 0;
    v10 = 0;
    v11 = 0;
    memset(v104, 0, sizeof(v104));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v110, 0, sizeof(v110));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    *&v105[24] = 1;
    *&v105[28] = 0;
    *&v105[16] = 1;
    *&v105[20] = 1;
    *&v105[12] = 1;
    *v105 = 1;
    goto LABEL_68;
  }

  v25 = [(RFFactItemButtonCardSection *)self button];
  v26 = v25 != 0;
  v86 = v25;
  if (v25)
  {
    v27 = [(RFFactItemButtonCardSection *)self button];
    v82 = [(RFFactItemButtonCardSection *)v5 button];
    v83 = v27;
    if (![v27 isEqual:?])
    {
      v10 = 0;
      *&v105[28] = 0;
      v11 = 0;
      memset(v104, 0, sizeof(v104));
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v110, 0, sizeof(v110));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      *&v105[20] = 1;
      *&v105[24] = 1;
      *&v105[16] = 1;
      *v105 = 1;
      *&v105[8] = 0x100000001;
      *&v105[36] = 1;
      goto LABEL_68;
    }

    *&v105[36] = v26;
  }

  else
  {
    *&v105[36] = 0;
  }

  v85 = [(RFFactItemButtonCardSection *)self text];
  v84 = [(RFFactItemButtonCardSection *)v5 text];
  if ((v85 != 0) == (v84 == 0))
  {
    *&v105[28] = 0;
    v11 = 0;
    memset(v104, 0, sizeof(v104));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v110, 0, sizeof(v110));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    *&v105[20] = 1;
    *&v105[24] = 1;
    *&v105[16] = 1;
    *v105 = 1;
    *&v105[8] = 0x100000001;
    v10 = 1;
    goto LABEL_68;
  }

  v28 = [(RFFactItemButtonCardSection *)self text];
  v29 = v28 != 0;
  v81 = v28;
  if (v28)
  {
    v30 = [(RFFactItemButtonCardSection *)self text];
    v77 = [(RFFactItemButtonCardSection *)v5 text];
    v78 = v30;
    if (![v30 isEqual:?])
    {
      v11 = 0;
      memset(v104, 0, sizeof(v104));
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v110, 0, sizeof(v110));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      *&v105[24] = 1;
      *&v105[28] = 0;
      *&v105[16] = 1;
      *&v105[20] = 1;
      *&v105[8] = 0x100000001;
      *v105 = 0x100000001;
      v10 = 1;
      *&v105[32] = 1;
      goto LABEL_68;
    }

    *&v105[32] = v29;
  }

  else
  {
    *&v105[32] = 0;
  }

  v80 = [(RFFactItemButtonCardSection *)self text];
  v79 = [(RFFactItemButtonCardSection *)v5 text];
  if ((v80 != 0) == (v79 == 0))
  {
    v11 = 0;
    *v104 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v110, 0, sizeof(v110));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    *&v105[24] = 1;
    *&v105[28] = 0;
    *&v105[16] = 1;
    *&v105[20] = 1;
    *&v105[8] = 0x100000001;
    *v105 = 0x100000001;
    v10 = 1;
    *&v104[8] = 1;
    goto LABEL_68;
  }

  v31 = [(RFFactItemButtonCardSection *)self text];
  v32 = v31 != 0;
  v76 = v31;
  if (v31)
  {
    v33 = [(RFFactItemButtonCardSection *)self text];
    v72 = [(RFFactItemButtonCardSection *)v5 text];
    v73 = v33;
    if (![v33 isEqual:?])
    {
      *v104 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v110, 0, sizeof(v110));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      *&v105[20] = 1;
      *&v105[24] = 1;
      *&v105[16] = 1;
      *v105 = 0x100000001;
      *&v105[8] = 0x100000001;
      v10 = 1;
      *&v104[8] = 1;
      v11 = 1;
      *&v105[28] = 1;
      goto LABEL_68;
    }

    *&v105[28] = v32;
  }

  else
  {
    *&v105[28] = 0;
  }

  v75 = [(RFFactItemButtonCardSection *)self text];
  v74 = [(RFFactItemButtonCardSection *)v5 text];
  if ((v75 != 0) == (v74 == 0))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v110, 0, sizeof(v110));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    *&v105[20] = 1;
    *&v105[24] = 1;
    *&v105[16] = 1;
    *v105 = 0x100000001;
    *&v105[8] = 0x100000001;
    v10 = 1;
    *&v104[8] = 1;
    v11 = 1;
    *v104 = 1;
  }

  else
  {
    v34 = [(RFFactItemButtonCardSection *)self text];
    *&v110[8] = v34 != 0;
    v71 = v34;
    if (!v34 || (-[RFFactItemButtonCardSection text](self, "text"), v35 = objc_claimAutoreleasedReturnValue(), -[RFFactItemButtonCardSection text](v5, "text"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v35, [v35 isEqual:?]))
    {
      v70 = [(RFFactItemButtonCardSection *)self text];
      v69 = [(RFFactItemButtonCardSection *)v5 text];
      if ((v70 != 0) == (v69 == 0))
      {
        v13 = 0;
        *v110 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        LOBYTE(self) = 0;
        *&v105[20] = 1;
        *&v105[24] = 1;
        *&v105[12] = 1;
        *&v105[16] = 1;
        *v105 = 1;
        *&v105[4] = 1;
        *&v105[8] = 1;
        v10 = 1;
        *&v104[8] = 1;
        v11 = 1;
        *v104 = 1;
        v12 = 1;
        *&v104[4] = 1;
      }

      else
      {
        v36 = [(RFFactItemButtonCardSection *)self text];
        *&v110[4] = v36 != 0;
        v66 = v36;
        if (!v36 || (-[RFFactItemButtonCardSection text](self, "text"), v37 = objc_claimAutoreleasedReturnValue(), -[RFFactItemButtonCardSection text](v5, "text"), v62 = objc_claimAutoreleasedReturnValue(), v63 = v37, [v37 isEqual:?]))
        {
          v65 = [(RFFactItemButtonCardSection *)self thumbnail];
          v64 = [(RFFactItemButtonCardSection *)v5 thumbnail];
          if ((v65 != 0) == (v64 == 0))
          {
            v15 = 0;
            *v110 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            LOBYTE(self) = 0;
            *&v105[20] = 1;
            *&v105[24] = 1;
            *&v105[12] = 1;
            *&v105[16] = 1;
            *v105 = 1;
            *&v105[4] = 1;
            *&v105[8] = 1;
            v10 = 1;
            *&v104[4] = 1;
            *&v104[8] = 1;
            v11 = 1;
            *v104 = 1;
            v12 = 1;
            v13 = 1;
            v14 = 1;
          }

          else
          {
            v38 = [(RFFactItemButtonCardSection *)self thumbnail];
            *v110 = v38 != 0;
            v61 = v38;
            if (!v38 || (-[RFFactItemButtonCardSection thumbnail](self, "thumbnail"), v39 = objc_claimAutoreleasedReturnValue(), -[RFFactItemButtonCardSection thumbnail](v5, "thumbnail"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v39, [v39 isEqual:?]))
            {
              v60 = [(RFFactItemButtonCardSection *)self thumbnail2];
              v59 = [(RFFactItemButtonCardSection *)v5 thumbnail2];
              if ((v60 != 0) == (v59 == 0))
              {
                v17 = 0;
                v18 = 0;
                LOBYTE(self) = 0;
                *&v105[20] = 1;
                *&v105[24] = 1;
                *&v105[12] = 1;
                *&v105[16] = 1;
                *v105 = 1;
                *&v105[4] = 1;
                *&v105[8] = 1;
                v10 = 1;
                *&v104[4] = 1;
                *&v104[8] = 1;
                v11 = 1;
                *v104 = 1;
                v12 = 1;
                v13 = 1;
                v14 = 1;
                v15 = 1;
                v16 = 1;
              }

              else
              {
                v40 = [(RFFactItemButtonCardSection *)self thumbnail2];
                v101 = v40 != 0;
                v56 = v40;
                if (!v40 || (-[RFFactItemButtonCardSection thumbnail2](self, "thumbnail2"), v41 = objc_claimAutoreleasedReturnValue(), -[RFFactItemButtonCardSection thumbnail2](v5, "thumbnail2"), v54 = objc_claimAutoreleasedReturnValue(), v55 = v41, [v41 isEqual:?]))
                {
                  v42 = [(RFFactItemButtonCardSection *)self buttonItemsAreBottom];
                  LODWORD(self) = v42 ^ [(RFFactItemButtonCardSection *)v5 buttonItemsAreBottom]^ 1;
                  *&v105[20] = 1;
                  *&v105[24] = 1;
                  *&v105[12] = 1;
                  *&v105[16] = 1;
                  *v105 = 1;
                  *&v105[4] = 1;
                  *&v105[8] = 1;
                  v10 = 1;
                  *&v104[4] = 1;
                  *&v104[8] = 1;
                  v11 = 1;
                  *v104 = 1;
                  v12 = 1;
                  v13 = 1;
                  v14 = 1;
                  v15 = 1;
                  v16 = 1;
                  v17 = 1;
                  v18 = v101;
                }

                else
                {
                  LOBYTE(self) = 0;
                  *&v105[20] = 1;
                  *&v105[24] = 1;
                  *&v105[12] = 1;
                  *&v105[16] = 1;
                  *v105 = 1;
                  *&v105[4] = 1;
                  *&v105[8] = 1;
                  v10 = 1;
                  *&v104[4] = 1;
                  *&v104[8] = 1;
                  v11 = 1;
                  *v104 = 1;
                  v12 = 1;
                  v13 = 1;
                  v14 = 1;
                  v15 = 1;
                  v16 = 1;
                  v17 = 1;
                  v18 = 1;
                }

                v6 = v54;
              }
            }

            else
            {
              v16 = 0;
              v17 = 0;
              v18 = 0;
              LOBYTE(self) = 0;
              *&v105[20] = 1;
              *&v105[24] = 1;
              *&v105[12] = 1;
              *&v105[16] = 1;
              *v105 = 1;
              *&v105[4] = 1;
              *&v105[8] = 1;
              v10 = 1;
              *&v104[4] = 1;
              *&v104[8] = 1;
              v11 = 1;
              *v104 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              v15 = 1;
              *v110 = 1;
            }
          }
        }

        else
        {
          v14 = 0;
          v15 = 0;
          *v110 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          LOBYTE(self) = 0;
          *&v105[20] = 1;
          *&v105[24] = 1;
          *&v105[12] = 1;
          *&v105[16] = 1;
          *v105 = 1;
          *&v105[4] = 1;
          *&v105[8] = 1;
          v10 = 1;
          *&v104[4] = 1;
          *&v104[8] = 1;
          v11 = 1;
          *v104 = 1;
          v12 = 1;
          v13 = 1;
          *&v110[4] = 1;
        }
      }
    }

    else
    {
      v13 = 0;
      *v110 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      *&v105[20] = 1;
      *&v105[24] = 1;
      *&v105[12] = 1;
      *&v105[16] = 1;
      *v105 = 1;
      *&v105[4] = 1;
      *&v105[8] = 1;
      v10 = 1;
      *&v104[4] = 0;
      *&v104[8] = 1;
      v11 = 1;
      *v104 = 1;
      v12 = 1;
      *&v110[8] = 1;
    }
  }

LABEL_68:
  if (v18)
  {
    v102 = v4;
    v43 = self;
    self = v5;
    v44 = v14;
    v45 = v10;
    v46 = v12;
    v47 = v13;
    v48 = v16;
    v49 = v11;
    v50 = v15;
    v51 = v17;

    v52 = v51;
    v15 = v50;
    v11 = v49;
    v16 = v48;
    v13 = v47;
    v12 = v46;
    v10 = v45;
    v14 = v44;
    v5 = self;
    LOBYTE(self) = v43;
    v4 = v102;
    if (!v52)
    {
      goto LABEL_70;
    }
  }

  else if (!v17)
  {
LABEL_70:
    if (!v16)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (v16)
  {
LABEL_71:
  }

LABEL_72:
  if (*v110)
  {

    if (!v15)
    {
      goto LABEL_74;
    }

LABEL_128:

    if (!v14)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (v15)
  {
    goto LABEL_128;
  }

LABEL_74:
  if (v14)
  {
LABEL_75:
  }

LABEL_76:
  if (*&v110[4])
  {
  }

  if (v13)
  {
  }

  if (*&v104[4])
  {
  }

  if (*&v110[8])
  {
  }

  if (v12)
  {
  }

  if (*v104)
  {
  }

  if (*&v105[28])
  {
  }

  if (v11)
  {
  }

  if (*&v104[8])
  {
  }

  if (*&v105[32])
  {
  }

  if (*&v105[4])
  {
  }

  if (v10)
  {
  }

  if (*&v105[36])
  {
  }

  if (*&v105[8])
  {
  }

  if (*v105)
  {
  }

  if (*&v105[40])
  {
  }

  if (*&v105[16])
  {
  }

  if (*&v105[12])
  {
  }

  if (*&v105[44])
  {
  }

  if (*&v105[20])
  {
  }

  if (*&v105[24])
  {
  }

  if (*&v105[48])
  {
  }

  if (v107 != v106)
  {
  }

LABEL_123:
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26.receiver = self;
  v26.super_class = RFFactItemButtonCardSection;
  v4 = [(SFCardSection *)&v26 copyWithZone:a3];
  v5 = [(RFFactItemButtonCardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_1:v6];

  v7 = [(RFFactItemButtonCardSection *)self button];
  v8 = [v7 copy];
  [v4 setButton_1:v8];

  v9 = [(RFFactItemButtonCardSection *)self button];
  v10 = [v9 copy];
  [v4 setButton_2:v10];

  v11 = [(RFFactItemButtonCardSection *)self button];
  v12 = [v11 copy];
  [v4 setButton_3:v12];

  v13 = [(RFFactItemButtonCardSection *)self text];
  v14 = [v13 copy];
  [v4 setText_2:v14];

  v15 = [(RFFactItemButtonCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText_3:v16];

  v17 = [(RFFactItemButtonCardSection *)self text];
  v18 = [v17 copy];
  [v4 setText_4:v18];

  v19 = [(RFFactItemButtonCardSection *)self text];
  v20 = [v19 copy];
  [v4 setText_5:v20];

  v21 = [(RFFactItemButtonCardSection *)self thumbnail];
  v22 = [v21 copy];
  [v4 setThumbnail:v22];

  v23 = [(RFFactItemButtonCardSection *)self thumbnail2];
  v24 = [v23 copy];
  [v4 setThumbnail2:v24];

  [v4 setButtonItemsAreBottom:{-[RFFactItemButtonCardSection buttonItemsAreBottom](self, "buttonItemsAreBottom")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemButtonCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemButtonCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemButtonCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemButtonCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFFactItemButtonCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFFactItemButtonCardSection)initWithCoder:(id)a3
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
    [(RFFactItemButtonCardSection *)v5 setText_1:v9];

    v10 = [(SFCardSection *)v8 button];
    [(RFFactItemButtonCardSection *)v5 setButton_1:v10];

    v11 = [(SFCardSection *)v8 button];
    [(RFFactItemButtonCardSection *)v5 setButton_2:v11];

    v12 = [(SFCardSection *)v8 button];
    [(RFFactItemButtonCardSection *)v5 setButton_3:v12];

    v13 = [(SFCardSection *)v8 text];
    [(RFFactItemButtonCardSection *)v5 setText_2:v13];

    v14 = [(SFCardSection *)v8 text];
    [(RFFactItemButtonCardSection *)v5 setText_3:v14];

    v15 = [(SFCardSection *)v8 text];
    [(RFFactItemButtonCardSection *)v5 setText_4:v15];

    v16 = [(SFCardSection *)v8 text];
    [(RFFactItemButtonCardSection *)v5 setText_5:v16];

    v17 = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemButtonCardSection *)v5 setThumbnail:v17];

    v18 = [(SFCardSection *)v8 thumbnail2];
    [(RFFactItemButtonCardSection *)v5 setThumbnail2:v18];

    [(RFFactItemButtonCardSection *)v5 setButtonItemsAreBottom:[(SFCardSection *)v8 buttonItemsAreBottom]];
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

- (RFFactItemButtonCardSection)initWithProtobuf:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = RFFactItemButtonCardSection;
  v5 = [(SFCardSection *)&v57 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFFactItemButtonCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 button];

    if (v10)
    {
      v11 = [SFButtonItem alloc];
      v12 = [v4 button];
      v13 = [(SFButtonItem *)v11 initWithProtobuf:v12];
      [(RFFactItemButtonCardSection *)v5 setButton_1:v13];
    }

    v14 = [v4 button];

    if (v14)
    {
      v15 = [SFButtonItem alloc];
      v16 = [v4 button];
      v17 = [(SFButtonItem *)v15 initWithProtobuf:v16];
      [(RFFactItemButtonCardSection *)v5 setButton_2:v17];
    }

    v18 = [v4 button];

    if (v18)
    {
      v19 = [SFButtonItem alloc];
      v20 = [v4 button];
      v21 = [(SFButtonItem *)v19 initWithProtobuf:v20];
      [(RFFactItemButtonCardSection *)v5 setButton_3:v21];
    }

    v22 = [v4 text];

    if (v22)
    {
      v23 = [RFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:v24];
      [(RFFactItemButtonCardSection *)v5 setText_2:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [RFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:v28];
      [(RFFactItemButtonCardSection *)v5 setText_3:v29];
    }

    v30 = [v4 text_4s];
    if (v30)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v32 = [v4 text_4s];
    v33 = [v32 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v54;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v54 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v53 + 1) + 8 * i)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v34);
    }

    [(RFFactItemButtonCardSection *)v5 setText_4:v31];
    v38 = [v4 text];

    if (v38)
    {
      v39 = [RFTextProperty alloc];
      v40 = [v4 text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:v40];
      [(RFFactItemButtonCardSection *)v5 setText_5:v41];
    }

    v42 = [v4 thumbnail];

    if (v42)
    {
      v43 = [RFVisualProperty alloc];
      v44 = [v4 thumbnail];
      v45 = [(RFVisualProperty *)v43 initWithProtobuf:v44];
      [(RFFactItemButtonCardSection *)v5 setThumbnail:v45];
    }

    v46 = [v4 thumbnail2];

    if (v46)
    {
      v47 = [RFVisualProperty alloc];
      v48 = [v4 thumbnail2];
      v49 = [(RFVisualProperty *)v47 initWithProtobuf:v48];
      [(RFFactItemButtonCardSection *)v5 setThumbnail2:v49];
    }

    if ([v4 buttonItemsAreBottom])
    {
      -[RFFactItemButtonCardSection setButtonItemsAreBottom:](v5, "setButtonItemsAreBottom:", [v4 buttonItemsAreBottom]);
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

@end