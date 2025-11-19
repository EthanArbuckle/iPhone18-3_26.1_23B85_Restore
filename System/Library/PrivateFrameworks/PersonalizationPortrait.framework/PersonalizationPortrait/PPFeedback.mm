@interface PPFeedback
- (PPFeedback)initWithExplicitlyEngagedString:(id)a3;
- (PPFeedback)initWithExplicitlyEngagedStrings:(id)a3 explicitlyRejectedStrings:(id)a4 implicitlyEngagedStrings:(id)a5 implicitlyRejectedStrings:(id)a6 offeredStrings:(id)a7;
- (PPFeedback)initWithExplicitlyRejectedString:(id)a3;
- (PPFeedback)initWithImplicitlyEngagedString:(id)a3;
- (PPFeedback)initWithImplicitlyRejectedString:(id)a3;
- (PPFeedback)initWithOfferedString:(id)a3;
@end

@implementation PPFeedback

- (PPFeedback)initWithExplicitlyEngagedStrings:(id)a3 explicitlyRejectedStrings:(id)a4 implicitlyEngagedStrings:(id)a5 implicitlyRejectedStrings:(id)a6 offeredStrings:(id)a7
{
  v79 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v50 = a7;
  v15 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v71;
    do
    {
      v20 = 0;
      do
      {
        if (*v71 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v70 + 1) + 8 * v20) itemFeedbackType:1];
        [v15 addObject:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v18);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v22 = v12;
  v23 = [v22 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v67;
    do
    {
      v26 = 0;
      do
      {
        if (*v67 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v66 + 1) + 8 * v26) itemFeedbackType:3];
        [v15 addObject:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v24);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v28 = v13;
  v29 = [v28 countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v63;
    do
    {
      v32 = 0;
      do
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v62 + 1) + 8 * v32) itemFeedbackType:2];
        [v15 addObject:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v30);
  }

  v51 = v16;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v34 = v14;
  v35 = [v34 countByEnumeratingWithState:&v58 objects:v75 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v59;
    do
    {
      v38 = 0;
      do
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v58 + 1) + 8 * v38) itemFeedbackType:4];
        [v15 addObject:v39];

        ++v38;
      }

      while (v36 != v38);
      v36 = [v34 countByEnumeratingWithState:&v58 objects:v75 count:16];
    }

    while (v36);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = v50;
  v41 = [v40 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v55;
    do
    {
      v44 = 0;
      do
      {
        if (*v55 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v54 + 1) + 8 * v44) itemFeedbackType:5];
        [v15 addObject:v45];

        ++v44;
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v42);
  }

  v46 = [v15 copy];
  v53.receiver = self;
  v53.super_class = PPFeedback;
  v47 = [(PPBaseFeedback *)&v53 initWithFeedbackItems:v46 mappingId:0];

  v48 = *MEMORY[0x1E69E9840];
  return v47;
}

- (PPFeedback)initWithOfferedString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:v6, v10, v11];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (PPFeedback)initWithImplicitlyRejectedString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:v6 offeredStrings:0, v10, v11];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (PPFeedback)initWithImplicitlyEngagedString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:v6 implicitlyRejectedStrings:0 offeredStrings:0, v10, v11];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (PPFeedback)initWithExplicitlyRejectedString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:v6 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:0, v10, v11];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (PPFeedback)initWithExplicitlyEngagedString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:v6 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:0, v10, v11];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end