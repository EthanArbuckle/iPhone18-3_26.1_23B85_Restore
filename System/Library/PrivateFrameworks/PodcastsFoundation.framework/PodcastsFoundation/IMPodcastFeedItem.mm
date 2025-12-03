@interface IMPodcastFeedItem
- (BOOL)isEqual:(id)equal;
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
  title = [(IMPodcastFeedItem *)self title];
  guid = [(IMPodcastFeedItem *)self guid];
  v7 = [(IMPodcastFeedItem *)self uti];
  v8 = [v3 stringWithFormat:@"%@ Title: %@ GUID: %@ uti: %@", v4, title, guid, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = 0;
    goto LABEL_72;
  }

  v7 = equalCopy;
  author = [(IMPodcastFeedItem *)self author];
  author2 = [v7 author];
  v131 = author2;
  v132 = author;
  v133 = v7;
  if (author != author2 && (isExplicit2 = [author isEqual:author2], !isExplicit2) || (v15 = -[IMPodcastFeedItem byteSize](self, "byteSize"), isExplicit2 = objc_msgSend(v7, "byteSize"), v15 != isExplicit2))
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

  category = [(IMPodcastFeedItem *)self category];
  category2 = [v7 category];
  v124 = category;
  v118 = category2;
  if (category != category2 && (isExplicit2 = [category isEqual:category2], !isExplicit2) || (-[IMPodcastFeedItem duration](self, "duration"), v19 = v18, isExplicit2 = objc_msgSend(v7, "duration"), v19 != v20))
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

  enclosureParameterString = [(IMPodcastFeedItem *)self enclosureParameterString];
  enclosureParameterString2 = [v7 enclosureParameterString];
  v122 = enclosureParameterString2;
  v123 = enclosureParameterString;
  if (enclosureParameterString != enclosureParameterString2)
  {
    chapterSource = enclosureParameterString2;
    isExplicit2 = [enclosureParameterString isEqual:enclosureParameterString2];
    if (!isExplicit2)
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
      itemDescription2 = 1;
      *&v130[20] = 0x100000001;
      goto LABEL_17;
    }
  }

  enclosureURL = [(IMPodcastFeedItem *)self enclosureURL];
  enclosureURL2 = [v7 enclosureURL];
  v117 = enclosureURL;
  v121 = enclosureURL2;
  if (enclosureURL == enclosureURL2 || (isExplicit2 = [enclosureURL isEqual:enclosureURL2], isExplicit2))
  {
    isExplicit = [(IMPodcastFeedItem *)self isExplicit];
    isExplicit2 = [v7 isExplicit];
    if (isExplicit == isExplicit2)
    {
      guid = [(IMPodcastFeedItem *)self guid];
      guid2 = [v7 guid];
      v116 = guid;
      v120 = guid2;
      if (guid != guid2)
      {
        isExplicit2 = [guid isEqual:guid2];
        if (!isExplicit2)
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
          itemDescription2 = 1;
          *&v130[20] = 0x100000001;
          *&v130[12] = 0x100000001;
          goto LABEL_17;
        }
      }

      itemDescription = [(IMPodcastFeedItem *)self itemDescription];
      itemDescription2 = [v7 itemDescription];
      v115 = itemDescription;
      if (itemDescription != itemDescription2)
      {
        v39 = itemDescription2;
        isExplicit2 = [itemDescription isEqual:itemDescription2];
        itemDescription2 = v39;
        if (!isExplicit2)
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

      v77 = itemDescription2;
      itemDescriptionSourceElement = [(IMPodcastFeedItem *)self itemDescriptionSourceElement];
      itemDescriptionSourceElement2 = [v7 itemDescriptionSourceElement];
      v113 = itemDescriptionSourceElement2;
      v114 = itemDescriptionSourceElement;
      if (itemDescriptionSourceElement == itemDescriptionSourceElement2 || (isExplicit2 = [itemDescriptionSourceElement isEqual:itemDescriptionSourceElement2], isExplicit2))
      {
        pubDate = [(IMPodcastFeedItem *)self pubDate];
        pubDate2 = [v7 pubDate];
        v12 = pubDate;
        v112 = pubDate2;
        if (pubDate == pubDate2 || (isExplicit2 = [pubDate isEqual:pubDate2], v12 = pubDate, isExplicit2))
        {
          v75 = v12;
          firstTimeAvailableAsPaid = [(IMPodcastFeedItem *)self firstTimeAvailableAsPaid];
          firstTimeAvailableAsPaid2 = [v7 firstTimeAvailableAsPaid];
          v110 = firstTimeAvailableAsPaid2;
          v111 = firstTimeAvailableAsPaid;
          if (firstTimeAvailableAsPaid == firstTimeAvailableAsPaid2 || (isExplicit2 = [firstTimeAvailableAsPaid isEqual:firstTimeAvailableAsPaid2], isExplicit2))
          {
            firstTimeAvailableAsFree = [(IMPodcastFeedItem *)self firstTimeAvailableAsFree];
            [v7 firstTimeAvailableAsFree];
            v76 = v119 = firstTimeAvailableAsFree;
            if (firstTimeAvailableAsFree == v76 || (isExplicit2 = [firstTimeAvailableAsFree isEqual:v76], v13 = v76, isExplicit2))
            {
              title = [(IMPodcastFeedItem *)self title];
              title2 = [v7 title];
              v108 = title2;
              v109 = title;
              if ((title == title2 || (isExplicit2 = [title isEqual:title2], isExplicit2)) && (v49 = -[IMPodcastFeedItem trackNum](self, "trackNum"), isExplicit2 = objc_msgSend(v7, "trackNum"), v49 == isExplicit2))
              {
                v50 = [(IMPodcastFeedItem *)self uti];
                v14 = [v7 uti];
                v107 = v50;
                if (v50 == v14 || (v51 = v50, v52 = v14, isExplicit2 = [v51 isEqual:v14], v14 = v52, isExplicit2))
                {
                  v74 = v14;
                  itunesTitle = [(IMPodcastFeedItem *)self itunesTitle];
                  itunesTitle2 = [v7 itunesTitle];
                  v104 = itunesTitle2;
                  v105 = itunesTitle;
                  if (itunesTitle == itunesTitle2 || (isExplicit2 = [itunesTitle isEqual:itunesTitle2], isExplicit2))
                  {
                    itemSummary = [(IMPodcastFeedItem *)self itemSummary];
                    itemSummary2 = [v7 itemSummary];
                    v101 = itemSummary;
                    if (itemSummary == itemSummary2 || (isExplicit2 = [itemSummary isEqual:itemSummary2], isExplicit2))
                    {
                      itemSummarySourceElement = [(IMPodcastFeedItem *)self itemSummarySourceElement];
                      itemSummarySourceElement2 = [v7 itemSummarySourceElement];
                      v103 = itemSummarySourceElement;
                      if ((itemSummarySourceElement == itemSummarySourceElement2 || (isExplicit2 = [itemSummarySourceElement isEqual:itemSummarySourceElement2], isExplicit2)) && (v57 = -[IMPodcastFeedItem seasonNumber](self, "seasonNumber"), isExplicit2 = objc_msgSend(v7, "seasonNumber"), v57 == isExplicit2) && (v58 = -[IMPodcastFeedItem episodeNumber](self, "episodeNumber"), isExplicit2 = objc_msgSend(v7, "episodeNumber"), v58 == isExplicit2))
                      {
                        episodeType = [(IMPodcastFeedItem *)self episodeType];
                        episodeType2 = [v133 episodeType];
                        v100 = episodeType;
                        if (episodeType == episodeType2 || (isExplicit2 = [episodeType isEqual:episodeType2], isExplicit2))
                        {
                          webpageURL = [(IMPodcastFeedItem *)self webpageURL];
                          webpageURL2 = [v133 webpageURL];
                          v98 = webpageURL;
                          if (webpageURL == webpageURL2 || (isExplicit2 = [webpageURL isEqual:webpageURL2], isExplicit2))
                          {
                            priceType = [(IMPodcastFeedItem *)self priceType];
                            priceType2 = [v133 priceType];
                            v96 = priceType;
                            if (priceType == priceType2 || (isExplicit2 = [priceType isEqual:priceType2], isExplicit2))
                            {
                              entitledPriceType = [(IMPodcastFeedItem *)self entitledPriceType];
                              entitledPriceType2 = [v133 entitledPriceType];
                              v94 = entitledPriceType;
                              if (entitledPriceType == entitledPriceType2 || (isExplicit2 = [entitledPriceType isEqual:entitledPriceType2], isExplicit2))
                              {
                                entitledEnclosureURL = [(IMPodcastFeedItem *)self entitledEnclosureURL];
                                entitledEnclosureURL2 = [v133 entitledEnclosureURL];
                                v92 = entitledEnclosureURL;
                                if ((entitledEnclosureURL == entitledEnclosureURL2 || (isExplicit2 = [entitledEnclosureURL isEqual:entitledEnclosureURL2], isExplicit2)) && (-[IMPodcastFeedItem entitledDuration](self, "entitledDuration"), v65 = v64, isExplicit2 = objc_msgSend(v133, "entitledDuration"), v65 == v66))
                                {
                                  freeTranscriptIdentifier = [(IMPodcastFeedItem *)self freeTranscriptIdentifier];
                                  isExplicit2 = [v133 freeTranscriptIdentifier];
                                  v89 = isExplicit2;
                                  v90 = freeTranscriptIdentifier;
                                  if (freeTranscriptIdentifier == isExplicit2)
                                  {
                                    entitledTranscriptIdentifier = [(IMPodcastFeedItem *)self entitledTranscriptIdentifier];
                                    isExplicit2 = [v133 entitledTranscriptIdentifier];
                                    v87 = isExplicit2;
                                    v88 = entitledTranscriptIdentifier;
                                    if (entitledTranscriptIdentifier == isExplicit2)
                                    {
                                      freeTranscriptSnippet = [(IMPodcastFeedItem *)self freeTranscriptSnippet];
                                      isExplicit2 = [v133 freeTranscriptSnippet];
                                      v85 = isExplicit2;
                                      v86 = freeTranscriptSnippet;
                                      if (freeTranscriptSnippet == isExplicit2)
                                      {
                                        entitledTranscriptSnippet = [(IMPodcastFeedItem *)self entitledTranscriptSnippet];
                                        isExplicit2 = [v133 entitledTranscriptSnippet];
                                        v83 = isExplicit2;
                                        v84 = entitledTranscriptSnippet;
                                        if (entitledTranscriptSnippet == isExplicit2)
                                        {
                                          freeTranscriptProvider = [(IMPodcastFeedItem *)self freeTranscriptProvider];
                                          isExplicit2 = [v133 freeTranscriptProvider];
                                          v81 = isExplicit2;
                                          v82 = freeTranscriptProvider;
                                          if (freeTranscriptProvider == isExplicit2)
                                          {
                                            entitledTranscriptProvider = [(IMPodcastFeedItem *)self entitledTranscriptProvider];
                                            isExplicit2 = [v133 entitledTranscriptProvider];
                                            v79 = isExplicit2;
                                            v80 = entitledTranscriptProvider;
                                            if (entitledTranscriptProvider == isExplicit2)
                                            {
                                              chapters = [(IMPodcastFeedItem *)self chapters];
                                              isExplicit2 = [v133 chapters];
                                              enclosureParameterString = isExplicit2;
                                              v78 = chapters;
                                              if (chapters == isExplicit2)
                                              {
                                                chapterSource = [(IMPodcastFeedItem *)self chapterSource];
                                                isExplicit2 = [v133 chapterSource];
                                                v28 = chapterSource == isExplicit2;
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
                  itemDescription2 = v77;
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
              itemDescription2 = v77;
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

          itemDescription2 = v77;
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

      itemDescription2 = v77;
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
  itemDescription2 = 1;
  *&v130[20] = 0x100000001;
  *&v130[12] = 1;
LABEL_17:
  v29 = itemDescription2;
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
    itemDescription2 = v29;
  }

  if (v26)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (v25)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (*&v130[4])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (*v130)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (DWORD2(v129))
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (DWORD1(v129))
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (v129)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (v127)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (*&v128[4])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (*&v128[8])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (*&v128[12])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (*&v128[16])
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (v125)
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (DWORD1(v126))
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (DWORD2(v126))
  {

    v14 = v32;
    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (HIDWORD(v126))
  {

    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (v126)
  {

    v13 = v31;
    v12 = v30;
    itemDescription2 = v29;
  }

  if (*v128)
  {

    v12 = v30;
    itemDescription2 = v29;
  }

  if (*&v128[20])
  {

    v12 = v30;
    itemDescription2 = v29;
  }

  if (*&v128[24])
  {
    v34 = v12;

    itemDescription2 = v29;
  }

  if (HIDWORD(v129))
  {

    itemDescription2 = v29;
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
  enclosureParameterString = [(IMPodcastFeedItem *)self enclosureParameterString];

  enclosureURL = [(IMPodcastFeedItem *)self enclosureURL];
  if (enclosureParameterString)
  {
    enclosureParameterString2 = [(IMPodcastFeedItem *)self enclosureParameterString];
    v6 = [enclosureURL stringByAppendingFormat:@"?%@", enclosureParameterString2];

    enclosureURL = v6;
  }

  return enclosureURL;
}

@end