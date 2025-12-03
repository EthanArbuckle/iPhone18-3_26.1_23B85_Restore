@interface SFMapCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMapCardSection)initWithCoder:(id)coder;
- (SFMapCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMapCardSection

- (unint64_t)hash
{
  v34.receiver = self;
  v34.super_class = SFMapCardSection;
  v3 = [(SFCardSection *)&v34 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [punchoutPickerDismissText hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFMapCardSection *)self type];
  v11 = hasBottomPadding ^ [type hash];
  v12 = v11 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = v12 ^ [backgroundColor hash];
  location = [(SFMapCardSection *)self location];
  v16 = v8 ^ v14 ^ [location hash];
  pinColor = [(SFMapCardSection *)self pinColor];
  v18 = [pinColor hash];
  footnoteLabel = [(SFMapCardSection *)self footnoteLabel];
  v20 = v18 ^ [footnoteLabel hash];
  footnote = [(SFMapCardSection *)self footnote];
  v22 = v20 ^ [footnote hash];
  v23 = v22 ^ [(SFMapCardSection *)self interactive];
  v24 = v23 ^ [(SFMapCardSection *)self sizeFormat];
  boundingMapRegion = [(SFMapCardSection *)self boundingMapRegion];
  v26 = v24 ^ [boundingMapRegion hash];
  v27 = v16 ^ v26 ^ [(SFMapCardSection *)self pinBehavior];
  pins = [(SFMapCardSection *)self pins];
  v29 = [pins hash];

  return v27 ^ v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_75;
  }

  if (![(SFMapCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v123.receiver = self, v123.super_class = SFMapCardSection, ![(SFCardSection *)&v123 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_75;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v118 = punchoutOptions2 == 0;
  v119 = punchoutOptions != 0;
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

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v114 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v109 = v110 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
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

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v117[4]) = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
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

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v108 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v105 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
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

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
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
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = punchoutPickerDismissText3 != 0;
    v103 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v37, [v37 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      HIDWORD(v117[3]) = v36;
      if (canBeHidden == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        type = [(SFMapCardSection *)self type];
        type2 = [(SFMapCardSection *)v5 type];
        if ((type != 0) == (type2 == 0))
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
          type3 = [(SFMapCardSection *)self type];
          v42 = type3 != 0;
          v98 = type3;
          if (!type3 || (-[SFMapCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection type](v5, "type"), v96 = objc_claimAutoreleasedReturnValue(), v97 = v43, [v43 isEqual:?]))
          {
            LODWORD(v117[3]) = v42;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
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
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                HIDWORD(v122[2]) = backgroundColor3 != 0;
                v93 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v46, [v46 isEqual:?]))
                {
                  location = [(SFMapCardSection *)self location];
                  location2 = [(SFMapCardSection *)v5 location];
                  if ((location != 0) == (location2 == 0))
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
                    location3 = [(SFMapCardSection *)self location];
                    LODWORD(v122[2]) = location3 != 0;
                    v88 = location3;
                    if (!location3 || (-[SFMapCardSection location](self, "location"), v48 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection location](v5, "location"), v84 = objc_claimAutoreleasedReturnValue(), v85 = v48, [v48 isEqual:?]))
                    {
                      pinColor = [(SFMapCardSection *)self pinColor];
                      pinColor2 = [(SFMapCardSection *)v5 pinColor];
                      if ((pinColor != 0) == (pinColor2 == 0))
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
                        pinColor3 = [(SFMapCardSection *)self pinColor];
                        HIDWORD(v122[1]) = pinColor3 != 0;
                        v83 = pinColor3;
                        if (!pinColor3 || (-[SFMapCardSection pinColor](self, "pinColor"), v50 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection pinColor](v5, "pinColor"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v50, [v50 isEqual:?]))
                        {
                          footnoteLabel = [(SFMapCardSection *)self footnoteLabel];
                          footnoteLabel2 = [(SFMapCardSection *)v5 footnoteLabel];
                          if ((footnoteLabel != 0) == (footnoteLabel2 == 0))
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
                            footnoteLabel3 = [(SFMapCardSection *)self footnoteLabel];
                            LODWORD(v122[1]) = footnoteLabel3 != 0;
                            v78 = footnoteLabel3;
                            if (!footnoteLabel3 || (-[SFMapCardSection footnoteLabel](self, "footnoteLabel"), v52 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection footnoteLabel](v5, "footnoteLabel"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v52, [v52 isEqual:?]))
                            {
                              footnote = [(SFMapCardSection *)self footnote];
                              footnote2 = [(SFMapCardSection *)v5 footnote];
                              if ((footnote != 0) == (footnote2 == 0))
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
                                footnote3 = [(SFMapCardSection *)self footnote];
                                HIDWORD(v122[0]) = footnote3 != 0;
                                v73 = footnote3;
                                if (!footnote3 || (-[SFMapCardSection footnote](self, "footnote"), v54 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection footnote](v5, "footnote"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v54, [v54 isEqual:?]))
                                {
                                  interactive = [(SFMapCardSection *)self interactive];
                                  if (interactive == [(SFMapCardSection *)v5 interactive]&& (v56 = [(SFMapCardSection *)self sizeFormat], v56 == [(SFMapCardSection *)v5 sizeFormat]))
                                  {
                                    boundingMapRegion = [(SFMapCardSection *)self boundingMapRegion];
                                    boundingMapRegion2 = [(SFMapCardSection *)v5 boundingMapRegion];
                                    if ((boundingMapRegion != 0) == (boundingMapRegion2 == 0))
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
                                      boundingMapRegion3 = [(SFMapCardSection *)self boundingMapRegion];
                                      LODWORD(v122[0]) = boundingMapRegion3 != 0;
                                      v68 = boundingMapRegion3;
                                      if (!boundingMapRegion3 || (-[SFMapCardSection boundingMapRegion](self, "boundingMapRegion"), v58 = objc_claimAutoreleasedReturnValue(), -[SFMapCardSection boundingMapRegion](v5, "boundingMapRegion"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v58, [v58 isEqual:?]))
                                      {
                                        pinBehavior = [(SFMapCardSection *)self pinBehavior];
                                        if (pinBehavior == [(SFMapCardSection *)v5 pinBehavior])
                                        {
                                          pins = [(SFMapCardSection *)self pins];
                                          pins2 = [(SFMapCardSection *)v5 pins];
                                          if ((pins != 0) == (pins2 == 0))
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
                                            pins3 = [(SFMapCardSection *)self pins];
                                            if (pins3)
                                            {
                                              pins4 = [(SFMapCardSection *)self pins];
                                              pins5 = [(SFMapCardSection *)v5 pins];
                                              v62 = pins4;
                                              v19 = [pins4 isEqual:pins5];
                                              v6 = pins5;
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
                                              pins3 = 0;
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
    v113 = equalCopy;
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
    equalCopy = v113;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = SFMapCardSection;
  v4 = [(SFCardSection *)&v28 copyWithZone:zone];
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
  type = [(SFMapCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  location = [(SFMapCardSection *)self location];
  v16 = [location copy];
  [v4 setLocation:v16];

  pinColor = [(SFMapCardSection *)self pinColor];
  v18 = [pinColor copy];
  [v4 setPinColor:v18];

  footnoteLabel = [(SFMapCardSection *)self footnoteLabel];
  v20 = [footnoteLabel copy];
  [v4 setFootnoteLabel:v20];

  footnote = [(SFMapCardSection *)self footnote];
  v22 = [footnote copy];
  [v4 setFootnote:v22];

  [v4 setInteractive:{-[SFMapCardSection interactive](self, "interactive")}];
  [v4 setSizeFormat:-[SFMapCardSection sizeFormat](self, "sizeFormat")];
  boundingMapRegion = [(SFMapCardSection *)self boundingMapRegion];
  v24 = [boundingMapRegion copy];
  [v4 setBoundingMapRegion:v24];

  [v4 setPinBehavior:{-[SFMapCardSection pinBehavior](self, "pinBehavior")}];
  pins = [(SFMapCardSection *)self pins];
  v26 = [pins copy];
  [v4 setPins:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMapCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBMapCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMapCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMapCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFMapCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFMapCardSection)initWithCoder:(id)coder
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
    [(SFMapCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    location = [(SFCardSection *)v8 location];
    [(SFMapCardSection *)v5 setLocation:location];

    pinColor = [(SFCardSection *)v8 pinColor];
    [(SFMapCardSection *)v5 setPinColor:pinColor];

    footnoteLabel = [(SFCardSection *)v8 footnoteLabel];
    [(SFMapCardSection *)v5 setFootnoteLabel:footnoteLabel];

    footnote = [(SFCardSection *)v8 footnote];
    [(SFMapCardSection *)v5 setFootnote:footnote];

    [(SFMapCardSection *)v5 setInteractive:[(SFCardSection *)v8 interactive]];
    [(SFMapCardSection *)v5 setSizeFormat:[(SFCardSection *)v8 sizeFormat]];
    boundingMapRegion = [(SFCardSection *)v8 boundingMapRegion];
    [(SFMapCardSection *)v5 setBoundingMapRegion:boundingMapRegion];

    [(SFMapCardSection *)v5 setPinBehavior:[(SFCardSection *)v8 pinBehavior]];
    pins = [(SFCardSection *)v8 pins];
    [(SFMapCardSection *)v5 setPins:pins];

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

- (SFMapCardSection)initWithProtobuf:(id)protobuf
{
  v62 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v59.receiver = self;
  v59.super_class = SFMapCardSection;
  v5 = [(SFCardSection *)&v59 init];
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

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v55 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
      [(SFMapCardSection *)v5 setType:type2];
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

    location = [protobufCopy location];

    if (location)
    {
      v25 = [SFLatLng alloc];
      location2 = [protobufCopy location];
      v27 = [(SFLatLng *)v25 initWithProtobuf:location2];
      [(SFMapCardSection *)v5 setLocation:v27];
    }

    pinColor = [protobufCopy pinColor];

    if (pinColor)
    {
      v29 = [SFColor alloc];
      pinColor2 = [protobufCopy pinColor];
      v31 = [(SFColor *)v29 initWithProtobuf:pinColor2];
      [(SFMapCardSection *)v5 setPinColor:v31];
    }

    footnoteLabel = [protobufCopy footnoteLabel];

    if (footnoteLabel)
    {
      footnoteLabel2 = [protobufCopy footnoteLabel];
      [(SFMapCardSection *)v5 setFootnoteLabel:footnoteLabel2];
    }

    footnote = [protobufCopy footnote];

    if (footnote)
    {
      footnote2 = [protobufCopy footnote];
      [(SFMapCardSection *)v5 setFootnote:footnote2];
    }

    if ([protobufCopy interactive])
    {
      -[SFMapCardSection setInteractive:](v5, "setInteractive:", [protobufCopy interactive]);
    }

    if ([protobufCopy sizeFormat])
    {
      -[SFMapCardSection setSizeFormat:](v5, "setSizeFormat:", [protobufCopy sizeFormat]);
    }

    boundingMapRegion = [protobufCopy boundingMapRegion];

    if (boundingMapRegion)
    {
      v37 = [SFMapRegion alloc];
      boundingMapRegion2 = [protobufCopy boundingMapRegion];
      v39 = [(SFMapRegion *)v37 initWithProtobuf:boundingMapRegion2];
      [(SFMapCardSection *)v5 setBoundingMapRegion:v39];
    }

    if ([protobufCopy pinBehavior])
    {
      -[SFMapCardSection setPinBehavior:](v5, "setPinBehavior:", [protobufCopy pinBehavior]);
    }

    pins = [protobufCopy pins];
    if (pins)
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
    pins2 = [protobufCopy pins];
    v43 = [pins2 countByEnumeratingWithState:&v51 objects:v60 count:16];
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
            objc_enumerationMutation(pins2);
          }

          v47 = [[SFPin alloc] initWithProtobuf:*(*(&v51 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [pins2 countByEnumeratingWithState:&v51 objects:v60 count:16];
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