@interface _PSCNAutocompleteFeedback
+ (id)createEnteredFeedbackWithBundleIdentifier:(id)a3 status:(int64_t)a4;
+ (id)createErasedHandleFeedbackWithBundleIdentifier:(id)a3 contact:(id)a4;
+ (id)createExitedFeedbackWithBundleIdentifier:(id)a3 status:(int64_t)a4;
+ (id)createTappedSuggestionFeedbackWithBundleIdentifier:(id)a3 suggestion:(id)a4;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (NSString)description;
- (_PSCNAutocompleteFeedback)initWithBundleIdentifier:(id)a3 feedbackType:(int64_t)a4 isImplicit:(BOOL)a5 entered:(id)a6 exited:(id)a7 vendedSuggestions:(id)a8 tappedSuggestion:(id)a9 typedHandle:(id)a10 erasedHandle:(id)a11;
- (_PSCNAutocompleteFeedback)initWithCoder:(id)a3;
- (_PSCNAutocompleteFeedback)initWithDataVersion:(unsigned int)a3 reportTime:(id)a4 userIdentifier:(id)a5 bundleIdentifier:(id)a6 sourceBundleIdentifier:(id)a7 isImplicit:(BOOL)a8 feedbackType:(int64_t)a9 entered:(id)a10 exited:(id)a11 vendedSuggestions:(id)a12 tappedSuggestion:(id)a13 typedHandle:(id)a14 erasedHandle:(id)a15;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
- (void)serialize;
@end

@implementation _PSCNAutocompleteFeedback

- (id)serialize
{
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_PSCNAutocompleteFeedback *)v3 serialize];
    }
  }

  return v2;
}

- (_PSCNAutocompleteFeedback)initWithBundleIdentifier:(id)a3 feedbackType:(int64_t)a4 isImplicit:(BOOL)a5 entered:(id)a6 exited:(id)a7 vendedSuggestions:(id)a8 tappedSuggestion:(id)a9 typedHandle:(id)a10 erasedHandle:(id)a11
{
  v30 = a5;
  v15 = MEMORY[0x1E695DF00];
  v26 = a11;
  v25 = a10;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = [v15 now];
  v22 = NSUserName();
  v27 = [MEMORY[0x1E696AE30] processInfo];
  v23 = [v27 processName];
  v31 = [(_PSCNAutocompleteFeedback *)self initWithDataVersion:3 reportTime:v21 userIdentifier:v22 bundleIdentifier:v20 sourceBundleIdentifier:v23 isImplicit:v30 feedbackType:a4 entered:v19 exited:v18 vendedSuggestions:v17 tappedSuggestion:v16 typedHandle:v25 erasedHandle:v26];

  return v31;
}

- (_PSCNAutocompleteFeedback)initWithDataVersion:(unsigned int)a3 reportTime:(id)a4 userIdentifier:(id)a5 bundleIdentifier:(id)a6 sourceBundleIdentifier:(id)a7 isImplicit:(BOOL)a8 feedbackType:(int64_t)a9 entered:(id)a10 exited:(id)a11 vendedSuggestions:(id)a12 tappedSuggestion:(id)a13 typedHandle:(id)a14 erasedHandle:(id)a15
{
  v18 = a4;
  v37 = a5;
  v27 = a6;
  v36 = a6;
  v35 = a7;
  v34 = a10;
  v33 = a11;
  v32 = a12;
  v31 = a13;
  v30 = a14;
  v19 = a15;
  v38.receiver = self;
  v38.super_class = _PSCNAutocompleteFeedback;
  v20 = [(_PSCNAutocompleteFeedback *)&v38 init];
  v21 = v20;
  if (v20)
  {
    v20->_dataVersion = a3;
    objc_storeStrong(&v20->_userIdentifier, a5);
    objc_storeStrong(&v21->_reportTime, a4);
    objc_storeStrong(&v21->_bundleIdentifier, v27);
    objc_storeStrong(&v21->_sourceBundleIdentifier, a7);
    v21->_isImplicit = a8;
    v21->_feedbackType = a9;
    if (a9 > 2)
    {
      switch(a9)
      {
        case 3:
          p_tappedSuggestion = &v21->_tappedSuggestion;
          v23 = a13;
          goto LABEL_16;
        case 4:
          p_tappedSuggestion = &v21->_typedHandle;
          v23 = a14;
          goto LABEL_16;
        case 5:
          p_tappedSuggestion = &v21->_erasedHandle;
          v23 = a15;
          goto LABEL_16;
      }
    }

    else
    {
      switch(a9)
      {
        case 0:
          p_tappedSuggestion = &v21->_entered;
          v23 = a10;
          goto LABEL_16;
        case 1:
          p_tappedSuggestion = &v21->_exited;
          v23 = a11;
          goto LABEL_16;
        case 2:
          p_tappedSuggestion = &v21->_vendedSuggestions;
          v23 = a12;
LABEL_16:
          objc_storeStrong(p_tappedSuggestion, v23);
          goto LABEL_17;
      }
    }

    v21->_feedbackType = 6;
  }

LABEL_17:

  return v21;
}

