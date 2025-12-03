@interface RFFactItemButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemButtonCardSection)initWithCoder:(id)coder;
- (RFFactItemButtonCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFFactItemButtonCardSection

- (unint64_t)hash
{
  v26.receiver = self;
  v26.super_class = RFFactItemButtonCardSection;
  v3 = [(SFCardSection *)&v26 hash];
  text = [(RFFactItemButtonCardSection *)self text];
  v4 = [text hash];
  button = [(RFFactItemButtonCardSection *)self button];
  v5 = v4 ^ [button hash];
  button2 = [(RFFactItemButtonCardSection *)self button];
  v7 = v5 ^ [button2 hash];
  button3 = [(RFFactItemButtonCardSection *)self button];
  v9 = v7 ^ [button3 hash];
  text2 = [(RFFactItemButtonCardSection *)self text];
  v23 = v9 ^ [text2 hash] ^ v3;
  text3 = [(RFFactItemButtonCardSection *)self text];
  v12 = [text3 hash];
  text4 = [(RFFactItemButtonCardSection *)self text];
  v14 = v12 ^ [text4 hash];
  text5 = [(RFFactItemButtonCardSection *)self text];
  v16 = v14 ^ [text5 hash];
  thumbnail = [(RFFactItemButtonCardSection *)self thumbnail];
  v18 = v16 ^ [thumbnail hash];
  thumbnail2 = [(RFFactItemButtonCardSection *)self thumbnail2];
  v20 = v18 ^ [thumbnail2 hash];
  v21 = v20 ^ [(RFFactItemButtonCardSection *)self buttonItemsAreBottom];

  return v23 ^ v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
    goto LABEL_123;
  }

  if (![(RFFactItemButtonCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v111.receiver = self, v111.super_class = RFFactItemButtonCardSection, ![(SFCardSection *)&v111 isEqual:equalCopy]))
  {
    LOBYTE(self) = 0;
    goto LABEL_123;
  }

  selfCopy2 = equalCopy;
  text = [(RFFactItemButtonCardSection *)self text];
  text2 = [(RFFactItemButtonCardSection *)selfCopy2 text];
  v106 = text2 == 0;
  v107 = text != 0;
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

  text3 = [(RFFactItemButtonCardSection *)self text];
  v8 = text3 != 0;
  v103 = text3;
  if (text3)
  {
    text4 = [(RFFactItemButtonCardSection *)self text];
    text5 = [(RFFactItemButtonCardSection *)selfCopy2 text];
    v98 = text4;
    if (![text4 isEqual:?])
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

  button = [(RFFactItemButtonCardSection *)self button];
  button2 = [(RFFactItemButtonCardSection *)selfCopy2 button];
  *&v105[48] = v8;
  if ((button != 0) == (button2 == 0))
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

  button3 = [(RFFactItemButtonCardSection *)self button];
  v20 = button3 != 0;
  v96 = button3;
  if (button3)
  {
    button4 = [(RFFactItemButtonCardSection *)self button];
    button5 = [(RFFactItemButtonCardSection *)selfCopy2 button];
    v93 = button4;
    if (![button4 isEqual:?])
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

  button6 = [(RFFactItemButtonCardSection *)self button];
  button7 = [(RFFactItemButtonCardSection *)selfCopy2 button];
  if ((button6 != 0) == (button7 == 0))
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

  button8 = [(RFFactItemButtonCardSection *)self button];
  v23 = button8 != 0;
  v91 = button8;
  if (button8)
  {
    button9 = [(RFFactItemButtonCardSection *)self button];
    button10 = [(RFFactItemButtonCardSection *)selfCopy2 button];
    v88 = button9;
    if (![button9 isEqual:?])
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

  button11 = [(RFFactItemButtonCardSection *)self button];
  button12 = [(RFFactItemButtonCardSection *)selfCopy2 button];
  if ((button11 != 0) == (button12 == 0))
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

  button13 = [(RFFactItemButtonCardSection *)self button];
  v26 = button13 != 0;
  v86 = button13;
  if (button13)
  {
    button14 = [(RFFactItemButtonCardSection *)self button];
    button15 = [(RFFactItemButtonCardSection *)selfCopy2 button];
    v83 = button14;
    if (![button14 isEqual:?])
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

  text6 = [(RFFactItemButtonCardSection *)self text];
  text7 = [(RFFactItemButtonCardSection *)selfCopy2 text];
  if ((text6 != 0) == (text7 == 0))
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

  text8 = [(RFFactItemButtonCardSection *)self text];
  v29 = text8 != 0;
  v81 = text8;
  if (text8)
  {
    text9 = [(RFFactItemButtonCardSection *)self text];
    text10 = [(RFFactItemButtonCardSection *)selfCopy2 text];
    v78 = text9;
    if (![text9 isEqual:?])
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

  text11 = [(RFFactItemButtonCardSection *)self text];
  text12 = [(RFFactItemButtonCardSection *)selfCopy2 text];
  if ((text11 != 0) == (text12 == 0))
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

  text13 = [(RFFactItemButtonCardSection *)self text];
  v32 = text13 != 0;
  v76 = text13;
  if (text13)
  {
    text14 = [(RFFactItemButtonCardSection *)self text];
    text15 = [(RFFactItemButtonCardSection *)selfCopy2 text];
    v73 = text14;
    if (![text14 isEqual:?])
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

  text16 = [(RFFactItemButtonCardSection *)self text];
  text17 = [(RFFactItemButtonCardSection *)selfCopy2 text];
  if ((text16 != 0) == (text17 == 0))
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
    text18 = [(RFFactItemButtonCardSection *)self text];
    *&v110[8] = text18 != 0;
    v71 = text18;
    if (!text18 || (-[RFFactItemButtonCardSection text](self, "text"), v35 = objc_claimAutoreleasedReturnValue(), -[RFFactItemButtonCardSection text](selfCopy2, "text"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v35, [v35 isEqual:?]))
    {
      text19 = [(RFFactItemButtonCardSection *)self text];
      text20 = [(RFFactItemButtonCardSection *)selfCopy2 text];
      if ((text19 != 0) == (text20 == 0))
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
        text21 = [(RFFactItemButtonCardSection *)self text];
        *&v110[4] = text21 != 0;
        v66 = text21;
        if (!text21 || (-[RFFactItemButtonCardSection text](self, "text"), v37 = objc_claimAutoreleasedReturnValue(), -[RFFactItemButtonCardSection text](selfCopy2, "text"), v62 = objc_claimAutoreleasedReturnValue(), v63 = v37, [v37 isEqual:?]))
        {
          thumbnail = [(RFFactItemButtonCardSection *)self thumbnail];
          thumbnail2 = [(RFFactItemButtonCardSection *)selfCopy2 thumbnail];
          if ((thumbnail != 0) == (thumbnail2 == 0))
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
            thumbnail3 = [(RFFactItemButtonCardSection *)self thumbnail];
            *v110 = thumbnail3 != 0;
            v61 = thumbnail3;
            if (!thumbnail3 || (-[RFFactItemButtonCardSection thumbnail](self, "thumbnail"), v39 = objc_claimAutoreleasedReturnValue(), -[RFFactItemButtonCardSection thumbnail](selfCopy2, "thumbnail"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v39, [v39 isEqual:?]))
            {
              thumbnail22 = [(RFFactItemButtonCardSection *)self thumbnail2];
              thumbnail23 = [(RFFactItemButtonCardSection *)selfCopy2 thumbnail2];
              if ((thumbnail22 != 0) == (thumbnail23 == 0))
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
                thumbnail24 = [(RFFactItemButtonCardSection *)self thumbnail2];
                v101 = thumbnail24 != 0;
                v56 = thumbnail24;
                if (!thumbnail24 || (-[RFFactItemButtonCardSection thumbnail2](self, "thumbnail2"), v41 = objc_claimAutoreleasedReturnValue(), -[RFFactItemButtonCardSection thumbnail2](selfCopy2, "thumbnail2"), v54 = objc_claimAutoreleasedReturnValue(), v55 = v41, [v41 isEqual:?]))
                {
                  buttonItemsAreBottom = [(RFFactItemButtonCardSection *)self buttonItemsAreBottom];
                  LODWORD(self) = buttonItemsAreBottom ^ [(RFFactItemButtonCardSection *)selfCopy2 buttonItemsAreBottom]^ 1;
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
    v102 = equalCopy;
    selfCopy = self;
    self = selfCopy2;
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
    selfCopy2 = self;
    LOBYTE(self) = selfCopy;
    equalCopy = v102;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v26.receiver = self;
  v26.super_class = RFFactItemButtonCardSection;
  v4 = [(SFCardSection *)&v26 copyWithZone:zone];
  text = [(RFFactItemButtonCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  button = [(RFFactItemButtonCardSection *)self button];
  v8 = [button copy];
  [v4 setButton_1:v8];

  button2 = [(RFFactItemButtonCardSection *)self button];
  v10 = [button2 copy];
  [v4 setButton_2:v10];

  button3 = [(RFFactItemButtonCardSection *)self button];
  v12 = [button3 copy];
  [v4 setButton_3:v12];

  text2 = [(RFFactItemButtonCardSection *)self text];
  v14 = [text2 copy];
  [v4 setText_2:v14];

  text3 = [(RFFactItemButtonCardSection *)self text];
  v16 = [text3 copy];
  [v4 setText_3:v16];

  text4 = [(RFFactItemButtonCardSection *)self text];
  v18 = [text4 copy];
  [v4 setText_4:v18];

  text5 = [(RFFactItemButtonCardSection *)self text];
  v20 = [text5 copy];
  [v4 setText_5:v20];

  thumbnail = [(RFFactItemButtonCardSection *)self thumbnail];
  v22 = [thumbnail copy];
  [v4 setThumbnail:v22];

  thumbnail2 = [(RFFactItemButtonCardSection *)self thumbnail2];
  v24 = [thumbnail2 copy];
  [v4 setThumbnail2:v24];

  [v4 setButtonItemsAreBottom:{-[RFFactItemButtonCardSection buttonItemsAreBottom](self, "buttonItemsAreBottom")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemButtonCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFactItemButtonCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemButtonCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFactItemButtonCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFFactItemButtonCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFFactItemButtonCardSection)initWithCoder:(id)coder
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
    [(RFFactItemButtonCardSection *)v5 setText_1:text];

    button = [(SFCardSection *)v8 button];
    [(RFFactItemButtonCardSection *)v5 setButton_1:button];

    button2 = [(SFCardSection *)v8 button];
    [(RFFactItemButtonCardSection *)v5 setButton_2:button2];

    button3 = [(SFCardSection *)v8 button];
    [(RFFactItemButtonCardSection *)v5 setButton_3:button3];

    text2 = [(SFCardSection *)v8 text];
    [(RFFactItemButtonCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFFactItemButtonCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFFactItemButtonCardSection *)v5 setText_4:text4];

    text5 = [(SFCardSection *)v8 text];
    [(RFFactItemButtonCardSection *)v5 setText_5:text5];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemButtonCardSection *)v5 setThumbnail:thumbnail];

    thumbnail2 = [(SFCardSection *)v8 thumbnail2];
    [(RFFactItemButtonCardSection *)v5 setThumbnail2:thumbnail2];

    [(RFFactItemButtonCardSection *)v5 setButtonItemsAreBottom:[(SFCardSection *)v8 buttonItemsAreBottom]];
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

- (RFFactItemButtonCardSection)initWithProtobuf:(id)protobuf
{
  v59 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v57.receiver = self;
  v57.super_class = RFFactItemButtonCardSection;
  v5 = [(SFCardSection *)&v57 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFFactItemButtonCardSection *)v5 setText_1:v9];
    }

    button = [protobufCopy button];

    if (button)
    {
      v11 = [SFButtonItem alloc];
      button2 = [protobufCopy button];
      v13 = [(SFButtonItem *)v11 initWithProtobuf:button2];
      [(RFFactItemButtonCardSection *)v5 setButton_1:v13];
    }

    button3 = [protobufCopy button];

    if (button3)
    {
      v15 = [SFButtonItem alloc];
      button4 = [protobufCopy button];
      v17 = [(SFButtonItem *)v15 initWithProtobuf:button4];
      [(RFFactItemButtonCardSection *)v5 setButton_2:v17];
    }

    button5 = [protobufCopy button];

    if (button5)
    {
      v19 = [SFButtonItem alloc];
      button6 = [protobufCopy button];
      v21 = [(SFButtonItem *)v19 initWithProtobuf:button6];
      [(RFFactItemButtonCardSection *)v5 setButton_3:v21];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v23 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:text4];
      [(RFFactItemButtonCardSection *)v5 setText_2:v25];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v27 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:text6];
      [(RFFactItemButtonCardSection *)v5 setText_3:v29];
    }

    text_4s = [protobufCopy text_4s];
    if (text_4s)
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
    text_4s2 = [protobufCopy text_4s];
    v33 = [text_4s2 countByEnumeratingWithState:&v53 objects:v58 count:16];
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
            objc_enumerationMutation(text_4s2);
          }

          v37 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v53 + 1) + 8 * i)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [text_4s2 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v34);
    }

    [(RFFactItemButtonCardSection *)v5 setText_4:v31];
    text7 = [protobufCopy text];

    if (text7)
    {
      v39 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:text8];
      [(RFFactItemButtonCardSection *)v5 setText_5:v41];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v43 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v45 = [(RFVisualProperty *)v43 initWithProtobuf:thumbnail2];
      [(RFFactItemButtonCardSection *)v5 setThumbnail:v45];
    }

    thumbnail22 = [protobufCopy thumbnail2];

    if (thumbnail22)
    {
      v47 = [RFVisualProperty alloc];
      thumbnail23 = [protobufCopy thumbnail2];
      v49 = [(RFVisualProperty *)v47 initWithProtobuf:thumbnail23];
      [(RFFactItemButtonCardSection *)v5 setThumbnail2:v49];
    }

    if ([protobufCopy buttonItemsAreBottom])
    {
      -[RFFactItemButtonCardSection setButtonItemsAreBottom:](v5, "setButtonItemsAreBottom:", [protobufCopy buttonItemsAreBottom]);
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

@end