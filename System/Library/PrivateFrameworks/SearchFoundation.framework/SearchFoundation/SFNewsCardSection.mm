@interface SFNewsCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFNewsCardSection)initWithCoder:(id)coder;
- (SFNewsCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFNewsCardSection

- (SFNewsCardSection)initWithProtobuf:(id)protobuf
{
  v53 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v51.receiver = self;
  v51.super_class = SFNewsCardSection;
  v5 = [(SFCardSection *)&v51 init];
  if (v5)
  {
    punchoutOptions = [protobufCopy punchoutOptions];
    if (punchoutOptions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [protobufCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [protobufCopy punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [protobufCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [protobufCopy punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([protobufCopy canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [protobufCopy canBeHidden]);
    }

    if ([protobufCopy hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [protobufCopy hasTopPadding]);
    }

    if ([protobufCopy hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [protobufCopy hasBottomPadding]);
    }

    type = [protobufCopy type];

    if (type)
    {
      type2 = [protobufCopy type];
      [(SFNewsCardSection *)v5 setType:type2];
    }

    if ([protobufCopy separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [protobufCopy separatorStyle]);
    }

    backgroundColor = [protobufCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [SFColor alloc];
      backgroundColor2 = [protobufCopy backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:backgroundColor2];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    title = [protobufCopy title];

    if (title)
    {
      v25 = [SFRichText alloc];
      title2 = [protobufCopy title];
      v27 = [(SFRichText *)v25 initWithProtobuf:title2];
      [(SFNewsCardSection *)v5 setTitle:v27];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      v29 = [SFRichText alloc];
      subtitle2 = [protobufCopy subtitle];
      v31 = [(SFRichText *)v29 initWithProtobuf:subtitle2];
      [(SFNewsCardSection *)v5 setSubtitle:v31];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v33 = [SFImage alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v35 = [(SFImage *)v33 initWithProtobuf:thumbnail2];
      [(SFNewsCardSection *)v5 setThumbnail:v35];
    }

    providerImage = [protobufCopy providerImage];

    if (providerImage)
    {
      v37 = [SFImage alloc];
      providerImage2 = [protobufCopy providerImage];
      v39 = [(SFImage *)v37 initWithProtobuf:providerImage2];
      [(SFNewsCardSection *)v5 setProviderImage:v39];
    }

    providerTitle = [protobufCopy providerTitle];

    if (providerTitle)
    {
      v41 = [SFRichText alloc];
      providerTitle2 = [protobufCopy providerTitle];
      v43 = [(SFRichText *)v41 initWithProtobuf:providerTitle2];
      [(SFNewsCardSection *)v5 setProviderTitle:v43];
    }

    if ([protobufCopy overlayTextInImage])
    {
      -[SFNewsCardSection setOverlayTextInImage:](v5, "setOverlayTextInImage:", [protobufCopy overlayTextInImage]);
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v30.receiver = self;
  v30.super_class = SFNewsCardSection;
  v3 = [(SFCardSection *)&v30 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [punchoutPickerDismissText hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFNewsCardSection *)self type];
  v11 = hasBottomPadding ^ [type hash];
  v12 = v11 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = v12 ^ [backgroundColor hash];
  title = [(SFNewsCardSection *)self title];
  v16 = v8 ^ v14 ^ [title hash];
  subtitle = [(SFNewsCardSection *)self subtitle];
  v18 = [subtitle hash];
  thumbnail = [(SFNewsCardSection *)self thumbnail];
  v20 = v18 ^ [thumbnail hash];
  providerImage = [(SFNewsCardSection *)self providerImage];
  v22 = v20 ^ [providerImage hash];
  providerTitle = [(SFNewsCardSection *)self providerTitle];
  v24 = v22 ^ [providerTitle hash];
  v25 = v24 ^ [(SFNewsCardSection *)self overlayTextInImage];

  return v16 ^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v19) = 1;
    goto LABEL_82;
  }

  if (![(SFNewsCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v115.receiver = self, v115.super_class = SFNewsCardSection, ![(SFCardSection *)&v115 isEqual:equalCopy]))
  {
    LOBYTE(v19) = 0;
    goto LABEL_82;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v110 = punchoutOptions2 == 0;
  v111 = punchoutOptions != 0;
  if (v111 == v110)
  {
    v107 = 0;
    memset(v108, 0, sizeof(v108));
    memset(v109, 0, sizeof(v109));
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v114, 0, sizeof(v114));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v19) = 0;
    goto LABEL_27;
  }

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v106 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    punchoutOptions5 = [(SFCardSection *)v5 punchoutOptions];
    v101 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
    {
      v107 = 0;
      memset(v108, 0, sizeof(v108));
      memset(v109, 0, 32);
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v114, 0, sizeof(v114));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(v19) = 0;
      *&v109[32] = 1;
      goto LABEL_27;
    }
  }

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v109[32] = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
  {
    *&v109[8] = 0;
    v107 = 0;
    memset(v108, 0, sizeof(v108));
    *v109 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v114, 0, sizeof(v114));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v19) = 0;
    *&v109[16] = 1uLL;
    goto LABEL_27;
  }

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v99 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v96 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
    {
      v107 = 0;
      memset(v108, 0, sizeof(v108));
      *&v109[20] = 0;
      *v109 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v114, 0, sizeof(v114));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(v19) = 0;
      *&v109[16] = 1;
      *&v109[8] = 0x100000000;
      *&v109[28] = 1;
      goto LABEL_27;
    }

    *&v109[28] = v21;
  }

  else
  {
    *&v109[28] = 0;
  }

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
  {
    v107 = 0;
    *&v109[20] = 0;
    *v109 = 0;
    *&v108[4] = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v114, 0, sizeof(v114));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v19) = 0;
    *&v109[16] = 1;
    *&v109[8] = 0x100000000;
    *v108 = 1;
  }

  else
  {
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v24 = punchoutPickerDismissText3 != 0;
    v94 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v25 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v92 = objc_claimAutoreleasedReturnValue(), v93 = v25, [v25 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      *&v109[24] = v24;
      if (canBeHidden == [(SFCardSection *)v5 canBeHidden]&& (v27 = [(SFCardSection *)self hasTopPadding], v27 == [(SFCardSection *)v5 hasTopPadding]) && (v28 = [(SFCardSection *)self hasBottomPadding], v28 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        type = [(SFNewsCardSection *)self type];
        type2 = [(SFNewsCardSection *)v5 type];
        if ((type != 0) == (type2 == 0))
        {
          *&v109[4] = 0;
          *&v108[4] = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          memset(v114, 0, sizeof(v114));
          v16 = 0;
          v17 = 0;
          v18 = 0;
          LOBYTE(v19) = 0;
          *&v109[16] = 1;
          *&v109[12] = 1;
          *v108 = 1;
          v107 = 1;
          *v109 = 1;
        }

        else
        {
          type3 = [(SFNewsCardSection *)self type];
          v41 = type3 != 0;
          v89 = type3;
          if (!type3 || (-[SFNewsCardSection type](self, "type"), v42 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection type](v5, "type"), v87 = objc_claimAutoreleasedReturnValue(), v88 = v42, [v42 isEqual:?]))
          {
            *&v109[20] = v41;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
              {
                v10 = 0;
                v11 = 0;
                v12 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                memset(v114, 0, sizeof(v114));
                v16 = 0;
                v17 = 0;
                v18 = 0;
                LOBYTE(v19) = 0;
                *&v109[16] = 1;
                *&v109[8] = 0x100000000;
                *v108 = 0x100000001;
                v107 = 1;
                *&v108[8] = 0;
                *v109 = 0x100000001;
              }

              else
              {
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                *&v114[16] = backgroundColor3 != 0;
                v84 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v45 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v80 = objc_claimAutoreleasedReturnValue(), v81 = v45, [v45 isEqual:?]))
                {
                  title = [(SFNewsCardSection *)self title];
                  title2 = [(SFNewsCardSection *)v5 title];
                  if ((title != 0) == (title2 == 0))
                  {
                    *&v114[8] = 0;
                    v11 = 0;
                    v12 = 0;
                    v13 = 0;
                    *v114 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    LOBYTE(v19) = 0;
                    *&v109[16] = 1;
                    *v108 = 0x100000001;
                    v107 = 1;
                    *&v108[8] = 0;
                    *v109 = 0x100000001;
                    *&v109[8] = 0x100000001;
                    v10 = 1;
                  }

                  else
                  {
                    title3 = [(SFNewsCardSection *)self title];
                    *&v114[12] = title3 != 0;
                    v79 = title3;
                    if (!title3 || (-[SFNewsCardSection title](self, "title"), v47 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection title](v5, "title"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v47, [v47 isEqual:?]))
                    {
                      subtitle = [(SFNewsCardSection *)self subtitle];
                      subtitle2 = [(SFNewsCardSection *)v5 subtitle];
                      if ((subtitle != 0) == (subtitle2 == 0))
                      {
                        v12 = 0;
                        *&v114[4] = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        *v114 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        LOBYTE(v19) = 0;
                        *&v109[16] = 1;
                        *v108 = 0x100000001;
                        v107 = 1;
                        *v109 = 0x100000001;
                        *&v108[8] = 1;
                        *&v109[8] = 0x100000001;
                        v10 = 1;
                        v11 = 1;
                      }

                      else
                      {
                        subtitle3 = [(SFNewsCardSection *)self subtitle];
                        *&v114[8] = subtitle3 != 0;
                        v74 = subtitle3;
                        if (!subtitle3 || (-[SFNewsCardSection subtitle](self, "subtitle"), v49 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection subtitle](v5, "subtitle"), v70 = objc_claimAutoreleasedReturnValue(), v71 = v49, [v49 isEqual:?]))
                        {
                          thumbnail = [(SFNewsCardSection *)self thumbnail];
                          thumbnail2 = [(SFNewsCardSection *)v5 thumbnail];
                          if ((thumbnail != 0) == (thumbnail2 == 0))
                          {
                            v13 = 0;
                            *v114 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            LOBYTE(v19) = 0;
                            *&v109[16] = 1;
                            *v108 = 0x100000001;
                            v107 = 0x100000001;
                            *v109 = 0x100000001;
                            *&v109[8] = 0x100000001;
                            v10 = 1;
                            *&v108[8] = 1;
                            v11 = 1;
                            v12 = 1;
                          }

                          else
                          {
                            thumbnail3 = [(SFNewsCardSection *)self thumbnail];
                            *&v114[4] = thumbnail3 != 0;
                            v69 = thumbnail3;
                            if (!thumbnail3 || (-[SFNewsCardSection thumbnail](self, "thumbnail"), v51 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection thumbnail](v5, "thumbnail"), v65 = objc_claimAutoreleasedReturnValue(), v66 = v51, [v51 isEqual:?]))
                            {
                              providerImage = [(SFNewsCardSection *)self providerImage];
                              providerImage2 = [(SFNewsCardSection *)v5 providerImage];
                              if ((providerImage != 0) == (providerImage2 == 0))
                              {
                                v15 = 0;
                                *v114 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                LOBYTE(v19) = 0;
                                *&v109[16] = 1;
                                *v108 = 0x100000001;
                                v107 = 0x100000001;
                                *v109 = 0x100000001;
                                *&v109[8] = 0x100000001;
                                v10 = 1;
                                *&v108[8] = 1;
                                v11 = 1;
                                v12 = 1;
                                v13 = 1;
                                v14 = 1;
                              }

                              else
                              {
                                providerImage3 = [(SFNewsCardSection *)self providerImage];
                                *v114 = providerImage3 != 0;
                                v64 = providerImage3;
                                if (!providerImage3 || (-[SFNewsCardSection providerImage](self, "providerImage"), v53 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection providerImage](v5, "providerImage"), v60 = objc_claimAutoreleasedReturnValue(), v61 = v53, [v53 isEqual:?]))
                                {
                                  providerTitle = [(SFNewsCardSection *)self providerTitle];
                                  providerTitle2 = [(SFNewsCardSection *)v5 providerTitle];
                                  if ((providerTitle != 0) == (providerTitle2 == 0))
                                  {
                                    v17 = 0;
                                    v18 = 0;
                                    LOBYTE(v19) = 0;
                                    *&v109[16] = 1;
                                    *v108 = 0x100000001;
                                    v107 = 0x100000001;
                                    *v109 = 0x100000001;
                                    *&v109[8] = 0x100000001;
                                    v10 = 1;
                                    *&v108[8] = 1;
                                    v11 = 1;
                                    v12 = 1;
                                    v13 = 1;
                                    v14 = 1;
                                    v15 = 1;
                                    v16 = 1;
                                  }

                                  else
                                  {
                                    providerTitle3 = [(SFNewsCardSection *)self providerTitle];
                                    v105 = providerTitle3 != 0;
                                    v59 = providerTitle3;
                                    if (!providerTitle3 || (-[SFNewsCardSection providerTitle](self, "providerTitle"), v55 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection providerTitle](v5, "providerTitle"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v55, [v55 isEqual:?]))
                                    {
                                      overlayTextInImage = [(SFNewsCardSection *)self overlayTextInImage];
                                      v19 = overlayTextInImage ^ [(SFNewsCardSection *)v5 overlayTextInImage]^ 1;
                                      *&v109[16] = 1;
                                      *v108 = 0x100000001;
                                      v107 = 0x100000001;
                                      *v109 = 0x100000001;
                                      *&v109[8] = 0x100000001;
                                      v10 = 1;
                                      *&v108[8] = 1;
                                      v11 = 1;
                                      v12 = 1;
                                      v13 = 1;
                                      v14 = 1;
                                      v15 = 1;
                                      v16 = 1;
                                      v17 = 1;
                                      v18 = v105;
                                    }

                                    else
                                    {
                                      LOBYTE(v19) = 0;
                                      *&v109[16] = 1;
                                      *v108 = 0x100000001;
                                      v107 = 0x100000001;
                                      *v109 = 0x100000001;
                                      *&v109[8] = 0x100000001;
                                      v10 = 1;
                                      *&v108[8] = 1;
                                      v11 = 1;
                                      v12 = 1;
                                      v13 = 1;
                                      v14 = 1;
                                      v15 = 1;
                                      v16 = 1;
                                      v17 = 1;
                                      v18 = 1;
                                    }

                                    v6 = v57;
                                  }
                                }

                                else
                                {
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  LOBYTE(v19) = 0;
                                  *&v109[16] = 1;
                                  *v108 = 0x100000001;
                                  v107 = 0x100000001;
                                  *v109 = 0x100000001;
                                  *&v109[8] = 0x100000001;
                                  v10 = 1;
                                  *&v108[8] = 1;
                                  v11 = 1;
                                  v12 = 1;
                                  v13 = 1;
                                  v14 = 1;
                                  v15 = 1;
                                  *v114 = 1;
                                }
                              }
                            }

                            else
                            {
                              v14 = 0;
                              v15 = 0;
                              *v114 = 0x100000000;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              LOBYTE(v19) = 0;
                              *&v109[16] = 1;
                              *v108 = 0x100000001;
                              v107 = 0x100000001;
                              *v109 = 0x100000001;
                              *&v109[8] = 0x100000001;
                              v10 = 1;
                              *&v108[8] = 1;
                              v11 = 1;
                              v12 = 1;
                              v13 = 1;
                            }
                          }
                        }

                        else
                        {
                          v13 = 0;
                          *v114 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          LOBYTE(v19) = 0;
                          *&v109[16] = 1;
                          *v108 = 0x100000001;
                          v107 = 1;
                          *v109 = 0x100000001;
                          *&v108[8] = 1;
                          *&v109[8] = 0x100000001;
                          v10 = 1;
                          v11 = 1;
                          v12 = 1;
                          *&v114[8] = 1;
                        }
                      }
                    }

                    else
                    {
                      v11 = 0;
                      v12 = 0;
                      *&v114[4] = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      *v114 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      LOBYTE(v19) = 0;
                      *&v109[16] = 1;
                      *v108 = 0x100000001;
                      v107 = 1;
                      *v109 = 0x100000001;
                      *&v108[8] = 1;
                      *&v109[8] = 0x100000001;
                      v10 = 1;
                      *&v114[12] = 1;
                    }
                  }
                }

                else
                {
                  v10 = 0;
                  *&v114[8] = 0;
                  v11 = 0;
                  v12 = 0;
                  v13 = 0;
                  *v114 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  LOBYTE(v19) = 0;
                  *&v109[16] = 1;
                  *v108 = 0x100000001;
                  v107 = 1;
                  *&v108[8] = 0;
                  *v109 = 0x100000001;
                  *&v109[8] = 0x100000001;
                  *&v114[16] = 1;
                }
              }
            }

            else
            {
              *&v108[4] = 0;
              v10 = 0;
              v11 = 0;
              v12 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              memset(v114, 0, sizeof(v114));
              v16 = 0;
              v17 = 0;
              v18 = 0;
              LOBYTE(v19) = 0;
              *&v109[16] = 1;
              *&v109[8] = 0x100000000;
              *v108 = 1;
              v107 = 1;
              *v109 = 0x100000001;
            }
          }

          else
          {
            *&v108[4] = 0;
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            memset(v114, 0, sizeof(v114));
            v16 = 0;
            v17 = 0;
            v18 = 0;
            LOBYTE(v19) = 0;
            *&v109[16] = 0x100000001;
            *&v109[8] = 0x100000000;
            *v108 = 1;
            v107 = 1;
            *v109 = 0x100000001;
          }
        }
      }

      else
      {
        *v109 = 0;
        *&v108[4] = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        memset(v114, 0, sizeof(v114));
        v16 = 0;
        v17 = 0;
        v18 = 0;
        LOBYTE(v19) = 0;
        *&v109[16] = 1;
        *&v109[8] = 0x100000000;
        *v108 = 1;
        v107 = 1;
      }
    }

    else
    {
      *v109 = 0;
      *&v108[4] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v114, 0, sizeof(v114));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(v19) = 0;
      *&v109[16] = 1;
      *&v109[8] = 0x100000000;
      *v108 = 1;
      v107 = 1;
      *&v109[24] = 1;
    }
  }