- (_PSCNAutocompleteFeedback)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeInt32ForKey:@"dataVersion"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"reportTime"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userIdentifier"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceBundleIdentifier"];
  v15 = [v3 decodeBoolForKey:@"isImplicit"];
  v6 = [v3 decodeIntegerForKey:@"feedbackType"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entered"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"exited"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"vendedSuggestions"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"tappedSuggestion"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"typedHandle"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"erasedHandle"];

  v19 = [(_PSCNAutocompleteFeedback *)self initWithDataVersion:v18 reportTime:v4 userIdentifier:v5 bundleIdentifier:v17 sourceBundleIdentifier:v16 isImplicit:v15 feedbackType:v6 entered:v7 exited:v8 vendedSuggestions:v9 tappedSuggestion:v10 typedHandle:v11 erasedHandle:v12];
  return v19;
}

- (NSString)description
{
  v3 = [(_PSCNAutocompleteFeedback *)self entered];

  v4 = 0x1E696A000uLL;
  if (v3)
  {
    v5 = [(_PSCNAutocompleteFeedback *)self entered];
    v6 = [v5 enterStatus];

    if (v6)
    {
      v7 = [(_PSCNAutocompleteFeedback *)self entered];
      v8 = [v7 enterStatus];

      if (v8 == 1)
      {
        v9 = @"\nenterStatus: Resumed";
      }

      else
      {
        v9 = @"\nenterStatus: Unknown";
      }
    }

    else
    {
      v9 = @"\nenterStatus: Started";
    }

    v15 = @"entered";
  }

  else
  {
    v10 = [(_PSCNAutocompleteFeedback *)self exited];

    if (v10)
    {
      v11 = [(_PSCNAutocompleteFeedback *)self exited];
      v12 = [v11 exitStatus];

      if (v12)
      {
        v13 = [(_PSCNAutocompleteFeedback *)self exited];
        v14 = [v13 exitStatus];

        if (v14 == 1)
        {
          v9 = @"\nexitStatus: Paused";
        }

        else
        {
          v9 = @"\nexitStatus: Unknown";
        }
      }

      else
      {
        v9 = @"\nexitStatus: Finished";
      }

      v15 = @"exited";
    }

    else
    {
      v16 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];

      if (v16)
      {
        v65 = MEMORY[0x1E696AEC0];
        v82 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        v80 = [v82 suggestions];
        v78 = [v80 firstObject];
        v86 = [v78 trialID];
        v76 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        v74 = [v76 suggestions];
        v61 = [v74 count];
        v72 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        v71 = [v72 suggestions];
        v70 = [v71 firstObject];
        v84 = [v70 groupName];
        v69 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        v68 = [v69 suggestions];
        v67 = [v68 firstObject];
        v66 = [v67 recipients];
        v56 = [v66 count];
        v64 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        v63 = [v64 suggestions];
        v62 = [v63 firstObject];
        v60 = [v62 recipients];
        v17 = [v60 description];
        v59 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        v58 = [v59 suggestions];
        v57 = [v58 lastObject];
        v18 = [v57 groupName];
        v55 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        v54 = [v55 suggestions];
        v53 = [v54 lastObject];
        v19 = [v53 recipients];
        v20 = [v19 count];
        v21 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        v22 = [v21 suggestions];
        v23 = [v22 lastObject];
        v24 = [v23 recipients];
        v25 = [v24 description];
        v9 = [v65 stringWithFormat:@"\ntrialID: %@ \ncountSuggestions: %lu \nfirstSuggestionGroupName: %@ \nfirstSuggestionCountRecipients: %lu \nfirstSuggestionRecipients: %@ \nlastSuggestionGroupName: %@ \nlastSuggestionCountRecipients: %lu \nlastSuggestionRecipients: %@", v86, v61, v84, v56, v17, v18, v20, v25];

        v4 = 0x1E696A000;
        v15 = @"vendedSuggestions";
      }

      else
      {
        v33 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];

        if (v33)
        {
          v79 = MEMORY[0x1E696AEC0];
          v87 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];
          v85 = [v87 suggestion];
          v75 = [v85 trialID];
          v83 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];
          v81 = [v83 suggestion];
          v73 = [v81 groupName];
          v77 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];
          v34 = [v77 suggestion];
          v35 = [v34 recipients];
          v36 = [v35 count];
          v37 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];
          v38 = [v37 suggestion];
          v39 = [v38 recipients];
          v40 = [v39 description];
          v9 = [v79 stringWithFormat:@"\ntrialID: %@ \ngroupName: %@ \ncountRecipients:%lu \nrecipients: %@", v75, v73, v36, v40];

          v4 = 0x1E696A000;
          v15 = @"tappedSuggestion";
        }

        else
        {
          v41 = [(_PSCNAutocompleteFeedback *)self typedHandle];

          if (v41)
          {
            v42 = MEMORY[0x1E696AEC0];
            v43 = [(_PSCNAutocompleteFeedback *)self typedHandle];
            if ([v43 viaContactPicker])
            {
              v44 = @"YES";
            }

            else
            {
              v44 = @"NO";
            }

            v45 = [(_PSCNAutocompleteFeedback *)self typedHandle];
            v46 = [v45 contact];
            v47 = [v46 description];
            v9 = [v42 stringWithFormat:@"\nviaContactPicker: %@\ncontact: %@", v44, v47];

            v15 = @"typedHandle";
          }

          else
          {
            v48 = [(_PSCNAutocompleteFeedback *)self erasedHandle];

            if (v48)
            {
              v49 = MEMORY[0x1E696AEC0];
              v50 = [(_PSCNAutocompleteFeedback *)self erasedHandle];
              v51 = [v50 contact];
              v52 = [v51 description];
              v9 = [v49 stringWithFormat:@"\ncontact: %@", v52];

              v15 = @"erasedHandle";
            }

            else
            {
              v9 = &stru_1F2D6CE98;
              v15 = @"unknown";
            }
          }
        }
      }
    }
  }

  v26 = *(v4 + 3776);
  v27 = objc_opt_class();
  v28 = [(_PSCNAutocompleteFeedback *)self reportTime];
  v29 = [(_PSCNAutocompleteFeedback *)self bundleIdentifier];
  if ([(_PSCNAutocompleteFeedback *)self isImplicit])
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  v31 = [v26 stringWithFormat:@"<%@ %p>\nreportTime: %@\nbundleId: %@\nisImplicit: %@\nfeedbackType: %@%@", v27, self, v28, v29, v30, v15, v9];

  return v31;
}

