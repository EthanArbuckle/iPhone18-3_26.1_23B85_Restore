@interface SFCommandRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCommandRowCardSection)initWithCoder:(id)coder;
- (SFCommandRowCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCommandRowCardSection

- (unint64_t)hash
{
  v29.receiver = self;
  v29.super_class = SFCommandRowCardSection;
  v3 = [(SFCardSection *)&v29 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [punchoutPickerDismissText hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFCommandRowCardSection *)self type];
  v12 = hasBottomPadding ^ [type hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [backgroundColor hash];
  image = [(SFCommandRowCardSection *)self image];
  v17 = v9 ^ v15 ^ [image hash];
  toggledImage = [(SFCommandRowCardSection *)self toggledImage];
  v19 = [toggledImage hash];
  title = [(SFCommandRowCardSection *)self title];
  v21 = v19 ^ [title hash];
  toggledTitle = [(SFCommandRowCardSection *)self toggledTitle];
  v23 = v21 ^ [toggledTitle hash];
  subtitle = [(SFCommandRowCardSection *)self subtitle];
  v25 = v23 ^ [subtitle hash];

  return v17 ^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_82;
  }

  if (![(SFCommandRowCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v113.receiver = self, v113.super_class = SFCommandRowCardSection, ![(SFCardSection *)&v113 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_82;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v108 = punchoutOptions2 == 0;
  v109 = punchoutOptions != 0;
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

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v104 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    punchoutOptions5 = [(SFCardSection *)v5 punchoutOptions];
    v100 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
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

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v107[32] = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
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

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v98 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v95 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
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

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
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
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v24 = punchoutPickerDismissText3 != 0;
    v93 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v25 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v91 = objc_claimAutoreleasedReturnValue(), v92 = v25, [v25 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      *&v107[24] = v24;
      if (canBeHidden == [(SFCardSection *)v5 canBeHidden]&& (v27 = [(SFCardSection *)self hasTopPadding], v27 == [(SFCardSection *)v5 hasTopPadding]) && (v28 = [(SFCardSection *)self hasBottomPadding], v28 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        type = [(SFCommandRowCardSection *)self type];
        type2 = [(SFCommandRowCardSection *)v5 type];
        if ((type != 0) == (type2 == 0))
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
          type3 = [(SFCommandRowCardSection *)self type];
          v42 = type3 != 0;
          v88 = type3;
          if (!type3 || (-[SFCommandRowCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection type](v5, "type"), v86 = objc_claimAutoreleasedReturnValue(), v87 = v43, [v43 isEqual:?]))
          {
            *&v107[20] = v42;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
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
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                *&v112[16] = backgroundColor3 != 0;
                v83 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v46, [v46 isEqual:?]))
                {
                  image = [(SFCommandRowCardSection *)self image];
                  image2 = [(SFCommandRowCardSection *)v5 image];
                  if ((image != 0) == (image2 == 0))
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
                    image3 = [(SFCommandRowCardSection *)self image];
                    *&v112[12] = image3 != 0;
                    v78 = image3;
                    if (!image3 || (-[SFCommandRowCardSection image](self, "image"), v48 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection image](v5, "image"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v48, [v48 isEqual:?]))
                    {
                      toggledImage = [(SFCommandRowCardSection *)self toggledImage];
                      toggledImage2 = [(SFCommandRowCardSection *)v5 toggledImage];
                      if ((toggledImage != 0) == (toggledImage2 == 0))
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
                        toggledImage3 = [(SFCommandRowCardSection *)self toggledImage];
                        *&v112[8] = toggledImage3 != 0;
                        v73 = toggledImage3;
                        if (!toggledImage3 || (-[SFCommandRowCardSection toggledImage](self, "toggledImage"), v50 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection toggledImage](v5, "toggledImage"), v69 = objc_claimAutoreleasedReturnValue(), v70 = v50, [v50 isEqual:?]))
                        {
                          title = [(SFCommandRowCardSection *)self title];
                          title2 = [(SFCommandRowCardSection *)v5 title];
                          if ((title != 0) == (title2 == 0))
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
                            title3 = [(SFCommandRowCardSection *)self title];
                            *&v112[4] = title3 != 0;
                            v68 = title3;
                            if (!title3 || (-[SFCommandRowCardSection title](self, "title"), v52 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection title](v5, "title"), v64 = objc_claimAutoreleasedReturnValue(), v65 = v52, [v52 isEqual:?]))
                            {
                              toggledTitle = [(SFCommandRowCardSection *)self toggledTitle];
                              toggledTitle2 = [(SFCommandRowCardSection *)v5 toggledTitle];
                              if ((toggledTitle != 0) == (toggledTitle2 == 0))
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
                                toggledTitle3 = [(SFCommandRowCardSection *)self toggledTitle];
                                *v112 = toggledTitle3 != 0;
                                v63 = toggledTitle3;
                                if (!toggledTitle3 || (-[SFCommandRowCardSection toggledTitle](self, "toggledTitle"), v54 = objc_claimAutoreleasedReturnValue(), -[SFCommandRowCardSection toggledTitle](v5, "toggledTitle"), v59 = objc_claimAutoreleasedReturnValue(), v60 = v54, [v54 isEqual:?]))
                                {
                                  subtitle = [(SFCommandRowCardSection *)self subtitle];
                                  subtitle2 = [(SFCommandRowCardSection *)v5 subtitle];
                                  if ((subtitle != 0) == (subtitle2 == 0))
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
                                    subtitle3 = [(SFCommandRowCardSection *)self subtitle];
                                    if (subtitle3)
                                    {
                                      subtitle4 = [(SFCommandRowCardSection *)self subtitle];
                                      subtitle5 = [(SFCommandRowCardSection *)v5 subtitle];
                                      v57 = subtitle4;
                                      v19 = [subtitle4 isEqual:subtitle5];
                                      v6 = subtitle5;
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
                                      subtitle3 = 0;
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
    v103 = equalCopy;
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
    equalCopy = v103;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v26.receiver = self;
  v26.super_class = SFCommandRowCardSection;
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
  type = [(SFCommandRowCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  image = [(SFCommandRowCardSection *)self image];
  v16 = [image copy];
  [v4 setImage:v16];

  toggledImage = [(SFCommandRowCardSection *)self toggledImage];
  v18 = [toggledImage copy];
  [v4 setToggledImage:v18];

  title = [(SFCommandRowCardSection *)self title];
  v20 = [title copy];
  [v4 setTitle:v20];

  toggledTitle = [(SFCommandRowCardSection *)self toggledTitle];
  v22 = [toggledTitle copy];
  [v4 setToggledTitle:v22];

  subtitle = [(SFCommandRowCardSection *)self subtitle];
  v24 = [subtitle copy];
  [v4 setSubtitle:v24];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCommandRowCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBCommandRowCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCommandRowCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCommandRowCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFCommandRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFCommandRowCardSection)initWithCoder:(id)coder
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
    [(SFCommandRowCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    image = [(SFCardSection *)v8 image];
    [(SFCommandRowCardSection *)v5 setImage:image];

    toggledImage = [(SFCardSection *)v8 toggledImage];
    [(SFCommandRowCardSection *)v5 setToggledImage:toggledImage];

    title = [(SFCardSection *)v8 title];
    [(SFCommandRowCardSection *)v5 setTitle:title];

    toggledTitle = [(SFCardSection *)v8 toggledTitle];
    [(SFCommandRowCardSection *)v5 setToggledTitle:toggledTitle];

    subtitle = [(SFCardSection *)v8 subtitle];
    [(SFCommandRowCardSection *)v5 setSubtitle:subtitle];

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

- (SFCommandRowCardSection)initWithProtobuf:(id)protobuf
{
  v53 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v51.receiver = self;
  v51.super_class = SFCommandRowCardSection;
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
      [(SFCommandRowCardSection *)v5 setType:type2];
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

    image = [protobufCopy image];

    if (image)
    {
      v25 = [SFImage alloc];
      image2 = [protobufCopy image];
      v27 = [(SFImage *)v25 initWithProtobuf:image2];
      [(SFCommandRowCardSection *)v5 setImage:v27];
    }

    toggledImage = [protobufCopy toggledImage];

    if (toggledImage)
    {
      v29 = [SFImage alloc];
      toggledImage2 = [protobufCopy toggledImage];
      v31 = [(SFImage *)v29 initWithProtobuf:toggledImage2];
      [(SFCommandRowCardSection *)v5 setToggledImage:v31];
    }

    title = [protobufCopy title];

    if (title)
    {
      v33 = [SFRichText alloc];
      title2 = [protobufCopy title];
      v35 = [(SFRichText *)v33 initWithProtobuf:title2];
      [(SFCommandRowCardSection *)v5 setTitle:v35];
    }

    toggledTitle = [protobufCopy toggledTitle];

    if (toggledTitle)
    {
      v37 = [SFRichText alloc];
      toggledTitle2 = [protobufCopy toggledTitle];
      v39 = [(SFRichText *)v37 initWithProtobuf:toggledTitle2];
      [(SFCommandRowCardSection *)v5 setToggledTitle:v39];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      v41 = [SFRichText alloc];
      subtitle2 = [protobufCopy subtitle];
      v43 = [(SFRichText *)v41 initWithProtobuf:subtitle2];
      [(SFCommandRowCardSection *)v5 setSubtitle:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

@end