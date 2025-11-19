@interface SFMapCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMapCardSection)initWithCoder:(id)a3;
- (SFMapCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMapCardSection

- (unint64_t)hash
{
  v34.receiver = self;
  v34.super_class = SFMapCardSection;
  v3 = [(SFCardSection *)&v34 hash];
  v33 = [(SFCardSection *)self punchoutOptions];
  v4 = [v33 hash];
  v32 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v32 hash];
  v31 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v31 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v10 = [(SFMapCardSection *)self type];
  v11 = v9 ^ [v10 hash];
  v12 = v11 ^ [(SFCardSection *)self separatorStyle];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = v12 ^ [v13 hash];
  v15 = [(SFMapCardSection *)self location];
  v16 = v8 ^ v14 ^ [v15 hash];
  v17 = [(SFMapCardSection *)self pinColor];
  v18 = [v17 hash];
  v19 = [(SFMapCardSection *)self footnoteLabel];
  v20 = v18 ^ [v19 hash];
  v21 = [(SFMapCardSection *)self footnote];
  v22 = v20 ^ [v21 hash];
  v23 = v22 ^ [(SFMapCardSection *)self interactive];
  v24 = v23 ^ [(SFMapCardSection *)self sizeFormat];
  v25 = [(SFMapCardSection *)self boundingMapRegion];
  v26 = v24 ^ [v25 hash];
  v27 = v16 ^ v26 ^ [(SFMapCardSection *)self pinBehavior];
  v28 = [(SFMapCardSection *)self pins];
  v29 = [v28 hash];

  return v27 ^ v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_75;
  }

  if (![(SFMapCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v123.receiver = self, v123.super_class = SFMapCardSection, ![(SFCardSection *)&v123 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_75;
  }

  v5 = v4;
  v121 = [(SFCardSection *)self punchoutOptions];
  v120 = [(SFCardSection *)v5 punchoutOptions];
  v118 = v120 == 0;
  v119 = v121 != 0;
  if (v119 == v118)
  {
    v116 = 0;
    memset(v117, 0, sizeof(v117));
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v115 = 0uLL;
    v13 = 0;
    memset(v122, 0, sizeof(v122));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v114 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v109 = v110 = v9;
    if (![v9 isEqual:?])
    {
      v116 = 0;
      memset(v117, 0, 36);
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v115 = 0uLL;
      v13 = 0;
      memset(v122, 0, sizeof(v122));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v117[4]) = 1;
      goto LABEL_16;
    }
  }

  v112 = [(SFCardSection *)self punchoutPickerTitle];
  v111 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v117[4]) = v8;
  if ((v112 != 0) == (v111 == 0))
  {
    v116 = 0;
    memset(v117, 0, 20);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v115 = 0uLL;
    v13 = 0;
    memset(v122, 0, sizeof(v122));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(&v117[2] + 4) = 1uLL;
    goto LABEL_16;
  }

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v108 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v104 = [(SFCardSection *)v5 punchoutPickerTitle];
    v105 = v22;
    if (![v22 isEqual:?])
    {
      v117[0] = 0;
      v117[1] = 0;
      v10 = 0;
      v117[3] = 0;
      v116 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v115 = 0uLL;
      memset(v122, 0, sizeof(v122));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v117[2] = 0x100000001;
      LODWORD(v117[4]) = 1;
      goto LABEL_16;
    }

    LODWORD(v117[4]) = v21;
  }

  else
  {
    LODWORD(v117[4]) = 0;
  }

  v107 = [(SFCardSection *)self punchoutPickerDismissText];
  v106 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v107 != 0) == (v106 == 0))
  {
    v10 = 0;
    v117[3] = 0;
    *(v117 + 4) = 0;
    v116 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v115 = 0uLL;
    memset(v122, 0, sizeof(v122));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HIDWORD(v117[1]) = 0;
    v117[2] = 0x100000001;
    LODWORD(v117[0]) = 1;
  }

  else
  {
    v35 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = v35 != 0;
    v103 = v35;
    if (!v35 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v37, [v37 isEqual:?]))
    {
      v38 = [(SFCardSection *)self canBeHidden];
      HIDWORD(v117[3]) = v36;
      if (v38 == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v100 = [(SFMapCardSection *)self type];
        v99 = [(SFMapCardSection *)v5 type];
        if ((v100 != 0) == (v99 == 0))
        {
          v116 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v115 = 0uLL;
          memset(v122, 0, sizeof(v122));
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          LODWORD(v117[3]) = 0;
          v117[2] = 0x100000001;
          v117[0] = 1;
          v10 = 1;
          v117[1] = 1;
        }

        else
        {
          v41 = [(SFMapCardSection *)self type];
          v42 = v41 != 0;
          v98 = v41;
          if (!v41 || (-[SFMapCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection type](v5, "type"), v96 = objc_claimAutoreleasedReturnValue(), v97 = v43, [v43 isEqual:?]))
          {
            LODWORD(v117[3]) = v42;
            v44 = [(SFCardSection *)self separatorStyle];
            if (v44 == [(SFCardSection *)v5 separatorStyle])
            {
              v95 = [(SFCardSection *)self backgroundColor];
              v94 = [(SFCardSection *)v5 backgroundColor];
              if ((v95 != 0) == (v94 == 0))
              {
                v11 = 0;
                v12 = 0;
                v115 = 0uLL;
                v13 = 0;
                memset(v122, 0, sizeof(v122));
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v117[2] = 0x100000001;
                v117[0] = 0x100000001;
                v10 = 1;
                v117[1] = 1;
                v116 = 0x100000000;
              }

              else
              {
                v45 = [(SFCardSection *)self backgroundColor];
                HIDWORD(v122[2]) = v45 != 0;
                v93 = v45;
                if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v46, [v46 isEqual:?]))
                {
                  v92 = [(SFMapCardSection *)self location];
                  v91 = [(SFMapCardSection *)v5 location];
                  if ((v92 != 0) == (v91 == 0))
                  {
                    v12 = 0;
                    v115 = 0uLL;
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    memset(v122, 0, 20);
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v117[2] = 0x100000001;
                    v117[0] = 0x100000001;
                    v10 = 1;
                    v117[1] = 0x100000001;
                    v116 = 0x100000000;
                    v11 = 1;
                  }

                  else
                  {
                    v47 = [(SFMapCardSection *)self location];
                    LODWORD(v122[2]) = v47 != 0;
                    v88 = v47;
                    if (!v47 || (-[SFMapCardSection location](self, "location"), v48 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection location](v5, "location"), v84 = objc_claimAutoreleasedReturnValue(), v85 = v48, [v48 isEqual:?]))
                    {
                      v87 = [(SFMapCardSection *)self pinColor];
                      v86 = [(SFMapCardSection *)v5 pinColor];
                      if ((v87 != 0) == (v86 == 0))
                      {
                        v13 = 0;
                        v122[0] = 0;
                        v122[1] = 0;
                        *(&v115 + 4) = 0;
                        LODWORD(v115) = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v117[2] = 0x100000001;
                        v117[0] = 0x100000001;
                        v10 = 1;
                        v117[1] = 0x100000001;
                        v116 = 0x100000000;
                        v11 = 1;
                        v12 = 1;
                        HIDWORD(v115) = 1;
                      }

                      else
                      {
                        v49 = [(SFMapCardSection *)self pinColor];
                        HIDWORD(v122[1]) = v49 != 0;
                        v83 = v49;
                        if (!v49 || (-[SFMapCardSection pinColor](self, "pinColor"), v50 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection pinColor](v5, "pinColor"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v50, [v50 isEqual:?]))
                        {
                          v82 = [(SFMapCardSection *)self footnoteLabel];
                          v81 = [(SFMapCardSection *)v5 footnoteLabel];
                          if ((v82 != 0) == (v81 == 0))
                          {
                            *(v122 + 4) = 0;
                            *&v115 = 0;
                            v14 = 0;
                            v15 = 0;
                            LODWORD(v122[0]) = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v117[2] = 0x100000001;
                            v117[0] = 0x100000001;
                            v10 = 1;
                            v117[1] = 0x100000001;
                            v116 = 0x100000000;
                            v11 = 1;
                            v12 = 1;
                            v13 = 1;
                            *(&v115 + 1) = 0x100000001;
                          }

                          else
                          {
                            v51 = [(SFMapCardSection *)self footnoteLabel];
                            LODWORD(v122[1]) = v51 != 0;
                            v78 = v51;
                            if (!v51 || (-[SFMapCardSection footnoteLabel](self, "footnoteLabel"), v52 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection footnoteLabel](v5, "footnoteLabel"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v52, [v52 isEqual:?]))
                            {
                              v77 = [(SFMapCardSection *)self footnote];
                              v76 = [(SFMapCardSection *)v5 footnote];
                              if ((v77 != 0) == (v76 == 0))
                              {
                                v122[0] = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v117[2] = 0x100000001;
                                v117[0] = 0x100000001;
                                v10 = 1;
                                v117[1] = 0x100000001;
                                v116 = 0x100000001;
                                v11 = 1;
                                v12 = 1;
                                *(&v115 + 1) = 0x100000001;
                                v13 = 1;
                                *&v115 = 1;
                              }

                              else
                              {
                                v53 = [(SFMapCardSection *)self footnote];
                                HIDWORD(v122[0]) = v53 != 0;
                                v73 = v53;
                                if (!v53 || (-[SFMapCardSection footnote](self, "footnote"), v54 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection footnote](v5, "footnote"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v54, [v54 isEqual:?]))
                                {
                                  v55 = [(SFMapCardSection *)self interactive];
                                  if (v55 == [(SFMapCardSection *)v5 interactive]&& (v56 = [(SFMapCardSection *)self sizeFormat], v56 == [(SFMapCardSection *)v5 sizeFormat]))
                                  {
                                    v70 = [(SFMapCardSection *)self boundingMapRegion];
                                    v69 = [(SFMapCardSection *)v5 boundingMapRegion];
                                    if ((v70 != 0) == (v69 == 0))
                                    {
                                      v15 = 0;
                                      LODWORD(v122[0]) = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v117[2] = 0x100000001;
                                      v117[0] = 0x100000001;
                                      v10 = 1;
                                      v117[1] = 0x100000001;
                                      v116 = 0x100000001;
                                      v11 = 1;
                                      v12 = 1;
                                      *(&v115 + 1) = 0x100000001;
                                      v13 = 1;
                                      *&v115 = 0x100000001;
                                      v14 = 1;
                                    }

                                    else
                                    {
                                      v57 = [(SFMapCardSection *)self boundingMapRegion];
                                      LODWORD(v122[0]) = v57 != 0;
                                      v68 = v57;
                                      if (!v57 || (-[SFMapCardSection boundingMapRegion](self, "boundingMapRegion"), v58 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection boundingMapRegion](v5, "boundingMapRegion"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v58, [v58 isEqual:?]))
                                      {
                                        v59 = [(SFMapCardSection *)self pinBehavior];
                                        if (v59 == [(SFMapCardSection *)v5 pinBehavior])
                                        {
                                          v65 = [(SFMapCardSection *)self pins];
                                          v64 = [(SFMapCardSection *)v5 pins];
                                          if ((v65 != 0) == (v64 == 0))
                                          {
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            v117[2] = 0x100000001;
                                            v117[0] = 0x100000001;
                                            v10 = 1;
                                            v117[1] = 0x100000001;
                                            v116 = 0x100000001;
                                            v11 = 1;
                                            v12 = 1;
                                            *(&v115 + 1) = 0x100000001;
                                            v13 = 1;
                                            *&v115 = 0x100000001;
                                            v14 = 1;
                                            v15 = 1;
                                            v16 = 1;
                                          }

                                          else
                                          {
                                            v63 = [(SFMapCardSection *)self pins];
                                            if (v63)
                                            {
                                              v60 = [(SFMapCardSection *)self pins];
                                              v61 = [(SFMapCardSection *)v5 pins];
                                              v62 = v60;
                                              v19 = [v60 isEqual:v61];
                                              v6 = v61;
                                              v18 = 1;
                                              v117[2] = 0x100000001;
                                              v117[0] = 0x100000001;
                                              v10 = 1;
                                              v117[1] = 0x100000001;
                                              v116 = 0x100000001;
                                              v11 = 1;
                                              v12 = 1;
                                              *(&v115 + 1) = 0x100000001;
                                              v13 = 1;
                                              *&v115 = 0x100000001;
                                              v14 = 1;
                                              v15 = 1;
                                              v16 = 1;
                                              v17 = 1;
                                            }

                                            else
                                            {
                                              v63 = 0;
                                              v18 = 0;
                                              v117[2] = 0x100000001;
                                              v117[0] = 0x100000001;
                                              v10 = 1;
                                              v117[1] = 0x100000001;
                                              v116 = 0x100000001;
                                              v11 = 1;
                                              v12 = 1;
                                              *(&v115 + 1) = 0x100000001;
                                              v13 = 1;
                                              *&v115 = 0x100000001;
                                              v14 = 1;
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
                                          v117[2] = 0x100000001;
                                          v117[0] = 0x100000001;
                                          v10 = 1;
                                          v117[1] = 0x100000001;
                                          v116 = 0x100000001;
                                          v11 = 1;
                                          v12 = 1;
                                          *(&v115 + 1) = 0x100000001;
                                          v13 = 1;
                                          *&v115 = 0x100000001;
                                          v14 = 1;
                                          v15 = 1;
                                        }
                                      }

                                      else
                                      {
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v117[2] = 0x100000001;
                                        v117[0] = 0x100000001;
                                        v10 = 1;
                                        v117[1] = 0x100000001;
                                        v116 = 0x100000001;
                                        v11 = 1;
                                        v12 = 1;
                                        *(&v115 + 1) = 0x100000001;
                                        v13 = 1;
                                        *&v115 = 0x100000001;
                                        v14 = 1;
                                        v15 = 1;
                                        LODWORD(v122[0]) = 1;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v14 = 0;
                                    v15 = 0;
                                    LODWORD(v122[0]) = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v117[2] = 0x100000001;
                                    v117[0] = 0x100000001;
                                    v10 = 1;
                                    v117[1] = 0x100000001;
                                    v116 = 0x100000001;
                                    v11 = 1;
                                    v12 = 1;
                                    *(&v115 + 1) = 0x100000001;
                                    v13 = 1;
                                    *&v115 = 0x100000001;
                                  }
                                }

                                else
                                {
                                  v14 = 0;
                                  v15 = 0;
                                  v122[0] = 0x100000000;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v117[2] = 0x100000001;
                                  v117[0] = 0x100000001;
                                  v10 = 1;
                                  v117[1] = 0x100000001;
                                  v116 = 0x100000001;
                                  v11 = 1;
                                  v12 = 1;
                                  *(&v115 + 1) = 0x100000001;
                                  v13 = 1;
                                  *&v115 = 0x100000001;
                                }
                              }
                            }

                            else
                            {
                              *&v115 = 0;
                              v122[0] = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v117[2] = 0x100000001;
                              v117[0] = 0x100000001;
                              v10 = 1;
                              v117[1] = 0x100000001;
                              v116 = 0x100000001;
                              v11 = 1;
                              v12 = 1;
                              *(&v115 + 1) = 0x100000001;
                              v13 = 1;
                              LODWORD(v122[1]) = 1;
                            }
                          }
                        }

                        else
                        {
                          *(&v115 + 4) = 0;
                          *(v122 + 4) = 0;
                          LODWORD(v115) = 0;
                          v14 = 0;
                          v15 = 0;
                          LODWORD(v122[0]) = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v117[2] = 0x100000001;
                          v117[0] = 0x100000001;
                          v10 = 1;
                          v117[1] = 0x100000001;
                          v116 = 0x100000000;
                          v11 = 1;
                          v12 = 1;
                          HIDWORD(v115) = 1;
                          v13 = 1;
                          HIDWORD(v122[1]) = 1;
                        }
                      }
                    }

                    else
                    {
                      v115 = 0uLL;
                      v13 = 0;
                      v122[0] = 0;
                      v122[1] = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v117[2] = 0x100000001;
                      v117[0] = 0x100000001;
                      v10 = 1;
                      v117[1] = 0x100000001;
                      v116 = 0x100000000;
                      v11 = 1;
                      v12 = 1;
                      LODWORD(v122[2]) = 1;
                    }
                  }
                }

                else
                {
                  v11 = 0;
                  v12 = 0;
                  v115 = 0uLL;
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  memset(v122, 0, 20);
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v117[2] = 0x100000001;
                  v117[0] = 0x100000001;
                  v10 = 1;
                  v117[1] = 0x100000001;
                  v116 = 0x100000000;
                  HIDWORD(v122[2]) = 1;
                }
              }
            }

            else
            {
              v116 = 0;
              v11 = 0;
              v12 = 0;
              v13 = 0;
              v115 = 0uLL;
              memset(v122, 0, sizeof(v122));
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v117[2] = 0x100000001;
              v117[0] = 0x100000001;
              v10 = 1;
              v117[1] = 1;
            }
          }

          else
          {
            v116 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v115 = 0uLL;
            memset(v122, 0, sizeof(v122));
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v117[2] = 0x100000001;
            v117[0] = 0x100000001;
            v10 = 1;
            v117[1] = 1;
            LODWORD(v117[3]) = 1;
          }
        }
      }

      else
      {
        *(v117 + 4) = 0;
        v116 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v115 = 0uLL;
        memset(v122, 0, sizeof(v122));
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(&v117[2] + 4) = 1;
        HIDWORD(v117[1]) = 0;
        LODWORD(v117[2]) = 1;
        LODWORD(v117[0]) = 1;
        v10 = 1;
      }
    }

    else
    {
      *(v117 + 4) = 0;
      v116 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v115 = 0uLL;
      memset(v122, 0, sizeof(v122));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v117[3] = 0x100000000;
      HIDWORD(v117[1]) = 0;
      v117[2] = 0x100000001;
      LODWORD(v117[0]) = 1;
      v10 = 1;
    }
  }

