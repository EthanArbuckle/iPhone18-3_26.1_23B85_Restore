@interface SFSuggestionCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSuggestionCardSection)initWithCoder:(id)a3;
- (SFSuggestionCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSuggestionCardSection

- (SFSuggestionCardSection)initWithProtobuf:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53.receiver = self;
  v53.super_class = SFSuggestionCardSection;
  v5 = [(SFCardSection *)&v53 init];
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

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
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
      [(SFSuggestionCardSection *)v5 setType:v19];
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

    v24 = [v4 suggestionText];

    if (v24)
    {
      v25 = [SFRichText alloc];
      v26 = [v4 suggestionText];
      v27 = [(SFRichText *)v25 initWithProtobuf:v26];
      [(SFSuggestionCardSection *)v5 setSuggestionText:v27];
    }

    if ([v4 isContact])
    {
      -[SFSuggestionCardSection setIsContact:](v5, "setIsContact:", [v4 isContact]);
    }

    v28 = [v4 scopedSearchSectionBundleIdentifier];

    if (v28)
    {
      v29 = [v4 scopedSearchSectionBundleIdentifier];
      [(SFSuggestionCardSection *)v5 setScopedSearchSectionBundleIdentifier:v29];
    }

    if ([v4 suggestionType])
    {
      -[SFSuggestionCardSection setSuggestionType:](v5, "setSuggestionType:", [v4 suggestionType]);
    }

    v30 = [v4 detailText];

    if (v30)
    {
      v31 = [SFRichText alloc];
      v32 = [v4 detailText];
      v33 = [(SFRichText *)v31 initWithProtobuf:v32];
      [(SFSuggestionCardSection *)v5 setDetailText:v33];
    }

    v34 = [v4 thumbnail];

    if (v34)
    {
      v35 = [SFImage alloc];
      v36 = [v4 thumbnail];
      v37 = [(SFImage *)v35 initWithProtobuf:v36];
      [(SFSuggestionCardSection *)v5 setThumbnail:v37];
    }

    v38 = [v4 trailingMiddleText];

    if (v38)
    {
      v39 = [SFFormattedText alloc];
      v40 = [v4 trailingMiddleText];
      v41 = [(SFFormattedText *)v39 initWithProtobuf:v40];
      [(SFSuggestionCardSection *)v5 setTrailingMiddleText:v41];
    }

    v42 = [v4 trailingBottomText];

    if (v42)
    {
      v43 = [SFFormattedText alloc];
      v44 = [v4 trailingBottomText];
      v45 = [(SFFormattedText *)v43 initWithProtobuf:v44];
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
  v32 = [(SFCardSection *)self punchoutOptions];
  v4 = [v32 hash];
  v31 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v31 hash];
  v30 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v30 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v10 = [(SFSuggestionCardSection *)self type];
  v11 = v9 ^ [v10 hash];
  v12 = v11 ^ [(SFCardSection *)self separatorStyle];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = v12 ^ [v13 hash];
  v15 = [(SFSuggestionCardSection *)self suggestionText];
  v16 = v8 ^ v14 ^ [v15 hash];
  v17 = [(SFSuggestionCardSection *)self isContact];
  v18 = [(SFSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  v19 = v17 ^ [v18 hash];
  v20 = v19 ^ [(SFSuggestionCardSection *)self suggestionType];
  v21 = [(SFSuggestionCardSection *)self detailText];
  v22 = v20 ^ [v21 hash];
  v23 = [(SFSuggestionCardSection *)self thumbnail];
  v24 = v22 ^ [v23 hash];
  v25 = [(SFSuggestionCardSection *)self trailingMiddleText];
  v26 = v16 ^ v24 ^ [v25 hash];
  v27 = [(SFSuggestionCardSection *)self trailingBottomText];
  v28 = [v27 hash];

  return v26 ^ v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_79;
  }

  if (![(SFSuggestionCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v122.receiver = self, v122.super_class = SFSuggestionCardSection, ![(SFCardSection *)&v122 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_79;
  }

  v5 = v4;
  v120 = [(SFCardSection *)self punchoutOptions];
  v119 = [(SFCardSection *)v5 punchoutOptions];
  v117 = v119 == 0;
  v118 = v120 != 0;
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

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v113 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    v108 = [(SFCardSection *)v5 punchoutOptions];
    v109 = v9;
    if (![v9 isEqual:?])
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

  v111 = [(SFCardSection *)self punchoutPickerTitle];
  v110 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v116[16] = v8;
  if ((v111 != 0) == (v110 == 0))
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

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v107 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v103 = [(SFCardSection *)v5 punchoutPickerTitle];
    v104 = v22;
    if (![v22 isEqual:?])
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

  v106 = [(SFCardSection *)self punchoutPickerDismissText];
  v105 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v106 != 0) == (v105 == 0))
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
    v35 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = v35 != 0;
    v102 = v35;
    if (!v35 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v100 = objc_claimAutoreleasedReturnValue(), v101 = v37, [v37 isEqual:?]))
    {
      v38 = [(SFCardSection *)self canBeHidden];
      *&v116[8] = v36;
      if (v38 == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v99 = [(SFSuggestionCardSection *)self type];
        v98 = [(SFSuggestionCardSection *)v5 type];
        if ((v99 != 0) == (v98 == 0))
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
          v41 = [(SFSuggestionCardSection *)self type];
          v42 = v41 != 0;
          v97 = v41;
          if (!v41 || (-[SFSuggestionCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection type](v5, "type"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v43, [v43 isEqual:?]))
          {
            *&v116[4] = v42;
            v44 = [(SFCardSection *)self separatorStyle];
            if (v44 == [(SFCardSection *)v5 separatorStyle])
            {
              v94 = [(SFCardSection *)self backgroundColor];
              v93 = [(SFCardSection *)v5 backgroundColor];
              if ((v94 != 0) == (v93 == 0))
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
                v45 = [(SFCardSection *)self backgroundColor];
                *&v121[16] = v45 != 0;
                v92 = v45;
                if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v46, [v46 isEqual:?]))
                {
                  v91 = [(SFSuggestionCardSection *)self suggestionText];
                  v90 = [(SFSuggestionCardSection *)v5 suggestionText];
                  if ((v91 != 0) == (v90 == 0))
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
                    v47 = [(SFSuggestionCardSection *)self suggestionText];
                    *&v121[12] = v47 != 0;
                    v87 = v47;
                    if (!v47 || (-[SFSuggestionCardSection suggestionText](self, "suggestionText"), v48 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection suggestionText](v5, "suggestionText"), v85 = objc_claimAutoreleasedReturnValue(), v86 = v48, [v48 isEqual:?]))
                    {
                      v49 = [(SFSuggestionCardSection *)self isContact];
                      if (v49 == [(SFSuggestionCardSection *)v5 isContact])
                      {
                        v84 = [(SFSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
                        v83 = [(SFSuggestionCardSection *)v5 scopedSearchSectionBundleIdentifier];
                        if ((v84 != 0) == (v83 == 0))
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
                          v50 = [(SFSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
                          *&v121[8] = v50 != 0;
                          v82 = v50;
                          if (!v50 || (-[SFSuggestionCardSection scopedSearchSectionBundleIdentifier](self, "scopedSearchSectionBundleIdentifier"), v51 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection scopedSearchSectionBundleIdentifier](v5, "scopedSearchSectionBundleIdentifier"), v80 = objc_claimAutoreleasedReturnValue(), v81 = v51, [v51 isEqual:?]))
                          {
                            v52 = [(SFSuggestionCardSection *)self suggestionType];
                            if (v52 == [(SFSuggestionCardSection *)v5 suggestionType])
                            {
                              v79 = [(SFSuggestionCardSection *)self detailText];
                              v78 = [(SFSuggestionCardSection *)v5 detailText];
                              if ((v79 != 0) == (v78 == 0))
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
                                v53 = [(SFSuggestionCardSection *)self detailText];
                                *&v121[4] = v53 != 0;
                                v77 = v53;
                                if (!v53 || (-[SFSuggestionCardSection detailText](self, "detailText"), v54 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection detailText](v5, "detailText"), v73 = objc_claimAutoreleasedReturnValue(), v74 = v54, [v54 isEqual:?]))
                                {
                                  v76 = [(SFSuggestionCardSection *)self thumbnail];
                                  v75 = [(SFSuggestionCardSection *)v5 thumbnail];
                                  if ((v76 != 0) == (v75 == 0))
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
                                    v55 = [(SFSuggestionCardSection *)self thumbnail];
                                    *v121 = v55 != 0;
                                    v72 = v55;
                                    if (!v55 || (-[SFSuggestionCardSection thumbnail](self, "thumbnail"), v56 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection thumbnail](v5, "thumbnail"), v68 = objc_claimAutoreleasedReturnValue(), v69 = v56, [v56 isEqual:?]))
                                    {
                                      v71 = [(SFSuggestionCardSection *)self trailingMiddleText];
                                      v70 = [(SFSuggestionCardSection *)v5 trailingMiddleText];
                                      if ((v71 != 0) == (v70 == 0))
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
                                        v57 = [(SFSuggestionCardSection *)self trailingMiddleText];
                                        v115 = v57 != 0;
                                        v67 = v57;
                                        if (!v57 || (-[SFSuggestionCardSection trailingMiddleText](self, "trailingMiddleText"), v58 = objc_claimAutoreleasedReturnValue(), -[SFSuggestionCardSection trailingMiddleText](v5, "trailingMiddleText"), v63 = objc_claimAutoreleasedReturnValue(), v64 = v58, [v58 isEqual:?]))
                                        {
                                          v66 = [(SFSuggestionCardSection *)self trailingBottomText];
                                          v65 = [(SFSuggestionCardSection *)v5 trailingBottomText];
                                          if ((v66 != 0) == (v65 == 0))
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
                                            v62 = [(SFSuggestionCardSection *)self trailingBottomText];
                                            if (v62)
                                            {
                                              v59 = [(SFSuggestionCardSection *)self trailingBottomText];
                                              v60 = [(SFSuggestionCardSection *)v5 trailingBottomText];
                                              v61 = v59;
                                              v19 = [v59 isEqual:v60];
                                              v6 = v60;
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
                                              v62 = 0;
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
    v112 = v4;
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
    v4 = v112;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v28.receiver = self;
  v28.super_class = SFSuggestionCardSection;
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
  v11 = [(SFSuggestionCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFSuggestionCardSection *)self suggestionText];
  v16 = [v15 copy];
  [v4 setSuggestionText:v16];

  [v4 setIsContact:{-[SFSuggestionCardSection isContact](self, "isContact")}];
  v17 = [(SFSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  v18 = [v17 copy];
  [v4 setScopedSearchSectionBundleIdentifier:v18];

  [v4 setSuggestionType:{-[SFSuggestionCardSection suggestionType](self, "suggestionType")}];
  v19 = [(SFSuggestionCardSection *)self detailText];
  v20 = [v19 copy];
  [v4 setDetailText:v20];

  v21 = [(SFSuggestionCardSection *)self thumbnail];
  v22 = [v21 copy];
  [v4 setThumbnail:v22];

  v23 = [(SFSuggestionCardSection *)self trailingMiddleText];
  v24 = [v23 copy];
  [v4 setTrailingMiddleText:v24];

  v25 = [(SFSuggestionCardSection *)self trailingBottomText];
  v26 = [v25 copy];
  [v4 setTrailingBottomText:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSuggestionCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSuggestionCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSuggestionCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSuggestionCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFSuggestionCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFSuggestionCardSection)initWithCoder:(id)a3
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
    [(SFSuggestionCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 suggestionText];
    [(SFSuggestionCardSection *)v5 setSuggestionText:v14];

    [(SFSuggestionCardSection *)v5 setIsContact:[(SFCardSection *)v8 isContact]];
    v15 = [(SFCardSection *)v8 scopedSearchSectionBundleIdentifier];
    [(SFSuggestionCardSection *)v5 setScopedSearchSectionBundleIdentifier:v15];

    [(SFSuggestionCardSection *)v5 setSuggestionType:[(SFCardSection *)v8 suggestionType]];
    v16 = [(SFCardSection *)v8 detailText];
    [(SFSuggestionCardSection *)v5 setDetailText:v16];

    v17 = [(SFCardSection *)v8 thumbnail];
    [(SFSuggestionCardSection *)v5 setThumbnail:v17];

    v18 = [(SFCardSection *)v8 trailingMiddleText];
    [(SFSuggestionCardSection *)v5 setTrailingMiddleText:v18];

    v19 = [(SFCardSection *)v8 trailingBottomText];
    [(SFSuggestionCardSection *)v5 setTrailingBottomText:v19];

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

@end