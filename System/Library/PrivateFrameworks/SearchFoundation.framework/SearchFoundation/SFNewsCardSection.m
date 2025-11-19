@interface SFNewsCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFNewsCardSection)initWithCoder:(id)a3;
- (SFNewsCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFNewsCardSection

- (SFNewsCardSection)initWithProtobuf:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = SFNewsCardSection;
  v5 = [(SFCardSection *)&v51 init];
  if (v5)
  {
    v6 = [v4 punchoutOptions];
    if (v6)
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
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(SFNewsCardSection *)v5 setType:v19];
    }

    if ([v4 separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [SFColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:v22];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [SFRichText alloc];
      v26 = [v4 title];
      v27 = [(SFRichText *)v25 initWithProtobuf:v26];
      [(SFNewsCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 subtitle];

    if (v28)
    {
      v29 = [SFRichText alloc];
      v30 = [v4 subtitle];
      v31 = [(SFRichText *)v29 initWithProtobuf:v30];
      [(SFNewsCardSection *)v5 setSubtitle:v31];
    }

    v32 = [v4 thumbnail];

    if (v32)
    {
      v33 = [SFImage alloc];
      v34 = [v4 thumbnail];
      v35 = [(SFImage *)v33 initWithProtobuf:v34];
      [(SFNewsCardSection *)v5 setThumbnail:v35];
    }

    v36 = [v4 providerImage];

    if (v36)
    {
      v37 = [SFImage alloc];
      v38 = [v4 providerImage];
      v39 = [(SFImage *)v37 initWithProtobuf:v38];
      [(SFNewsCardSection *)v5 setProviderImage:v39];
    }

    v40 = [v4 providerTitle];

    if (v40)
    {
      v41 = [SFRichText alloc];
      v42 = [v4 providerTitle];
      v43 = [(SFRichText *)v41 initWithProtobuf:v42];
      [(SFNewsCardSection *)v5 setProviderTitle:v43];
    }

    if ([v4 overlayTextInImage])
    {
      -[SFNewsCardSection setOverlayTextInImage:](v5, "setOverlayTextInImage:", [v4 overlayTextInImage]);
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
  v29 = [(SFCardSection *)self punchoutOptions];
  v4 = [v29 hash];
  v28 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v28 hash];
  v27 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v27 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v10 = [(SFNewsCardSection *)self type];
  v11 = v9 ^ [v10 hash];
  v12 = v11 ^ [(SFCardSection *)self separatorStyle];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = v12 ^ [v13 hash];
  v15 = [(SFNewsCardSection *)self title];
  v16 = v8 ^ v14 ^ [v15 hash];
  v17 = [(SFNewsCardSection *)self subtitle];
  v18 = [v17 hash];
  v19 = [(SFNewsCardSection *)self thumbnail];
  v20 = v18 ^ [v19 hash];
  v21 = [(SFNewsCardSection *)self providerImage];
  v22 = v20 ^ [v21 hash];
  v23 = [(SFNewsCardSection *)self providerTitle];
  v24 = v22 ^ [v23 hash];
  v25 = v24 ^ [(SFNewsCardSection *)self overlayTextInImage];

  return v16 ^ v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v19) = 1;
    goto LABEL_82;
  }

  if (![(SFNewsCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v115.receiver = self, v115.super_class = SFNewsCardSection, ![(SFCardSection *)&v115 isEqual:v4]))
  {
    LOBYTE(v19) = 0;
    goto LABEL_82;
  }

  v5 = v4;
  v113 = [(SFCardSection *)self punchoutOptions];
  v112 = [(SFCardSection *)v5 punchoutOptions];
  v110 = v112 == 0;
  v111 = v113 != 0;
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

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v106 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    v100 = [(SFCardSection *)v5 punchoutOptions];
    v101 = v9;
    if (![v9 isEqual:?])
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

  v103 = [(SFCardSection *)self punchoutPickerTitle];
  v102 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v109[32] = v8;
  if ((v103 != 0) == (v102 == 0))
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

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v99 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v95 = [(SFCardSection *)v5 punchoutPickerTitle];
    v96 = v22;
    if (![v22 isEqual:?])
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

  v98 = [(SFCardSection *)self punchoutPickerDismissText];
  v97 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v98 != 0) == (v97 == 0))
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
    v23 = [(SFCardSection *)self punchoutPickerDismissText];
    v24 = v23 != 0;
    v94 = v23;
    if (!v23 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v25 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v92 = objc_claimAutoreleasedReturnValue(), v93 = v25, [v25 isEqual:?]))
    {
      v26 = [(SFCardSection *)self canBeHidden];
      *&v109[24] = v24;
      if (v26 == [(SFCardSection *)v5 canBeHidden]&& (v27 = [(SFCardSection *)self hasTopPadding], v27 == [(SFCardSection *)v5 hasTopPadding]) && (v28 = [(SFCardSection *)self hasBottomPadding], v28 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v91 = [(SFNewsCardSection *)self type];
        v90 = [(SFNewsCardSection *)v5 type];
        if ((v91 != 0) == (v90 == 0))
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
          v40 = [(SFNewsCardSection *)self type];
          v41 = v40 != 0;
          v89 = v40;
          if (!v40 || (-[SFNewsCardSection type](self, "type"), v42 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection type](v5, "type"), v87 = objc_claimAutoreleasedReturnValue(), v88 = v42, [v42 isEqual:?]))
          {
            *&v109[20] = v41;
            v43 = [(SFCardSection *)self separatorStyle];
            if (v43 == [(SFCardSection *)v5 separatorStyle])
            {
              v86 = [(SFCardSection *)self backgroundColor];
              v85 = [(SFCardSection *)v5 backgroundColor];
              if ((v86 != 0) == (v85 == 0))
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
                v44 = [(SFCardSection *)self backgroundColor];
                *&v114[16] = v44 != 0;
                v84 = v44;
                if (!v44 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v45 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v80 = objc_claimAutoreleasedReturnValue(), v81 = v45, [v45 isEqual:?]))
                {
                  v83 = [(SFNewsCardSection *)self title];
                  v82 = [(SFNewsCardSection *)v5 title];
                  if ((v83 != 0) == (v82 == 0))
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
                    v46 = [(SFNewsCardSection *)self title];
                    *&v114[12] = v46 != 0;
                    v79 = v46;
                    if (!v46 || (-[SFNewsCardSection title](self, "title"), v47 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection title](v5, "title"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v47, [v47 isEqual:?]))
                    {
                      v78 = [(SFNewsCardSection *)self subtitle];
                      v77 = [(SFNewsCardSection *)v5 subtitle];
                      if ((v78 != 0) == (v77 == 0))
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
                        v48 = [(SFNewsCardSection *)self subtitle];
                        *&v114[8] = v48 != 0;
                        v74 = v48;
                        if (!v48 || (-[SFNewsCardSection subtitle](self, "subtitle"), v49 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection subtitle](v5, "subtitle"), v70 = objc_claimAutoreleasedReturnValue(), v71 = v49, [v49 isEqual:?]))
                        {
                          v73 = [(SFNewsCardSection *)self thumbnail];
                          v72 = [(SFNewsCardSection *)v5 thumbnail];
                          if ((v73 != 0) == (v72 == 0))
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
                            v50 = [(SFNewsCardSection *)self thumbnail];
                            *&v114[4] = v50 != 0;
                            v69 = v50;
                            if (!v50 || (-[SFNewsCardSection thumbnail](self, "thumbnail"), v51 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection thumbnail](v5, "thumbnail"), v65 = objc_claimAutoreleasedReturnValue(), v66 = v51, [v51 isEqual:?]))
                            {
                              v68 = [(SFNewsCardSection *)self providerImage];
                              v67 = [(SFNewsCardSection *)v5 providerImage];
                              if ((v68 != 0) == (v67 == 0))
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
                                v52 = [(SFNewsCardSection *)self providerImage];
                                *v114 = v52 != 0;
                                v64 = v52;
                                if (!v52 || (-[SFNewsCardSection providerImage](self, "providerImage"), v53 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection providerImage](v5, "providerImage"), v60 = objc_claimAutoreleasedReturnValue(), v61 = v53, [v53 isEqual:?]))
                                {
                                  v63 = [(SFNewsCardSection *)self providerTitle];
                                  v62 = [(SFNewsCardSection *)v5 providerTitle];
                                  if ((v63 != 0) == (v62 == 0))
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
                                    v54 = [(SFNewsCardSection *)self providerTitle];
                                    v105 = v54 != 0;
                                    v59 = v54;
                                    if (!v54 || (-[SFNewsCardSection providerTitle](self, "providerTitle"), v55 = objc_claimAutoreleasedReturnValue(), -[SFNewsCardSection providerTitle](v5, "providerTitle"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v55, [v55 isEqual:?]))
                                    {
                                      v56 = [(SFNewsCardSection *)self overlayTextInImage];
                                      v19 = v56 ^ [(SFNewsCardSection *)v5 overlayTextInImage]^ 1;
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
    v104 = v4;
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
    v4 = v104;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v26.receiver = self;
  v26.super_class = SFNewsCardSection;
  v4 = [(SFCardSection *)&v26 copyWithZone:a3];
  v5 = [(SFCardSection *)self punchoutOptions];
  v6 = [v5 copy];
  [v4 setPunchoutOptions:v6];

  v7 = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [v7 copy];
  [v4 setPunchoutPickerTitle:v8];

  v9 = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [v9 copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  v11 = [(SFNewsCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFNewsCardSection *)self title];
  v16 = [v15 copy];
  [v4 setTitle:v16];

  v17 = [(SFNewsCardSection *)self subtitle];
  v18 = [v17 copy];
  [v4 setSubtitle:v18];

  v19 = [(SFNewsCardSection *)self thumbnail];
  v20 = [v19 copy];
  [v4 setThumbnail:v20];

  v21 = [(SFNewsCardSection *)self providerImage];
  v22 = [v21 copy];
  [v4 setProviderImage:v22];

  v23 = [(SFNewsCardSection *)self providerTitle];
  v24 = [v23 copy];
  [v4 setProviderTitle:v24];

  [v4 setOverlayTextInImage:{-[SFNewsCardSection overlayTextInImage](self, "overlayTextInImage")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBNewsCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBNewsCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBNewsCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBNewsCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFNewsCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFNewsCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v9];

    v10 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v10];

    v11 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v11];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v12 = [(SFCardSection *)v8 type];
    [(SFNewsCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 title];
    [(SFNewsCardSection *)v5 setTitle:v14];

    v15 = [(SFCardSection *)v8 subtitle];
    [(SFNewsCardSection *)v5 setSubtitle:v15];

    v16 = [(SFCardSection *)v8 thumbnail];
    [(SFNewsCardSection *)v5 setThumbnail:v16];

    v17 = [(SFCardSection *)v8 providerImage];
    [(SFNewsCardSection *)v5 setProviderImage:v17];

    v18 = [(SFCardSection *)v8 providerTitle];
    [(SFNewsCardSection *)v5 setProviderTitle:v18];

    [(SFNewsCardSection *)v5 setOverlayTextInImage:[(SFCardSection *)v8 overlayTextInImage]];
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