LABEL_27:
  if (v18)
  {
    v104 = equalCopy;
    v29 = v19;
    v19 = v11;
    v30 = v5;
    v31 = v14;
    v32 = v10;
    v33 = v16;
    v34 = v13;
    v35 = v12;
    v36 = v15;
    v37 = v17;

    v38 = v37;
    v15 = v36;
    v12 = v35;
    v13 = v34;
    v16 = v33;
    v10 = v32;
    v14 = v31;
    v5 = v30;
    v11 = v19;
    LOBYTE(v19) = v29;
    equalCopy = v104;
    if (!v38)
    {
      goto LABEL_29;
    }
  }

  else if (!v17)
  {
LABEL_29:
    if (!v16)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v16)
  {
LABEL_30:
  }

LABEL_31:
  if (*v114)
  {

    if (!v15)
    {
      goto LABEL_33;
    }

LABEL_87:

    if (!v14)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v15)
  {
    goto LABEL_87;
  }

LABEL_33:
  if (v14)
  {
LABEL_34:
  }

LABEL_35:
  if (*&v114[4])
  {
  }

  if (v13)
  {
  }

  if (HIDWORD(v107))
  {
  }

  if (*&v114[8])
  {
  }

  if (v12)
  {
  }

  if (v11)
  {
  }

  if (*&v114[12])
  {
  }

  if (*&v108[8])
  {
  }

  if (v10)
  {
  }

  if (*&v114[16])
  {
  }

  if (*&v109[8])
  {
  }

  if (*&v108[4])
  {
  }

  if (*&v109[20])
  {
  }

  if (*&v109[4])
  {
  }

  if (*v109)
  {
  }

  if (*&v109[24])
  {
  }

  if (v107)
  {
  }

  if (*v108)
  {
  }

  if (*&v109[28])
  {
  }

  if (*&v109[12])
  {
  }

  if (*&v109[16])
  {
  }

  if (*&v109[32])
  {
  }

  if (v111 != v110)
  {
  }