LABEL_16:
  if (v18)
  {
    v113 = v4;
    v23 = v19;
    v24 = v10;
    v25 = v13;
    v26 = v5;
    v27 = v11;
    v28 = v14;
    v29 = v12;
    v30 = v15;
    v31 = v16;
    v32 = v17;

    v33 = v32;
    v16 = v31;
    v15 = v30;
    v12 = v29;
    v14 = v28;
    v11 = v27;
    v5 = v26;
    v13 = v25;
    v10 = v24;
    v19 = v23;
    v4 = v113;
    if (!v33)
    {
      goto LABEL_18;
    }
  }

  else if (!v17)
  {
LABEL_18:
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v16)
  {
LABEL_19:
  }

LABEL_20:
  if (LODWORD(v122[0]))
  {

    if (!v15)
    {
      goto LABEL_22;
    }
  }

  else if (!v15)
  {
LABEL_22:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v14)
  {
LABEL_23:
  }

LABEL_24:
  if (HIDWORD(v122[0]))
  {
  }

  if (DWORD1(v115))
  {
  }

  if (v115)
  {
  }

  if (LODWORD(v122[1]))
  {
  }

  if (v116)
  {
  }

  if (DWORD2(v115))
  {
  }

  if (HIDWORD(v122[1]))
  {
  }

  if (v13)
  {
  }

  if (HIDWORD(v115))
  {
  }

  if (LODWORD(v122[2]))
  {

    if (!v12)
    {
      goto LABEL_44;
    }

LABEL_83:

    if (!v11)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v12)
  {
    goto LABEL_83;
  }

