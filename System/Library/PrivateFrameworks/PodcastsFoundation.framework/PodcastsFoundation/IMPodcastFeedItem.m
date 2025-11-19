@interface IMPodcastFeedItem
- (BOOL)isEqual:(id)a3;
- (NSString)resolvedEnclosureUrl;
- (id)description;
@end

@implementation IMPodcastFeedItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = IMPodcastFeedItem;
  v4 = [(IMPodcastFeedItem *)&v10 description];
  v5 = [(IMPodcastFeedItem *)self title];
  v6 = [(IMPodcastFeedItem *)self guid];
  v7 = [(IMPodcastFeedItem *)self uti];
  v8 = [v3 stringWithFormat:@"%@ Title: %@ GUID: %@ uti: %@", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = 0;
    goto LABEL_72;
  }

  v7 = v6;
  v8 = [(IMPodcastFeedItem *)self author];
  v9 = [v7 author];
  v131 = v9;
  v132 = v8;
  v133 = v7;
  if (v8 != v9 && (v10 = [v8 isEqual:v9], !v10) || (v15 = -[IMPodcastFeedItem byteSize](self, "byteSize"), v10 = objc_msgSend(v7, "byteSize"), v15 != v10))
  {
    memset(v128, 0, sizeof(v128));
    v126 = 0uLL;
    v125 = 0;
    v127 = 0;
    v129 = 0uLL;
    memset(v130, 0, sizeof(v130));
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_17;
  }

  v16 = [(IMPodcastFeedItem *)self category];
  v17 = [v7 category];
  v124 = v16;
  v118 = v17;
  if (v16 != v17 && (v10 = [v16 isEqual:v17], !v10) || (-[IMPodcastFeedItem duration](self, "duration"), v19 = v18, v10 = objc_msgSend(v7, "duration"), v19 != v20))
  {
    memset(v128, 0, sizeof(v128));
    v126 = 0uLL;
    v125 = 0;
    v127 = 0;
    v129 = 0uLL;
    memset(v130, 0, 24);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    *&v130[24] = 1;
    goto LABEL_17;
  }

  v3 = [(IMPodcastFeedItem *)self enclosureParameterString];
  v21 = [v7 enclosureParameterString];
  v122 = v21;
  v123 = v3;
  if (v3 != v21)
  {
    v4 = v21;
    v10 = [v3 isEqual:v21];
    if (!v10)
    {
      memset(v128, 0, sizeof(v128));
      v126 = 0uLL;
      v125 = 0;
      v127 = 0;
      v129 = 0uLL;
      memset(v130, 0, 20);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v11 = 1;
      *&v130[20] = 0x100000001;
      goto LABEL_17;
    }
  }

  v22 = [(IMPodcastFeedItem *)self enclosureURL];
  v23 = [v7 enclosureURL];
  v117 = v22;
  v121 = v23;
  if (v22 == v23 || (v10 = [v22 isEqual:v23], v10))
  {
    v24 = [(IMPodcastFeedItem *)self isExplicit];
    v10 = [v7 isExplicit];
    if (v24 == v10)
    {
      v36 = [(IMPodcastFeedItem *)self guid];
      v37 = [v7 guid];
      v116 = v36;
      v120 = v37;
      if (v36 != v37)
      {
        v10 = [v36 isEqual:v37];
        if (!v10)
        {
          *&v130[4] = 0;
          memset(v128, 0, sizeof(v128));
          v126 = 0uLL;
          v125 = 0;
          v127 = 0;
          v129 = 0uLL;
          *v130 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v11 = 1;
          *&v130[20] = 0x100000001;
          *&v130[12] = 0x100000001;
          goto LABEL_17;
        }
      }

      v38 = [(IMPodcastFeedItem *)self itemDescription];
      v11 = [v7 itemDescription];
      v115 = v38;
      if (v38 != v11)
      {
        v39 = v11;
        v10 = [v38 isEqual:v11];
        v11 = v39;
        if (!v10)
        {
          memset(v128, 0, sizeof(v128));
          v126 = 0uLL;
          v125 = 0;
          v127 = 0;
          v129 = 0uLL;
          *v130 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v12 = 1;
          *&v130[20] = 0x100000001;
          *&v130[12] = 0x100000001;
          *&v130[8] = 1;
          goto LABEL_17;
        }
      }

      v77 = v11;
      v40 = [(IMPodcastFeedItem *)self itemDescriptionSourceElement];
      v41 = [v7 itemDescriptionSourceElement];
      v113 = v41;
      v114 = v40;
      if (v40 == v41 || (v10 = [v40 isEqual:v41], v10))
      {
        v42 = [(IMPodcastFeedItem *)self pubDate];
        v43 = [v7 pubDate];
        v12 = v42;
        v112 = v43;
        if (v42 == v43 || (v10 = [v42 isEqual:v43], v12 = v42, v10))
        {
          v75 = v12;
          v44 = [(IMPodcastFeedItem *)self firstTimeAvailableAsPaid];
          v45 = [v7 firstTimeAvailableAsPaid];
          v110 = v45;
          v111 = v44;
          if (v44 == v45 || (v10 = [v44 isEqual:v45], v10))
          {
            v46 = [(IMPodcastFeedItem *)self firstTimeAvailableAsFree];
            [v7 firstTimeAvailableAsFree];
            v76 = v119 = v46;
            if (v46 == v76 || (v10 = [v46 isEqual:v76], v13 = v76, v10))
            {
              v47 = [(IMPodcastFeedItem *)self title];
              v48 = [v7 title];
              v108 = v48;
              v109 = v47;
              if ((v47 == v48 || (v10 = [v47 isEqual:v48], v10)) && (v49 = -[IMPodcastFeedItem trackNum](self, "trackNum"), v10 = objc_msgSend(v7, "trackNum"), v49 == v10))
              {
                v50 = [(IMPodcastFeedItem *)self uti];
                v14 = [v7 uti];
                v107 = v50;
                if (v50 == v14 || (v51 = v50, v52 = v14, v10 = [v51 isEqual:v14], v14 = v52, v10))
                {
                  v74 = v14;
                  v53 = [(IMPodcastFeedItem *)self itunesTitle];
                  v54 = [v7 itunesTitle];
                  v104 = v54;
                  v105 = v53;
                  if (v53 == v54 || (v10 = [v53 isEqual:v54], v10))
                  {
                    v55 = [(IMPodcastFeedItem *)self itemSummary];
                    v106 = [v7 itemSummary];
                    v101 = v55;
                    if (v55 == v106 || (v10 = [v55 isEqual:v106], v10))
                    {
                      v56 = [(IMPodcastFeedItem *)self itemSummarySourceElement];
                      v102 = [v7 itemSummarySourceElement];
                      v103 = v56;
                      if ((v56 == v102 || (v10 = [v56 isEqual:v102], v10)) && (v57 = -[IMPodcastFeedItem seasonNumber](self, "seasonNumber"), v10 = objc_msgSend(v7, "seasonNumber"), v57 == v10) && (v58 = -[IMPodcastFeedItem episodeNumber](self, "episodeNumber"), v10 = objc_msgSend(v7, "episodeNumber"), v58 == v10))
                      {
                        v59 = [(IMPodcastFeedItem *)self episodeType];
                        v99 = [v133 episodeType];
                        v100 = v59;
                        if (v59 == v99 || (v10 = [v59 isEqual:v99], v10))
                        {
                          v60 = [(IMPodcastFeedItem *)self webpageURL];
                          v97 = [v133 webpageURL];
                          v98 = v60;
                          if (v60 == v97 || (v10 = [v60 isEqual:v97], v10))
                          {
                            v61 = [(IMPodcastFeedItem *)self priceType];
                            v95 = [v133 priceType];
                            v96 = v61;
                            if (v61 == v95 || (v10 = [v61 isEqual:v95], v10))
                            {
                              v62 = [(IMPodcastFeedItem *)self entitledPriceType];
                              v93 = [v133 entitledPriceType];
                              v94 = v62;
                              if (v62 == v93 || (v10 = [v62 isEqual:v93], v10))
                              {
                                v63 = [(IMPodcastFeedItem *)self entitledEnclosureURL];
                                v91 = [v133 entitledEnclosureURL];
                                v92 = v63;
                                if ((v63 == v91 || (v10 = [v63 isEqual:v91], v10)) && (-[IMPodcastFeedItem entitledDuration](self, "entitledDuration"), v65 = v64, v10 = objc_msgSend(v133, "entitledDuration"), v65 == v66))
                                {
                                  v67 = [(IMPodcastFeedItem *)self freeTranscriptIdentifier];
                                  v10 = [v133 freeTranscriptIdentifier];
                                  v89 = v10;
                                  v90 = v67;
                                  if (v67 == v10)
                                  {
                                    v68 = [(IMPodcastFeedItem *)self entitledTranscriptIdentifier];
                                    v10 = [v133 entitledTranscriptIdentifier];
                                    v87 = v10;
                                    v88 = v68;
                                    if (v68 == v10)
                                    {
                                      v69 = [(IMPodcastFeedItem *)self freeTranscriptSnippet];
                                      v10 = [v133 freeTranscriptSnippet];
                                      v85 = v10;
                                      v86 = v69;
                                      if (v69 == v10)
                                      {
                                        v70 = [(IMPodcastFeedItem *)self entitledTranscriptSnippet];
                                        v10 = [v133 entitledTranscriptSnippet];
                                        v83 = v10;
                                        v84 = v70;
                                        if (v70 == v10)
                                        {
                                          v71 = [(IMPodcastFeedItem *)self freeTranscriptProvider];
                                          v10 = [v133 freeTranscriptProvider];
                                          v81 = v10;
                                          v82 = v71;
                                          if (v71 == v10)
                                          {
                                            v72 = [(IMPodcastFeedItem *)self entitledTranscriptProvider];
                                            v10 = [v133 entitledTranscriptProvider];
                                            v79 = v10;
                                            v80 = v72;
                                            if (v72 == v10)
                                            {
                                              v73 = [(IMPodcastFeedItem *)self chapters];
                                              v10 = [v133 chapters];
                                              v3 = v10;
                                              v78 = v73;
                                              if (v73 == v10)
                                              {
                                                v4 = [(IMPodcastFeedItem *)self chapterSource];
                                                v10 = [v133 chapterSource];
                                                v28 = v4 == v10;
                                                v27 = 1;
                                              }

                                              else
                                              {
                                                v27 = 0;
                                                v28 = 0;
                                              }

                                              *&v130[20] = 0x100000001;
                                              *&v130[12] = 0x100000001;
                                              *&v130[8] = 1;
                                              *(&v129 + 1) = 0x100000001;
                                              *&v128[20] = 0x100000001;
                                              *v128 = 1;
                                              *&v128[4] = 1;
                                              *&v126 = 0x100000001;
                                              *(&v126 + 1) = 0x100000001;
                                              v125 = 1;
                                              *&v128[12] = 1;
                                              *&v128[16] = 1;
                                              *&v128[8] = 1;
                                              v127 = 1;
                                              *&v129 = 0x100000001;
                                              *v130 = 0x100000001;
                                              v25 = 1;
                                              v26 = 1;
                                            }

                                            else
                                            {
                                              v26 = 0;
                                              v27 = 0;
                                              v28 = 0;
                                              *&v130[20] = 0x100000001;
                                              *&v130[12] = 0x100000001;
                                              *&v130[8] = 1;
                                              *(&v129 + 1) = 0x100000001;
                                              *&v128[20] = 0x100000001;
                                              *v128 = 1;
                                              *&v128[4] = 1;
                                              *&v126 = 0x100000001;
                                              *(&v126 + 1) = 0x100000001;
                                              v125 = 1;
                                              *&v128[12] = 1;
                                              *&v128[16] = 1;
                                              *&v128[8] = 1;
                                              v127 = 1;
                                              *&v129 = 0x100000001;
                                              *v130 = 0x100000001;
                                              v25 = 1;
                                            }
                                          }

                                          else
                                          {
                                            v25 = 0;
                                            v26 = 0;
                                            v27 = 0;
                                            v28 = 0;
                                            *&v130[20] = 0x100000001;
                                            *&v130[12] = 0x100000001;
                                            *&v130[8] = 1;
                                            *(&v129 + 1) = 0x100000001;
                                            *&v128[20] = 0x100000001;
                                            *v128 = 1;
                                            *&v128[4] = 1;
                                            *&v126 = 0x100000001;
                                            *(&v126 + 1) = 0x100000001;
                                            v125 = 1;
                                            *&v128[12] = 1;
                                            *&v128[16] = 1;
                                            *&v128[8] = 1;
                                            v127 = 1;
                                            *&v129 = 0x100000001;
                                            *v130 = 0x100000001;
                                          }
                                        }

                                        else
                                        {
                                          v25 = 0;
                                          v26 = 0;
                                          v27 = 0;
                                          v28 = 0;
                                          *&v130[20] = 0x100000001;
                                          *&v130[12] = 0x100000001;
                                          *&v130[8] = 1;
                                          *(&v129 + 1) = 0x100000001;
                                          *&v128[20] = 0x100000001;
                                          *v128 = 1;
                                          *&v128[4] = 1;
                                          *&v126 = 0x100000001;
                                          *(&v126 + 1) = 0x100000001;
                                          v125 = 1;
                                          *&v128[12] = 1;
                                          *&v128[16] = 1;
                                          *&v128[8] = 1;
                                          v127 = 1;
                                          *&v129 = 0x100000001;
                                          *v130 = 1;
                                        }
                                      }

                                      else
                                      {
                                        *v130 = 0;
                                        v25 = 0;
                                        v26 = 0;
                                        v27 = 0;
                                        v28 = 0;
                                        *&v130[20] = 0x100000001;
                                        *&v130[12] = 0x100000001;
                                        *&v130[8] = 1;
                                        HIDWORD(v129) = 1;
                                        *&v128[20] = 0x100000001;
                                        *v128 = 1;
                                        *&v128[4] = 1;
                                        *&v126 = 0x100000001;
                                        *(&v126 + 1) = 0x100000001;
                                        v125 = 1;
                                        *&v128[12] = 1;
                                        *&v128[16] = 1;
                                        *&v128[8] = 1;
                                        v127 = 1;
                                        LODWORD(v129) = 1;
                                        *(&v129 + 4) = 0x100000001;
                                      }
                                    }

                                    else
                                    {
                                      *v130 = 0;
                                      v25 = 0;
                                      v26 = 0;
                                      v27 = 0;
                                      v28 = 0;
                                      *&v130[20] = 0x100000001;
                                      *&v130[12] = 0x100000001;
                                      *&v130[8] = 1;
                                      *(&v129 + 1) = 0x100000000;
                                      *&v128[20] = 0x100000001;
                                      *v128 = 1;
                                      *&v128[4] = 1;
                                      *&v126 = 0x100000001;
                                      *(&v126 + 1) = 0x100000001;
                                      v125 = 1;
                                      *&v128[12] = 1;
                                      *&v128[16] = 1;
                                      *&v128[8] = 1;
                                      v127 = 1;
                                      *&v129 = 0x100000001;
                                    }
                                  }

                                  else
                                  {
                                    *(&v129 + 4) = 0;
                                    *v130 = 0;
                                    v25 = 0;
                                    v26 = 0;
                                    v27 = 0;
                                    v28 = 0;
                                    *&v130[20] = 0x100000001;
                                    *&v130[12] = 0x100000001;
                                    *&v130[8] = 1;
                                    HIDWORD(v129) = 1;
                                    *&v128[20] = 0x100000001;
                                    *v128 = 0x100000001;
                                    *&v126 = 0x100000001;
                                    *(&v126 + 1) = 0x100000001;
                                    v125 = 1;
                                    *&v128[16] = 1;
                                    *&v128[8] = 0x100000001;
                                    v127 = 1;
                                    LODWORD(v129) = 1;
                                  }
                                }

                                else
                                {
                                  *&v129 = 0;
                                  *v130 = 0;
                                  v25 = 0;
                                  v26 = 0;
                                  v27 = 0;
                                  v28 = 0;
                                  *&v130[20] = 0x100000001;
                                  *&v130[12] = 0x100000001;
                                  *&v130[8] = 1;
                                  *(&v129 + 1) = 0x100000000;
                                  *&v128[20] = 0x100000001;
                                  *v128 = 1;
                                  *&v128[4] = 1;
                                  *&v126 = 0x100000001;
                                  *(&v126 + 1) = 0x100000001;
                                  v125 = 1;
                                  *&v128[12] = 1;
                                  *&v128[16] = 1;
                                  *&v128[8] = 1;
                                  v127 = 1;
                                }
                              }

                              else
                              {
                                *&v129 = 0;
                                *v130 = 0;
                                v25 = 0;
                                v26 = 0;
                                v27 = 0;
                                v28 = 0;
                                *&v130[20] = 0x100000001;
                                *&v130[12] = 0x100000001;
                                *&v130[8] = 1;
                                *(&v129 + 1) = 0x100000000;
                                *&v128[20] = 0x100000001;
                                v127 = 0;
                                *v128 = 1;
                                *&v126 = 0x100000001;
                                *(&v126 + 1) = 0x100000001;
                                v125 = 1;
                                *&v128[12] = 1;
                                *&v128[16] = 1;
                                *&v128[4] = 1;
                                *&v128[8] = 1;
                              }
                            }

                            else
                            {
                              *&v129 = 0;
                              *v130 = 0;
                              v25 = 0;
                              v26 = 0;
                              v27 = 0;
                              v28 = 0;
                              *&v130[20] = 0x100000001;
                              *&v130[12] = 0x100000001;
                              *&v130[8] = 1;
                              *(&v129 + 1) = 0x100000000;
                              *&v128[20] = 0x100000001;
                              *v128 = 1;
                              *&v128[4] = 0;
                              LODWORD(v126) = 1;
                              *(&v126 + 4) = 0x100000001;
                              HIDWORD(v126) = 1;
                              v127 = 0;
                              v125 = 1;
                              *&v128[12] = 1;
                              *&v128[16] = 1;
                              *&v128[8] = 1;
                            }
                          }

                          else
                          {
                            *&v128[4] = 0;
                            *&v129 = 0;
                            *v130 = 0;
                            v25 = 0;
                            v26 = 0;
                            v27 = 0;
                            v28 = 0;
                            *&v130[20] = 0x100000001;
                            *&v130[12] = 0x100000001;
                            *&v130[8] = 1;
                            *(&v129 + 1) = 0x100000000;
                            *&v128[20] = 0x100000001;
                            v127 = 0;
                            *v128 = 1;
                            *&v126 = 0x100000001;
                            *(&v126 + 1) = 0x100000001;
                            v125 = 1;
                            *&v128[12] = 1;
                            *&v128[16] = 1;
                          }
                        }

                        else
                        {
                          *&v128[8] = 0;
                          *&v129 = 0;
                          *v130 = 0;
                          v25 = 0;
                          v26 = 0;
                          v27 = 0;
                          v28 = 0;
                          *&v130[20] = 0x100000001;
                          *&v130[12] = 0x100000001;
                          *&v130[8] = 1;
                          *(&v129 + 1) = 0x100000000;
                          *&v128[20] = 0x100000001;
                          *v128 = 1;
                          *&v128[4] = 0;
                          LODWORD(v126) = 1;
                          *(&v126 + 4) = 0x100000001;
                          HIDWORD(v126) = 1;
                          v127 = 0;
                          v125 = 1;
                          *&v128[16] = 1;
                        }
                      }

                      else
                      {
                        *&v128[12] = 0;
                        *&v128[4] = 0;
                        *&v129 = 0;
                        *v130 = 0;
                        v25 = 0;
                        v26 = 0;
                        v27 = 0;
                        v28 = 0;
                        *&v130[20] = 0x100000001;
                        *&v130[12] = 0x100000001;
                        *&v130[8] = 1;
                        *(&v129 + 1) = 0x100000000;
                        *&v128[20] = 0x100000001;
                        v127 = 0;
                        *v128 = 1;
                        *&v126 = 0x100000001;
                        *(&v126 + 1) = 0x100000001;
                        v125 = 1;
                      }
                    }

                    else
                    {
                      v125 = 0;
                      *&v128[12] = 0;
                      *&v128[4] = 0;
                      *&v129 = 0;
                      *v130 = 0;
                      v25 = 0;
                      v26 = 0;
                      v27 = 0;
                      v28 = 0;
                      *&v130[20] = 0x100000001;
                      *&v130[12] = 0x100000001;
                      *&v130[8] = 1;
                      *(&v129 + 1) = 0x100000000;
                      *&v128[20] = 0x100000001;
                      v127 = 0;
                      *v128 = 1;
                      *&v126 = 0x100000001;
                      *(&v126 + 1) = 0x100000001;
                    }
                  }

                  else
                  {
                    v125 = 0;
                    *&v128[12] = 0;
                    *&v128[4] = 0;
                    *&v129 = 0;
                    *v130 = 0;
                    v25 = 0;
                    v26 = 0;
                    v27 = 0;
                    v28 = 0;
                    *&v130[20] = 0x100000001;
                    *&v130[12] = 0x100000001;
                    *&v130[8] = 1;
                    *(&v129 + 1) = 0x100000000;
                    *&v128[20] = 0x100000001;
                    v127 = 0;
                    *v128 = 1;
                    *&v126 = 1;
                    *(&v126 + 1) = 0x100000001;
                  }

                  v13 = v76;
                  v11 = v77;
                  v14 = v74;
                  v12 = v75;
                  goto LABEL_17;
                }

                *(&v126 + 4) = 0;
                v125 = 0;
                *&v128[12] = 0;
                *&v128[4] = 0;
                *&v129 = 0;
                *v130 = 0;
                v25 = 0;
                v26 = 0;
                v27 = 0;
                v28 = 0;
                *&v130[20] = 0x100000001;
                *&v130[12] = 0x100000001;
                *&v130[8] = 1;
                *(&v129 + 1) = 0x100000000;
                *&v128[20] = 0x100000001;
                v127 = 0;
                *v128 = 1;
                LODWORD(v126) = 1;
                HIDWORD(v126) = 1;
              }

              else
              {
                v125 = 0;
                *&v128[4] = 0uLL;
                *&v129 = 0;
                *v130 = 0;
                v25 = 0;
                v26 = 0;
                v27 = 0;
                v28 = 0;
                *&v130[20] = 0x100000001;
                *&v130[12] = 0x100000001;
                *&v130[8] = 1;
                *(&v129 + 1) = 0x100000000;
                *&v128[20] = 0x100000001;
                v127 = 0;
                *v128 = 1;
                v126 = 1uLL;
              }

              v13 = v76;
              v11 = v77;
              goto LABEL_122;
            }

            v126 = 0uLL;
            v125 = 0;
            *&v128[12] = 0;
            *&v128[4] = 0;
            *&v129 = 0;
            *v130 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *&v130[20] = 0x100000001;
            *&v130[12] = 0x100000001;
            *&v130[8] = 1;
            *(&v129 + 1) = 0x100000000;
            *&v128[20] = 0x100000001;
            v127 = 0;
            *v128 = 1;
          }

          else
          {
            memset(v128, 0, 20);
            v126 = 0uLL;
            v125 = 0;
            v127 = 0;
            *&v129 = 0;
            *v130 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *&v130[20] = 0x100000001;
            *&v130[12] = 0x100000001;
            *&v130[8] = 1;
            *(&v129 + 1) = 0x100000000;
            *&v128[20] = 0x100000001;
          }

          v11 = v77;
LABEL_122:
          v12 = v75;
          goto LABEL_17;
        }

        memset(v128, 0, 24);
        v126 = 0uLL;
        v125 = 0;
        v127 = 0;
        *&v129 = 0;
        *v130 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *&v130[20] = 0x100000001;
        *&v130[12] = 0x100000001;
        *&v130[8] = 1;
        *(&v129 + 1) = 0x100000000;
        *&v128[24] = 1;
      }

      else
      {
        memset(v128, 0, sizeof(v128));
        v126 = 0uLL;
        v125 = 0;
        v127 = 0;
        *&v129 = 0;
        *v130 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *&v130[20] = 0x100000001;
        *&v130[12] = 0x100000001;
        *&v130[8] = 1;
        *(&v129 + 1) = 0x100000000;
      }

      v11 = v77;
      goto LABEL_17;
    }
  }

  *&v130[4] = 0;
  memset(v128, 0, sizeof(v128));
  v126 = 0uLL;
  v125 = 0;
  v127 = 0;
  v129 = 0uLL;
  *v130 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v11 = 1;
  *&v130[20] = 0x100000001;
  *&v130[12] = 1;
