@interface _PSCNAutocompleteFeedback
+ (id)createEnteredFeedbackWithBundleIdentifier:(id)identifier status:(int64_t)status;
+ (id)createErasedHandleFeedbackWithBundleIdentifier:(id)identifier contact:(id)contact;
+ (id)createExitedFeedbackWithBundleIdentifier:(id)identifier status:(int64_t)status;
+ (id)createTappedSuggestionFeedbackWithBundleIdentifier:(id)identifier suggestion:(id)suggestion;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (NSString)description;
- (_PSCNAutocompleteFeedback)initWithBundleIdentifier:(id)identifier feedbackType:(int64_t)type isImplicit:(BOOL)implicit entered:(id)entered exited:(id)exited vendedSuggestions:(id)suggestions tappedSuggestion:(id)suggestion typedHandle:(id)self0 erasedHandle:(id)self1;
- (_PSCNAutocompleteFeedback)initWithCoder:(id)coder;
- (_PSCNAutocompleteFeedback)initWithDataVersion:(unsigned int)version reportTime:(id)time userIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier sourceBundleIdentifier:(id)sourceBundleIdentifier isImplicit:(BOOL)implicit feedbackType:(int64_t)type entered:(id)self0 exited:(id)self1 vendedSuggestions:(id)self2 tappedSuggestion:(id)self3 typedHandle:(id)self4 erasedHandle:(id)self5;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
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

- (_PSCNAutocompleteFeedback)initWithBundleIdentifier:(id)identifier feedbackType:(int64_t)type isImplicit:(BOOL)implicit entered:(id)entered exited:(id)exited vendedSuggestions:(id)suggestions tappedSuggestion:(id)suggestion typedHandle:(id)self0 erasedHandle:(id)self1
{
  implicitCopy = implicit;
  v15 = MEMORY[0x1E695DF00];
  erasedHandleCopy = erasedHandle;
  handleCopy = handle;
  suggestionCopy = suggestion;
  suggestionsCopy = suggestions;
  exitedCopy = exited;
  enteredCopy = entered;
  identifierCopy = identifier;
  v21 = [v15 now];
  v22 = NSUserName();
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v31 = [(_PSCNAutocompleteFeedback *)self initWithDataVersion:3 reportTime:v21 userIdentifier:v22 bundleIdentifier:identifierCopy sourceBundleIdentifier:processName isImplicit:implicitCopy feedbackType:type entered:enteredCopy exited:exitedCopy vendedSuggestions:suggestionsCopy tappedSuggestion:suggestionCopy typedHandle:handleCopy erasedHandle:erasedHandleCopy];

  return v31;
}