LABEL_44:
  if (v11)
  {
LABEL_45:
  }

LABEL_46:
  if (HIDWORD(v122[2]))
  {
  }

  if (HIDWORD(v117[1]))
  {
  }

  if (HIDWORD(v116))
  {
  }

  if (LODWORD(v117[3]))
  {
  }

  if (HIDWORD(v117[0]))
  {
  }

  if (LODWORD(v117[1]))
  {
  }

  if (HIDWORD(v117[3]))
  {
  }

  if (v10)
  {
  }

  if (LODWORD(v117[0]))
  {
  }

  if (LODWORD(v117[4]))
  {
  }

  if (LODWORD(v117[2]))
  {
  }

  if (HIDWORD(v117[2]))
  {
  }

  if (HIDWORD(v117[4]))
  {
  }

  if (v119 != v118)
  {
  }

LABEL_75:
  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28.receiver = self;
  v28.super_class = SFMapCardSection;
  v4 = [(SFCardSection *)&v28 copyWithZone:a3];
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
  v11 = [(SFMapCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFMapCardSection *)self location];
  v16 = [v15 copy];
  [v4 setLocation:v16];

  v17 = [(SFMapCardSection *)self pinColor];
  v18 = [v17 copy];
  [v4 setPinColor:v18];

  v19 = [(SFMapCardSection *)self footnoteLabel];
  v20 = [v19 copy];
  [v4 setFootnoteLabel:v20];

  v21 = [(SFMapCardSection *)self footnote];
  v22 = [v21 copy];
  [v4 setFootnote:v22];

  [v4 setInteractive:{-[SFMapCardSection interactive](self, "interactive")}];
  [v4 setSizeFormat:-[SFMapCardSection sizeFormat](self, "sizeFormat")];
  v23 = [(SFMapCardSection *)self boundingMapRegion];
  v24 = [v23 copy];
  [v4 setBoundingMapRegion:v24];

  [v4 setPinBehavior:{-[SFMapCardSection pinBehavior](self, "pinBehavior")}];
  v25 = [(SFMapCardSection *)self pins];
  v26 = [v25 copy];
  [v4 setPins:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMapCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBMapCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMapCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBMapCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFMapCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFMapCardSection)initWithCoder:(id)a3
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
    [(SFMapCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 location];
    [(SFMapCardSection *)v5 setLocation:v14];

    v15 = [(SFCardSection *)v8 pinColor];
    [(SFMapCardSection *)v5 setPinColor:v15];

    v16 = [(SFCardSection *)v8 footnoteLabel];
    [(SFMapCardSection *)v5 setFootnoteLabel:v16];

    v17 = [(SFCardSection *)v8 footnote];
    [(SFMapCardSection *)v5 setFootnote:v17];

    [(SFMapCardSection *)v5 setInteractive:[(SFCardSection *)v8 interactive]];
    [(SFMapCardSection *)v5 setSizeFormat:[(SFCardSection *)v8 sizeFormat]];
    v18 = [(SFCardSection *)v8 boundingMapRegion];
    [(SFMapCardSection *)v5 setBoundingMapRegion:v18];

    [(SFMapCardSection *)v5 setPinBehavior:[(SFCardSection *)v8 pinBehavior]];
    v19 = [(SFCardSection *)v8 pins];
    [(SFMapCardSection *)v5 setPins:v19];

    v20 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v20];

    v21 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v21];

    v22 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v22];

    v23 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v23];

    v24 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v24];

    v25 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v25];

    v26 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v26];

    v27 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v27];

    v28 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v28];

    v29 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v29];

    v30 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v30];

    v31 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v31];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v32 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v32];

    v33 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v33];

    v34 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v34];

    v35 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v35];

    v36 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v36];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v37 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v37];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v38 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v38];

    v39 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v39];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v40 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v40];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v41 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v41];

    v42 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v42];

    v43 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v43];

    v44 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v44];
  }

  return v5;
}