LABEL_82:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26.receiver = self;
  v26.super_class = SFNewsCardSection;
  v4 = [(SFCardSection *)&v26 copyWithZone:zone];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v6 = [punchoutOptions copy];
  [v4 setPunchoutOptions:v6];

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [punchoutPickerTitle copy];
  [v4 setPunchoutPickerTitle:v8];

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [punchoutPickerDismissText copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  type = [(SFNewsCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  title = [(SFNewsCardSection *)self title];
  v16 = [title copy];
  [v4 setTitle:v16];

  subtitle = [(SFNewsCardSection *)self subtitle];
  v18 = [subtitle copy];
  [v4 setSubtitle:v18];

  thumbnail = [(SFNewsCardSection *)self thumbnail];
  v20 = [thumbnail copy];
  [v4 setThumbnail:v20];

  providerImage = [(SFNewsCardSection *)self providerImage];
  v22 = [providerImage copy];
  [v4 setProviderImage:v22];

  providerTitle = [(SFNewsCardSection *)self providerTitle];
  v24 = [providerTitle copy];
  [v4 setProviderTitle:v24];

  [v4 setOverlayTextInImage:{-[SFNewsCardSection overlayTextInImage](self, "overlayTextInImage")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBNewsCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBNewsCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBNewsCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBNewsCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFNewsCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFNewsCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    type = [(SFCardSection *)v8 type];
    [(SFNewsCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    title = [(SFCardSection *)v8 title];
    [(SFNewsCardSection *)v5 setTitle:title];

    subtitle = [(SFCardSection *)v8 subtitle];
    [(SFNewsCardSection *)v5 setSubtitle:subtitle];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(SFNewsCardSection *)v5 setThumbnail:thumbnail];

    providerImage = [(SFCardSection *)v8 providerImage];
    [(SFNewsCardSection *)v5 setProviderImage:providerImage];

    providerTitle = [(SFCardSection *)v8 providerTitle];
    [(SFNewsCardSection *)v5 setProviderTitle:providerTitle];

    [(SFNewsCardSection *)v5 setOverlayTextInImage:[(SFCardSection *)v8 overlayTextInImage]];
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

    backgroundColor2 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor2];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions2 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions2];

    punchoutPickerTitle2 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];

    punchoutPickerDismissText2 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];

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