LABEL_17:
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  if (v27)
  {
    v33 = v26;

    v26 = v33;
    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (v26)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (v25)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (*&v130[4])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (*v130)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (DWORD2(v129))
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (DWORD1(v129))
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (v129)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (v127)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (*&v128[4])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (*&v128[8])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (*&v128[12])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (*&v128[16])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (v125)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (DWORD1(v126))
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (DWORD2(v126))
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (HIDWORD(v126))
  {

    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (v126)
  {

    v13 = v31;
    v12 = v30;
    v11 = v29;
  }

  if (*v128)
  {

    v12 = v30;
    v11 = v29;
  }

  if (*&v128[20])
  {

    v12 = v30;
    v11 = v29;
  }

  if (*&v128[24])
  {
    v34 = v12;

    v11 = v29;
  }

  if (HIDWORD(v129))
  {

    v11 = v29;
  }

  if (*&v130[8])
  {
  }

  if (*&v130[16])
  {
  }

  if (*&v130[12])
  {
  }

  if (*&v130[20])
  {
  }

  if (*&v130[24])
  {
  }

LABEL_72:
  return v28;
}

- (NSString)resolvedEnclosureUrl
{
  v3 = [(IMPodcastFeedItem *)self enclosureParameterString];

  v4 = [(IMPodcastFeedItem *)self enclosureURL];
  if (v3)
  {
    v5 = [(IMPodcastFeedItem *)self enclosureParameterString];
    v6 = [v4 stringByAppendingFormat:@"?%@", v5];

    v4 = v6;
  }

  return v4;
}

@end