- (void)encodeWithCoder:(id)a3
{
  dataVersion = self->_dataVersion;
  v5 = a3;
  [v5 encodeInt32:dataVersion forKey:@"dataVersion"];
  [v5 encodeObject:self->_reportTime forKey:@"reportTime"];
  [v5 encodeObject:self->_userIdentifier forKey:@"userIdentifier"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  [v5 encodeBool:self->_isImplicit forKey:@"isImplicit"];
  [v5 encodeInteger:self->_feedbackType forKey:@"feedbackType"];
  [v5 encodeObject:self->_entered forKey:@"entered"];
  [v5 encodeObject:self->_exited forKey:@"exited"];
  [v5 encodeObject:self->_vendedSuggestions forKey:@"vendedSuggestions"];
  [v5 encodeObject:self->_tappedSuggestion forKey:@"tappedSuggestion"];
  [v5 encodeObject:self->_typedHandle forKey:@"typedHandle"];
  [v5 encodeObject:self->_erasedHandle forKey:@"erasedHandle"];
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v4 = MEMORY[0x1E696ACD0];
  v5 = a3;
  v11 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];

  v7 = v11;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSCNAutocompleteFeedback eventWithData:v7 dataVersion:v9];
    }
  }

  return v6;
}

+ (id)createEnteredFeedbackWithBundleIdentifier:(id)a3 status:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [[_PSCNAutocompleteFeedbackEntered alloc] initWithEnterStatus:a4];
  v9 = [v7 initWithBundleIdentifier:v6 feedbackType:0 isImplicit:0 entered:v8 exited:0 vendedSuggestions:0 tappedSuggestion:0 typedHandle:0 erasedHandle:0];

  return v9;
}

+ (id)createExitedFeedbackWithBundleIdentifier:(id)a3 status:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [[_PSCNAutocompleteFeedbackExited alloc] initWithExitStatus:a4];
  v9 = [v7 initWithBundleIdentifier:v6 feedbackType:1 isImplicit:0 entered:0 exited:v8 vendedSuggestions:0 tappedSuggestion:0 typedHandle:0 erasedHandle:0];

  return v9;
}

+ (id)createTappedSuggestionFeedbackWithBundleIdentifier:(id)a3 suggestion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = [[_PSCNAutocompleteFeedbackTappedSuggestion alloc] initWithSuggestion:v6];

  v10 = [v8 initWithBundleIdentifier:v7 feedbackType:3 isImplicit:0 entered:0 exited:0 vendedSuggestions:0 tappedSuggestion:v9 typedHandle:0 erasedHandle:0];

  return v10;
}

+ (id)createErasedHandleFeedbackWithBundleIdentifier:(id)a3 contact:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = [[_PSCNAutocompleteFeedbackErasedHandle alloc] initWithContact:v6];

  v10 = [v8 initWithBundleIdentifier:v7 feedbackType:5 isImplicit:0 entered:0 exited:0 vendedSuggestions:0 tappedSuggestion:0 typedHandle:0 erasedHandle:v9];

  return v10;
}

+ (void)eventWithData:(uint64_t)a1 dataVersion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "_PSCNAutocompleteFeedback: ERROR unarchiving Biome event: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)serialize
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "_PSCNAutocompleteFeedback: ERROR serializing Biome event: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end