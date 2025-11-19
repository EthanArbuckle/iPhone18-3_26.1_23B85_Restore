@interface SFCommandRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCommandRowCardSection)initWithCoder:(id)a3;
- (SFCommandRowCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCommandRowCardSection

- (unint64_t)hash
{
  v29.receiver = self;
  v29.super_class = SFCommandRowCardSection;
  v3 = [(SFCardSection *)&v29 hash];
  v28 = [(SFCardSection *)self punchoutOptions];
  v4 = [v28 hash];
  v27 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v27 hash];
  v6 = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v10 = [(SFCardSection *)self hasBottomPadding];
  v11 = [(SFCommandRowCardSection *)self type];
  v12 = v10 ^ [v11 hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  v14 = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [v14 hash];
  v16 = [(SFCommandRowCardSection *)self image];
  v17 = v9 ^ v15 ^ [v16 hash];
  v18 = [(SFCommandRowCardSection *)self toggledImage];
  v19 = [v18 hash];
  v20 = [(SFCommandRowCardSection *)self title];
  v21 = v19 ^ [v20 hash];
  v22 = [(SFCommandRowCardSection *)self toggledTitle];
  v23 = v21 ^ [v22 hash];
  v24 = [(SFCommandRowCardSection *)self subtitle];
  v25 = v23 ^ [v24 hash];

  return v17 ^ v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_82;
  }

  if (![(SFCommandRowCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v113.receiver = self, v113.super_class = SFCommandRowCardSection, ![(SFCardSection *)&v113 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_82;
  }

  v5 = v4;
  v111 = [(SFCardSection *)self punchoutOptions];
  v110 = [(SFCardSection *)v5 punchoutOptions];
  v108 = v110 == 0;
  v109 = v111 != 0;
  if (v109 == v108)
  {
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    memset(v107, 0, sizeof(v107));
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v112, 0, sizeof(v112));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_27;
  }

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v104 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    v99 = [(SFCardSection *)v5 punchoutOptions];
    v100 = v9;
    if (![v9 isEqual:?])
    {
      v106 = 0;
      memset(v105, 0, sizeof(v105));
      memset(v107, 0, 32);
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v112, 0, sizeof(v112));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v107[32] = 1;
      goto LABEL_27;
    }
  }

  v102 = [(SFCardSection *)self punchoutPickerTitle];
  v101 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v107[32] = v8;
  if ((v102 != 0) == (v101 == 0))
  {
    *&v107[8] = 0;
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    *v107 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v112, 0, sizeof(v112));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v107[16] = 1uLL;
    goto LABEL_27;
  }

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v98 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v94 = [(SFCardSection *)v5 punchoutPickerTitle];
    v95 = v22;
    if (![v22 isEqual:?])
    {
      v106 = 0;
      memset(v105, 0, sizeof(v105));
      *&v107[20] = 0;
      *v107 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v112, 0, sizeof(v112));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v107[16] = 1;
      *&v107[8] = 0x100000000;
      *&v107[28] = 1;
      goto LABEL_27;
    }

    *&v107[28] = v21;
  }

  else
  {
    *&v107[28] = 0;
  }

  v97 = [(SFCardSection *)self punchoutPickerDismissText];
  v96 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v97 != 0) == (v96 == 0))
  {
    memset(v105, 0, sizeof(v105));
    *&v107[20] = 0;
    *v107 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v112, 0, sizeof(v112));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v107[16] = 1;
    *&v107[8] = 0x100000000;
    v106 = 1;
  }

  else
  {
    v23 = [(SFCardSection *)self punchoutPickerDismissText];
    v24 = v23 != 0;
    v93 = v23;
    if (!v23 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v25 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v91 = objc_claimAutoreleasedReturnValue(), v92 = v25, [v25 isEqual:?]))
    {
      v26 = [(SFCardSection *)self canBeHidden];
      *&v107[24] = v24;
      if (v26 == [(SFCardSection *)v5 canBeHidden]&& (v27 = [(SFCardSection *)self hasTopPadding], v27 == [(SFCardSection *)v5 hasTopPadding]) && (v28 = [(SFCardSection *)self hasBottomPadding], v28 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v90 = [(SFCommandRowCardSection *)self type];
        v89 = [(SFCommandRowCardSection *)v5 type];
        if ((v90 != 0) == (v89 == 0))
        {
          *&v107[4] = 0;
          v10 = 0;
          v11 = 0;
          *&v105[4] = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          memset(v112, 0, sizeof(v112));
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *&v107[16] = 1;
          *&v107[12] = 1;
          v106 = 1;
          *v105 = 1;
          *v107 = 1;
        }

        else
        {
          v41 = [(SFCommandRowCardSection *)self type];
          v42 = v41 != 0;
          v88 = v41;
          if (!v41 || (-[SFCommandRowCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection type](v5, "type"), v86 = objc_claimAutoreleasedReturnValue(), v87 = v43, [v43 isEqual:?]))
          {
            *&v107[20] = v42;
            v44 = [(SFCardSection *)self separatorStyle];
            if (v44 == [(SFCardSection *)v5 separatorStyle])
            {
              v85 = [(SFCardSection *)self backgroundColor];
              v84 = [(SFCardSection *)v5 backgroundColor];
              if ((v85 != 0) == (v84 == 0))
              {
                v10 = 0;
                v11 = 0;
                *&v105[4] = 0;
                v12 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                memset(v112, 0, sizeof(v112));
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                *&v107[16] = 1;
                *&v107[8] = 0x100000000;
                v106 = 0x100000001;
                *v105 = 1;
                *v107 = 0x100000001;
              }

              else
              {
                v45 = [(SFCardSection *)self backgroundColor];
                *&v112[16] = v45 != 0;
                v83 = v45;
                if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v46, [v46 isEqual:?]))
                {
                  v82 = [(SFCommandRowCardSection *)self image];
                  v81 = [(SFCommandRowCardSection *)v5 image];
                  if ((v82 != 0) == (v81 == 0))
                  {
                    v11 = 0;
                    *&v112[8] = 0;
                    *&v105[4] = 0;
                    v12 = 0;
                    v13 = 0;
                    *v112 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    *&v107[16] = 1;
                    v106 = 0x100000001;
                    *v105 = 1;
                    *v107 = 0x100000001;
                    *&v107[8] = 0x100000001;
                    v10 = 1;
                  }

                  else
                  {
                    v47 = [(SFCommandRowCardSection *)self image];
                    *&v112[12] = v47 != 0;
                    v78 = v47;
                    if (!v47 || (-[SFCommandRowCardSection image](self, "image"), v48 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection image](v5, "image"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v48, [v48 isEqual:?]))
                    {
                      v77 = [(SFCommandRowCardSection *)self toggledImage];
                      v76 = [(SFCommandRowCardSection *)v5 toggledImage];
                      if ((v77 != 0) == (v76 == 0))
                      {
                        v12 = 0;
                        *&v112[4] = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        *v112 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        *&v107[16] = 1;
                        v106 = 0x100000001;
                        *v105 = 1;
                        *v107 = 0x100000001;
                        *&v107[8] = 0x100000001;
                        v10 = 1;
                        v11 = 1;
                        *&v105[8] = 1;
                      }

                      else
                      {
                        v49 = [(SFCommandRowCardSection *)self toggledImage];
                        *&v112[8] = v49 != 0;
                        v73 = v49;
                        if (!v49 || (-[SFCommandRowCardSection toggledImage](self, "toggledImage"), v50 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection toggledImage](v5, "toggledImage"), v69 = objc_claimAutoreleasedReturnValue(), v70 = v50, [v50 isEqual:?]))
                        {
                          v72 = [(SFCommandRowCardSection *)self title];
                          v71 = [(SFCommandRowCardSection *)v5 title];
                          if ((v72 != 0) == (v71 == 0))
                          {
                            v13 = 0;
                            *v112 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            *&v107[16] = 1;
                            v106 = 0x100000001;
                            *v105 = 0x100000001;
                            *v107 = 0x100000001;
                            *&v107[8] = 0x100000001;
                            v10 = 1;
                            v11 = 1;
                            *&v105[8] = 1;
                            v12 = 1;
                          }

                          else
                          {
                            v51 = [(SFCommandRowCardSection *)self title];
                            *&v112[4] = v51 != 0;
                            v68 = v51;
                            if (!v51 || (-[SFCommandRowCardSection title](self, "title"), v52 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection title](v5, "title"), v64 = objc_claimAutoreleasedReturnValue(), v65 = v52, [v52 isEqual:?]))
                            {
                              v67 = [(SFCommandRowCardSection *)self toggledTitle];
                              v66 = [(SFCommandRowCardSection *)v5 toggledTitle];
                              if ((v67 != 0) == (v66 == 0))
                              {
                                v15 = 0;
                                *v112 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                *&v107[16] = 1;
                                v106 = 0x100000001;
                                *v105 = 0x100000001;
                                *v107 = 0x100000001;
                                *&v107[8] = 0x100000001;
                                v10 = 1;
                                v11 = 1;
                                *&v105[8] = 1;
                                v12 = 1;
                                v13 = 1;
                                v14 = 1;
                              }

                              else
                              {
                                v53 = [(SFCommandRowCardSection *)self toggledTitle];
                                *v112 = v53 != 0;
                                v63 = v53;
                                if (!v53 || (-[SFCommandRowCardSection toggledTitle](self, "toggledTitle"), v54 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection toggledTitle](v5, "toggledTitle"), v59 = objc_claimAutoreleasedReturnValue(), v60 = v54, [v54 isEqual:?]))
                                {
                                  v62 = [(SFCommandRowCardSection *)self subtitle];
                                  v61 = [(SFCommandRowCardSection *)v5 subtitle];
                                  if ((v62 != 0) == (v61 == 0))
                                  {
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    *&v107[16] = 1;
                                    v106 = 0x100000001;
                                    *v105 = 0x100000001;
                                    *v107 = 0x100000001;
                                    *&v107[8] = 0x100000001;
                                    v10 = 1;
                                    v11 = 1;
                                    *&v105[8] = 1;
                                    v12 = 1;
                                    v13 = 1;
                                    v14 = 1;
                                    v15 = 1;
                                    v16 = 1;
                                  }

                                  else
                                  {
                                    v58 = [(SFCommandRowCardSection *)self subtitle];
                                    if (v58)
                                    {
                                      v55 = [(SFCommandRowCardSection *)self subtitle];
                                      v56 = [(SFCommandRowCardSection *)v5 subtitle];
                                      v57 = v55;
                                      v19 = [v55 isEqual:v56];
                                      v6 = v56;
                                      v18 = 1;
                                      *&v107[16] = 1;
                                      v106 = 0x100000001;
                                      *v105 = 0x100000001;
                                      *v107 = 0x100000001;
                                      *&v107[8] = 0x100000001;
                                      v10 = 1;
                                      v11 = 1;
                                      *&v105[8] = 1;
                                      v12 = 1;
                                      v13 = 1;
                                      v14 = 1;
                                      v15 = 1;
                                      v16 = 1;
                                      v17 = 1;
                                    }

                                    else
                                    {
                                      v58 = 0;
                                      v18 = 0;
                                      *&v107[16] = 1;
                                      v106 = 0x100000001;
                                      *v105 = 0x100000001;
                                      *v107 = 0x100000001;
                                      *&v107[8] = 0x100000001;
                                      v10 = 1;
                                      v11 = 1;
                                      *&v105[8] = 1;
                                      v12 = 1;
                                      v13 = 1;
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
                                  *&v107[16] = 1;
                                  v106 = 0x100000001;
                                  *v105 = 0x100000001;
                                  *v107 = 0x100000001;
                                  *&v107[8] = 0x100000001;
                                  v10 = 1;
                                  v11 = 1;
                                  *&v105[8] = 1;
                                  v12 = 1;
                                  v13 = 1;
                                  v14 = 1;
                                  v15 = 1;
                                  *v112 = 1;
                                }
                              }
                            }

                            else
                            {
                              v14 = 0;
                              v15 = 0;
                              *v112 = 0x100000000;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              *&v107[16] = 1;
                              v106 = 0x100000001;
                              *v105 = 0x100000001;
                              *v107 = 0x100000001;
                              *&v107[8] = 0x100000001;
                              v10 = 1;
                              v11 = 1;
                              *&v105[8] = 1;
                              v12 = 1;
                              v13 = 1;
                            }
                          }
                        }

                        else
                        {
                          v13 = 0;
                          *v112 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          *&v107[16] = 1;
                          v106 = 0x100000001;
                          *v105 = 1;
                          *v107 = 0x100000001;
                          *&v107[8] = 0x100000001;
                          v10 = 1;
                          v11 = 1;
                          *&v105[8] = 1;
                          v12 = 1;
                          *&v112[8] = 1;
                        }
                      }
                    }

                    else
                    {
                      *&v105[4] = 0;
                      v12 = 0;
                      *&v112[4] = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      *v112 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      *&v107[16] = 1;
                      v106 = 0x100000001;
                      *v105 = 1;
                      *v107 = 0x100000001;
                      *&v107[8] = 0x100000001;
                      v10 = 1;
                      v11 = 1;
                      *&v112[12] = 1;
                    }
                  }
                }

                else
                {
                  v10 = 0;
                  v11 = 0;
                  *&v112[8] = 0;
                  *&v105[4] = 0;
                  v12 = 0;
                  v13 = 0;
                  *v112 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  *&v107[16] = 1;
                  v106 = 0x100000001;
                  *v105 = 1;
                  *v107 = 0x100000001;
                  *&v107[8] = 0x100000001;
                  *&v112[16] = 1;
                }
              }
            }

            else
            {
              v10 = 0;
              v11 = 0;
              *&v105[4] = 0;
              v12 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              memset(v112, 0, sizeof(v112));
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              *&v107[16] = 1;
              *&v107[8] = 0x100000000;
              v106 = 1;
              *v105 = 1;
              *v107 = 0x100000001;
            }
          }

          else
          {
            v10 = 0;
            v11 = 0;
            *&v105[4] = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            memset(v112, 0, sizeof(v112));
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *&v107[16] = 0x100000001;
            *&v107[8] = 0x100000000;
            v106 = 1;
            *v105 = 1;
            *v107 = 0x100000001;
          }
        }
      }

      else
      {
        *v107 = 0;
        v10 = 0;
        v11 = 0;
        *&v105[4] = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        memset(v112, 0, sizeof(v112));
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v107[16] = 1;
        *&v107[8] = 0x100000000;
        v106 = 1;
        *v105 = 1;
      }
    }

    else
    {
      *v107 = 0;
      v10 = 0;
      v11 = 0;
      *&v105[4] = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v112, 0, sizeof(v112));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v107[16] = 1;
      *&v107[8] = 0x100000000;
      v106 = 1;
      *v105 = 1;
      *&v107[24] = 1;
    }
  }

