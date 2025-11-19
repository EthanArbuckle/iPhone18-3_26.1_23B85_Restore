@interface SFTableRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTableRowCardSection)initWithCoder:(id)a3;
- (SFTableRowCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTableRowCardSection

- (unint64_t)hash
{
  v33.receiver = self;
  v33.super_class = SFTableRowCardSection;
  v3 = [(SFCardSection *)&v33 hash];
  v32 = [(SFCardSection *)self punchoutOptions];
  v4 = [v32 hash];
  v31 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v31 hash];
  v30 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v30 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v10 = [(SFTableRowCardSection *)self type];
  v11 = v9 ^ [v10 hash];
  v12 = v11 ^ [(SFCardSection *)self separatorStyle];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = v12 ^ [v13 hash];
  v15 = [(SFTableRowCardSection *)self richData];
  v16 = v8 ^ v14 ^ [v15 hash];
  v17 = [(SFTableRowCardSection *)self tableIdentifier];
  v18 = [v17 hash];
  v19 = [(SFTableRowCardSection *)self alignmentSchema];
  v20 = v18 ^ [v19 hash];
  v21 = [(SFTableRowCardSection *)self data];
  v22 = v20 ^ [v21 hash];
  v23 = v22 ^ [(SFTableRowCardSection *)self isSubHeader];
  v24 = [(SFTableRowCardSection *)self tabGroupIdentifier];
  v25 = v23 ^ [v24 hash];
  v26 = v25 ^ [(SFTableRowCardSection *)self reducedRowHeight];
  v27 = v16 ^ v26 ^ [(SFTableRowCardSection *)self verticalAlign];
  v28 = [(SFTableRowCardSection *)self alignRowsToHeader];

  return v27 ^ v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(self) = 1;
    goto LABEL_82;
  }

  if (![(SFTableRowCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v116.receiver = self, v116.super_class = SFTableRowCardSection, ![(SFCardSection *)&v116 isEqual:v4]))
  {
    LOBYTE(self) = 0;
    goto LABEL_82;
  }

  v5 = v4;
  v114 = [(SFCardSection *)self punchoutOptions];
  v113 = [(SFCardSection *)v5 punchoutOptions];
  v111 = v113 == 0;
  v112 = v114 != 0;
  if (v112 == v111)
  {
    memset(v110, 0, sizeof(v110));
    v10 = 0;
    v109 = 0uLL;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v115, 0, sizeof(v115));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    goto LABEL_27;
  }

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v108 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    v102 = [(SFCardSection *)v5 punchoutOptions];
    v103 = v9;
    if (![v9 isEqual:?])
    {
      memset(v110, 0, 36);
      v10 = 0;
      v109 = 0uLL;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v115, 0, sizeof(v115));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      HIDWORD(v110[4]) = 1;
      goto LABEL_27;
    }
  }

  v105 = [(SFCardSection *)self punchoutPickerTitle];
  v104 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v110[4]) = v8;
  if ((v105 != 0) == (v104 == 0))
  {
    memset(v110, 0, 20);
    v10 = 0;
    v109 = 0uLL;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v115, 0, sizeof(v115));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    *(&v110[2] + 4) = 1uLL;
    goto LABEL_27;
  }

  v19 = [(SFCardSection *)self punchoutPickerTitle];
  v20 = v19 != 0;
  v101 = v19;
  if (v19)
  {
    v21 = [(SFCardSection *)self punchoutPickerTitle];
    v97 = [(SFCardSection *)v5 punchoutPickerTitle];
    v98 = v21;
    if (![v21 isEqual:?])
    {
      v110[0] = 0;
      v110[1] = 0;
      v10 = 0;
      v110[3] = 0;
      v109 = 0uLL;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v115, 0, sizeof(v115));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      v110[2] = 0x100000001;
      LODWORD(v110[4]) = 1;
      goto LABEL_27;
    }

    LODWORD(v110[4]) = v20;
  }

  else
  {
    LODWORD(v110[4]) = 0;
  }

  v100 = [(SFCardSection *)self punchoutPickerDismissText];
  v99 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v100 != 0) == (v99 == 0))
  {
    v10 = 0;
    v110[3] = 0;
    *(v110 + 4) = 0;
    v109 = 0uLL;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v115, 0, sizeof(v115));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(self) = 0;
    HIDWORD(v110[1]) = 0;
    v110[2] = 0x100000001;
    LODWORD(v110[0]) = 1;
  }

  else
  {
    v22 = [(SFCardSection *)self punchoutPickerDismissText];
    v23 = v22 != 0;
    v96 = v22;
    if (!v22 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v24 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v24, [v24 isEqual:?]))
    {
      v25 = [(SFCardSection *)self canBeHidden];
      HIDWORD(v110[3]) = v23;
      if (v25 == [(SFCardSection *)v5 canBeHidden]&& (v26 = [(SFCardSection *)self hasTopPadding], v26 == [(SFCardSection *)v5 hasTopPadding]) && (v27 = [(SFCardSection *)self hasBottomPadding], v27 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v93 = [(SFTableRowCardSection *)self type];
        v92 = [(SFTableRowCardSection *)v5 type];
        if ((v93 != 0) == (v92 == 0))
        {
          v109 = 0uLL;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          memset(v115, 0, sizeof(v115));
          v16 = 0;
          v17 = 0;
          v18 = 0;
          LOBYTE(self) = 0;
          LODWORD(v110[3]) = 0;
          v110[2] = 0x100000001;
          v110[0] = 1;
          v10 = 1;
          v110[1] = 1;
        }

        else
        {
          v39 = [(SFTableRowCardSection *)self type];
          v40 = v39 != 0;
          v91 = v39;
          if (!v39 || (-[SFTableRowCardSection type](self, "type"), v41 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection type](v5, "type"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v41, [v41 isEqual:?]))
          {
            LODWORD(v110[3]) = v40;
            v42 = [(SFCardSection *)self separatorStyle];
            if (v42 == [(SFCardSection *)v5 separatorStyle])
            {
              v88 = [(SFCardSection *)self backgroundColor];
              v87 = [(SFCardSection *)v5 backgroundColor];
              if ((v88 != 0) == (v87 == 0))
              {
                *(&v109 + 4) = 0;
                v11 = 0;
                LODWORD(v109) = 0;
                v12 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                memset(v115, 0, sizeof(v115));
                v16 = 0;
                v17 = 0;
                v18 = 0;
                LOBYTE(self) = 0;
                v110[2] = 0x100000001;
                v110[0] = 0x100000001;
                v10 = 1;
                v110[1] = 1;
                HIDWORD(v109) = 1;
              }

              else
              {
                v43 = [(SFCardSection *)self backgroundColor];
                *&v115[16] = v43 != 0;
                v86 = v43;
                if (!v43 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v44 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v82 = objc_claimAutoreleasedReturnValue(), v83 = v44, [v44 isEqual:?]))
                {
                  v85 = [(SFTableRowCardSection *)self richData];
                  v84 = [(SFTableRowCardSection *)v5 richData];
                  if ((v85 != 0) == (v84 == 0))
                  {
                    *&v115[8] = 0;
                    v11 = 0;
                    v12 = 0;
                    v13 = 0;
                    *v115 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    LOBYTE(self) = 0;
                    v110[2] = 0x100000001;
                    v110[0] = 0x100000001;
                    v10 = 1;
                    v110[1] = 0x100000001;
                    *(&v109 + 1) = 0x100000000;
                    *&v109 = 0x100000000;
                  }

                  else
                  {
                    v45 = [(SFTableRowCardSection *)self richData];
                    *&v115[12] = v45 != 0;
                    v81 = v45;
                    if (!v45 || (-[SFTableRowCardSection richData](self, "richData"), v46 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection richData](v5, "richData"), v77 = objc_claimAutoreleasedReturnValue(), v78 = v46, [v46 isEqual:?]))
                    {
                      v80 = [(SFTableRowCardSection *)self tableIdentifier];
                      v79 = [(SFTableRowCardSection *)v5 tableIdentifier];
                      if ((v80 != 0) == (v79 == 0))
                      {
                        *&v115[4] = 0;
                        v12 = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        *v115 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        LOBYTE(self) = 0;
                        v110[2] = 0x100000001;
                        v110[0] = 0x100000001;
                        v10 = 1;
                        v110[1] = 0x100000001;
                        *(&v109 + 1) = 0x100000001;
                        *&v109 = 0x100000000;
                        v11 = 1;
                      }

                      else
                      {
                        v47 = [(SFTableRowCardSection *)self tableIdentifier];
                        *&v115[8] = v47 != 0;
                        v76 = v47;
                        if (!v47 || (-[SFTableRowCardSection tableIdentifier](self, "tableIdentifier"), v48 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection tableIdentifier](v5, "tableIdentifier"), v72 = objc_claimAutoreleasedReturnValue(), v73 = v48, [v48 isEqual:?]))
                        {
                          v75 = [(SFTableRowCardSection *)self alignmentSchema];
                          v74 = [(SFTableRowCardSection *)v5 alignmentSchema];
                          if ((v75 != 0) == (v74 == 0))
                          {
                            v13 = 0;
                            *v115 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            LOBYTE(self) = 0;
                            v110[2] = 0x100000001;
                            v110[0] = 0x100000001;
                            v10 = 1;
                            v110[1] = 0x100000001;
                            *(&v109 + 1) = 0x100000001;
                            *&v109 = 0x100000001;
                            v11 = 1;
                            v12 = 1;
                          }

                          else
                          {
                            v49 = [(SFTableRowCardSection *)self alignmentSchema];
                            *&v115[4] = v49 != 0;
                            v71 = v49;
                            if (!v49 || (-[SFTableRowCardSection alignmentSchema](self, "alignmentSchema"), v50 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection alignmentSchema](v5, "alignmentSchema"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v50, [v50 isEqual:?]))
                            {
                              v70 = [(SFTableRowCardSection *)self data];
                              v69 = [(SFTableRowCardSection *)v5 data];
                              if ((v70 != 0) == (v69 == 0))
                              {
                                v15 = 0;
                                *v115 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                LOBYTE(self) = 0;
                                v110[2] = 0x100000001;
                                v110[0] = 0x100000001;
                                v10 = 1;
                                v110[1] = 0x100000001;
                                *(&v109 + 1) = 0x100000001;
                                *&v109 = 0x100000001;
                                v11 = 1;
                                v12 = 1;
                                v13 = 1;
                                v14 = 1;
                              }

                              else
                              {
                                v51 = [(SFTableRowCardSection *)self data];
                                *v115 = v51 != 0;
                                v66 = v51;
                                if (!v51 || (-[SFTableRowCardSection data](self, "data"), v52 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection data](v5, "data"), v64 = objc_claimAutoreleasedReturnValue(), v65 = v52, [v52 isEqual:?]))
                                {
                                  v53 = [(SFTableRowCardSection *)self isSubHeader];
                                  if (v53 == [(SFTableRowCardSection *)v5 isSubHeader])
                                  {
                                    v63 = [(SFTableRowCardSection *)self tabGroupIdentifier];
                                    v62 = [(SFTableRowCardSection *)v5 tabGroupIdentifier];
                                    if ((v63 != 0) == (v62 == 0))
                                    {
                                      v17 = 0;
                                      v18 = 0;
                                      LOBYTE(self) = 0;
                                      v110[2] = 0x100000001;
                                      v110[0] = 0x100000001;
                                      v10 = 1;
                                      v110[1] = 0x100000001;
                                      *(&v109 + 1) = 0x100000001;
                                      *&v109 = 0x100000001;
                                      v11 = 1;
                                      v12 = 1;
                                      v13 = 1;
                                      v14 = 1;
                                      v15 = 1;
                                      v16 = 1;
                                    }

                                    else
                                    {
                                      v54 = [(SFTableRowCardSection *)self tabGroupIdentifier];
                                      v107 = v54 != 0;
                                      v61 = v54;
                                      if (!v54 || (-[SFTableRowCardSection tabGroupIdentifier](self, "tabGroupIdentifier"), v55 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection tabGroupIdentifier](v5, "tabGroupIdentifier"), v59 = objc_claimAutoreleasedReturnValue(), v60 = v55, [v55 isEqual:?]))
                                      {
                                        v56 = [(SFTableRowCardSection *)self reducedRowHeight];
                                        if (v56 == [(SFTableRowCardSection *)v5 reducedRowHeight]&& (v57 = [(SFTableRowCardSection *)self verticalAlign], v57 == [(SFTableRowCardSection *)v5 verticalAlign]))
                                        {
                                          v58 = [(SFTableRowCardSection *)self alignRowsToHeader];
                                          LODWORD(self) = v58 ^ [(SFTableRowCardSection *)v5 alignRowsToHeader]^ 1;
                                        }

                                        else
                                        {
                                          LOBYTE(self) = 0;
                                        }

                                        v110[2] = 0x100000001;
                                        v110[0] = 0x100000001;
                                        v10 = 1;
                                        v110[1] = 0x100000001;
                                        *(&v109 + 1) = 0x100000001;
                                        *&v109 = 0x100000001;
                                        v11 = 1;
                                        v12 = 1;
                                        v13 = 1;
                                        v14 = 1;
                                        v15 = 1;
                                        v16 = 1;
                                        v17 = 1;
                                        v18 = v107;
                                      }

                                      else
                                      {
                                        LOBYTE(self) = 0;
                                        v110[2] = 0x100000001;
                                        v110[0] = 0x100000001;
                                        v10 = 1;
                                        v110[1] = 0x100000001;
                                        *(&v109 + 1) = 0x100000001;
                                        *&v109 = 0x100000001;
                                        v11 = 1;
                                        v12 = 1;
                                        v13 = 1;
                                        v14 = 1;
                                        v15 = 1;
                                        v16 = 1;
                                        v17 = 1;
                                        v18 = 1;
                                      }

                                      v6 = v59;
                                    }
                                  }

                                  else
                                  {
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    LOBYTE(self) = 0;
                                    v110[2] = 0x100000001;
                                    v110[0] = 0x100000001;
                                    v10 = 1;
                                    v110[1] = 0x100000001;
                                    *(&v109 + 1) = 0x100000001;
                                    *&v109 = 0x100000001;
                                    v11 = 1;
                                    v12 = 1;
                                    v13 = 1;
                                    v14 = 1;
                                    v15 = 1;
                                  }
                                }

                                else
                                {
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  LOBYTE(self) = 0;
                                  v110[2] = 0x100000001;
                                  v110[0] = 0x100000001;
                                  v10 = 1;
                                  v110[1] = 0x100000001;
                                  *(&v109 + 1) = 0x100000001;
                                  *&v109 = 0x100000001;
                                  v11 = 1;
                                  v12 = 1;
                                  v13 = 1;
                                  v14 = 1;
                                  v15 = 1;
                                  *v115 = 1;
                                }
                              }
                            }

                            else
                            {
                              v14 = 0;
                              v15 = 0;
                              *v115 = 0x100000000;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              LOBYTE(self) = 0;
                              v110[2] = 0x100000001;
                              v110[0] = 0x100000001;
                              v10 = 1;
                              v110[1] = 0x100000001;
                              *(&v109 + 1) = 0x100000001;
                              *&v109 = 0x100000001;
                              v11 = 1;
                              v12 = 1;
                              v13 = 1;
                            }
                          }
                        }

                        else
                        {
                          v12 = 0;
                          v13 = 0;
                          *v115 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          LOBYTE(self) = 0;
                          v110[2] = 0x100000001;
                          v110[0] = 0x100000001;
                          v10 = 1;
                          v110[1] = 0x100000001;
                          *(&v109 + 1) = 0x100000001;
                          *&v109 = 0x100000001;
                          v11 = 1;
                          *&v115[8] = 1;
                        }
                      }
                    }

                    else
                    {
                      v11 = 0;
                      *&v115[4] = 0;
                      v12 = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      *v115 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      LOBYTE(self) = 0;
                      v110[2] = 0x100000001;
                      v110[0] = 0x100000001;
                      v10 = 1;
                      v110[1] = 0x100000001;
                      *(&v109 + 1) = 0x100000001;
                      *&v109 = 0x100000000;
                      *&v115[12] = 1;
                    }
                  }
                }

                else
                {
                  *(&v109 + 4) = 0;
                  *&v115[8] = 0;
                  v11 = 0;
                  LODWORD(v109) = 0;
                  v12 = 0;
                  v13 = 0;
                  *v115 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  LOBYTE(self) = 0;
                  v110[2] = 0x100000001;
                  v110[0] = 0x100000001;
                  v10 = 1;
                  v110[1] = 0x100000001;
                  HIDWORD(v109) = 1;
                  *&v115[16] = 1;
                }
              }
            }

            else
            {
              v109 = 0uLL;
              v11 = 0;
              v12 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              memset(v115, 0, sizeof(v115));
              v16 = 0;
              v17 = 0;
              v18 = 0;
              LOBYTE(self) = 0;
              v110[2] = 0x100000001;
              v110[0] = 0x100000001;
              v10 = 1;
              v110[1] = 1;
            }
          }

          else
          {
            v109 = 0uLL;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            memset(v115, 0, sizeof(v115));
            v16 = 0;
            v17 = 0;
            v18 = 0;
            LOBYTE(self) = 0;
            v110[2] = 0x100000001;
            v110[0] = 0x100000001;
            v10 = 1;
            v110[1] = 1;
            LODWORD(v110[3]) = 1;
          }
        }
      }

      else
      {
        *(v110 + 4) = 0;
        v109 = 0uLL;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        memset(v115, 0, sizeof(v115));
        v16 = 0;
        v17 = 0;
        v18 = 0;
        LOBYTE(self) = 0;
        *(&v110[2] + 4) = 1;
        HIDWORD(v110[1]) = 0;
        LODWORD(v110[2]) = 1;
        LODWORD(v110[0]) = 1;
        v10 = 1;
      }
    }

    else
    {
      *(v110 + 4) = 0;
      v109 = 0uLL;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v115, 0, sizeof(v115));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(self) = 0;
      v110[3] = 0x100000000;
      HIDWORD(v110[1]) = 0;
      v110[2] = 0x100000001;
      LODWORD(v110[0]) = 1;
      v10 = 1;
    }
  }

