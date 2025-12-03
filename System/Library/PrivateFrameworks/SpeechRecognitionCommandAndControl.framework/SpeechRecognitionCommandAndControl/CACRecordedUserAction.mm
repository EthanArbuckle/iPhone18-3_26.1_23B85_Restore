@interface CACRecordedUserAction
- (CACRecordedUserAction)initWithCoder:(id)coder;
- (CACRecordedUserAction)initWithSpokenCommand:(id)command;
- (CACRecordedUserActionFlow)ownerFlow;
- (CGRect)_rectFromDictionary:(id)dictionary;
- (id)_derivedTargetAttributesFromSpokenCommand:(id)command;
- (id)_dictionaryFromRect:(CGRect)rect;
- (id)_labeledElementsFromMatchingCriteria:(id)criteria;
- (id)plistDescription;
- (id)spokenCommand;
- (void)beginExecutingWithCompletionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CACRecordedUserAction

- (CACRecordedUserAction)initWithSpokenCommand:(id)command
{
  commandCopy = command;
  v13.receiver = self;
  v13.super_class = CACRecordedUserAction;
  v6 = [(CACRecordedUserAction *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_object, command);
    identifier = [commandCopy identifier];
    identifier = v7->_identifier;
    v7->_identifier = identifier;

    v10 = [(CACRecordedUserAction *)v7 _derivedTargetAttributesFromSpokenCommand:commandCopy];
    targetAttributes = v7->_targetAttributes;
    v7->_targetAttributes = v10;
  }

  return v7;
}

- (id)spokenCommand
{
  if ([(CACRecordedUserAction *)self isSpokenCommand])
  {
    object = self->_object;
  }

  else
  {
    object = 0;
  }

  return object;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"Version"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeObject:self->_identifier forKey:@"CommandIdentifier"];
  [coderCopy encodeObject:self->_targetAttributes forKey:@"TargetAttributes"];
  [coderCopy encodeBool:self->_canIgnoreFailure forKey:@"CanIgnoreFailure"];
}

- (CACRecordedUserAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CACRecordedUserAction;
  v5 = [(CACRecordedUserAction *)&v20 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CommandIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"TargetAttributes"];
    targetAttributes = v5->_targetAttributes;
    v5->_targetAttributes = v14;

    v5->_canIgnoreFailure = [coderCopy decodeBoolForKey:@"CanIgnoreFailure"];
    if (v5->_type == 1)
    {
      if (v5->_identifier)
      {
        v16 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v17 = [v16 copySupportedCommandWithIdentifier:v5->_identifier];
        object = v5->_object;
        v5->_object = v17;

        [v5->_object setExecutedIndirectly:1];
      }
    }
  }

  return v5;
}

- (id)_dictionaryFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  *&v8 = x;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  *&v10 = y;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  *&v12 = width;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  *&v14 = height;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v16 = [v7 initWithObjectsAndKeys:{v9, @"x", v11, @"y", v13, @"width", v15, @"height", 0}];

  return v16;
}