- (_PSCNAutocompleteFeedback)initWithDataVersion:(unsigned int)version reportTime:(id)time userIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier sourceBundleIdentifier:(id)sourceBundleIdentifier isImplicit:(BOOL)implicit feedbackType:(int64_t)type entered:(id)self0 exited:(id)self1 vendedSuggestions:(id)self2 tappedSuggestion:(id)self3 typedHandle:(id)self4 erasedHandle:(id)self5
{
  timeCopy = time;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  bundleIdentifierCopy2 = bundleIdentifier;
  sourceBundleIdentifierCopy = sourceBundleIdentifier;
  enteredCopy = entered;
  exitedCopy = exited;
  suggestionsCopy = suggestions;
  suggestionCopy = suggestion;
  handleCopy = handle;
  erasedHandleCopy = erasedHandle;
  v38.receiver = self;
  v38.super_class = _PSCNAutocompleteFeedback;
  v20 = [(_PSCNAutocompleteFeedback *)&v38 init];
  v21 = v20;
  if (v20)
  {
    v20->_dataVersion = version;
    objc_storeStrong(&v20->_userIdentifier, identifier);
    objc_storeStrong(&v21->_reportTime, time);
    objc_storeStrong(&v21->_bundleIdentifier, bundleIdentifierCopy);
    objc_storeStrong(&v21->_sourceBundleIdentifier, sourceBundleIdentifier);
    v21->_isImplicit = implicit;
    v21->_feedbackType = type;
    if (type > 2)
    {
      switch(type)
      {
        case 3:
          p_tappedSuggestion = &v21->_tappedSuggestion;
          suggestionsCopy2 = suggestion;
          goto LABEL_16;
        case 4:
          p_tappedSuggestion = &v21->_typedHandle;
          suggestionsCopy2 = handle;
          goto LABEL_16;
        case 5:
          p_tappedSuggestion = &v21->_erasedHandle;
          suggestionsCopy2 = erasedHandle;
          goto LABEL_16;
      }
    }

    else
    {
      switch(type)
      {
        case 0:
          p_tappedSuggestion = &v21->_entered;
          suggestionsCopy2 = entered;
          goto LABEL_16;
        case 1:
          p_tappedSuggestion = &v21->_exited;
          suggestionsCopy2 = exited;
          goto LABEL_16;
        case 2:
          p_tappedSuggestion = &v21->_vendedSuggestions;
          suggestionsCopy2 = suggestions;
LABEL_16:
          objc_storeStrong(p_tappedSuggestion, suggestionsCopy2);
          goto LABEL_17;
      }
    }

    v21->_feedbackType = 6;
  }

LABEL_17:

  return v21;
}

- (_PSCNAutocompleteFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeInt32ForKey:@"dataVersion"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reportTime"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentifier"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceBundleIdentifier"];
  v15 = [coderCopy decodeBoolForKey:@"isImplicit"];
  v6 = [coderCopy decodeIntegerForKey:@"feedbackType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entered"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exited"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendedSuggestions"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tappedSuggestion"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typedHandle"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"erasedHandle"];

  v19 = [(_PSCNAutocompleteFeedback *)self initWithDataVersion:v18 reportTime:v4 userIdentifier:v5 bundleIdentifier:v17 sourceBundleIdentifier:v16 isImplicit:v15 feedbackType:v6 entered:v7 exited:v8 vendedSuggestions:v9 tappedSuggestion:v10 typedHandle:v11 erasedHandle:v12];
  return v19;
}

