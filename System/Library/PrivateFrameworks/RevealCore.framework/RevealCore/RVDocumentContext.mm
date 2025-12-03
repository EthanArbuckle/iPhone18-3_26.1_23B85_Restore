@interface RVDocumentContext
- (RVDocumentContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setExistingDDResultsList:(id)list;
- (void)setGroupAllResults:(id)results;
- (void)setNameAndEmailWithRawSenderField:(id)field;
@end

@implementation RVDocumentContext

- (void)setNameAndEmailWithRawSenderField:(id)field
{
  fieldCopy = field;
  if (![fieldCopy length])
  {
    goto LABEL_120;
  }

  if (![(NSString *)self->authorEmailAddress length])
  {
    selfCopy = self;
    v4 = fieldCopy;
    v5 = [v4 length];
    v6 = NSZoneMalloc(0, 2 * v5 + 2);
    v7 = v6;
    v8 = v6;
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v65 = 0;
      v12 = 0;
      v13 = 1;
      v8 = v6;
      do
      {
        v14 = [v4 characterAtIndex:v9];
        v15 = v14;
        if (v14 == 92)
        {
          if (v5 <= v10 + 1)
          {
            if ((v12 & 1) == 0)
            {
              if (v11 < 1)
              {
                goto LABEL_20;
              }

LABEL_17:
              v12 = 0;
              v11 -= v14 == 41;
              goto LABEL_26;
            }

LABEL_12:
            *v8++ = v14;
            v12 &= v14 != 34;
            goto LABEL_26;
          }

          *v8 = 92;
          v8[1] = [v4 characterAtIndex:v10 + 1];
          v8 += 2;
          ++v10;
        }

        else
        {
          if (v12)
          {
            goto LABEL_12;
          }

          if (v14 == 40)
          {
            v12 = 0;
            ++v11;
          }

          else
          {
            if (v11 > 0)
            {
              goto LABEL_17;
            }

            if (v14 != 60)
            {
              if ((v65 & (v14 == 62)) != 0)
              {
                break;
              }

              if (v14 > 0x7F)
              {
                if (__maskrune(v14, 0x4000uLL))
                {
LABEL_21:
                  v12 = 0;
                  if ((v13 & 1) == 0)
                  {
                    *v8++ = 32;
                  }

                  v13 = 1;
                  goto LABEL_26;
                }
              }

              else
              {
LABEL_20:
                if ((*(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x4000) != 0)
                {
                  goto LABEL_21;
                }
              }

              v13 = 0;
              *v8++ = v15;
              v12 |= v15 == 34;
              goto LABEL_26;
            }

            v12 = 0;
            v65 = 1;
            v8 = v7;
          }
        }

LABEL_26:
        v9 = ++v10;
      }

      while (v5 > v10);
    }

    v16 = MEMORY[0x277D85DE0];
    self = selfCopy;
    while (1)
    {
      v17 = v8;
      v18 = v8 - v7;
      if (v8 <= v7)
      {
        break;
      }

      --v8;
      v19 = *(v17 - 1);
      if (v19 > 0x7F)
      {
        if (!__maskrune(v19, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v16 + 4 * v19 + 60) & 0x4000) == 0)
      {
        break;
      }
    }

    *v17 = 0;
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v7 length:v18 >> 1];
    NSZoneFree(0, v7);

    if ([v20 containsString:@"@"] && objc_msgSend(v20, "length") >= 3)
    {
      v21 = [v20 stringByReplacingOccurrencesOfString:@" " withString:&stru_2874EC008];
      authorEmailAddress = selfCopy->authorEmailAddress;
      selfCopy->authorEmailAddress = v21;
    }
  }

  authorName = self->authorName;
  p_authorName = &self->authorName;
  if ([(NSString *)authorName length])
  {
    goto LABEL_120;
  }

  v25 = fieldCopy;
  v26 = [v25 length];
  v27 = NSZoneMalloc(0, 2 * v26 + 2);
  v28 = NSZoneMalloc(0, 2 * v26 + 2);
  [v25 getCharacters:v28];
  v29 = MEMORY[0x277D85DE0];
  v66 = v28;
  if (v26 < 1)
  {
    v43 = 0;
    v52 = 0;
    goto LABEL_90;
  }

  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = v28;
  v34 = v26;
  v35 = 1;
  while (1)
  {
    v37 = *v33++;
    v36 = v37;
    if (v37 != 34 || v31 != 0)
    {
      break;
    }

    v31 = 0;
    v30 ^= 1u;
LABEL_53:
    v35 = v26 > v32++;
    if (!--v34)
    {
      goto LABEL_54;
    }
  }

  if (!((v36 != 40) | v30 & 1))
  {
    v30 = 0;
    ++v31;
    goto LABEL_53;
  }

  if (!((v36 != 41) | v30 & 1))
  {
    v30 = 0;
    --v31;
    goto LABEL_53;
  }

  if (v36 != 60 || ((v30 ^ 1) & 1) == 0 || v31)
  {
    goto LABEL_53;
  }

LABEL_54:
  v64 = v25;
  v68 = p_authorName;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = v27;
  do
  {
    v45 = *v28;
    if (v45 != 92)
    {
      v46 = v42 == 0;
      if (v45 == 34 && v42 == 0)
      {
        v42 = 0;
        v41 ^= 1u;
      }

      else
      {
        if ((v45 != 41) | v41 & 1)
        {
          goto LABEL_63;
        }

        v41 = 0;
        --v42;
      }

LABEL_71:
      if ((*(v29 + 4 * *v28 + 60) & 0x4000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_72;
    }

    if (((v28[1] != 0) & ~v39) != 0)
    {
      v39 = 1;
      goto LABEL_87;
    }

    v46 = v42 == 0;
LABEL_63:
    v48 = (v45 == 60) & (v41 ^ 1) & v46;
    if (v48)
    {
      v42 = 0;
    }

    v40 |= v48;
    if (v45 <= 0x7F)
    {
      goto LABEL_71;
    }

    if (!__maskrune(v45, 0x4000uLL))
    {
      goto LABEL_77;
    }

LABEL_72:
    if (!v43)
    {
      goto LABEL_84;
    }

    v49 = *(v44 - 1);
    if (v49 > 0x7F)
    {
      if (__maskrune(v49, 0x4000uLL))
      {
        goto LABEL_84;
      }
    }

    else if ((*(v29 + 4 * v49 + 60) & 0x4000) != 0)
    {
      goto LABEL_84;
    }

LABEL_77:
    v50 = *v28;
    if (v50 == 34 && !v42)
    {
      goto LABEL_84;
    }

    if (v35)
    {
      if (v40)
      {
        v40 = 1;
        goto LABEL_84;
      }
    }

    else if (v42 < 1)
    {
      goto LABEL_84;
    }

    v27[v43 / 2] = v50;
    v43 += 2;
LABEL_84:
    v51 = *v28;
    if ((v51 != 40) | v41 & 1)
    {
      v39 = 0;
      v40 &= (v51 != 62) | v41 | (v42 != 0);
    }

    else
    {
      v41 = 0;
      v39 = 0;
      ++v42;
    }

LABEL_87:
    v44 = &v27[v43 / 2];
    ++v28;
    --v26;
  }

  while (v26);
  v52 = (v42 != 0) | v41;
  p_authorName = v68;
  v25 = v64;
  do
  {
LABEL_90:
    v53 = v43;
    if (v43 < 1)
    {
      break;
    }

    v54 = v27[v43 / 2 - 1];
    v55 = v54 > 0x7F ? __maskrune(v54, 0x4000uLL) : *(v29 + 4 * v54 + 60) & 0x4000;
    v43 -= 2;
  }

  while (v55);
  v56 = (v27 + v53);
  *(v27 + v53) = 0;
  if (v52)
  {
    v57 = v25;
    goto LABEL_109;
  }

  if (v53 < 3)
  {
    v61 = v66;
    goto LABEL_110;
  }

  v58 = 0;
  while (2)
  {
    v59 = *v27;
    if (v59 == 39)
    {
      v56 = (v27 + v53);
      if (*(v27 + v53 - 2) != 39)
      {
        break;
      }

      goto LABEL_104;
    }

    if (v59 == 34 && *(v27 + v53 - 2) == 34)
    {
LABEL_104:
      v56 = (v27 + v53 - 2);
      *(v27 + v53 - 2) = 0;
      v57 = [MEMORY[0x277CCACA8] stringWithCharacters:v27 + 1 length:{(v53 >> 1) - 2, v64}];

      v58 = v57;
      v60 = v53 <= 4;
      v53 -= 2;
      if (v60)
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  v57 = v58;
LABEL_109:
  v61 = v66;
  if (!v57)
  {
LABEL_110:
    if (v56 == v27)
    {
      v57 = 0;
      v56 = v27;
    }

    else
    {
      v57 = [MEMORY[0x277CCACA8] stringWithCharacters:v27 length:v56 - v27];
    }
  }

  NSZoneFree(0, v27);
  NSZoneFree(0, v61);
  if (v56 == v27)
  {
    v62 = v25;
  }

  else
  {
    v62 = v57;
  }

  v63 = v62;

  if ([v63 length] && (objc_msgSend(v63, "containsString:", @"@") & 1) == 0)
  {
    objc_storeStrong(p_authorName, v62);
  }

LABEL_120:
}

- (RVDocumentContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RVDocumentContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorName"];
    authorName = v5->authorName;
    v5->authorName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorEmailAddress"];
    authorEmailAddress = v5->authorEmailAddress;
    v5->authorEmailAddress = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorContactUUID"];
    authorContactUUID = v5->authorContactUUID;
    v5->authorContactUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentReferenceDate"];
    contentReferenceDate = v5->contentReferenceDate;
    v5->contentReferenceDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentReferenceTimeZone"];
    contentReferenceTimeZone = v5->contentReferenceTimeZone;
    v5->contentReferenceTimeZone = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentSubject"];
    contentSubject = v5->contentSubject;
    v5->contentSubject = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedText"];
    selectedText = v5->selectedText;
    v5->selectedText = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentURL"];
    documentURL = v5->documentURL;
    v5->documentURL = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"existingDDResultsList"];
    existingDDResultsList = v5->existingDDResultsList;
    v5->existingDDResultsList = v25;

    v27 = [coderCopy decodeObjectOfClasses:v24 forKey:@"groupAllResults"];
    groupAllResults = v5->groupAllResults;
    v5->groupAllResults = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupCategory"];
    groupCategory = v5->groupCategory;
    v5->groupCategory = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupTranscript"];
    groupTranscript = v5->groupTranscript;
    v5->groupTranscript = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreSpotlightUniqueIdentifier"];
    coreSpotlightUniqueIdentifier = v5->coreSpotlightUniqueIdentifier;
    v5->coreSpotlightUniqueIdentifier = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  authorName = [(RVDocumentContext *)self authorName];
  [coderCopy encodeObject:authorName forKey:@"authorName"];

  authorEmailAddress = [(RVDocumentContext *)self authorEmailAddress];
  [coderCopy encodeObject:authorEmailAddress forKey:@"authorEmailAddress"];

  authorContactUUID = [(RVDocumentContext *)self authorContactUUID];
  [coderCopy encodeObject:authorContactUUID forKey:@"authorContactUUID"];

  contentReferenceDate = [(RVDocumentContext *)self contentReferenceDate];
  [coderCopy encodeObject:contentReferenceDate forKey:@"contentReferenceDate"];

  contentReferenceTimeZone = [(RVDocumentContext *)self contentReferenceTimeZone];
  [coderCopy encodeObject:contentReferenceTimeZone forKey:@"contentReferenceTimeZone"];

  contentSubject = [(RVDocumentContext *)self contentSubject];
  [coderCopy encodeObject:contentSubject forKey:@"contentSubject"];

  selectedText = [(RVDocumentContext *)self selectedText];
  [coderCopy encodeObject:selectedText forKey:@"selectedText"];

  documentURL = [(RVDocumentContext *)self documentURL];
  [coderCopy encodeObject:documentURL forKey:@"documentURL"];

  existingDDResultsList = [(RVDocumentContext *)self existingDDResultsList];
  [coderCopy encodeObject:existingDDResultsList forKey:@"existingDDResultsList"];

  groupAllResults = [(RVDocumentContext *)self groupAllResults];
  [coderCopy encodeObject:groupAllResults forKey:@"groupAllResults"];

  groupCategory = [(RVDocumentContext *)self groupCategory];
  [coderCopy encodeObject:groupCategory forKey:@"groupCategory"];

  groupTranscript = [(RVDocumentContext *)self groupTranscript];
  [coderCopy encodeObject:groupTranscript forKey:@"groupTranscript"];

  coreSpotlightUniqueIdentifier = [(RVDocumentContext *)self coreSpotlightUniqueIdentifier];
  [coderCopy encodeObject:coreSpotlightUniqueIdentifier forKey:@"coreSpotlightUniqueIdentifier"];
}

- (void)setGroupAllResults:(id)results
{
  v4 = convertResultToObjCInArrayIfNecessary(results);
  groupAllResults = self->groupAllResults;
  self->groupAllResults = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setExistingDDResultsList:(id)list
{
  v4 = convertResultToObjCInArrayIfNecessary(list);
  existingDDResultsList = self->existingDDResultsList;
  self->existingDDResultsList = v4;

  MEMORY[0x2821F96F8]();
}

@end