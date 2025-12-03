@interface SFSocialMediaPostCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSocialMediaPostCardSection)initWithCoder:(id)coder;
- (SFSocialMediaPostCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSocialMediaPostCardSection

- (unint64_t)hash
{
  v38.receiver = self;
  v38.super_class = SFSocialMediaPostCardSection;
  v3 = [(SFCardSection *)&v38 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [punchoutPickerDismissText hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFSocialMediaPostCardSection *)self type];
  v10 = hasBottomPadding ^ [type hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [backgroundColor hash];
  name = [(SFSocialMediaPostCardSection *)self name];
  v14 = v8 ^ v12 ^ [name hash];
  nameNoWrap = [(SFSocialMediaPostCardSection *)self nameNoWrap];
  nameMaxLines = [(SFSocialMediaPostCardSection *)self nameMaxLines];
  v17 = nameNoWrap ^ [nameMaxLines hash];
  handle = [(SFSocialMediaPostCardSection *)self handle];
  v19 = v17 ^ [handle hash];
  verifiedGlyph = [(SFSocialMediaPostCardSection *)self verifiedGlyph];
  v21 = v19 ^ [verifiedGlyph hash];
  profilePicture = [(SFSocialMediaPostCardSection *)self profilePicture];
  v23 = v21 ^ [profilePicture hash];
  post = [(SFSocialMediaPostCardSection *)self post];
  v32 = v14 ^ v23 ^ [post hash];
  picture = [(SFSocialMediaPostCardSection *)self picture];
  v26 = [picture hash];
  timestamp = [(SFSocialMediaPostCardSection *)self timestamp];
  v28 = v26 ^ [timestamp hash];
  footnote = [(SFSocialMediaPostCardSection *)self footnote];
  v30 = v28 ^ [footnote hash];

  return v32 ^ v30;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_95;
  }

  if (![(SFSocialMediaPostCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v144.receiver = self, v144.super_class = SFSocialMediaPostCardSection, ![(SFCardSection *)&v144 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_95;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v139 = punchoutOptions2 == 0;
  v140 = punchoutOptions != 0;
  if (v140 == v139)
  {
    memset(v138, 0, sizeof(v138));
    memset(v136, 0, sizeof(v136));
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v135, 0, sizeof(v135));
    v13 = 0;
    memset(v143, 0, sizeof(v143));
    memset(v134, 0, sizeof(v134));
    v14 = 0;
    v15 = 0;
    v137 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v133 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    punchoutOptions5 = [(SFCardSection *)v5 punchoutOptions];
    v129 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
    {
      memset(v138, 0, 24);
      memset(v136, 0, sizeof(v136));
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v135, 0, sizeof(v135));
      v13 = 0;
      memset(v143, 0, sizeof(v143));
      memset(v134, 0, sizeof(v134));
      v14 = 0;
      v15 = 0;
      v137 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v138[24] = 1;
      goto LABEL_16;
    }
  }

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v138[24] = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
  {
    memset(v136, 0, sizeof(v136));
    *&v138[8] = 0uLL;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v135, 0, sizeof(v135));
    v13 = 0;
    memset(v143, 0, sizeof(v143));
    memset(v134, 0, sizeof(v134));
    v14 = 0;
    v15 = 0;
    v137 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v138 = 1;
    goto LABEL_16;
  }

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v127 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v124 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
    {
      *v136 = 0;
      *&v138[4] = 0;
      *&v138[12] = 0;
      *&v136[8] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v135, 0, sizeof(v135));
      v13 = 0;
      memset(v143, 0, sizeof(v143));
      memset(v134, 0, sizeof(v134));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v137 = 0;
      *v138 = 1;
      *&v136[16] = 1;
      *&v138[20] = 1;
      goto LABEL_16;
    }

    *&v138[20] = v21;
  }

  else
  {
    *&v138[20] = 0;
  }

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
  {
    *&v138[4] = 0;
    *&v138[12] = 0;
    *&v136[4] = 0;
    *&v136[12] = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v135, 0, sizeof(v135));
    v13 = 0;
    memset(v143, 0, sizeof(v143));
    memset(v134, 0, sizeof(v134));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v137 = 0;
    *v138 = 1;
    *&v136[16] = 1;
    *v136 = 1;
  }

  else
  {
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = punchoutPickerDismissText3 != 0;
    v122 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v120 = objc_claimAutoreleasedReturnValue(), v121 = v37, [v37 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      *&v138[16] = v36;
      if (canBeHidden == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        type = [(SFSocialMediaPostCardSection *)self type];
        type2 = [(SFSocialMediaPostCardSection *)v5 type];
        if ((type != 0) == (type2 == 0))
        {
          *&v138[12] = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          memset(v135, 0, sizeof(v135));
          v13 = 0;
          *&v134[4] = 0;
          memset(v143, 0, sizeof(v143));
          *v134 = 0;
          *&v138[4] = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v137 = 0;
          *v138 = 1;
          *&v136[16] = 1;
          *v136 = 1;
          *&v134[12] = 1;
          *&v134[16] = 0;
          *&v136[8] = 1;
        }

        else
        {
          type3 = [(SFSocialMediaPostCardSection *)self type];
          v42 = type3 != 0;
          v117 = type3;
          if (!type3 || (-[SFSocialMediaPostCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection type](v5, "type"), v115 = objc_claimAutoreleasedReturnValue(), v116 = v43, [v43 isEqual:?]))
          {
            *&v138[12] = v42;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
              {
                v10 = 0;
                v11 = 0;
                v12 = 0;
                memset(v135, 0, 24);
                v13 = 0;
                *&v134[4] = 0;
                memset(v143, 0, sizeof(v143));
                *v134 = 0;
                *&v138[4] = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v137 = 0;
                *v138 = 1;
                *&v136[16] = 1;
                *v136 = 0x100000001;
                *&v134[12] = 1;
                *&v134[16] = 0;
                *&v136[8] = 1;
                *&v135[24] = 1;
              }

              else
              {
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                HIDWORD(v143[2]) = backgroundColor3 != 0;
                v112 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v108 = objc_claimAutoreleasedReturnValue(), v109 = v46, [v46 isEqual:?]))
                {
                  name = [(SFSocialMediaPostCardSection *)self name];
                  name2 = [(SFSocialMediaPostCardSection *)v5 name];
                  if ((name != 0) == (name2 == 0))
                  {
                    v11 = 0;
                    v12 = 0;
                    memset(v135, 0, 24);
                    v13 = 0;
                    *&v134[4] = 0;
                    *v134 = 0;
                    memset(v143, 0, 20);
                    *&v138[4] = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v137 = 0;
                    *v138 = 1;
                    *&v136[16] = 1;
                    *v136 = 0x100000001;
                    *&v134[12] = 1;
                    *&v136[8] = 0x100000001;
                    *&v135[24] = 1;
                    v10 = 1;
                  }

                  else
                  {
                    name3 = [(SFSocialMediaPostCardSection *)self name];
                    LODWORD(v143[2]) = name3 != 0;
                    v107 = name3;
                    if (!name3 || (-[SFSocialMediaPostCardSection name](self, "name"), v48 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection name](v5, "name"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v48, [v48 isEqual:?]))
                    {
                      nameNoWrap = [(SFSocialMediaPostCardSection *)self nameNoWrap];
                      if (nameNoWrap == [(SFSocialMediaPostCardSection *)v5 nameNoWrap])
                      {
                        nameMaxLines = [(SFSocialMediaPostCardSection *)self nameMaxLines];
                        nameMaxLines2 = [(SFSocialMediaPostCardSection *)v5 nameMaxLines];
                        if ((nameMaxLines != 0) == (nameMaxLines2 == 0))
                        {
                          v143[0] = 0;
                          v143[1] = 0;
                          memset(v135, 0, 24);
                          v13 = 0;
                          *&v134[4] = 0;
                          *v134 = 0;
                          *&v138[4] = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v137 = 0;
                          *v138 = 1;
                          *&v136[16] = 1;
                          *v136 = 0x100000001;
                          *&v134[12] = 1;
                          *&v136[8] = 0x100000001;
                          *&v135[24] = 1;
                          v10 = 1;
                          v11 = 1;
                          v12 = 1;
                        }

                        else
                        {
                          nameMaxLines3 = [(SFSocialMediaPostCardSection *)self nameMaxLines];
                          HIDWORD(v143[1]) = nameMaxLines3 != 0;
                          v102 = nameMaxLines3;
                          if (!nameMaxLines3 || (-[SFSocialMediaPostCardSection nameMaxLines](self, "nameMaxLines"), v51 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection nameMaxLines](v5, "nameMaxLines"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v51, [v51 isEqual:?]))
                          {
                            handle = [(SFSocialMediaPostCardSection *)self handle];
                            handle2 = [(SFSocialMediaPostCardSection *)v5 handle];
                            if ((handle != 0) == (handle2 == 0))
                            {
                              v13 = 0;
                              *(v143 + 4) = 0;
                              *&v134[4] = 0;
                              *&v135[12] = 0;
                              *v134 = 0;
                              *&v135[4] = 0;
                              LODWORD(v143[0]) = 0;
                              *&v138[4] = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v137 = 0;
                              *v138 = 1;
                              *&v136[12] = 1;
                              *&v136[16] = 1;
                              *v136 = 1;
                              *&v136[4] = 1;
                              *&v134[12] = 1;
                              *&v134[16] = 0;
                              *&v136[8] = 1;
                              *&v135[20] = 1;
                              *&v135[24] = 1;
                              v10 = 1;
                              v11 = 1;
                              v12 = 1;
                              *v135 = 1;
                            }

                            else
                            {
                              handle3 = [(SFSocialMediaPostCardSection *)self handle];
                              LODWORD(v143[1]) = handle3 != 0;
                              v97 = handle3;
                              if (!handle3 || (-[SFSocialMediaPostCardSection handle](self, "handle"), v53 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection handle](v5, "handle"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v53, [v53 isEqual:?]))
                              {
                                verifiedGlyph = [(SFSocialMediaPostCardSection *)self verifiedGlyph];
                                verifiedGlyph2 = [(SFSocialMediaPostCardSection *)v5 verifiedGlyph];
                                if ((verifiedGlyph != 0) == (verifiedGlyph2 == 0))
                                {
                                  *&v135[12] = 0;
                                  v143[0] = 0;
                                  *v134 = 0;
                                  *&v135[4] = 0;
                                  *&v138[4] = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v137 = 0;
                                  *v138 = 1;
                                  *&v136[12] = 1;
                                  *&v136[16] = 1;
                                  *v136 = 1;
                                  *&v136[4] = 1;
                                  *&v134[12] = 1;
                                  *&v134[16] = 0;
                                  *&v136[8] = 1;
                                  *&v135[20] = 1;
                                  *&v135[24] = 1;
                                  v10 = 1;
                                  v11 = 1;
                                  v12 = 1;
                                  *v135 = 1;
                                  v13 = 1;
                                  *&v134[8] = 1;
                                }

                                else
                                {
                                  verifiedGlyph3 = [(SFSocialMediaPostCardSection *)self verifiedGlyph];
                                  HIDWORD(v143[0]) = verifiedGlyph3 != 0;
                                  v92 = verifiedGlyph3;
                                  if (!verifiedGlyph3 || (-[SFSocialMediaPostCardSection verifiedGlyph](self, "verifiedGlyph"), v55 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection verifiedGlyph](v5, "verifiedGlyph"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v55, [v55 isEqual:?]))
                                  {
                                    profilePicture = [(SFSocialMediaPostCardSection *)self profilePicture];
                                    profilePicture2 = [(SFSocialMediaPostCardSection *)v5 profilePicture];
                                    if ((profilePicture != 0) == (profilePicture2 == 0))
                                    {
                                      *&v135[4] = 0;
                                      LODWORD(v143[0]) = 0;
                                      *&v134[4] = 0;
                                      *&v138[4] = 0;
                                      v14 = 0;
                                      *&v135[12] = 0;
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v137 = 0;
                                      *v138 = 1;
                                      *&v136[12] = 1;
                                      *&v136[16] = 1;
                                      *v136 = 1;
                                      *&v136[4] = 1;
                                      *&v134[12] = 1;
                                      *&v134[16] = 0;
                                      *&v136[8] = 1;
                                      *&v135[20] = 1;
                                      *&v135[24] = 1;
                                      v10 = 1;
                                      v11 = 1;
                                      v12 = 1;
                                      *v135 = 1;
                                      v13 = 1;
                                      *&v134[8] = 1;
                                      *&v135[16] = 1;
                                      *v134 = 1;
                                    }

                                    else
                                    {
                                      profilePicture3 = [(SFSocialMediaPostCardSection *)self profilePicture];
                                      LODWORD(v143[0]) = profilePicture3 != 0;
                                      v87 = profilePicture3;
                                      if (!profilePicture3 || (-[SFSocialMediaPostCardSection profilePicture](self, "profilePicture"), v57 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection profilePicture](v5, "profilePicture"), v83 = objc_claimAutoreleasedReturnValue(), v84 = v57, [v57 isEqual:?]))
                                      {
                                        post = [(SFSocialMediaPostCardSection *)self post];
                                        post2 = [(SFSocialMediaPostCardSection *)v5 post];
                                        if ((post != 0) == (post2 == 0))
                                        {
                                          *&v135[8] = 0;
                                          *&v138[4] = 0;
                                          v14 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v18 = 0;
                                          v19 = 0;
                                          v137 = 0;
                                          *v138 = 1;
                                          *&v136[12] = 1;
                                          *&v136[16] = 1;
                                          *v136 = 1;
                                          *&v136[4] = 1;
                                          *&v134[12] = 1;
                                          *&v134[16] = 0;
                                          *&v136[8] = 1;
                                          *&v135[20] = 1;
                                          *&v135[24] = 1;
                                          v10 = 1;
                                          v11 = 1;
                                          v12 = 1;
                                          *v135 = 1;
                                          *&v135[4] = 1;
                                          v13 = 1;
                                          *&v134[8] = 1;
                                          *&v135[16] = 1;
                                          *v134 = 1;
                                          *&v134[4] = 1;
                                        }

                                        else
                                        {
                                          post3 = [(SFSocialMediaPostCardSection *)self post];
                                          *&v138[8] = post3 != 0;
                                          v82 = post3;
                                          if (!post3 || (-[SFSocialMediaPostCardSection post](self, "post"), v59 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection post](v5, "post"), v80 = objc_claimAutoreleasedReturnValue(), v81 = v59, [v59 isEqual:?]))
                                          {
                                            picture = [(SFSocialMediaPostCardSection *)self picture];
                                            picture2 = [(SFSocialMediaPostCardSection *)v5 picture];
                                            if ((picture != 0) == (picture2 == 0))
                                            {
                                              v14 = 0;
                                              *&v135[12] = 0;
                                              v15 = 0;
                                              v16 = 0;
                                              v17 = 0;
                                              v18 = 0;
                                              v19 = 0;
                                              *v138 = 1;
                                              *&v138[4] = 0;
                                              *&v136[16] = 1;
                                              v137 = 0;
                                              *v136 = 1;
                                              *&v136[4] = 1;
                                              *&v134[8] = 1;
                                              *&v134[12] = 1;
                                              *&v136[8] = 1;
                                              *&v136[12] = 1;
                                              *&v135[20] = 1;
                                              *&v135[24] = 1;
                                              v10 = 1;
                                              v11 = 1;
                                              v12 = 1;
                                              *v135 = 1;
                                              *&v135[4] = 1;
                                              v13 = 1;
                                              *&v135[16] = 1;
                                              *v134 = 1;
                                              *&v134[4] = 1;
                                              *&v135[8] = 1;
                                              *&v134[16] = 1;
                                            }

                                            else
                                            {
                                              picture3 = [(SFSocialMediaPostCardSection *)self picture];
                                              *&v138[4] = picture3 != 0;
                                              v77 = picture3;
                                              if (!picture3 || (-[SFSocialMediaPostCardSection picture](self, "picture"), v61 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection picture](v5, "picture"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v61, [v61 isEqual:?]))
                                              {
                                                timestamp = [(SFSocialMediaPostCardSection *)self timestamp];
                                                timestamp2 = [(SFSocialMediaPostCardSection *)v5 timestamp];
                                                if ((timestamp != 0) == (timestamp2 == 0))
                                                {
                                                  v15 = 0;
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v18 = 0;
                                                  v19 = 0;
                                                  v137 = 0;
                                                  *v138 = 1;
                                                  *&v136[12] = 1;
                                                  *&v136[16] = 1;
                                                  *v136 = 1;
                                                  *&v136[4] = 1;
                                                  *&v134[8] = 1;
                                                  *&v134[12] = 1;
                                                  *&v136[8] = 1;
                                                  *&v135[20] = 1;
                                                  *&v135[24] = 1;
                                                  v10 = 1;
                                                  v11 = 1;
                                                  v12 = 1;
                                                  *v135 = 1;
                                                  *&v135[4] = 1;
                                                  v13 = 1;
                                                  *&v135[16] = 1;
                                                  *v134 = 1;
                                                  *&v134[4] = 1;
                                                  *&v135[8] = 1;
                                                  *&v134[16] = 1;
                                                  v14 = 1;
                                                  *&v135[12] = 1;
                                                }

                                                else
                                                {
                                                  timestamp3 = [(SFSocialMediaPostCardSection *)self timestamp];
                                                  v137 = timestamp3 != 0;
                                                  v70 = timestamp3;
                                                  if (!timestamp3 || (-[SFSocialMediaPostCardSection timestamp](self, "timestamp"), v63 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection timestamp](v5, "timestamp"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v63, [v63 isEqual:?]))
                                                  {
                                                    footnote = [(SFSocialMediaPostCardSection *)self footnote];
                                                    footnote2 = [(SFSocialMediaPostCardSection *)v5 footnote];
                                                    if ((footnote != 0) == (footnote2 == 0))
                                                    {
                                                      v17 = 0;
                                                      v18 = 0;
                                                      v19 = 0;
                                                      *v138 = 1;
                                                      *&v136[12] = 1;
                                                      *&v136[16] = 1;
                                                      *v136 = 1;
                                                      *&v136[4] = 1;
                                                      *&v134[8] = 1;
                                                      *&v134[12] = 1;
                                                      *&v136[8] = 1;
                                                      *&v135[20] = 1;
                                                      *&v135[24] = 1;
                                                      v10 = 1;
                                                      v11 = 1;
                                                      v12 = 1;
                                                      *v135 = 1;
                                                      *&v135[4] = 1;
                                                      v13 = 1;
                                                      *&v135[12] = 1;
                                                      *&v135[16] = 1;
                                                      *v134 = 1;
                                                      *&v134[4] = 1;
                                                      *&v135[8] = 1;
                                                      *&v134[16] = 1;
                                                      v14 = 1;
                                                      v15 = 1;
                                                      v16 = 1;
                                                    }

                                                    else
                                                    {
                                                      footnote3 = [(SFSocialMediaPostCardSection *)self footnote];
                                                      if (footnote3)
                                                      {
                                                        footnote4 = [(SFSocialMediaPostCardSection *)self footnote];
                                                        footnote5 = [(SFSocialMediaPostCardSection *)v5 footnote];
                                                        v66 = footnote4;
                                                        v19 = [footnote4 isEqual:footnote5];
                                                        v6 = footnote5;
                                                        v18 = 1;
                                                        *v138 = 1;
                                                        *&v136[12] = 1;
                                                        *&v136[16] = 1;
                                                        *v136 = 1;
                                                        *&v136[4] = 1;
                                                        *&v134[8] = 1;
                                                        *&v134[12] = 1;
                                                        *&v136[8] = 1;
                                                        *&v135[20] = 1;
                                                        *&v135[24] = 1;
                                                        v10 = 1;
                                                        v11 = 1;
                                                        v12 = 1;
                                                        *v135 = 1;
                                                        *&v135[4] = 1;
                                                        v13 = 1;
                                                        *&v135[12] = 1;
                                                        *&v135[16] = 1;
                                                        *v134 = 1;
                                                        *&v134[4] = 1;
                                                        *&v135[8] = 1;
                                                        *&v134[16] = 1;
                                                        v14 = 1;
                                                        v15 = 1;
                                                        v16 = 1;
                                                        v17 = 1;
                                                      }

                                                      else
                                                      {
                                                        footnote3 = 0;
                                                        v18 = 0;
                                                        *v138 = 1;
                                                        *&v136[16] = 1;
                                                        *v136 = 0x100000001;
                                                        *&v134[8] = 0x100000001;
                                                        *&v136[8] = 0x100000001;
                                                        *&v135[20] = 0x100000001;
                                                        v10 = 1;
                                                        v11 = 1;
                                                        v12 = 1;
                                                        *v135 = 0x100000001;
                                                        v13 = 1;
                                                        *&v135[16] = 1;
                                                        *v134 = 0x100000001;
                                                        *&v135[8] = 0x100000001;
                                                        *&v134[16] = 1;
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
                                                    *v138 = 1;
                                                    *&v136[12] = 1;
                                                    *&v136[16] = 1;
                                                    *v136 = 1;
                                                    *&v136[4] = 1;
                                                    *&v134[8] = 1;
                                                    *&v134[12] = 1;
                                                    *&v136[8] = 1;
                                                    *&v135[20] = 1;
                                                    *&v135[24] = 1;
                                                    v10 = 1;
                                                    v11 = 1;
                                                    v12 = 1;
                                                    *v135 = 1;
                                                    *&v135[4] = 1;
                                                    v13 = 1;
                                                    *&v135[12] = 1;
                                                    *&v135[16] = 1;
                                                    *v134 = 1;
                                                    *&v134[4] = 1;
                                                    *&v135[8] = 1;
                                                    *&v134[16] = 1;
                                                    v14 = 1;
                                                    v15 = 1;
                                                    v137 = 1;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                *&v135[12] = 0;
                                                v15 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v18 = 0;
                                                v19 = 0;
                                                v137 = 0;
                                                *v138 = 1;
                                                *&v136[12] = 1;
                                                *&v136[16] = 1;
                                                *v136 = 1;
                                                *&v136[4] = 1;
                                                *&v134[8] = 1;
                                                *&v134[12] = 1;
                                                *&v136[8] = 1;
                                                *&v135[20] = 1;
                                                *&v135[24] = 1;
                                                v10 = 1;
                                                v11 = 1;
                                                v12 = 1;
                                                *v135 = 1;
                                                *&v135[4] = 1;
                                                v13 = 1;
                                                *&v135[16] = 1;
                                                *v134 = 1;
                                                *&v134[4] = 1;
                                                *&v135[8] = 1;
                                                *&v134[16] = 1;
                                                v14 = 1;
                                                *&v138[4] = 1;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v14 = 0;
                                            *&v135[12] = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            *v138 = 1;
                                            *&v138[4] = 0;
                                            *&v136[16] = 1;
                                            v137 = 0;
                                            *v136 = 1;
                                            *&v136[4] = 1;
                                            *&v134[12] = 1;
                                            *&v134[16] = 0;
                                            *&v136[8] = 1;
                                            *&v136[12] = 1;
                                            *&v135[20] = 1;
                                            *&v135[24] = 1;
                                            v10 = 1;
                                            v11 = 1;
                                            v12 = 1;
                                            *v135 = 1;
                                            *&v135[4] = 1;
                                            v13 = 1;
                                            *&v134[4] = 1;
                                            *&v134[8] = 1;
                                            *&v135[16] = 1;
                                            *v134 = 1;
                                            *&v135[8] = 1;
                                            *&v138[8] = 1;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        *&v134[4] = 0;
                                        *&v135[8] = 0;
                                        *&v138[4] = 0;
                                        v14 = 0;
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v137 = 0;
                                        *v138 = 1;
                                        *&v136[12] = 1;
                                        *&v136[16] = 1;
                                        *v136 = 1;
                                        *&v136[4] = 1;
                                        *&v134[12] = 1;
                                        *&v134[16] = 0;
                                        *&v136[8] = 1;
                                        *&v135[20] = 1;
                                        *&v135[24] = 1;
                                        v10 = 1;
                                        v11 = 1;
                                        v12 = 1;
                                        *v135 = 1;
                                        *&v135[4] = 1;
                                        v13 = 1;
                                        *&v134[8] = 1;
                                        *&v135[16] = 1;
                                        *v134 = 1;
                                        LODWORD(v143[0]) = 1;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    *v134 = 0;
                                    *&v135[4] = 0;
                                    v143[0] = 0x100000000;
                                    *&v138[4] = 0;
                                    v14 = 0;
                                    *&v135[12] = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v137 = 0;
                                    *v138 = 1;
                                    *&v136[16] = 1;
                                    *v136 = 0x100000001;
                                    *&v134[16] = 0;
                                    *&v136[8] = 0x100000001;
                                    *&v135[20] = 0x100000001;
                                    v10 = 1;
                                    v11 = 1;
                                    v12 = 1;
                                    *v135 = 1;
                                    v13 = 1;
                                    *&v134[8] = 0x100000001;
                                    *&v135[16] = 1;
                                  }
                                }
                              }

                              else
                              {
                                *&v134[4] = 0;
                                *&v135[12] = 0;
                                v143[0] = 0;
                                *v134 = 0;
                                *&v135[4] = 0;
                                *&v138[4] = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v137 = 0;
                                *v138 = 1;
                                *&v136[12] = 1;
                                *&v136[16] = 1;
                                *v136 = 1;
                                *&v136[4] = 1;
                                *&v134[12] = 1;
                                *&v134[16] = 0;
                                *&v136[8] = 1;
                                *&v135[20] = 1;
                                *&v135[24] = 1;
                                v10 = 1;
                                v11 = 1;
                                v12 = 1;
                                *v135 = 1;
                                v13 = 1;
                                LODWORD(v143[1]) = 1;
                              }
                            }
                          }

                          else
                          {
                            memset(v135, 0, 20);
                            v13 = 0;
                            *(v143 + 4) = 0;
                            *&v134[4] = 0;
                            *v134 = 0;
                            LODWORD(v143[0]) = 0;
                            *&v138[4] = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v137 = 0;
                            *v138 = 1;
                            *&v136[16] = 1;
                            *v136 = 0x100000001;
                            *&v134[12] = 1;
                            *&v134[16] = 0;
                            *&v136[8] = 0x100000001;
                            *&v135[20] = 0x100000001;
                            v10 = 1;
                            v11 = 1;
                            v12 = 1;
                            HIDWORD(v143[1]) = 1;
                          }
                        }
                      }

                      else
                      {
                        v12 = 0;
                        v143[0] = 0;
                        v143[1] = 0;
                        memset(v135, 0, 24);
                        v13 = 0;
                        *&v134[4] = 0;
                        *v134 = 0;
                        *&v138[4] = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v137 = 0;
                        *v138 = 1;
                        *&v136[16] = 1;
                        *v136 = 0x100000001;
                        *&v134[12] = 1;
                        *&v136[8] = 0x100000001;
                        *&v135[24] = 1;
                        v10 = 1;
                        v11 = 1;
                      }
                    }

                    else
                    {
                      v12 = 0;
                      v143[0] = 0;
                      v143[1] = 0;
                      memset(v135, 0, 24);
                      v13 = 0;
                      *&v134[4] = 0;
                      *v134 = 0;
                      *&v138[4] = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v137 = 0;
                      *v138 = 1;
                      *&v136[16] = 1;
                      *v136 = 0x100000001;
                      *&v134[12] = 1;
                      *&v134[16] = 0;
                      *&v136[8] = 0x100000001;
                      *&v135[24] = 1;
                      v10 = 1;
                      v11 = 1;
                      LODWORD(v143[2]) = 1;
                    }
                  }
                }

                else
                {
                  v10 = 0;
                  v11 = 0;
                  v12 = 0;
                  memset(v135, 0, 24);
                  v13 = 0;
                  *&v134[4] = 0;
                  *v134 = 0;
                  memset(v143, 0, 20);
                  *&v138[4] = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v137 = 0;
                  *v138 = 1;
                  *&v136[16] = 1;
                  *v136 = 0x100000001;
                  *&v134[12] = 1;
                  *&v134[16] = 0;
                  *&v136[8] = 0x100000001;
                  *&v135[24] = 1;
                  HIDWORD(v143[2]) = 1;
                }
              }
            }

            else
            {
              v10 = 0;
              v11 = 0;
              v12 = 0;
              memset(v135, 0, sizeof(v135));
              v13 = 0;
              *&v134[4] = 0;
              memset(v143, 0, sizeof(v143));
              *v134 = 0;
              *&v138[4] = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v137 = 0;
              *v138 = 1;
              *&v136[16] = 1;
              *v136 = 0x100000001;
              *&v134[12] = 1;
              *&v134[16] = 0;
              *&v136[8] = 1;
            }
          }

          else
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            memset(v135, 0, sizeof(v135));
            v13 = 0;
            *&v134[4] = 0;
            memset(v143, 0, sizeof(v143));
            *v134 = 0;
            *&v138[4] = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v137 = 0;
            *v138 = 1;
            *&v136[16] = 1;
            *v136 = 0x100000001;
            *&v134[12] = 1;
            *&v134[16] = 0;
            *&v136[8] = 1;
            *&v138[12] = 1;
          }
        }
      }

      else
      {
        *&v136[4] = 0;
        *&v138[12] = 0;
        *&v136[12] = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        memset(v135, 0, sizeof(v135));
        v13 = 0;
        *&v134[4] = 0;
        memset(v143, 0, sizeof(v143));
        *v134 = 0;
        *&v138[4] = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v137 = 0;
        *v138 = 1;
        *&v136[16] = 1;
        *v136 = 1;
        *&v134[12] = 1;
      }
    }

    else
    {
      *&v136[4] = 0;
      *&v138[12] = 0;
      *&v136[12] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v135, 0, sizeof(v135));
      v13 = 0;
      *&v134[4] = 0;
      memset(v143, 0, sizeof(v143));
      *v134 = 0;
      *&v138[4] = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v137 = 0;
      *v138 = 1;
      *&v136[16] = 1;
      *v136 = 1;
      *&v134[12] = 1;
      *&v134[16] = 0;
      *&v138[16] = 1;
    }
  }

LABEL_16:
  if (v18)
  {
    v132 = equalCopy;
    v23 = v19;
    v24 = v12;
    v25 = v10;
    v26 = v11;
    v27 = v14;
    v28 = v5;
    v29 = v13;
    v30 = v16;
    v31 = v15;
    v32 = v17;

    v33 = v32;
    v15 = v31;
    v16 = v30;
    v13 = v29;
    v5 = v28;
    v14 = v27;
    v11 = v26;
    v10 = v25;
    v12 = v24;
    v19 = v23;
    equalCopy = v132;
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
  if (v137)
  {
  }

  if (v15)
  {
  }

  if (*&v135[12])
  {
  }

  if (*&v138[4])
  {
  }

  if (v14)
  {
  }

  if (*&v134[16])
  {
  }

  if (*&v138[8])
  {
  }

  if (*&v135[8])
  {
  }

  if (*&v134[4])
  {
  }

  if (LODWORD(v143[0]))
  {
  }

  if (*&v135[4])
  {
  }

  if (*v134)
  {
  }

  if (HIDWORD(v143[0]))
  {
  }

  if (*&v135[16])
  {
  }

  if (*&v134[8])
  {
  }

  if (LODWORD(v143[1]))
  {
  }

  if (v13)
  {
  }

  if (*v135)
  {
  }

  if (HIDWORD(v143[1]))
  {
  }

  if (*&v135[20])
  {
  }

  if (v12)
  {
  }

  if (LODWORD(v143[2]))
  {

    if (!v11)
    {
      goto LABEL_64;
    }

LABEL_100:

    if (!v10)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v11)
  {
    goto LABEL_100;
  }

LABEL_64:
  if (v10)
  {
LABEL_65:
  }

LABEL_66:
  if (HIDWORD(v143[2]))
  {
  }

  if (*&v136[12])
  {
  }

  if (*&v135[24])
  {
  }

  if (*&v138[12])
  {
  }

  if (*&v136[4])
  {
  }

  if (*&v136[8])
  {
  }

  if (*&v138[16])
  {
  }

  if (*&v134[12])
  {
  }

  if (*v136)
  {
  }

  if (*&v138[20])
  {
  }

  if (*&v136[16])
  {
  }

  if (*v138)
  {
  }

  if (*&v138[24])
  {
  }

  if (v140 != v139)
  {
  }

LABEL_95:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34.receiver = self;
  v34.super_class = SFSocialMediaPostCardSection;
  v4 = [(SFCardSection *)&v34 copyWithZone:zone];
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
  type = [(SFSocialMediaPostCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  name = [(SFSocialMediaPostCardSection *)self name];
  v16 = [name copy];
  [v4 setName:v16];

  [v4 setNameNoWrap:{-[SFSocialMediaPostCardSection nameNoWrap](self, "nameNoWrap")}];
  nameMaxLines = [(SFSocialMediaPostCardSection *)self nameMaxLines];
  v18 = [nameMaxLines copy];
  [v4 setNameMaxLines:v18];

  handle = [(SFSocialMediaPostCardSection *)self handle];
  v20 = [handle copy];
  [v4 setHandle:v20];

  verifiedGlyph = [(SFSocialMediaPostCardSection *)self verifiedGlyph];
  v22 = [verifiedGlyph copy];
  [v4 setVerifiedGlyph:v22];

  profilePicture = [(SFSocialMediaPostCardSection *)self profilePicture];
  v24 = [profilePicture copy];
  [v4 setProfilePicture:v24];

  post = [(SFSocialMediaPostCardSection *)self post];
  v26 = [post copy];
  [v4 setPost:v26];

  picture = [(SFSocialMediaPostCardSection *)self picture];
  v28 = [picture copy];
  [v4 setPicture:v28];

  timestamp = [(SFSocialMediaPostCardSection *)self timestamp];
  v30 = [timestamp copy];
  [v4 setTimestamp:v30];

  footnote = [(SFSocialMediaPostCardSection *)self footnote];
  v32 = [footnote copy];
  [v4 setFootnote:v32];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSocialMediaPostCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBSocialMediaPostCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSocialMediaPostCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSocialMediaPostCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFSocialMediaPostCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFSocialMediaPostCardSection)initWithCoder:(id)coder
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
    [(SFSocialMediaPostCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    name = [(SFCardSection *)v8 name];
    [(SFSocialMediaPostCardSection *)v5 setName:name];

    [(SFSocialMediaPostCardSection *)v5 setNameNoWrap:[(SFCardSection *)v8 nameNoWrap]];
    nameMaxLines = [(SFCardSection *)v8 nameMaxLines];
    [(SFSocialMediaPostCardSection *)v5 setNameMaxLines:nameMaxLines];

    handle = [(SFCardSection *)v8 handle];
    [(SFSocialMediaPostCardSection *)v5 setHandle:handle];

    verifiedGlyph = [(SFCardSection *)v8 verifiedGlyph];
    [(SFSocialMediaPostCardSection *)v5 setVerifiedGlyph:verifiedGlyph];

    profilePicture = [(SFCardSection *)v8 profilePicture];
    [(SFSocialMediaPostCardSection *)v5 setProfilePicture:profilePicture];

    post = [(SFCardSection *)v8 post];
    [(SFSocialMediaPostCardSection *)v5 setPost:post];

    picture = [(SFCardSection *)v8 picture];
    [(SFSocialMediaPostCardSection *)v5 setPicture:picture];

    timestamp = [(SFCardSection *)v8 timestamp];
    [(SFSocialMediaPostCardSection *)v5 setTimestamp:timestamp];

    footnote = [(SFCardSection *)v8 footnote];
    [(SFSocialMediaPostCardSection *)v5 setFootnote:footnote];

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

- (SFSocialMediaPostCardSection)initWithProtobuf:(id)protobuf
{
  v58 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v56.receiver = self;
  v56.super_class = SFSocialMediaPostCardSection;
  v5 = [(SFCardSection *)&v56 init];
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

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v53;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v53 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v52 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
      [(SFSocialMediaPostCardSection *)v5 setType:type2];
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

    name = [protobufCopy name];

    if (name)
    {
      name2 = [protobufCopy name];
      [(SFSocialMediaPostCardSection *)v5 setName:name2];
    }

    if ([protobufCopy nameNoWrap])
    {
      -[SFSocialMediaPostCardSection setNameNoWrap:](v5, "setNameNoWrap:", [protobufCopy nameNoWrap]);
    }

    if ([protobufCopy nameMaxLines])
    {
      v26 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "nameMaxLines")}];
      [(SFSocialMediaPostCardSection *)v5 setNameMaxLines:v26];
    }

    handle = [protobufCopy handle];

    if (handle)
    {
      handle2 = [protobufCopy handle];
      [(SFSocialMediaPostCardSection *)v5 setHandle:handle2];
    }

    verifiedGlyph = [protobufCopy verifiedGlyph];

    if (verifiedGlyph)
    {
      v30 = [SFImage alloc];
      verifiedGlyph2 = [protobufCopy verifiedGlyph];
      v32 = [(SFImage *)v30 initWithProtobuf:verifiedGlyph2];
      [(SFSocialMediaPostCardSection *)v5 setVerifiedGlyph:v32];
    }

    profilePicture = [protobufCopy profilePicture];

    if (profilePicture)
    {
      v34 = [SFImage alloc];
      profilePicture2 = [protobufCopy profilePicture];
      v36 = [(SFImage *)v34 initWithProtobuf:profilePicture2];
      [(SFSocialMediaPostCardSection *)v5 setProfilePicture:v36];
    }

    post = [protobufCopy post];

    if (post)
    {
      v38 = [SFRichText alloc];
      post2 = [protobufCopy post];
      v40 = [(SFRichText *)v38 initWithProtobuf:post2];
      [(SFSocialMediaPostCardSection *)v5 setPost:v40];
    }

    picture = [protobufCopy picture];

    if (picture)
    {
      v42 = [SFImage alloc];
      picture2 = [protobufCopy picture];
      v44 = [(SFImage *)v42 initWithProtobuf:picture2];
      [(SFSocialMediaPostCardSection *)v5 setPicture:v44];
    }

    timestamp = [protobufCopy timestamp];

    if (timestamp)
    {
      timestamp2 = [protobufCopy timestamp];
      [(SFSocialMediaPostCardSection *)v5 setTimestamp:timestamp2];
    }

    footnote = [protobufCopy footnote];

    if (footnote)
    {
      footnote2 = [protobufCopy footnote];
      [(SFSocialMediaPostCardSection *)v5 setFootnote:footnote2];
    }

    v49 = v5;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v5;
}

@end