- (CGRect)_rectFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"x"];
  [v4 floatValue];
  v6 = v5;
  v7 = [dictionaryCopy objectForKey:@"y"];
  [v7 floatValue];
  v9 = v8;
  v10 = [dictionaryCopy objectForKey:@"width"];
  [v10 floatValue];
  v12 = v11;
  v13 = [dictionaryCopy objectForKey:@"height"];

  [v13 floatValue];
  v15 = v14;

  v16 = v6;
  v17 = v9;
  v18 = v12;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_derivedTargetAttributesFromSpokenCommand:(id)command
{
  v76 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = objc_opt_new();
  selfCopy = self;
  if (self->_type == 1)
  {
    v51 = commandCopy;
    recognizedParameters = [commandCopy recognizedParameters];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    allKeys = [recognizedParameters allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (!v8)
    {
      goto LABEL_57;
    }

    v9 = v8;
    v10 = 0x277CBE000uLL;
    v11 = MEMORY[0x277D65608];
    v12 = *v70;
    v53 = recognizedParameters;
    v54 = v5;
    v52 = allKeys;
    v56 = *v70;
    while (1)
    {
      v13 = 0;
      v55 = v9;
      do
      {
        if (*v70 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v61 = v13;
        v14 = *(*(&v69 + 1) + 8 * v13);
        if (([v14 isEqualToString:kCACCommandParameterText] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", kCACCommandParameterTextVariants))
        {
          v15 = [recognizedParameters objectForKey:v14];
          [v5 setObject:v15 forKey:v14];
          goto LABEL_10;
        }

        v16 = *MEMORY[0x277D655C8];
        v74[0] = *v11;
        v74[1] = v16;
        v17 = *MEMORY[0x277D65628];
        v74[2] = *MEMORY[0x277D655D0];
        v74[3] = v17;
        v18 = *MEMORY[0x277D65600];
        v74[4] = *MEMORY[0x277D655F8];
        v74[5] = v18;
        v19 = *MEMORY[0x277D65618];
        v74[6] = *MEMORY[0x277D655C0];
        v74[7] = v19;
        v20 = *MEMORY[0x277D655F0];
        v74[8] = *MEMORY[0x277D655E8];
        v74[9] = v20;
        v21 = [*(v10 + 2656) arrayWithObjects:v74 count:10];
        v22 = [v21 containsObject:v14];

        v12 = v56;
        if (v22)
        {
          v15 = objc_opt_new();
          v58 = v14;
          v23 = [recognizedParameters objectForKey:v14];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          allKeys2 = [v23 allKeys];
          v25 = [allKeys2 countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (!v25)
          {
            goto LABEL_55;
          }

          v26 = v25;
          v27 = *v66;
          v60 = allKeys2;
          while (1)
          {
            v28 = 0;
            do
            {
              if (*v66 != v27)
              {
                objc_enumerationMutation(allKeys2);
              }

              v29 = *(*(&v65 + 1) + 8 * v28);
              if (([v29 isEqualToString:kCACCommandParameterText] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", kCACCommandParameterTextVariants) & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", kCACCommandParameterMatchingApps) & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", kCACCommandParameterAppIdentifier) & 1) != 0 || objc_msgSend(v29, "isEqualToString:", kCACCommandParameterAttributedText))
              {
                v30 = [v23 objectForKey:v29];
                [v15 setObject:v30 forKey:v29];
                goto LABEL_25;
              }

              if (([v29 isEqualToString:kCACCommandParameterLabeledElement] & 1) != 0 || objc_msgSend(v29, "isEqualToString:", kCACCommandParameterLabeledElementForDisambiguation))
              {
                v30 = [v23 objectForKey:v29];
                element = [v30 element];
                v63 = element;
                v64 = objc_opt_new();
                if (element)
                {
                  [element frame];
                  [(CACRecordedUserAction *)selfCopy _dictionaryFromRect:?];
                  v33 = v32 = element;
                  [v64 setObject:v33 forKey:@"ScreenRect"];

                  uiElement = [v32 uiElement];
                  v35 = [uiElement stringWithAXAttribute:5019];

                  if ([v35 length])
                  {
                    [v64 setObject:v35 forKey:@"AXElementIdentifier"];
                  }

                  v62 = v35;
                  if ([v58 isEqualToString:*MEMORY[0x277D65628]])
                  {
                    firstObject = [v23 objectForKey:kCACCommandParameterText];
                    if ([firstObject length])
                    {
                      [v64 setObject:firstObject forKey:@"AXElementLabel"];
                    }

                    [v64 setObject:@"ItemName" forKey:@"RecordedApproach"];
                    goto LABEL_51;
                  }

                  if (([v58 isEqualToString:*MEMORY[0x277D655F8]] & 1) != 0 || objc_msgSend(v58, "isEqualToString:", *MEMORY[0x277D65600]))
                  {
                    recognitionStrings = [v63 recognitionStrings];
                    firstObject = [recognitionStrings firstObject];

                    if ([firstObject length])
                    {
                      [v64 setObject:firstObject forKey:@"AXElementLabel"];
                    }

                    v46 = [v23 objectForKey:kCACCommandParameterText];
                    if (v46)
                    {
                      [v64 setObject:v46 forKey:@"NumberedLabel"];
                    }

                    [v64 setObject:@"ItemNumber" forKey:@"RecordedApproach"];

LABEL_51:
                  }

                  v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v29, "isEqualToString:", kCACCommandParameterLabeledElementForDisambiguation)}];
                  v44 = v64;
                  [v64 setObject:v47 forKey:@"RequiredDisambiguation"];

                  [v15 setObject:v64 forKey:@"MatchingCriteria"];
                }

                else
                {
                  recognitionStrings2 = [0 recognitionStrings];
                  firstObject2 = [recognitionStrings2 firstObject];

                  if ([firstObject2 length])
                  {
                    [v64 setObject:firstObject2 forKey:@"AXElementLabel"];
                  }

                  v62 = firstObject2;
                  [v30 rectangle];
                  v39 = [(CACRecordedUserAction *)selfCopy _dictionaryFromRect:?];
                  [v64 setObject:v39 forKey:@"ScreenRect"];

                  numberedLabel = [v30 numberedLabel];
                  if (numberedLabel)
                  {
                    [v64 setObject:numberedLabel forKey:@"NumberedLabel"];
                  }

                  v57 = numberedLabel;
                  element2 = [v30 element];
                  uiElement2 = [element2 uiElement];
                  v43 = [uiElement2 stringWithAXAttribute:5019];

                  v44 = v64;
                  if ([v43 length])
                  {
                    [v64 setObject:v43 forKey:@"AXElementIdentifier"];
                  }

                  [v64 setObject:@"GridNumber" forKey:@"RecordedApproach"];
                  [v15 setObject:v64 forKey:@"MatchingCriteria"];
                }

                allKeys2 = v60;
LABEL_25:
              }

              ++v28;
            }

            while (v26 != v28);
            v48 = [allKeys2 countByEnumeratingWithState:&v65 objects:v73 count:16];
            v26 = v48;
            if (!v48)
            {
LABEL_55:

              v5 = v54;
              [v54 setObject:v15 forKey:v58];

              allKeys = v52;
              recognizedParameters = v53;
              v9 = v55;
              v12 = v56;
              v10 = 0x277CBE000;
              v11 = MEMORY[0x277D65608];
LABEL_10:

              break;
            }
          }
        }

        v13 = v61 + 1;
      }

      while (v61 + 1 != v9);
      v49 = [allKeys countByEnumeratingWithState:&v69 objects:v75 count:16];
      v9 = v49;
      if (!v49)
      {
LABEL_57:

        commandCopy = v51;
        break;
      }
    }
  }

  return v5;
}

- (id)_labeledElementsFromMatchingCriteria:(id)criteria
{
  v92 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  labeledScreenElementsCollection = [v4 labeledScreenElementsCollection];
  copyTableOfCollectedElementsByTitle = [labeledScreenElementsCollection copyTableOfCollectedElementsByTitle];

  v7 = [criteriaCopy objectForKey:@"AXElementLabel"];
  v76 = criteriaCopy;
  if (v7)
  {
    v8 = [criteriaCopy objectForKey:@"AXElementLabel"];
    lowercaseString = [v8 lowercaseString];
    v10 = [copyTableOfCollectedElementsByTitle objectForKey:lowercaseString];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 count] >= 2)
  {
    v11 = [criteriaCopy objectForKey:@"RecordedApproach"];
    v12 = [v11 isEqualToString:@"ItemName"];

    if ((v12 & 1) == 0)
    {

      v10 = 0;
    }
  }

  if ([v10 count])
  {
    v13 = v10;
    v14 = 0;
LABEL_9:
    v15 = 0;
    v16 = 0;
    goto LABEL_52;
  }

  v68 = v10;
  v69 = copyTableOfCollectedElementsByTitle;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = [copyTableOfCollectedElementsByTitle allValues];
  v17 = criteriaCopy;
  v72 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (v72)
  {
    v71 = *v82;
    do
    {
      v19 = 0;
      do
      {
        if (*v82 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v19;
        v20 = *(*(&v81 + 1) + 8 * v19);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v74 = v20;
        v21 = [v74 countByEnumeratingWithState:&v77 objects:v90 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v78;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v78 != v23)
              {
                objc_enumerationMutation(v74);
              }

              v25 = *(*(&v77 + 1) + 8 * i);
              v26 = [v17 objectForKey:@"NumberedLabel"];
              v27 = v26;
              if (!v15 && v26)
              {
                numberedLabel = [v25 numberedLabel];
                v29 = [numberedLabel isEqualToString:v27];

                if (v29)
                {
                  v15 = v25;
                }

                else
                {
                  v15 = 0;
                }

                v17 = v76;
              }

              v30 = v15;
              v31 = [v17 objectForKey:@"AXElementIdentifier"];
              v32 = v31;
              v33 = v18;
              if (!v16 && v31)
              {
                axIdentifier = [v25 axIdentifier];
                v35 = [axIdentifier isEqualToString:v32];

                if (v35)
                {
                  v16 = v25;
                }

                else
                {
                  v16 = 0;
                }
              }

              v36 = [v76 objectForKey:@"ScreenRect"];
              [(CACRecordedUserAction *)self _rectFromDictionary:v36];
              v38 = v37;
              v40 = v39;
              v42 = v41;
              v44 = v43;

              v18 = v33;
              v15 = v30;
              if (!v18)
              {
                v93.origin.x = v38;
                v93.origin.y = v40;
                v93.size.width = v42;
                v93.size.height = v44;
                if (CGRectIsEmpty(v93) || ([v25 rectangle], v95.origin.x = v45, v95.origin.y = v46, v95.size.width = v47, v95.size.height = v48, v94.origin.x = v38, v94.origin.y = v40, v94.size.width = v42, v94.size.height = v44, !CGRectEqualToRect(v94, v95)))
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v25;
                }
              }

              v17 = v76;
            }

            v22 = [v74 countByEnumeratingWithState:&v77 objects:v90 count:16];
          }

          while (v22);
        }

        v19 = v73 + 1;
      }

      while (v73 + 1 != v72);
      v72 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v72);
  }

  v49 = v18;

  v50 = [v17 objectForKey:@"RecordedApproach"];
  if ([v50 isEqualToString:@"ItemNumber"])
  {

    v10 = v68;
    copyTableOfCollectedElementsByTitle = v69;
LABEL_43:
    if (!v15)
    {
      v14 = v49;
      if (v16)
      {
        v88 = v16;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
        v15 = 0;
        goto LABEL_52;
      }

      if (!v49)
      {
        v15 = 0;
        v16 = 0;
        v13 = 0;
        goto LABEL_52;
      }

      v87 = v49;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
      goto LABEL_9;
    }

    v89 = v15;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
LABEL_51:
    v14 = v49;
    goto LABEL_52;
  }

  v51 = [v17 objectForKey:@"RecordedApproach"];
  v52 = [v51 isEqualToString:@"ItemName"];

  v10 = v68;
  copyTableOfCollectedElementsByTitle = v69;
  if (v52)
  {
    goto LABEL_43;
  }

  v53 = [v76 objectForKey:@"RecordedApproach"];
  v54 = [v53 isEqualToString:@"GridNumber"];

  if (!v54)
  {
    v13 = 0;
    goto LABEL_51;
  }

  if (v49)
  {
    v14 = v49;
    v86 = v49;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  }

  else
  {
    v57 = [v76 objectForKey:@"ScreenRect"];
    [(CACRecordedUserAction *)self _rectFromDictionary:v57];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v66 = [CACLabeledElement alloc];
    v67 = [(CACLabeledElement *)v66 initWithElement:0 recognitionStrings:MEMORY[0x277CBEBF8] rectangle:v59, v61, v63, v65];
    v85 = v67;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];

    v14 = 0;
  }

