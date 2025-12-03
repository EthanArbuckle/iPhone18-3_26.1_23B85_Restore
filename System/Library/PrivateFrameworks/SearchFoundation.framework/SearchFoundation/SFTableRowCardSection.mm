@interface SFTableRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTableRowCardSection)initWithCoder:(id)coder;
- (SFTableRowCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTableRowCardSection

- (unint64_t)hash
{
  v33.receiver = self;
  v33.super_class = SFTableRowCardSection;
  v3 = [(SFCardSection *)&v33 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [punchoutPickerDismissText hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFTableRowCardSection *)self type];
  v11 = hasBottomPadding ^ [type hash];
  v12 = v11 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = v12 ^ [backgroundColor hash];
  richData = [(SFTableRowCardSection *)self richData];
  v16 = v8 ^ v14 ^ [richData hash];
  tableIdentifier = [(SFTableRowCardSection *)self tableIdentifier];
  v18 = [tableIdentifier hash];
  alignmentSchema = [(SFTableRowCardSection *)self alignmentSchema];
  v20 = v18 ^ [alignmentSchema hash];
  data = [(SFTableRowCardSection *)self data];
  v22 = v20 ^ [data hash];
  v23 = v22 ^ [(SFTableRowCardSection *)self isSubHeader];
  tabGroupIdentifier = [(SFTableRowCardSection *)self tabGroupIdentifier];
  v25 = v23 ^ [tabGroupIdentifier hash];
  v26 = v25 ^ [(SFTableRowCardSection *)self reducedRowHeight];
  v27 = v16 ^ v26 ^ [(SFTableRowCardSection *)self verticalAlign];
  alignRowsToHeader = [(SFTableRowCardSection *)self alignRowsToHeader];

  return v27 ^ alignRowsToHeader;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
    goto LABEL_82;
  }

  if (![(SFTableRowCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v116.receiver = self, v116.super_class = SFTableRowCardSection, ![(SFCardSection *)&v116 isEqual:equalCopy]))
  {
    LOBYTE(self) = 0;
    goto LABEL_82;
  }

  selfCopy2 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)selfCopy2 punchoutOptions];
  v111 = punchoutOptions2 == 0;
  v112 = punchoutOptions != 0;
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

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v108 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    punchoutOptions5 = [(SFCardSection *)selfCopy2 punchoutOptions];
    v103 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
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

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)selfCopy2 punchoutPickerTitle];
  HIDWORD(v110[4]) = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
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

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v20 = punchoutPickerTitle3 != 0;
  v101 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)selfCopy2 punchoutPickerTitle];
    v98 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
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

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)selfCopy2 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
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
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v23 = punchoutPickerDismissText3 != 0;
    v96 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v24 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](selfCopy2, "punchoutPickerDismissText"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v24, [v24 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      HIDWORD(v110[3]) = v23;
      if (canBeHidden == [(SFCardSection *)selfCopy2 canBeHidden]&& (v26 = [(SFCardSection *)self hasTopPadding], v26 == [(SFCardSection *)selfCopy2 hasTopPadding]) && (v27 = [(SFCardSection *)self hasBottomPadding], v27 == [(SFCardSection *)selfCopy2 hasBottomPadding]))
      {
        type = [(SFTableRowCardSection *)self type];
        type2 = [(SFTableRowCardSection *)selfCopy2 type];
        if ((type != 0) == (type2 == 0))
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
          type3 = [(SFTableRowCardSection *)self type];
          v40 = type3 != 0;
          v91 = type3;
          if (!type3 || (-[SFTableRowCardSection type](self, "type"), v41 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection type](selfCopy2, "type"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v41, [v41 isEqual:?]))
          {
            LODWORD(v110[3]) = v40;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)selfCopy2 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)selfCopy2 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
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
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                *&v115[16] = backgroundColor3 != 0;
                v86 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v44 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](selfCopy2, "backgroundColor"), v82 = objc_claimAutoreleasedReturnValue(), v83 = v44, [v44 isEqual:?]))
                {
                  richData = [(SFTableRowCardSection *)self richData];
                  richData2 = [(SFTableRowCardSection *)selfCopy2 richData];
                  if ((richData != 0) == (richData2 == 0))
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
                    richData3 = [(SFTableRowCardSection *)self richData];
                    *&v115[12] = richData3 != 0;
                    v81 = richData3;
                    if (!richData3 || (-[SFTableRowCardSection richData](self, "richData"), v46 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection richData](selfCopy2, "richData"), v77 = objc_claimAutoreleasedReturnValue(), v78 = v46, [v46 isEqual:?]))
                    {
                      tableIdentifier = [(SFTableRowCardSection *)self tableIdentifier];
                      tableIdentifier2 = [(SFTableRowCardSection *)selfCopy2 tableIdentifier];
                      if ((tableIdentifier != 0) == (tableIdentifier2 == 0))
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
                        tableIdentifier3 = [(SFTableRowCardSection *)self tableIdentifier];
                        *&v115[8] = tableIdentifier3 != 0;
                        v76 = tableIdentifier3;
                        if (!tableIdentifier3 || (-[SFTableRowCardSection tableIdentifier](self, "tableIdentifier"), v48 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection tableIdentifier](selfCopy2, "tableIdentifier"), v72 = objc_claimAutoreleasedReturnValue(), v73 = v48, [v48 isEqual:?]))
                        {
                          alignmentSchema = [(SFTableRowCardSection *)self alignmentSchema];
                          alignmentSchema2 = [(SFTableRowCardSection *)selfCopy2 alignmentSchema];
                          if ((alignmentSchema != 0) == (alignmentSchema2 == 0))
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
                            alignmentSchema3 = [(SFTableRowCardSection *)self alignmentSchema];
                            *&v115[4] = alignmentSchema3 != 0;
                            v71 = alignmentSchema3;
                            if (!alignmentSchema3 || (-[SFTableRowCardSection alignmentSchema](self, "alignmentSchema"), v50 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection alignmentSchema](selfCopy2, "alignmentSchema"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v50, [v50 isEqual:?]))
                            {
                              data = [(SFTableRowCardSection *)self data];
                              data2 = [(SFTableRowCardSection *)selfCopy2 data];
                              if ((data != 0) == (data2 == 0))
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
                                data3 = [(SFTableRowCardSection *)self data];
                                *v115 = data3 != 0;
                                v66 = data3;
                                if (!data3 || (-[SFTableRowCardSection data](self, "data"), v52 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection data](selfCopy2, "data"), v64 = objc_claimAutoreleasedReturnValue(), v65 = v52, [v52 isEqual:?]))
                                {
                                  isSubHeader = [(SFTableRowCardSection *)self isSubHeader];
                                  if (isSubHeader == [(SFTableRowCardSection *)selfCopy2 isSubHeader])
                                  {
                                    tabGroupIdentifier = [(SFTableRowCardSection *)self tabGroupIdentifier];
                                    tabGroupIdentifier2 = [(SFTableRowCardSection *)selfCopy2 tabGroupIdentifier];
                                    if ((tabGroupIdentifier != 0) == (tabGroupIdentifier2 == 0))
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
                                      tabGroupIdentifier3 = [(SFTableRowCardSection *)self tabGroupIdentifier];
                                      v107 = tabGroupIdentifier3 != 0;
                                      v61 = tabGroupIdentifier3;
                                      if (!tabGroupIdentifier3 || (-[SFTableRowCardSection tabGroupIdentifier](self, "tabGroupIdentifier"), v55 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection tabGroupIdentifier](selfCopy2, "tabGroupIdentifier"), v59 = objc_claimAutoreleasedReturnValue(), v60 = v55, [v55 isEqual:?]))
                                      {
                                        reducedRowHeight = [(SFTableRowCardSection *)self reducedRowHeight];
                                        if (reducedRowHeight == [(SFTableRowCardSection *)selfCopy2 reducedRowHeight]&& (v57 = [(SFTableRowCardSection *)self verticalAlign], v57 == [(SFTableRowCardSection *)selfCopy2 verticalAlign]))
                                        {
                                          alignRowsToHeader = [(SFTableRowCardSection *)self alignRowsToHeader];
                                          LODWORD(self) = alignRowsToHeader ^ [(SFTableRowCardSection *)selfCopy2 alignRowsToHeader]^ 1;
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
    v106 = equalCopy;
    selfCopy = self;
    self = selfCopy2;
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
    selfCopy2 = self;
    LOBYTE(self) = selfCopy;
    equalCopy = v106;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v26.receiver = self;
  v26.super_class = SFTableRowCardSection;
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
  type = [(SFTableRowCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  richData = [(SFTableRowCardSection *)self richData];
  v16 = [richData copy];
  [v4 setRichData:v16];

  tableIdentifier = [(SFTableRowCardSection *)self tableIdentifier];
  v18 = [tableIdentifier copy];
  [v4 setTableIdentifier:v18];

  alignmentSchema = [(SFTableRowCardSection *)self alignmentSchema];
  v20 = [alignmentSchema copy];
  [v4 setAlignmentSchema:v20];

  data = [(SFTableRowCardSection *)self data];
  v22 = [data copy];
  [v4 setData:v22];

  [v4 setIsSubHeader:{-[SFTableRowCardSection isSubHeader](self, "isSubHeader")}];
  tabGroupIdentifier = [(SFTableRowCardSection *)self tabGroupIdentifier];
  v24 = [tabGroupIdentifier copy];
  [v4 setTabGroupIdentifier:v24];

  [v4 setReducedRowHeight:{-[SFTableRowCardSection reducedRowHeight](self, "reducedRowHeight")}];
  [v4 setVerticalAlign:{-[SFTableRowCardSection verticalAlign](self, "verticalAlign")}];
  [v4 setAlignRowsToHeader:{-[SFTableRowCardSection alignRowsToHeader](self, "alignRowsToHeader")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTableRowCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBTableRowCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTableRowCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTableRowCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFTableRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFTableRowCardSection)initWithCoder:(id)coder
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
    [(SFTableRowCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    richData = [(SFCardSection *)v8 richData];
    [(SFTableRowCardSection *)v5 setRichData:richData];

    tableIdentifier = [(SFCardSection *)v8 tableIdentifier];
    [(SFTableRowCardSection *)v5 setTableIdentifier:tableIdentifier];

    alignmentSchema = [(SFCardSection *)v8 alignmentSchema];
    [(SFTableRowCardSection *)v5 setAlignmentSchema:alignmentSchema];

    data = [(SFCardSection *)v8 data];
    [(SFTableRowCardSection *)v5 setData:data];

    [(SFTableRowCardSection *)v5 setIsSubHeader:[(SFCardSection *)v8 isSubHeader]];
    tabGroupIdentifier = [(SFCardSection *)v8 tabGroupIdentifier];
    [(SFTableRowCardSection *)v5 setTabGroupIdentifier:tabGroupIdentifier];

    [(SFTableRowCardSection *)v5 setReducedRowHeight:[(SFCardSection *)v8 reducedRowHeight]];
    [(SFTableRowCardSection *)v5 setVerticalAlign:[(SFCardSection *)v8 verticalAlign]];
    [(SFTableRowCardSection *)v5 setAlignRowsToHeader:[(SFCardSection *)v8 alignRowsToHeader]];
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

- (SFTableRowCardSection)initWithProtobuf:(id)protobuf
{
  v68 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v64.receiver = self;
  v64.super_class = SFTableRowCardSection;
  v5 = [(SFCardSection *)&v64 init];
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

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v60 objects:v67 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v60 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v60 objects:v67 count:16];
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
      [(SFTableRowCardSection *)v5 setType:type2];
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

    richDatas = [protobufCopy richDatas];
    if (richDatas)
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
    richDatas2 = [protobufCopy richDatas];
    v27 = [richDatas2 countByEnumeratingWithState:&v56 objects:v66 count:16];
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
            objc_enumerationMutation(richDatas2);
          }

          v31 = [[SFRichText alloc] initWithProtobuf:*(*(&v56 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [richDatas2 countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v28);
    }

    [(SFTableRowCardSection *)v5 setRichData:v25];
    tableIdentifier = [protobufCopy tableIdentifier];

    if (tableIdentifier)
    {
      tableIdentifier2 = [protobufCopy tableIdentifier];
      [(SFTableRowCardSection *)v5 setTableIdentifier:tableIdentifier2];
    }

    alignmentSchema = [protobufCopy alignmentSchema];

    if (alignmentSchema)
    {
      v35 = [SFTableAlignmentSchema alloc];
      alignmentSchema2 = [protobufCopy alignmentSchema];
      v37 = [(SFTableAlignmentSchema *)v35 initWithProtobuf:alignmentSchema2];
      [(SFTableRowCardSection *)v5 setAlignmentSchema:v37];
    }

    datas = [protobufCopy datas];
    v51 = v5;
    if (datas)
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
    datas2 = [protobufCopy datas];
    v41 = [datas2 countByEnumeratingWithState:&v52 objects:v65 count:16];
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
            objc_enumerationMutation(datas2);
          }

          v45 = [[SFFormattedText alloc] initWithProtobuf:*(*(&v52 + 1) + 8 * k)];
          if (v45)
          {
            [v39 addObject:v45];
          }
        }

        v42 = [datas2 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v42);
    }

    v5 = v51;
    [(SFTableRowCardSection *)v51 setData:v39];
    if ([protobufCopy isSubHeader])
    {
      -[SFTableRowCardSection setIsSubHeader:](v51, "setIsSubHeader:", [protobufCopy isSubHeader]);
    }

    tabGroupIdentifier = [protobufCopy tabGroupIdentifier];

    if (tabGroupIdentifier)
    {
      tabGroupIdentifier2 = [protobufCopy tabGroupIdentifier];
      [(SFTableRowCardSection *)v51 setTabGroupIdentifier:tabGroupIdentifier2];
    }

    if ([protobufCopy reducedRowHeight])
    {
      -[SFTableRowCardSection setReducedRowHeight:](v51, "setReducedRowHeight:", [protobufCopy reducedRowHeight]);
    }

    if ([protobufCopy verticalAlign])
    {
      -[SFTableRowCardSection setVerticalAlign:](v51, "setVerticalAlign:", [protobufCopy verticalAlign]);
    }

    if ([protobufCopy alignRowsToHeader])
    {
      -[SFTableRowCardSection setAlignRowsToHeader:](v51, "setAlignRowsToHeader:", [protobufCopy alignRowsToHeader]);
    }

    v48 = v51;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

@end