- (SFMapCardSection)initWithProtobuf:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v59.receiver = self;
  v59.super_class = SFMapCardSection;
  v5 = [(SFCardSection *)&v59 init];
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

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v56;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v55 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
      [(SFMapCardSection *)v5 setType:v19];
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

    v24 = [v4 location];

    if (v24)
    {
      v25 = [SFLatLng alloc];
      v26 = [v4 location];
      v27 = [(SFLatLng *)v25 initWithProtobuf:v26];
      [(SFMapCardSection *)v5 setLocation:v27];
    }

    v28 = [v4 pinColor];

    if (v28)
    {
      v29 = [SFColor alloc];
      v30 = [v4 pinColor];
      v31 = [(SFColor *)v29 initWithProtobuf:v30];
      [(SFMapCardSection *)v5 setPinColor:v31];
    }

    v32 = [v4 footnoteLabel];

    if (v32)
    {
      v33 = [v4 footnoteLabel];
      [(SFMapCardSection *)v5 setFootnoteLabel:v33];
    }

    v34 = [v4 footnote];

    if (v34)
    {
      v35 = [v4 footnote];
      [(SFMapCardSection *)v5 setFootnote:v35];
    }

    if ([v4 interactive])
    {
      -[SFMapCardSection setInteractive:](v5, "setInteractive:", [v4 interactive]);
    }

    if ([v4 sizeFormat])
    {
      -[SFMapCardSection setSizeFormat:](v5, "setSizeFormat:", [v4 sizeFormat]);
    }

    v36 = [v4 boundingMapRegion];

    if (v36)
    {
      v37 = [SFMapRegion alloc];
      v38 = [v4 boundingMapRegion];
      v39 = [(SFMapRegion *)v37 initWithProtobuf:v38];
      [(SFMapCardSection *)v5 setBoundingMapRegion:v39];
    }

    if ([v4 pinBehavior])
    {
      -[SFMapCardSection setPinBehavior:](v5, "setPinBehavior:", [v4 pinBehavior]);
    }

    v40 = [v4 pins];
    if (v40)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = [v4 pins];
    v43 = [v42 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v52;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [[SFPin alloc] initWithProtobuf:*(*(&v51 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v44);
    }

    [(SFMapCardSection *)v5 setPins:v41];
    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

@end