LABEL_27:
  if (v18)
  {
    v106 = v4;
    v28 = self;
    self = v5;
    v29 = v14;
    v30 = v12;
    v31 = v15;
    v32 = v11;
    v33 = v13;
    v34 = v10;
    v35 = v16;
    v36 = v17;

    v37 = v36;
    v16 = v35;
    v10 = v34;
    v13 = v33;
    v11 = v32;
    v15 = v31;
    v12 = v30;
    v14 = v29;
    v5 = self;
    LOBYTE(self) = v28;
    v4 = v106;
    if (!v37)
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
  if (*v115)
  {
  }

  if (v15)
  {
  }

  if (v14)
  {
  }

  if (*&v115[4])
  {

    if (!v13)
    {
      goto LABEL_39;
    }

LABEL_87:

    if (!v12)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v13)
  {
    goto LABEL_87;
  }

LABEL_39:
  if (v12)
  {
LABEL_40:
  }

LABEL_41:
  if (*&v115[8])
  {
  }

  if (v109)
  {
  }

  if (v11)
  {
  }

  if (*&v115[12])
  {
  }

  if (DWORD2(v109))
  {
  }

  if (DWORD1(v109))
  {
  }

  if (*&v115[16])
  {
  }

  if (HIDWORD(v110[1]))
  {
  }

  if (HIDWORD(v109))
  {
  }

  if (LODWORD(v110[3]))
  {
  }

  if (HIDWORD(v110[0]))
  {
  }

  if (LODWORD(v110[1]))
  {
  }

  if (HIDWORD(v110[3]))
  {
  }

  if (v10)
  {
  }

  if (LODWORD(v110[0]))
  {
  }

  if (LODWORD(v110[4]))
  {
  }

  if (LODWORD(v110[2]))
  {
  }

  if (HIDWORD(v110[2]))
  {
  }

  if (HIDWORD(v110[4]))
  {
  }

  if (v112 != v111)
  {
  }

LABEL_82:
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26.receiver = self;
  v26.super_class = SFTableRowCardSection;
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
  v11 = [(SFTableRowCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFTableRowCardSection *)self richData];
  v16 = [v15 copy];
  [v4 setRichData:v16];

  v17 = [(SFTableRowCardSection *)self tableIdentifier];
  v18 = [v17 copy];
  [v4 setTableIdentifier:v18];

  v19 = [(SFTableRowCardSection *)self alignmentSchema];
  v20 = [v19 copy];
  [v4 setAlignmentSchema:v20];

  v21 = [(SFTableRowCardSection *)self data];
  v22 = [v21 copy];
  [v4 setData:v22];

  [v4 setIsSubHeader:{-[SFTableRowCardSection isSubHeader](self, "isSubHeader")}];
  v23 = [(SFTableRowCardSection *)self tabGroupIdentifier];
  v24 = [v23 copy];
  [v4 setTabGroupIdentifier:v24];

  [v4 setReducedRowHeight:{-[SFTableRowCardSection reducedRowHeight](self, "reducedRowHeight")}];
  [v4 setVerticalAlign:{-[SFTableRowCardSection verticalAlign](self, "verticalAlign")}];
  [v4 setAlignRowsToHeader:{-[SFTableRowCardSection alignRowsToHeader](self, "alignRowsToHeader")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTableRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBTableRowCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTableRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBTableRowCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFTableRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFTableRowCardSection)initWithCoder:(id)a3
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
    [(SFTableRowCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 richData];
    [(SFTableRowCardSection *)v5 setRichData:v14];

    v15 = [(SFCardSection *)v8 tableIdentifier];
    [(SFTableRowCardSection *)v5 setTableIdentifier:v15];

    v16 = [(SFCardSection *)v8 alignmentSchema];
    [(SFTableRowCardSection *)v5 setAlignmentSchema:v16];

    v17 = [(SFCardSection *)v8 data];
    [(SFTableRowCardSection *)v5 setData:v17];

    [(SFTableRowCardSection *)v5 setIsSubHeader:[(SFCardSection *)v8 isSubHeader]];
    v18 = [(SFCardSection *)v8 tabGroupIdentifier];
    [(SFTableRowCardSection *)v5 setTabGroupIdentifier:v18];

    [(SFTableRowCardSection *)v5 setReducedRowHeight:[(SFCardSection *)v8 reducedRowHeight]];
    [(SFTableRowCardSection *)v5 setVerticalAlign:[(SFCardSection *)v8 verticalAlign]];
    [(SFTableRowCardSection *)v5 setAlignRowsToHeader:[(SFCardSection *)v8 alignRowsToHeader]];
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

- (SFTableRowCardSection)initWithProtobuf:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v64.receiver = self;
  v64.super_class = SFTableRowCardSection;
  v5 = [(SFCardSection *)&v64 init];
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

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v61;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v61 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v60 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v60 objects:v67 count:16];
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
      [(SFTableRowCardSection *)v5 setType:v19];
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

    v24 = [v4 richDatas];
    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v26 = [v4 richDatas];
    v27 = [v26 countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v57;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v57 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[SFRichText alloc] initWithProtobuf:*(*(&v56 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v28);
    }

    [(SFTableRowCardSection *)v5 setRichData:v25];
    v32 = [v4 tableIdentifier];

    if (v32)
    {
      v33 = [v4 tableIdentifier];
      [(SFTableRowCardSection *)v5 setTableIdentifier:v33];
    }

    v34 = [v4 alignmentSchema];

    if (v34)
    {
      v35 = [SFTableAlignmentSchema alloc];
      v36 = [v4 alignmentSchema];
      v37 = [(SFTableAlignmentSchema *)v35 initWithProtobuf:v36];
      [(SFTableRowCardSection *)v5 setAlignmentSchema:v37];
    }

    v38 = [v4 datas];
    v51 = v5;
    if (v38)
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v39 = 0;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v40 = [v4 datas];
    v41 = [v40 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v53;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [[SFFormattedText alloc] initWithProtobuf:*(*(&v52 + 1) + 8 * k)];
          if (v45)
          {
            [v39 addObject:v45];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v42);
    }

    v5 = v51;
    [(SFTableRowCardSection *)v51 setData:v39];
    if ([v4 isSubHeader])
    {
      -[SFTableRowCardSection setIsSubHeader:](v51, "setIsSubHeader:", [v4 isSubHeader]);
    }

    v46 = [v4 tabGroupIdentifier];

    if (v46)
    {
      v47 = [v4 tabGroupIdentifier];
      [(SFTableRowCardSection *)v51 setTabGroupIdentifier:v47];
    }

    if ([v4 reducedRowHeight])
    {
      -[SFTableRowCardSection setReducedRowHeight:](v51, "setReducedRowHeight:", [v4 reducedRowHeight]);
    }

    if ([v4 verticalAlign])
    {
      -[SFTableRowCardSection setVerticalAlign:](v51, "setVerticalAlign:", [v4 verticalAlign]);
    }

    if ([v4 alignRowsToHeader])
    {
      -[SFTableRowCardSection setAlignRowsToHeader:](v51, "setAlignRowsToHeader:", [v4 alignRowsToHeader]);
    }

    v48 = v51;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

@end