- (NSString)description
{
  entered = [(_PSCNAutocompleteFeedback *)self entered];

  v4 = 0x1E696A000uLL;
  if (entered)
  {
    entered2 = [(_PSCNAutocompleteFeedback *)self entered];
    enterStatus = [entered2 enterStatus];

    if (enterStatus)
    {
      entered3 = [(_PSCNAutocompleteFeedback *)self entered];
      enterStatus2 = [entered3 enterStatus];

      if (enterStatus2 == 1)
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
    exited = [(_PSCNAutocompleteFeedback *)self exited];

    if (exited)
    {
      exited2 = [(_PSCNAutocompleteFeedback *)self exited];
      exitStatus = [exited2 exitStatus];

      if (exitStatus)
      {
        exited3 = [(_PSCNAutocompleteFeedback *)self exited];
        exitStatus2 = [exited3 exitStatus];

        if (exitStatus2 == 1)
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
      vendedSuggestions = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];

      if (vendedSuggestions)
      {
        v65 = MEMORY[0x1E696AEC0];
        vendedSuggestions2 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        suggestions = [vendedSuggestions2 suggestions];
        firstObject = [suggestions firstObject];
        trialID = [firstObject trialID];
        vendedSuggestions3 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        suggestions2 = [vendedSuggestions3 suggestions];
        v61 = [suggestions2 count];
        vendedSuggestions4 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        suggestions3 = [vendedSuggestions4 suggestions];
        firstObject2 = [suggestions3 firstObject];
        groupName = [firstObject2 groupName];
        vendedSuggestions5 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        suggestions4 = [vendedSuggestions5 suggestions];
        firstObject3 = [suggestions4 firstObject];
        recipients = [firstObject3 recipients];
        v56 = [recipients count];
        vendedSuggestions6 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        suggestions5 = [vendedSuggestions6 suggestions];
        firstObject4 = [suggestions5 firstObject];
        recipients2 = [firstObject4 recipients];
        v17 = [recipients2 description];
        vendedSuggestions7 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        suggestions6 = [vendedSuggestions7 suggestions];
        lastObject = [suggestions6 lastObject];
        groupName2 = [lastObject groupName];
        vendedSuggestions8 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        suggestions7 = [vendedSuggestions8 suggestions];
        lastObject2 = [suggestions7 lastObject];
        recipients3 = [lastObject2 recipients];
        v20 = [recipients3 count];
        vendedSuggestions9 = [(_PSCNAutocompleteFeedback *)self vendedSuggestions];
        suggestions8 = [vendedSuggestions9 suggestions];
        lastObject3 = [suggestions8 lastObject];
        recipients4 = [lastObject3 recipients];
        v25 = [recipients4 description];
        v9 = [v65 stringWithFormat:@"\ntrialID: %@ \ncountSuggestions: %lu \nfirstSuggestionGroupName: %@ \nfirstSuggestionCountRecipients: %lu \nfirstSuggestionRecipients: %@ \nlastSuggestionGroupName: %@ \nlastSuggestionCountRecipients: %lu \nlastSuggestionRecipients: %@", trialID, v61, groupName, v56, v17, groupName2, v20, v25];

        v4 = 0x1E696A000;
        v15 = @"vendedSuggestions";
      }

      else
      {
        tappedSuggestion = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];

        if (tappedSuggestion)
        {
          v79 = MEMORY[0x1E696AEC0];
          tappedSuggestion2 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];
          suggestion = [tappedSuggestion2 suggestion];
          trialID2 = [suggestion trialID];
          tappedSuggestion3 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];
          suggestion2 = [tappedSuggestion3 suggestion];
          groupName3 = [suggestion2 groupName];
          tappedSuggestion4 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];
          suggestion3 = [tappedSuggestion4 suggestion];
          recipients5 = [suggestion3 recipients];
          v36 = [recipients5 count];
          tappedSuggestion5 = [(_PSCNAutocompleteFeedback *)self tappedSuggestion];
          suggestion4 = [tappedSuggestion5 suggestion];
          recipients6 = [suggestion4 recipients];
          v40 = [recipients6 description];
          v9 = [v79 stringWithFormat:@"\ntrialID: %@ \ngroupName: %@ \ncountRecipients:%lu \nrecipients: %@", trialID2, groupName3, v36, v40];

          v4 = 0x1E696A000;
          v15 = @"tappedSuggestion";
        }

        else
        {
          typedHandle = [(_PSCNAutocompleteFeedback *)self typedHandle];

          if (typedHandle)
          {
            v42 = MEMORY[0x1E696AEC0];
            typedHandle2 = [(_PSCNAutocompleteFeedback *)self typedHandle];
            if ([typedHandle2 viaContactPicker])
            {
              v44 = @"YES";
            }

            else
            {
              v44 = @"NO";
            }

            typedHandle3 = [(_PSCNAutocompleteFeedback *)self typedHandle];
            contact = [typedHandle3 contact];
            v47 = [contact description];
            v9 = [v42 stringWithFormat:@"\nviaContactPicker: %@\ncontact: %@", v44, v47];

            v15 = @"typedHandle";
          }

          else
          {
            erasedHandle = [(_PSCNAutocompleteFeedback *)self erasedHandle];

            if (erasedHandle)
            {
              v49 = MEMORY[0x1E696AEC0];
              erasedHandle2 = [(_PSCNAutocompleteFeedback *)self erasedHandle];
              contact2 = [erasedHandle2 contact];
              v52 = [contact2 description];
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
  reportTime = [(_PSCNAutocompleteFeedback *)self reportTime];
  bundleIdentifier = [(_PSCNAutocompleteFeedback *)self bundleIdentifier];
  if ([(_PSCNAutocompleteFeedback *)self isImplicit])
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  v31 = [v26 stringWithFormat:@"<%@ %p>\nreportTime: %@\nbundleId: %@\nisImplicit: %@\nfeedbackType: %@%@", v27, self, reportTime, bundleIdentifier, v30, v15, v9];

  return v31;
}

- (void)encodeWithCoder:(id)coder
{
  dataVersion = self->_dataVersion;
  coderCopy = coder;
  [coderCopy encodeInt32:dataVersion forKey:@"dataVersion"];
  [coderCopy encodeObject:self->_reportTime forKey:@"reportTime"];
  [coderCopy encodeObject:self->_userIdentifier forKey:@"userIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  [coderCopy encodeBool:self->_isImplicit forKey:@"isImplicit"];
  [coderCopy encodeInteger:self->_feedbackType forKey:@"feedbackType"];
  [coderCopy encodeObject:self->_entered forKey:@"entered"];
  [coderCopy encodeObject:self->_exited forKey:@"exited"];
  [coderCopy encodeObject:self->_vendedSuggestions forKey:@"vendedSuggestions"];
  [coderCopy encodeObject:self->_tappedSuggestion forKey:@"tappedSuggestion"];
  [coderCopy encodeObject:self->_typedHandle forKey:@"typedHandle"];
  [coderCopy encodeObject:self->_erasedHandle forKey:@"erasedHandle"];
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v4 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v11 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];

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

+ (id)createEnteredFeedbackWithBundleIdentifier:(id)identifier status:(int64_t)status
{
  identifierCopy = identifier;
  v7 = [self alloc];
  v8 = [[_PSCNAutocompleteFeedbackEntered alloc] initWithEnterStatus:status];
  v9 = [v7 initWithBundleIdentifier:identifierCopy feedbackType:0 isImplicit:0 entered:v8 exited:0 vendedSuggestions:0 tappedSuggestion:0 typedHandle:0 erasedHandle:0];

  return v9;
}

+ (id)createExitedFeedbackWithBundleIdentifier:(id)identifier status:(int64_t)status
{
  identifierCopy = identifier;
  v7 = [self alloc];
  v8 = [[_PSCNAutocompleteFeedbackExited alloc] initWithExitStatus:status];
  v9 = [v7 initWithBundleIdentifier:identifierCopy feedbackType:1 isImplicit:0 entered:0 exited:v8 vendedSuggestions:0 tappedSuggestion:0 typedHandle:0 erasedHandle:0];

  return v9;
}

+ (id)createTappedSuggestionFeedbackWithBundleIdentifier:(id)identifier suggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  identifierCopy = identifier;
  v8 = [self alloc];
  v9 = [[_PSCNAutocompleteFeedbackTappedSuggestion alloc] initWithSuggestion:suggestionCopy];

  v10 = [v8 initWithBundleIdentifier:identifierCopy feedbackType:3 isImplicit:0 entered:0 exited:0 vendedSuggestions:0 tappedSuggestion:v9 typedHandle:0 erasedHandle:0];

  return v10;
}

+ (id)createErasedHandleFeedbackWithBundleIdentifier:(id)identifier contact:(id)contact
{
  contactCopy = contact;
  identifierCopy = identifier;
  v8 = [self alloc];
  v9 = [[_PSCNAutocompleteFeedbackErasedHandle alloc] initWithContact:contactCopy];

  v10 = [v8 initWithBundleIdentifier:identifierCopy feedbackType:5 isImplicit:0 entered:0 exited:0 vendedSuggestions:0 tappedSuggestion:0 typedHandle:0 erasedHandle:v9];

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
  selfCopy = self;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "_PSCNAutocompleteFeedback: ERROR serializing Biome event: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end