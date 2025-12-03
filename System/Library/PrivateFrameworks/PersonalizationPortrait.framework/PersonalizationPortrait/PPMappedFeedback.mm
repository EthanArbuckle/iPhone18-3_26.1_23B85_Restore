@interface PPMappedFeedback
- (PPMappedFeedback)initWithExplicitlyEngagedString:(id)string mappingId:(id)id;
- (PPMappedFeedback)initWithExplicitlyEngagedStrings:(id)strings explicitlyRejectedStrings:(id)rejectedStrings implicitlyEngagedStrings:(id)engagedStrings implicitlyRejectedStrings:(id)implicitlyRejectedStrings offeredStrings:(id)offeredStrings mappingId:(id)id;
- (PPMappedFeedback)initWithExplicitlyRejectedString:(id)string mappingId:(id)id;
- (PPMappedFeedback)initWithImplicitlyEngagedString:(id)string mappingId:(id)id;
- (PPMappedFeedback)initWithImplicitlyRejectedString:(id)string mappingId:(id)id;
- (PPMappedFeedback)initWithOfferedString:(id)string mappingId:(id)id;
@end

@implementation PPMappedFeedback

- (PPMappedFeedback)initWithExplicitlyEngagedStrings:(id)strings explicitlyRejectedStrings:(id)rejectedStrings implicitlyEngagedStrings:(id)engagedStrings implicitlyRejectedStrings:(id)implicitlyRejectedStrings offeredStrings:(id)offeredStrings mappingId:(id)id
{
  v82 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  rejectedStringsCopy = rejectedStrings;
  engagedStringsCopy = engagedStrings;
  implicitlyRejectedStringsCopy = implicitlyRejectedStrings;
  offeredStringsCopy = offeredStrings;
  idCopy = id;
  v17 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v18 = stringsCopy;
  v19 = [v18 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v74;
    do
    {
      v22 = 0;
      do
      {
        if (*v74 != v21)
        {
          objc_enumerationMutation(v18);
        }

        offeredStringsCopy = [[PPFeedbackItem alloc] initWithItemString:*(*(&v73 + 1) + 8 * v22) itemFeedbackType:1, offeredStringsCopy];
        [v17 addObject:offeredStringsCopy];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v20);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v24 = rejectedStringsCopy;
  v25 = [v24 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v70;
    do
    {
      v28 = 0;
      do
      {
        if (*v70 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v69 + 1) + 8 * v28) itemFeedbackType:3];
        [v17 addObject:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v26);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v30 = engagedStringsCopy;
  v31 = [v30 countByEnumeratingWithState:&v65 objects:v79 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v66;
    do
    {
      v34 = 0;
      do
      {
        if (*v66 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v65 + 1) + 8 * v34) itemFeedbackType:2];
        [v17 addObject:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v65 objects:v79 count:16];
    }

    while (v32);
  }

  v54 = v18;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v36 = implicitlyRejectedStringsCopy;
  v37 = [v36 countByEnumeratingWithState:&v61 objects:v78 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v62;
    do
    {
      v40 = 0;
      do
      {
        if (*v62 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v61 + 1) + 8 * v40) itemFeedbackType:4];
        [v17 addObject:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [v36 countByEnumeratingWithState:&v61 objects:v78 count:16];
    }

    while (v38);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = offeredStringsCopy;
  v43 = [v42 countByEnumeratingWithState:&v57 objects:v77 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v58;
    do
    {
      v46 = 0;
      do
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v57 + 1) + 8 * v46) itemFeedbackType:5];
        [v17 addObject:v47];

        ++v46;
      }

      while (v44 != v46);
      v44 = [v42 countByEnumeratingWithState:&v57 objects:v77 count:16];
    }

    while (v44);
  }

  v48 = [v17 copy];
  v56.receiver = self;
  v56.super_class = PPMappedFeedback;
  v49 = [(PPBaseFeedback *)&v56 initWithFeedbackItems:v48 mappingId:idCopy];

  v50 = *MEMORY[0x1E69E9840];
  return v49;
}

- (PPMappedFeedback)initWithOfferedString:(id)string mappingId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = MEMORY[0x1E695DEC8];
  idCopy = id;
  stringCopy2 = string;
  v9 = [v6 arrayWithObjects:&stringCopy count:1];

  v10 = [(PPMappedFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:v9 mappingId:idCopy, stringCopy, v14];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PPMappedFeedback)initWithImplicitlyRejectedString:(id)string mappingId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = MEMORY[0x1E695DEC8];
  idCopy = id;
  stringCopy2 = string;
  v9 = [v6 arrayWithObjects:&stringCopy count:1];

  v10 = [(PPMappedFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:v9 offeredStrings:0 mappingId:idCopy, stringCopy, v14];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PPMappedFeedback)initWithImplicitlyEngagedString:(id)string mappingId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = MEMORY[0x1E695DEC8];
  idCopy = id;
  stringCopy2 = string;
  v9 = [v6 arrayWithObjects:&stringCopy count:1];

  v10 = [(PPMappedFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:v9 implicitlyRejectedStrings:0 offeredStrings:0 mappingId:idCopy, stringCopy, v14];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PPMappedFeedback)initWithExplicitlyRejectedString:(id)string mappingId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = MEMORY[0x1E695DEC8];
  idCopy = id;
  stringCopy2 = string;
  v9 = [v6 arrayWithObjects:&stringCopy count:1];

  v10 = [(PPMappedFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:v9 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:0 mappingId:idCopy, stringCopy, v14];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PPMappedFeedback)initWithExplicitlyEngagedString:(id)string mappingId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = MEMORY[0x1E695DEC8];
  idCopy = id;
  stringCopy2 = string;
  v9 = [v6 arrayWithObjects:&stringCopy count:1];

  v10 = [(PPMappedFeedback *)self initWithExplicitlyEngagedStrings:v9 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:0 mappingId:idCopy, stringCopy, v14];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end