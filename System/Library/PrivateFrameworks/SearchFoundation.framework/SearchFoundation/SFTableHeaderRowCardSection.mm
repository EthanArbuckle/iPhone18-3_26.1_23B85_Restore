@interface SFTableHeaderRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTableHeaderRowCardSection)initWithCoder:(id)coder;
- (SFTableHeaderRowCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTableHeaderRowCardSection

- (SFTableHeaderRowCardSection)initWithProtobuf:(id)protobuf
{
  v54 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v51.receiver = self;
  v51.super_class = SFTableHeaderRowCardSection;
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
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v53 count:16];
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

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v53 count:16];
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

    tableIdentifier = [protobufCopy tableIdentifier];

    if (tableIdentifier)
    {
      tableIdentifier2 = [protobufCopy tableIdentifier];
      [(SFTableRowCardSection *)v5 setTableIdentifier:tableIdentifier2];
    }

    alignmentSchema = [protobufCopy alignmentSchema];

    if (alignmentSchema)
    {
      v27 = [SFTableAlignmentSchema alloc];
      alignmentSchema2 = [protobufCopy alignmentSchema];
      v29 = [(SFTableAlignmentSchema *)v27 initWithProtobuf:alignmentSchema2];
      [(SFTableRowCardSection *)v5 setAlignmentSchema:v29];
    }

    datas = [protobufCopy datas];
    if (datas)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    datas2 = [protobufCopy datas];
    v33 = [datas2 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(datas2);
          }

          v37 = [[SFFormattedText alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * j)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [datas2 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v34);
    }

    [(SFTableRowCardSection *)v5 setData:v31];
    if ([protobufCopy isSubHeader])
    {
      -[SFTableRowCardSection setIsSubHeader:](v5, "setIsSubHeader:", [protobufCopy isSubHeader]);
    }

    tabGroupIdentifier = [protobufCopy tabGroupIdentifier];

    if (tabGroupIdentifier)
    {
      tabGroupIdentifier2 = [protobufCopy tabGroupIdentifier];
      [(SFTableRowCardSection *)v5 setTabGroupIdentifier:tabGroupIdentifier2];
    }

    if ([protobufCopy reducedRowHeight])
    {
      -[SFTableRowCardSection setReducedRowHeight:](v5, "setReducedRowHeight:", [protobufCopy reducedRowHeight]);
    }

    if ([protobufCopy verticalAlign])
    {
      -[SFTableRowCardSection setVerticalAlign:](v5, "setVerticalAlign:", [protobufCopy verticalAlign]);
    }

    if ([protobufCopy alignRowsToHeader])
    {
      -[SFTableRowCardSection setAlignRowsToHeader:](v5, "setAlignRowsToHeader:", [protobufCopy alignRowsToHeader]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v31.receiver = self;
  v31.super_class = SFTableHeaderRowCardSection;
  v3 = [(SFTableRowCardSection *)&v31 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [punchoutPickerDismissText hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFTableRowCardSection *)self type];
  v12 = hasBottomPadding ^ [type hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [backgroundColor hash];
  tableIdentifier = [(SFTableRowCardSection *)self tableIdentifier];
  v17 = v9 ^ v15 ^ [tableIdentifier hash];
  alignmentSchema = [(SFTableRowCardSection *)self alignmentSchema];
  v19 = [alignmentSchema hash];
  data = [(SFTableRowCardSection *)self data];
  v21 = v19 ^ [data hash];
  v22 = v21 ^ [(SFTableRowCardSection *)self isSubHeader];
  tabGroupIdentifier = [(SFTableRowCardSection *)self tabGroupIdentifier];
  v24 = v22 ^ [tabGroupIdentifier hash];
  v25 = v24 ^ [(SFTableRowCardSection *)self reducedRowHeight];
  v26 = v25 ^ [(SFTableRowCardSection *)self verticalAlign];
  v27 = v26 ^ [(SFTableRowCardSection *)self alignRowsToHeader];

  return v17 ^ v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFTableHeaderRowCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v91.receiver = self;
      v91.super_class = SFTableHeaderRowCardSection;
      if ([(SFTableRowCardSection *)&v91 isEqual:equalCopy])
      {
        v6 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v6 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_38:

          goto LABEL_39;
        }

        punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
        if (punchoutOptions3)
        {
          punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
          punchoutOptions5 = [(SFCardSection *)v6 punchoutOptions];
          if (![punchoutOptions4 isEqual:punchoutOptions5])
          {
            LOBYTE(v11) = 0;
            goto LABEL_36;
          }

          v90 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
        {
LABEL_35:

          LOBYTE(v11) = 0;
          punchoutOptions4 = v90;
          if (!punchoutOptions3)
          {
LABEL_37:

            goto LABEL_38;
          }

LABEL_36:

          goto LABEL_37;
        }

        punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
        if (punchoutPickerTitle3)
        {
          [(SFCardSection *)self punchoutPickerTitle];
          v84 = punchoutOptions2;
          v15 = punchoutOptions;
          v16 = punchoutOptions3;
          v17 = punchoutPickerTitle2;
          v18 = punchoutPickerTitle;
          v20 = v19 = punchoutOptions5;
          punchoutPickerTitle4 = [(SFCardSection *)v6 punchoutPickerTitle];
          v87 = v20;
          v21 = v20;
          punchoutOptions5 = v19;
          punchoutPickerTitle = v18;
          punchoutPickerTitle2 = v17;
          punchoutOptions3 = v16;
          punchoutOptions = v15;
          punchoutOptions2 = v84;
          if (![v21 isEqual:?])
          {
            goto LABEL_33;
          }
        }

        v88 = punchoutOptions5;
        v89 = punchoutPickerTitle3;
        punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
        punchoutPickerDismissText2 = [(SFCardSection *)v6 punchoutPickerDismissText];
        if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
        {

          goto LABEL_32;
        }

        v81 = punchoutPickerDismissText;
        v82 = punchoutPickerDismissText2;
        punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
        if (punchoutPickerDismissText3)
        {
          punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText5 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v80 = punchoutPickerDismissText4;
          v25 = punchoutPickerDismissText4;
          punchoutPickerTitle3 = v89;
          v26 = punchoutPickerDismissText3;
          if (![v25 isEqual:?])
          {
            goto LABEL_30;
          }
        }

        canBeHidden = [(SFCardSection *)self canBeHidden];
        if (canBeHidden == [(SFCardSection *)v6 canBeHidden])
        {
          hasTopPadding = [(SFCardSection *)self hasTopPadding];
          if (hasTopPadding == [(SFCardSection *)v6 hasTopPadding])
          {
            hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
            if (hasBottomPadding == [(SFCardSection *)v6 hasBottomPadding])
            {
              type = [(SFTableRowCardSection *)self type];
              type2 = [(SFTableRowCardSection *)v6 type];
              if ((type != 0) != (type2 == 0))
              {
                v77 = type2;
                v78 = type;
                type3 = [(SFTableRowCardSection *)self type];
                v26 = punchoutPickerDismissText3;
                if (type3)
                {
                  type4 = [(SFTableRowCardSection *)self type];
                  type5 = [(SFTableRowCardSection *)v6 type];
                  if (![type4 isEqual:?])
                  {
LABEL_54:

LABEL_55:
                    punchoutPickerTitle3 = v89;
                    if (!v26)
                    {
                      goto LABEL_31;
                    }

                    goto LABEL_30;
                  }
                }

                v75 = type3;
                separatorStyle = [(SFCardSection *)self separatorStyle];
                if (separatorStyle != [(SFCardSection *)v6 separatorStyle])
                {
LABEL_53:
                  v26 = punchoutPickerDismissText3;
                  type3 = v75;
                  if (!v75)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_54;
                }

                backgroundColor = [(SFCardSection *)self backgroundColor];
                backgroundColor2 = [(SFCardSection *)v6 backgroundColor];
                if ((backgroundColor != 0) == (backgroundColor2 == 0))
                {

                  goto LABEL_53;
                }

                v72 = backgroundColor2;
                v85 = punchoutOptions2;
                v69 = punchoutOptions;
                v70 = punchoutPickerTitle2;
                v71 = punchoutPickerTitle;
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                if (backgroundColor3)
                {
                  backgroundColor4 = [(SFCardSection *)self backgroundColor];
                  [(SFCardSection *)v6 backgroundColor];
                  punchoutPickerTitle = punchoutOptions2 = backgroundColor4;
                  if (![backgroundColor4 isEqual:?])
                  {
                    goto LABEL_51;
                  }
                }

                tableIdentifier = [(SFTableRowCardSection *)self tableIdentifier];
                v73 = v6;
                tableIdentifier2 = [(SFTableRowCardSection *)v6 tableIdentifier];
                v41 = tableIdentifier2;
                if ((tableIdentifier != 0) == (tableIdentifier2 == 0))
                {

                  v6 = v73;
                  if (!backgroundColor3)
                  {
LABEL_52:

                    punchoutPickerTitle2 = v70;
                    punchoutPickerTitle = v71;
                    punchoutOptions = v69;
                    punchoutOptions2 = v85;
                    goto LABEL_53;
                  }

LABEL_51:

                  goto LABEL_52;
                }

                tableIdentifier3 = [(SFTableRowCardSection *)self tableIdentifier];
                if (tableIdentifier3)
                {
                  tableIdentifier4 = [(SFTableRowCardSection *)self tableIdentifier];
                  tableIdentifier5 = [(SFTableRowCardSection *)v73 tableIdentifier];
                  v65 = tableIdentifier4;
                  if (![tableIdentifier4 isEqual:?])
                  {
                    goto LABEL_62;
                  }
                }

                alignmentSchema = [(SFTableRowCardSection *)self alignmentSchema];
                alignmentSchema2 = [(SFTableRowCardSection *)v73 alignmentSchema];
                if ((alignmentSchema != 0) == (alignmentSchema2 == 0))
                {

                  if (!tableIdentifier3)
                  {
LABEL_63:

                    if (backgroundColor3)
                    {
                    }

                    if (v75)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (!v89)
                    {
LABEL_89:

                      LOBYTE(v11) = 0;
                      if (punchoutOptions3)
                      {
LABEL_90:
                        punchoutOptions4 = v90;
                        punchoutOptions5 = v88;
                        punchoutOptions = v69;
                        punchoutOptions2 = v85;
                        v6 = v73;
                        goto LABEL_36;
                      }

LABEL_113:
                      punchoutOptions = v69;
                      punchoutOptions2 = v85;
                      v6 = v73;
                      goto LABEL_37;
                    }

LABEL_87:

LABEL_88:
                    goto LABEL_89;
                  }

LABEL_62:

                  goto LABEL_63;
                }

                alignmentSchema3 = [(SFTableRowCardSection *)self alignmentSchema];
                if (alignmentSchema3)
                {
                  alignmentSchema4 = [(SFTableRowCardSection *)self alignmentSchema];
                  alignmentSchema5 = [(SFTableRowCardSection *)v73 alignmentSchema];
                  v60 = alignmentSchema4;
                  if (![alignmentSchema4 isEqual:?])
                  {
LABEL_77:

LABEL_78:
                    if (tableIdentifier3)
                    {
                    }

                    if (backgroundColor3)
                    {
                    }

                    if (v75)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (!v89)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_87;
                  }
                }

                data = [(SFTableRowCardSection *)self data];
                data2 = [(SFTableRowCardSection *)v73 data];
                if ((data != 0) == (data2 == 0))
                {

                  if (!alignmentSchema3)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_77;
                }

                data3 = [(SFTableRowCardSection *)self data];
                if (data3)
                {
                  data4 = [(SFTableRowCardSection *)self data];
                  data5 = [(SFTableRowCardSection *)v73 data];
                  v57 = data4;
                  if (![data4 isEqual:?])
                  {
                    LOBYTE(v11) = 0;
LABEL_99:

LABEL_100:
                    if (alignmentSchema3)
                    {
                    }

                    if (tableIdentifier3)
                    {
                    }

                    if (backgroundColor3)
                    {
                    }

                    if (v75)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (v89)
                    {
                    }

                    if (punchoutOptions3)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_113;
                  }
                }

                isSubHeader = [(SFTableRowCardSection *)self isSubHeader];
                if (isSubHeader == [(SFTableRowCardSection *)v73 isSubHeader])
                {
                  tabGroupIdentifier = [(SFTableRowCardSection *)self tabGroupIdentifier];
                  tabGroupIdentifier2 = [(SFTableRowCardSection *)v73 tabGroupIdentifier];
                  if ((tabGroupIdentifier != 0) != (tabGroupIdentifier2 == 0))
                  {
                    tabGroupIdentifier3 = [(SFTableRowCardSection *)self tabGroupIdentifier];
                    if (!tabGroupIdentifier3 || (-[SFTableRowCardSection tabGroupIdentifier](self, "tabGroupIdentifier"), v46 = objc_claimAutoreleasedReturnValue(), -[SFTableRowCardSection tabGroupIdentifier](v73, "tabGroupIdentifier"), v51 = objc_claimAutoreleasedReturnValue(), v52 = v46, [v46 isEqual:?]))
                    {
                      reducedRowHeight = [(SFTableRowCardSection *)self reducedRowHeight];
                      if (reducedRowHeight == [(SFTableRowCardSection *)v73 reducedRowHeight]&& (v48 = [(SFTableRowCardSection *)self verticalAlign], v48 == [(SFTableRowCardSection *)v73 verticalAlign]))
                      {
                        alignRowsToHeader = [(SFTableRowCardSection *)self alignRowsToHeader];
                        v11 = alignRowsToHeader ^ [(SFTableRowCardSection *)v73 alignRowsToHeader]^ 1;
                        v50 = v11;
                      }

                      else
                      {
                        LOBYTE(v11) = 0;
                        v50 = 0;
                      }

                      if (!tabGroupIdentifier3)
                      {

                        LOBYTE(v11) = v50;
LABEL_98:
                        if (!data3)
                        {
                          goto LABEL_100;
                        }

                        goto LABEL_99;
                      }
                    }

                    else
                    {
                      LOBYTE(v11) = 0;
                    }

                    goto LABEL_98;
                  }
                }

                LOBYTE(v11) = 0;
                goto LABEL_98;
              }
            }
          }
        }

        punchoutPickerTitle3 = v89;
        v26 = punchoutPickerDismissText3;
        if (!punchoutPickerDismissText3)
        {
LABEL_31:

LABEL_32:
          punchoutOptions5 = v88;
          if (!punchoutPickerTitle3)
          {
LABEL_34:

            goto LABEL_35;
          }

LABEL_33:

          goto LABEL_34;
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_39:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = SFTableHeaderRowCardSection;
  v4 = [(SFTableRowCardSection *)&v24 copyWithZone:zone];
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

  tableIdentifier = [(SFTableRowCardSection *)self tableIdentifier];
  v16 = [tableIdentifier copy];
  [v4 setTableIdentifier:v16];

  alignmentSchema = [(SFTableRowCardSection *)self alignmentSchema];
  v18 = [alignmentSchema copy];
  [v4 setAlignmentSchema:v18];

  data = [(SFTableRowCardSection *)self data];
  v20 = [data copy];
  [v4 setData:v20];

  [v4 setIsSubHeader:{-[SFTableRowCardSection isSubHeader](self, "isSubHeader")}];
  tabGroupIdentifier = [(SFTableRowCardSection *)self tabGroupIdentifier];
  v22 = [tabGroupIdentifier copy];
  [v4 setTabGroupIdentifier:v22];

  [v4 setReducedRowHeight:{-[SFTableRowCardSection reducedRowHeight](self, "reducedRowHeight")}];
  [v4 setVerticalAlign:{-[SFTableRowCardSection verticalAlign](self, "verticalAlign")}];
  [v4 setAlignRowsToHeader:{-[SFTableRowCardSection alignRowsToHeader](self, "alignRowsToHeader")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTableHeaderRowCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBTableHeaderRowCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTableHeaderRowCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTableHeaderRowCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFTableHeaderRowCardSection;
  [(SFTableRowCardSection *)&v3 encodeWithCoder:coder];
}

- (SFTableHeaderRowCardSection)initWithCoder:(id)coder
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
    punchoutOptions2 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions2];

    punchoutPickerTitle2 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];

    punchoutPickerDismissText2 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    type2 = [(SFCardSection *)v8 type];
    [(SFTableRowCardSection *)v5 setType:type2];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor2 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor2];

    richData = [(SFCardSection *)v8 richData];
    [(SFTableRowCardSection *)v5 setRichData:richData];

    tableIdentifier2 = [(SFCardSection *)v8 tableIdentifier];
    [(SFTableRowCardSection *)v5 setTableIdentifier:tableIdentifier2];

    alignmentSchema2 = [(SFCardSection *)v8 alignmentSchema];
    [(SFTableRowCardSection *)v5 setAlignmentSchema:alignmentSchema2];

    data2 = [(SFCardSection *)v8 data];
    [(SFTableRowCardSection *)v5 setData:data2];

    [(SFTableRowCardSection *)v5 setIsSubHeader:[(SFCardSection *)v8 isSubHeader]];
    tabGroupIdentifier2 = [(SFCardSection *)v8 tabGroupIdentifier];
    [(SFTableRowCardSection *)v5 setTabGroupIdentifier:tabGroupIdentifier2];

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

    backgroundColor3 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor3];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions3 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions3];

    punchoutPickerTitle3 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle3];

    punchoutPickerDismissText3 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText3];

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