LABEL_52:
  v55 = v13;

  return v13;
}

- (void)beginExecutingWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (self->_type == 1)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__CACRecordedUserAction_beginExecutingWithCompletionBlock___block_invoke;
    v7[3] = &unk_279CEB3E0;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = CACMakeError(3006, 0);
    (*(blockCopy + 2))(blockCopy, v6);
  }
}

void __59__CACRecordedUserAction_beginExecutingWithCompletionBlock___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 40);
  v2 = 12;
  while (![v1 isListening])
  {
    if (v2 < 1)
    {
      goto LABEL_11;
    }

LABEL_9:
    usleep(0x3D090u);
    --v2;
  }

  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  if ([v3 isSynchronizingRecognizers])
  {
LABEL_6:

    if (v2 <= 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  if ([v4 isFetchingElements])
  {

    goto LABEL_6;
  }

LABEL_11:
  if (![v1 isListening])
  {
    v45 = *(a1 + 40);
    v46 = [CACLocaleUtilities localizedUIStringForKey:@"CommandPlayback.Error.NotAppropriateForContext"];
    v47 = CACMakeError(3002, v46);
    (*(v45 + 16))(v45, v47);

    goto LABEL_53;
  }

  v53 = v1;
  v5 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v6 = a1;
  v7 = [*(*(a1 + 32) + 24) allKeys];
  v57 = [v7 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (!v57)
  {
LABEL_44:

LABEL_51:
    v1 = v53;
    [v53 setRecognizedParameters:v5];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __59__CACRecordedUserAction_beginExecutingWithCompletionBlock___block_invoke_2;
    v59[3] = &unk_279CEBE58;
    v60 = *(v6 + 40);
    [v53 setCompletionBlock:v59];
    v52 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v52 handleRecognizedCommand:v53];

    v51 = v60;
    goto LABEL_52;
  }

  v55 = v5;
  v56 = *v62;
  v8 = 0x277CBE000uLL;
  v54 = v7;
  while (2)
  {
    v9 = 0;
LABEL_15:
    if (*v62 != v56)
    {
      objc_enumerationMutation(v7);
    }

    v10 = *(*(&v61 + 1) + 8 * v9);
    v67[0] = kCACCommandParameterText;
    v67[1] = kCACCommandParameterTextVariants;
    v11 = *MEMORY[0x277D655C8];
    v67[2] = *MEMORY[0x277D65608];
    v67[3] = v11;
    v12 = *MEMORY[0x277D655C0];
    v67[4] = *MEMORY[0x277D655D0];
    v67[5] = v12;
    v13 = *MEMORY[0x277D655E8];
    v67[6] = *MEMORY[0x277D65618];
    v67[7] = v13;
    v67[8] = *MEMORY[0x277D655F0];
    v14 = [*(v8 + 2656) arrayWithObjects:v67 count:9];
    v15 = [v14 containsObject:v10];

    if (v15)
    {
      v16 = [*(*(v6 + 32) + 24) objectForKey:v10];
      [v5 setObject:v16 forKey:v10];
      goto LABEL_41;
    }

    v66 = *MEMORY[0x277D65628];
    v17 = [*(v8 + 2656) arrayWithObjects:&v66 count:1];
    v18 = [v17 containsObject:v10];

    if (!v18)
    {
      v24 = *MEMORY[0x277D65600];
      v65[0] = *MEMORY[0x277D655F8];
      v65[1] = v24;
      v25 = [*(v8 + 2656) arrayWithObjects:v65 count:2];
      v26 = [v25 containsObject:v10];

      v6 = a1;
      if (v26)
      {
        v16 = objc_opt_new();
        v27 = *(a1 + 32);
        v28 = [v27[3] objectForKey:v10];
        v29 = [v28 objectForKey:@"MatchingCriteria"];
        v23 = [v27 _labeledElementsFromMatchingCriteria:v29];

        if ([v23 count] != 1)
        {
          v48 = @"CommandPlayback.Error.CannotFindElementNumber";
          v49 = 3005;
          goto LABEL_49;
        }

        v30 = [v23 firstObject];
        [v16 setObject:v30 forKey:kCACCommandParameterLabeledElement];

        [v5 setObject:v16 forKey:v10];
        v6 = a1;
        goto LABEL_41;
      }

LABEL_42:
      ++v9;
      v8 = 0x277CBE000;
      if (v9 == v57)
      {
        v57 = [v7 countByEnumeratingWithState:&v61 objects:v68 count:16];
        if (v57)
        {
          continue;
        }

        goto LABEL_44;
      }

      goto LABEL_15;
    }

    break;
  }

  v16 = objc_opt_new();
  v19 = *(v6 + 32);
  v20 = [v19[3] objectForKey:v10];
  v21 = [v20 objectForKey:@"MatchingCriteria"];
  v22 = [v19 _labeledElementsFromMatchingCriteria:v21];

  if ([v22 count])
  {
    v23 = v22;
  }

  else
  {
    v31 = 20;
    do
    {
      v32 = *(v6 + 32);
      v33 = [v32[3] objectForKey:v10];
      v34 = [v33 objectForKey:@"MatchingCriteria"];
      v23 = [v32 _labeledElementsFromMatchingCriteria:v34];

      usleep(0x3D090u);
      if ([v23 count])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31 > 1;
      }

      --v31;
      v6 = a1;
      v22 = v23;
    }

    while (v35);
  }

  v36 = [*(*(v6 + 32) + 24) objectForKey:v10];
  v37 = [v36 objectForKey:@"MatchingCriteria"];
  v38 = [v37 objectForKey:@"RequiredDisambiguation"];
  v39 = [v38 BOOLValue];

  if ([v23 count] == 1)
  {
    v40 = [v23 firstObject];
    [v16 setObject:v40 forKey:kCACCommandParameterLabeledElement];

    v5 = v55;
    v6 = a1;
    if (v39)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
      [WeakRetained setSkipNextAction:1];
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v5 = v55;
  if ([v23 count] >= 2)
  {
    if (!v39)
    {
      goto LABEL_46;
    }

    v6 = a1;
    v42 = objc_loadWeakRetained((*(a1 + 32) + 48));
    if ([v42 doesNextSpokenCommandMatchIdentifier:@"System.OverlayChooseLabel"])
    {
    }

    else
    {
      v43 = objc_loadWeakRetained((*(a1 + 32) + 48));
      v44 = [v43 doesNextSpokenCommandMatchIdentifier:@"System.OverlayChooseLabelWithoutPrefix"];

      v6 = a1;
      if (!v44)
      {
LABEL_46:
        v48 = @"CommandPlayback.Error.UnexpectedDisambiguation";
        v49 = 3003;
        v7 = v54;
        goto LABEL_49;
      }
    }

    WeakRetained = [v23 firstObject];
    [v16 setObject:WeakRetained forKey:kCACCommandParameterLabeledElementForDisambiguation];
LABEL_39:

LABEL_40:
    [v5 setObject:v16 forKey:v10];

    v7 = v54;
LABEL_41:

    goto LABEL_42;
  }

  v7 = v54;
  v49 = 3004;
  v48 = @"CommandPlayback.Error.CannotFindElementName";
LABEL_49:
  v50 = [CACLocaleUtilities localizedUIStringForKey:v48];
  v51 = CACMakeError(v49, v50);

  v6 = a1;
  if (!v51)
  {
    goto LABEL_51;
  }

  (*(*(a1 + 40) + 16))();
  v1 = v53;
LABEL_52:

LABEL_53:
}

- (id)plistDescription
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [v3 setObject:v4 forKey:@"UserActionTypeValue"];

  v22 = v3;
  if (self->_object)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v3 setObject:v6 forKey:@"UserActionTypeDescription"];
  }

  else
  {
    [v3 setObject:@"Unknown" forKey:@"UserActionTypeDescription"];
  }

  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_targetAttributes;
  v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([&unk_287BEFF90 containsObject:v14])
        {
          [v7 setObject:v12 forKey:v14];
        }

        else
        {
          v15 = [(NSDictionary *)self->_targetAttributes objectForKey:v14];
          [v7 setObject:v15 forKey:v14];
        }
      }

      v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  [v22 setObject:v7 forKey:@"UserActionTargetAttributes"];
  if (self->_type == 1)
  {
    v16 = self->_object;
    identifier = [v16 identifier];
    [v22 setObject:identifier forKey:@"SpokenCommandIdentifier"];

    if ([v16 action])
    {
      v18 = NSStringFromSelector([v16 action]);
      [v22 setObject:v18 forKey:@"SpokenCommandAction"];
    }

    contextEvaluation = [v16 contextEvaluation];

    if (contextEvaluation)
    {
      contextEvaluation2 = [v16 contextEvaluation];
      [v22 setObject:contextEvaluation2 forKey:@"SpokenCommandContext"];
    }
  }

  return v22;
}

- (CACRecordedUserActionFlow)ownerFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerFlow);

  return WeakRetained;
}

@end