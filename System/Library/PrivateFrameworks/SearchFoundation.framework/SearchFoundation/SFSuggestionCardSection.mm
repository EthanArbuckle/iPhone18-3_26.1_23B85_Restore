@interface SFSuggestionCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSuggestionCardSection)initWithCoder:(id)coder;
- (SFSuggestionCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSuggestionCardSection

- (SFSuggestionCardSection)initWithProtobuf:(id)protobuf
{
  v55 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v53.receiver = self;
  v53.super_class = SFSuggestionCardSection;
  v5 = [(SFCardSection *)&v53 init];
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

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v49 objects:v54 count:16];
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
      [(SFSuggestionCardSection *)v5 setType:type2];
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

    suggestionText = [protobufCopy suggestionText];

    if (suggestionText)
    {
      v25 = [SFRichText alloc];
      suggestionText2 = [protobufCopy suggestionText];
      v27 = [(SFRichText *)v25 initWithProtobuf:suggestionText2];
      [(SFSuggestionCardSection *)v5 setSuggestionText:v27];
    }

    if ([protobufCopy isContact])
    {
      -[SFSuggestionCardSection setIsContact:](v5, "setIsContact:", [protobufCopy isContact]);
    }

    scopedSearchSectionBundleIdentifier = [protobufCopy scopedSearchSectionBundleIdentifier];

    if (scopedSearchSectionBundleIdentifier)
    {
      scopedSearchSectionBundleIdentifier2 = [protobufCopy scopedSearchSectionBundleIdentifier];
      [(SFSuggestionCardSection *)v5 setScopedSearchSectionBundleIdentifier:scopedSearchSectionBundleIdentifier2];
    }

    if ([protobufCopy suggestionType])
    {
      -[SFSuggestionCardSection setSuggestionType:](v5, "setSuggestionType:", [protobufCopy suggestionType]);
    }

    detailText = [protobufCopy detailText];

    if (detailText)
    {
      v31 = [SFRichText alloc];
      detailText2 = [protobufCopy detailText];
      v33 = [(SFRichText *)v31 initWithProtobuf:detailText2];
      [(SFSuggestionCardSection *)v5 setDetailText:v33];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v35 = [SFImage alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v37 = [(SFImage *)v35 initWithProtobuf:thumbnail2];
      [(SFSuggestionCardSection *)v5 setThumbnail:v37];
    }

    trailingMiddleText = [protobufCopy trailingMiddleText];

    if (trailingMiddleText)
    {
      v39 = [SFFormattedText alloc];
      trailingMiddleText2 = [protobufCopy trailingMiddleText];
      v41 = [(SFFormattedText *)v39 initWithProtobuf:trailingMiddleText2];
      [(SFSuggestionCardSection *)v5 setTrailingMiddleText:v41];
    }

    trailingBottomText = [protobufCopy trailingBottomText];

    if (trailingBottomText)
    {
      v43 = [SFFormattedText alloc];
      trailingBottomText2 = [protobufCopy trailingBottomText];
      v45 = [(SFFormattedText *)v43 initWithProtobuf:trailingBottomText2];
      [(SFSuggestionCardSection *)v5 setTrailingBottomText:v45];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v33.receiver = self;
  v33.super_class = SFSuggestionCardSection;
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
  type = [(SFSuggestionCardSection *)self type];
  v11 = hasBottomPadding ^ [type hash];
  v12 = v11 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = v12 ^ [backgroundColor hash];
  suggestionText = [(SFSuggestionCardSection *)self suggestionText];
  v16 = v8 ^ v14 ^ [suggestionText hash];
  isContact = [(SFSuggestionCardSection *)self isContact];
  scopedSearchSectionBundleIdentifier = [(SFSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  v19 = isContact ^ [scopedSearchSectionBundleIdentifier hash];
  v20 = v19 ^ [(SFSuggestionCardSection *)self suggestionType];
  detailText = [(SFSuggestionCardSection *)self detailText];
  v22 = v20 ^ [detailText hash];
  thumbnail = [(SFSuggestionCardSection *)self thumbnail];
  v24 = v22 ^ [thumbnail hash];
  trailingMiddleText = [(SFSuggestionCardSection *)self trailingMiddleText];
  v26 = v16 ^ v24 ^ [trailingMiddleText hash];
  trailingBottomText = [(SFSuggestionCardSection *)self trailingBottomText];
  v28 = [trailingBottomText hash];

  return v26 ^ v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_79;
  }

  if (![(SFSuggestionCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v122.receiver = self, v122.super_class = SFSuggestionCardSection, ![(SFCardSection *)&v122 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_79;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v117 = punchoutOptions2 == 0;
  v118 = punchoutOptions != 0;
  if (v118 == v117)
  {
    memset(v116, 0, sizeof(v116));
    v10 = 0;
    memset(v114, 0, sizeof(v114));
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v121, 0, sizeof(v121));
    v15 = 0;
    v115 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v113 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    punchoutOptions5 = [(SFCardSection *)v5 punchoutOptions];
    v109 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
    {
      *v116 = 0uLL;
      v10 = 0;
      memset(v114, 0, sizeof(v114));
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v121, 0, sizeof(v121));
      v15 = 0;
      v115 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v116[16] = 1;
      goto LABEL_16;
    }
  }

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v116[16] = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
  {
    *&v116[8] = 0;
    v10 = 0;
    memset(v114, 0, sizeof(v114));
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v121, 0, sizeof(v121));
    v15 = 0;
    v115 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v116 = 1;
    goto LABEL_16;
  }

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v107 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v104 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
    {
      v10 = 0;
      memset(v114, 0, 40);
      *&v116[4] = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v121, 0, sizeof(v121));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v115 = 0;
      *v116 = 1;
      *&v114[40] = 1;
      *&v116[12] = 1;
      goto LABEL_16;
    }

    *&v116[12] = v21;
  }

  else
  {
    *&v116[12] = 0;
  }

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
  {
    memset(v114, 0, 40);
    *&v116[4] = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v121, 0, sizeof(v121));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v115 = 0;
    *v116 = 1;
    *&v114[40] = 1;
    v10 = 1;
  }

  else
  {
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = punchoutPickerDismissText3 != 0;
    v102 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v100 = objc_claimAutoreleasedReturnValue(), v101 = v37, [v37 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      *&v116[8] = v36;
      if (canBeHidden == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        type = [(SFSuggestionCardSection *)self type];
        type2 = [(SFSuggestionCardSection *)v5 type];
        if ((type != 0) == (type2 == 0))
        {
          v11 = 0;
          v12 = 0;
          memset(&v114[4], 0, 32);
          v13 = 0;
          v14 = 0;
          memset(v121, 0, sizeof(v121));
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *v116 = 1;
          *&v114[40] = 1;
          v115 = 0;
          v10 = 1;
          *v114 = 1;
          *&v114[36] = 1;
        }

        else
        {
          type3 = [(SFSuggestionCardSection *)self type];
          v42 = type3 != 0;
          v97 = type3;
          if (!type3 || (-[SFSuggestionCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection type](v5, "type"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v43, [v43 isEqual:?]))
          {
            *&v116[4] = v42;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
              {
                v12 = 0;
                memset(&v114[4], 0, 28);
                v13 = 0;
                v14 = 0;
                memset(v121, 0, sizeof(v121));
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v115 = 0;
                *v116 = 1;
                *&v114[40] = 1;
                v10 = 1;
                *v114 = 1;
                *&v114[32] = 0x100000001;
                v11 = 1;
              }

              else
              {
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                *&v121[16] = backgroundColor3 != 0;
                v92 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v46, [v46 isEqual:?]))
                {
                  suggestionText = [(SFSuggestionCardSection *)self suggestionText];
                  suggestionText2 = [(SFSuggestionCardSection *)v5 suggestionText];
                  if ((suggestionText != 0) == (suggestionText2 == 0))
                  {
                    memset(&v114[8], 0, 24);
                    *&v121[8] = 0;
                    v13 = 0;
                    *v121 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v115 = 0;
                    *v116 = 1;
                    *&v114[40] = 1;
                    v10 = 1;
                    *v114 = 0x100000001;
                    *&v114[32] = 0x100000001;
                    v11 = 1;
                    v12 = 1;
                  }

                  else
                  {
                    suggestionText3 = [(SFSuggestionCardSection *)self suggestionText];
                    *&v121[12] = suggestionText3 != 0;
                    v87 = suggestionText3;
                    if (!suggestionText3 || (-[SFSuggestionCardSection suggestionText](self, "suggestionText"), v48 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection suggestionText](v5, "suggestionText"), v85 = objc_claimAutoreleasedReturnValue(), v86 = v48, [v48 isEqual:?]))
                    {
                      isContact = [(SFSuggestionCardSection *)self isContact];
                      if (isContact == [(SFSuggestionCardSection *)v5 isContact])
                      {
                        scopedSearchSectionBundleIdentifier = [(SFSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
                        scopedSearchSectionBundleIdentifier2 = [(SFSuggestionCardSection *)v5 scopedSearchSectionBundleIdentifier];
                        if ((scopedSearchSectionBundleIdentifier != 0) == (scopedSearchSectionBundleIdentifier2 == 0))
                        {
                          *&v114[16] = 0;
                          *&v121[4] = 0;
                          *&v114[24] = 0;
                          v13 = 0;
                          v14 = 0;
                          *v121 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v115 = 0;
                          *v116 = 1;
                          *&v114[36] = 1;
                          *&v114[40] = 1;
                          v10 = 1;
                          *v114 = 1;
                          *&v114[4] = 1;
                          *&v114[32] = 1;
                          v11 = 1;
                          v12 = 1;
                          *&v114[12] = 1;
                          *&v114[8] = 1;
                        }

                        else
                        {
                          scopedSearchSectionBundleIdentifier3 = [(SFSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
                          *&v121[8] = scopedSearchSectionBundleIdentifier3 != 0;
                          v82 = scopedSearchSectionBundleIdentifier3;
                          if (!scopedSearchSectionBundleIdentifier3 || (-[SFSuggestionCardSection scopedSearchSectionBundleIdentifier](self, "scopedSearchSectionBundleIdentifier"), v51 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection scopedSearchSectionBundleIdentifier](v5, "scopedSearchSectionBundleIdentifier"), v80 = objc_claimAutoreleasedReturnValue(), v81 = v51, [v51 isEqual:?]))
                          {
                            suggestionType = [(SFSuggestionCardSection *)self suggestionType];
                            if (suggestionType == [(SFSuggestionCardSection *)v5 suggestionType])
                            {
                              detailText = [(SFSuggestionCardSection *)self detailText];
                              detailText2 = [(SFSuggestionCardSection *)v5 detailText];
                              if ((detailText != 0) == (detailText2 == 0))
                              {
                                v13 = 0;
                                *v121 = 0;
                                *&v114[20] = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v115 = 0;
                                *v116 = 1;
                                *&v114[36] = 1;
                                *&v114[40] = 1;
                                v10 = 1;
                                *v114 = 1;
                                *&v114[4] = 1;
                                *&v114[28] = 0;
                                *&v114[32] = 1;
                                v11 = 1;
                                v12 = 1;
                                *&v114[8] = 1;
                                *&v114[12] = 1;
                                *&v114[16] = 1;
                                *&v114[24] = 1;
                              }

                              else
                              {
                                detailText3 = [(SFSuggestionCardSection *)self detailText];
                                *&v121[4] = detailText3 != 0;
                                v77 = detailText3;
                                if (!detailText3 || (-[SFSuggestionCardSection detailText](self, "detailText"), v54 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection detailText](v5, "detailText"), v73 = objc_claimAutoreleasedReturnValue(), v74 = v54, [v54 isEqual:?]))
                                {
                                  thumbnail = [(SFSuggestionCardSection *)self thumbnail];
                                  thumbnail2 = [(SFSuggestionCardSection *)v5 thumbnail];
                                  if ((thumbnail != 0) == (thumbnail2 == 0))
                                  {
                                    v14 = 0;
                                    *v121 = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v115 = 0;
                                    *v116 = 1;
                                    *&v114[36] = 1;
                                    *&v114[40] = 1;
                                    v10 = 1;
                                    *v114 = 1;
                                    *&v114[4] = 1;
                                    *&v114[28] = 0;
                                    *&v114[32] = 1;
                                    v11 = 1;
                                    v12 = 1;
                                    *&v114[8] = 1;
                                    *&v114[12] = 1;
                                    *&v114[16] = 1;
                                    *&v114[24] = 1;
                                    v13 = 1;
                                    *&v114[20] = 1;
                                  }

                                  else
                                  {
                                    thumbnail3 = [(SFSuggestionCardSection *)self thumbnail];
                                    *v121 = thumbnail3 != 0;
                                    v72 = thumbnail3;
                                    if (!thumbnail3 || (-[SFSuggestionCardSection thumbnail](self, "thumbnail"), v56 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection thumbnail](v5, "thumbnail"), v68 = objc_claimAutoreleasedReturnValue(), v69 = v56, [v56 isEqual:?]))
                                    {
                                      trailingMiddleText = [(SFSuggestionCardSection *)self trailingMiddleText];
                                      trailingMiddleText2 = [(SFSuggestionCardSection *)v5 trailingMiddleText];
                                      if ((trailingMiddleText != 0) == (trailingMiddleText2 == 0))
                                      {
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v115 = 0;
                                        *v116 = 1;
                                        *&v114[36] = 1;
                                        *&v114[40] = 1;
                                        v10 = 1;
                                        *v114 = 1;
                                        *&v114[4] = 1;
                                        *&v114[32] = 1;
                                        v11 = 1;
                                        v12 = 1;
                                        *&v114[8] = 1;
                                        *&v114[12] = 1;
                                        *&v114[16] = 1;
                                        *&v114[20] = 1;
                                        *&v114[24] = 1;
                                        v13 = 1;
                                        v14 = 1;
                                        *&v114[28] = 1;
                                      }

                                      else
                                      {
                                        trailingMiddleText3 = [(SFSuggestionCardSection *)self trailingMiddleText];
                                        v115 = trailingMiddleText3 != 0;
                                        v67 = trailingMiddleText3;
                                        if (!trailingMiddleText3 || (-[SFSuggestionCardSection trailingMiddleText](self, "trailingMiddleText"), v58 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection trailingMiddleText](v5, "trailingMiddleText"), v63 = objc_claimAutoreleasedReturnValue(), v64 = v58, [v58 isEqual:?]))
                                        {
                                          trailingBottomText = [(SFSuggestionCardSection *)self trailingBottomText];
                                          trailingBottomText2 = [(SFSuggestionCardSection *)v5 trailingBottomText];
                                          if ((trailingBottomText != 0) == (trailingBottomText2 == 0))
                                          {
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            *v116 = 1;
                                            *&v114[36] = 1;
                                            *&v114[40] = 1;
                                            v10 = 1;
                                            *v114 = 1;
                                            *&v114[4] = 1;
                                            *&v114[28] = 1;
                                            *&v114[32] = 1;
                                            v11 = 1;
                                            v12 = 1;
                                            *&v114[8] = 1;
                                            *&v114[12] = 1;
                                            *&v114[16] = 1;
                                            *&v114[20] = 1;
                                            *&v114[24] = 1;
                                            v13 = 1;
                                            v14 = 1;
                                            v15 = 1;
                                            v16 = 1;
                                          }

                                          else
                                          {
                                            trailingBottomText3 = [(SFSuggestionCardSection *)self trailingBottomText];
                                            if (trailingBottomText3)
                                            {
                                              trailingBottomText4 = [(SFSuggestionCardSection *)self trailingBottomText];
                                              trailingBottomText5 = [(SFSuggestionCardSection *)v5 trailingBottomText];
                                              v61 = trailingBottomText4;
                                              v19 = [trailingBottomText4 isEqual:trailingBottomText5];
                                              v6 = trailingBottomText5;
                                              v18 = 1;
                                              *v116 = 1;
                                              *&v114[36] = 1;
                                              *&v114[40] = 1;
                                              v10 = 1;
                                              *v114 = 1;
                                              *&v114[4] = 1;
                                              *&v114[28] = 1;
                                              *&v114[32] = 1;
                                              v11 = 1;
                                              v12 = 1;
                                              *&v114[8] = 1;
                                              *&v114[12] = 1;
                                              *&v114[16] = 1;
                                              *&v114[20] = 1;
                                              *&v114[24] = 1;
                                              v13 = 1;
                                              v14 = 1;
                                              v15 = 1;
                                              v16 = 1;
                                              v17 = 1;
                                            }

                                            else
                                            {
                                              trailingBottomText3 = 0;
                                              v18 = 0;
                                              *v116 = 1;
                                              *&v114[40] = 1;
                                              v10 = 1;
                                              *v114 = 0x100000001;
                                              *&v114[32] = 0x100000001;
                                              v11 = 1;
                                              v12 = 1;
                                              *&v114[8] = 0x100000001;
                                              *&v114[16] = 0x100000001;
                                              *&v114[24] = 0x100000001;
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
                                          *v116 = 1;
                                          *&v114[36] = 1;
                                          *&v114[40] = 1;
                                          v10 = 1;
                                          *v114 = 1;
                                          *&v114[4] = 1;
                                          *&v114[28] = 1;
                                          *&v114[32] = 1;
                                          v11 = 1;
                                          v12 = 1;
                                          *&v114[8] = 1;
                                          *&v114[12] = 1;
                                          *&v114[16] = 1;
                                          *&v114[20] = 1;
                                          *&v114[24] = 1;
                                          v13 = 1;
                                          v14 = 1;
                                          v15 = 1;
                                          v115 = 1;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v115 = 0;
                                      *v116 = 1;
                                      *&v114[36] = 1;
                                      *&v114[40] = 1;
                                      v10 = 1;
                                      *v114 = 1;
                                      *&v114[4] = 1;
                                      *&v114[28] = 0;
                                      *&v114[32] = 1;
                                      v11 = 1;
                                      v12 = 1;
                                      *&v114[8] = 1;
                                      *&v114[12] = 1;
                                      *&v114[16] = 1;
                                      *&v114[20] = 1;
                                      *&v114[24] = 1;
                                      v13 = 1;
                                      v14 = 1;
                                      *v121 = 1;
                                    }
                                  }
                                }

                                else
                                {
                                  *&v114[20] = 0;
                                  v14 = 0;
                                  *v121 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v115 = 0;
                                  *v116 = 1;
                                  *&v114[36] = 1;
                                  *&v114[40] = 1;
                                  v10 = 1;
                                  *v114 = 1;
                                  *&v114[4] = 1;
                                  *&v114[28] = 0;
                                  *&v114[32] = 1;
                                  v11 = 1;
                                  v12 = 1;
                                  *&v114[8] = 1;
                                  *&v114[12] = 1;
                                  *&v114[16] = 1;
                                  *&v114[24] = 1;
                                  v13 = 1;
                                  *&v121[4] = 1;
                                }
                              }
                            }

                            else
                            {
                              *&v114[20] = 0;
                              v13 = 0;
                              *v121 = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v115 = 0;
                              *v116 = 1;
                              *&v114[36] = 1;
                              *&v114[40] = 1;
                              v10 = 1;
                              *v114 = 1;
                              *&v114[4] = 1;
                              *&v114[28] = 0;
                              *&v114[32] = 1;
                              v11 = 1;
                              v12 = 1;
                              *&v114[8] = 1;
                              *&v114[12] = 1;
                              *&v114[16] = 1;
                            }
                          }

                          else
                          {
                            *&v114[20] = 0;
                            v13 = 0;
                            *v121 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v115 = 0;
                            *v116 = 1;
                            *&v114[36] = 1;
                            *&v114[40] = 1;
                            v10 = 1;
                            *v114 = 1;
                            *&v114[4] = 1;
                            *&v114[28] = 0;
                            *&v114[32] = 1;
                            v11 = 1;
                            v12 = 1;
                            *&v114[8] = 1;
                            *&v114[12] = 1;
                            *&v114[16] = 1;
                            *&v121[8] = 1;
                          }
                        }
                      }

                      else
                      {
                        *&v114[8] = 0;
                        *&v114[16] = 0;
                        *&v121[4] = 0;
                        *&v114[24] = 0;
                        v13 = 0;
                        v14 = 0;
                        *v121 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v115 = 0;
                        *v116 = 1;
                        *&v114[36] = 1;
                        *&v114[40] = 1;
                        v10 = 1;
                        *v114 = 1;
                        *&v114[4] = 1;
                        *&v114[32] = 1;
                        v11 = 1;
                        v12 = 1;
                        *&v114[12] = 1;
                      }
                    }

                    else
                    {
                      *&v114[8] = 0;
                      *&v114[16] = 0;
                      *&v121[4] = 0;
                      *&v114[24] = 0;
                      v13 = 0;
                      v14 = 0;
                      *v121 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v115 = 0;
                      *v116 = 1;
                      *&v114[36] = 1;
                      *&v114[40] = 1;
                      v10 = 1;
                      *v114 = 1;
                      *&v114[4] = 1;
                      *&v114[32] = 1;
                      v11 = 1;
                      v12 = 1;
                      *&v114[12] = 1;
                      *&v121[12] = 1;
                    }
                  }
                }

                else
                {
                  memset(&v114[4], 0, 28);
                  *&v121[8] = 0;
                  v13 = 0;
                  *v121 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v115 = 0;
                  *v116 = 1;
                  *&v114[40] = 1;
                  v10 = 1;
                  *v114 = 1;
                  *&v114[32] = 0x100000001;
                  v11 = 1;
                  v12 = 1;
                  *&v121[16] = 1;
                }
              }
            }

            else
            {
              v11 = 0;
              v12 = 0;
              memset(&v114[4], 0, 28);
              v13 = 0;
              v14 = 0;
              memset(v121, 0, sizeof(v121));
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v115 = 0;
              *v116 = 1;
              *&v114[40] = 1;
              v10 = 1;
              *v114 = 1;
              *&v114[32] = 0x100000001;
            }
          }

          else
          {
            v11 = 0;
            v12 = 0;
            memset(&v114[4], 0, 28);
            v13 = 0;
            v14 = 0;
            memset(v121, 0, sizeof(v121));
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v115 = 0;
            *v116 = 0x100000001;
            *&v114[40] = 1;
            v10 = 1;
            *v114 = 1;
            *&v114[32] = 0x100000001;
          }
        }
      }

      else
      {
        v11 = 0;
        v12 = 0;
        memset(&v114[4], 0, 36);
        v13 = 0;
        v14 = 0;
        memset(v121, 0, sizeof(v121));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *v116 = 1;
        *&v114[40] = 1;
        v115 = 0;
        v10 = 1;
        *v114 = 1;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      memset(&v114[4], 0, 36);
      v13 = 0;
      v14 = 0;
      memset(v121, 0, sizeof(v121));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *v116 = 1;
      *&v114[40] = 1;
      v115 = 0;
      v10 = 1;
      *v114 = 1;
      *&v116[8] = 1;
    }
  }

LABEL_16:
  if (v18)
  {
    v112 = equalCopy;
    v23 = v19;
    v24 = v11;
    v25 = v10;
    v26 = v5;
    v27 = v16;
    v28 = v14;
    v29 = v13;
    v30 = v15;
    v31 = v12;
    v32 = v17;

    v33 = v32;
    v12 = v31;
    v15 = v30;
    v13 = v29;
    v14 = v28;
    v16 = v27;
    v5 = v26;
    v10 = v25;
    v11 = v24;
    v19 = v23;
    equalCopy = v112;
    if (!v33)
    {
      goto LABEL_18;
    }

LABEL_81:

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17)
  {
    goto LABEL_81;
  }

LABEL_18:
  if (v16)
  {
LABEL_19:
  }

LABEL_20:
  if (v115)
  {
  }

  if (v15)
  {
  }

  if (*&v114[28])
  {
  }

  if (*v121)
  {
  }

  if (v14)
  {
  }

  if (*&v114[20])
  {
  }

  if (*&v121[4])
  {
  }

  if (v13)
  {
  }

  if (*&v114[24])
  {
  }

  if (*&v121[8])
  {
  }

  if (*&v114[16])
  {
  }

  if (*&v114[8])
  {
  }

  if (*&v121[12])
  {
  }

  if (*&v114[12])
  {
  }

  if (*&v114[4])
  {
  }

  if (*&v121[16])
  {
  }

  if (v12)
  {
  }

  if (v11)
  {
  }

  if (*&v116[4])
  {
  }

  if (*&v114[32])
  {
  }

  if (*&v114[36])
  {
  }

  if (*&v116[8])
  {
  }

  if (*v114)
  {
  }

  if (v10)
  {
  }

  if (*&v116[12])
  {
  }

  if (*&v114[40])
  {
  }

  if (*v116)
  {
  }

  if (*&v116[16])
  {
  }

  if (v118 != v117)
  {
  }

LABEL_79:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = SFSuggestionCardSection;
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
  type = [(SFSuggestionCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  suggestionText = [(SFSuggestionCardSection *)self suggestionText];
  v16 = [suggestionText copy];
  [v4 setSuggestionText:v16];

  [v4 setIsContact:{-[SFSuggestionCardSection isContact](self, "isContact")}];
  scopedSearchSectionBundleIdentifier = [(SFSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  v18 = [scopedSearchSectionBundleIdentifier copy];
  [v4 setScopedSearchSectionBundleIdentifier:v18];

  [v4 setSuggestionType:{-[SFSuggestionCardSection suggestionType](self, "suggestionType")}];
  detailText = [(SFSuggestionCardSection *)self detailText];
  v20 = [detailText copy];
  [v4 setDetailText:v20];

  thumbnail = [(SFSuggestionCardSection *)self thumbnail];
  v22 = [thumbnail copy];
  [v4 setThumbnail:v22];

  trailingMiddleText = [(SFSuggestionCardSection *)self trailingMiddleText];
  v24 = [trailingMiddleText copy];
  [v4 setTrailingMiddleText:v24];

  trailingBottomText = [(SFSuggestionCardSection *)self trailingBottomText];
  v26 = [trailingBottomText copy];
  [v4 setTrailingBottomText:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSuggestionCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBSuggestionCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSuggestionCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSuggestionCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFSuggestionCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFSuggestionCardSection)initWithCoder:(id)coder
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
    [(SFSuggestionCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    suggestionText = [(SFCardSection *)v8 suggestionText];
    [(SFSuggestionCardSection *)v5 setSuggestionText:suggestionText];

    [(SFSuggestionCardSection *)v5 setIsContact:[(SFCardSection *)v8 isContact]];
    scopedSearchSectionBundleIdentifier = [(SFCardSection *)v8 scopedSearchSectionBundleIdentifier];
    [(SFSuggestionCardSection *)v5 setScopedSearchSectionBundleIdentifier:scopedSearchSectionBundleIdentifier];

    [(SFSuggestionCardSection *)v5 setSuggestionType:[(SFCardSection *)v8 suggestionType]];
    detailText = [(SFCardSection *)v8 detailText];
    [(SFSuggestionCardSection *)v5 setDetailText:detailText];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(SFSuggestionCardSection *)v5 setThumbnail:thumbnail];

    trailingMiddleText = [(SFCardSection *)v8 trailingMiddleText];
    [(SFSuggestionCardSection *)v5 setTrailingMiddleText:trailingMiddleText];

    trailingBottomText = [(SFCardSection *)v8 trailingBottomText];
    [(SFSuggestionCardSection *)v5 setTrailingBottomText:trailingBottomText];

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