LABEL_27:
  if (v18)
  {
    v103 = v4;
    v30 = v19;
    v31 = v14;
    v32 = v10;
    v33 = v5;
    v34 = v16;
    v35 = v13;
    v36 = v12;
    v37 = v15;
    v38 = v11;
    v39 = v17;

    v40 = v39;
    v11 = v38;
    v15 = v37;
    v12 = v36;
    v13 = v35;
    v16 = v34;
    v5 = v33;
    v10 = v32;
    v14 = v31;
    v19 = v30;
    v4 = v103;
    if (!v40)
    {
LABEL_29:
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if (!v17)
  {
    goto LABEL_29;
  }

  if (v16)
  {
LABEL_30:
  }

LABEL_31:
  if (!*v112)
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
  if (*&v112[4])
  {
  }

  if (v13)
  {
  }

  if (*&v105[4])
  {
  }

  if (*&v112[8])
  {
  }

  if (v12)
  {
  }

  if (*&v105[8])
  {
  }

  if (*&v112[12])
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  if (*&v112[16])
  {
  }

  if (*&v107[8])
  {
  }

  if (HIDWORD(v106))
  {
  }

  if (*&v107[20])
  {
  }

  if (*&v107[4])
  {
  }

  if (*v107)
  {
  }

  if (*&v107[24])
  {
  }

  if (*v105)
  {
  }

  if (v106)
  {
  }

  if (*&v107[28])
  {
  }

  if (*&v107[12])
  {
  }

  if (*&v107[16])
  {
  }

  if (*&v107[32])
  {
  }

  if (v109 != v108)
  {
  }

LABEL_82:
  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26.receiver = self;
  v26.super_class = SFCommandRowCardSection;
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
  v11 = [(SFCommandRowCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFCommandRowCardSection *)self image];
  v16 = [v15 copy];
  [v4 setImage:v16];

  v17 = [(SFCommandRowCardSection *)self toggledImage];
  v18 = [v17 copy];
  [v4 setToggledImage:v18];

  v19 = [(SFCommandRowCardSection *)self title];
  v20 = [v19 copy];
  [v4 setTitle:v20];

  v21 = [(SFCommandRowCardSection *)self toggledTitle];
  v22 = [v21 copy];
  [v4 setToggledTitle:v22];

  v23 = [(SFCommandRowCardSection *)self subtitle];
  v24 = [v23 copy];
  [v4 setSubtitle:v24];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCommandRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBCommandRowCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCommandRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBCommandRowCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFCommandRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFCommandRowCardSection)initWithCoder:(id)a3
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
    [(SFCommandRowCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 image];
    [(SFCommandRowCardSection *)v5 setImage:v14];

    v15 = [(SFCardSection *)v8 toggledImage];
    [(SFCommandRowCardSection *)v5 setToggledImage:v15];

    v16 = [(SFCardSection *)v8 title];
    [(SFCommandRowCardSection *)v5 setTitle:v16];

    v17 = [(SFCardSection *)v8 toggledTitle];
    [(SFCommandRowCardSection *)v5 setToggledTitle:v17];

    v18 = [(SFCardSection *)v8 subtitle];
    [(SFCommandRowCardSection *)v5 setSubtitle:v18];

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

- (SFCommandRowCardSection)initWithProtobuf:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = SFCommandRowCardSection;
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
      [(SFCommandRowCardSection *)v5 setType:v19];
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

    v24 = [v4 image];

    if (v24)
    {
      v25 = [SFImage alloc];
      v26 = [v4 image];
      v27 = [(SFImage *)v25 initWithProtobuf:v26];
      [(SFCommandRowCardSection *)v5 setImage:v27];
    }

    v28 = [v4 toggledImage];

    if (v28)
    {
      v29 = [SFImage alloc];
      v30 = [v4 toggledImage];
      v31 = [(SFImage *)v29 initWithProtobuf:v30];
      [(SFCommandRowCardSection *)v5 setToggledImage:v31];
    }

    v32 = [v4 title];

    if (v32)
    {
      v33 = [SFRichText alloc];
      v34 = [v4 title];
      v35 = [(SFRichText *)v33 initWithProtobuf:v34];
      [(SFCommandRowCardSection *)v5 setTitle:v35];
    }

    v36 = [v4 toggledTitle];

    if (v36)
    {
      v37 = [SFRichText alloc];
      v38 = [v4 toggledTitle];
      v39 = [(SFRichText *)v37 initWithProtobuf:v38];
      [(SFCommandRowCardSection *)v5 setToggledTitle:v39];
    }

    v40 = [v4 subtitle];

    if (v40)
    {
      v41 = [SFRichText alloc];
      v42 = [v4 subtitle];
      v43 = [(SFRichText *)v41 initWithProtobuf:v42];
      [(SFCommandRowCardSection *)v5 setSubtitle:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

@end