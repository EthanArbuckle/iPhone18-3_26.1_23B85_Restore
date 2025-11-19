@interface VCInteractionDonation
+ (id)timestampDateFormatter;
- (BOOL)isEqual:(id)a3;
- (INShortcut)shortcut;
- (NSDate)date;
- (NSString)fullDescription;
- (NSString)sourceAppIdentifierForDisplay;
- (NSString)sourceAppIdentifierForLaunching;
- (NSString)subtitle;
- (NSString)suggestedPhrase;
- (VCInteractionDonation)initWithEvent:(id)a3;
- (VCInteractionDonation)initWithIdentifier:(id)a3 sourceAppIdentifier:(id)a4 interaction:(id)a5;
- (id)uniqueProperty;
@end

@implementation VCInteractionDonation

- (id)uniqueProperty
{
  v3 = [(VCInteractionDonation *)self sourceAppIdentifierForDisplay];
  if (v3)
  {
    [(VCInteractionDonation *)self sourceAppIdentifierForDisplay];
  }

  else
  {
    [(VCInteractionDonation *)self sourceAppIdentifier];
  }
  v4 = ;

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VCInteractionDonation *)self title];
  v7 = [(VCInteractionDonation *)self subtitle];
  v8 = [v5 stringWithFormat:@"%@-%@-%@", v4, v6, v7];

  return v8;
}

- (NSString)suggestedPhrase
{
  v2 = [(VCInteractionDonation *)self interaction];
  v3 = [v2 intent];
  v4 = [v3 suggestedInvocationPhrase];

  return v4;
}

- (INShortcut)shortcut
{
  v3 = objc_alloc(MEMORY[0x1E696EA38]);
  v4 = [(VCInteractionDonation *)self interaction];
  v5 = [v4 intent];
  v6 = [v3 initWithIntent:v5];

  return v6;
}

- (NSString)fullDescription
{
  v3 = [objc_opt_class() timestampDateFormatter];
  v4 = [(VCInteractionDonation *)self date];
  v38 = [v3 stringFromDate:v4];

  v5 = [(VCInteractionDonation *)self interaction];
  v6 = [v5 intent];
  v7 = [v6 backingStore];
  v8 = [v7 formattedText];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F28FBBB8;
  }

  v37 = v10;

  v11 = [(VCInteractionDonation *)self interaction];
  v12 = [v11 intentResponse];
  v13 = [v12 backingStore];
  v14 = [v13 formattedText];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F28FBBB8;
  }

  v33 = v16;

  v30 = MEMORY[0x1E696AEC0];
  v29 = [(VCInteractionDonation *)self title];
  v36 = [(VCInteractionDonation *)self subtitle];
  v35 = [(VCInteractionDonation *)self interaction];
  v34 = [v35 intent];
  v17 = [v34 _className];
  v26 = [(VCInteractionDonation *)self sourceAppIdentifierForDisplay];
  v18 = [(VCInteractionDonation *)self sourceAppIdentifierForLaunching];
  v32 = [(VCInteractionDonation *)self interaction];
  v28 = [v32 intent];
  v19 = [v28 launchId];
  v27 = [(VCInteractionDonation *)self interaction];
  v20 = [v27 intent];
  v21 = [v20 _nanoLaunchId];
  v22 = [(VCInteractionDonation *)self interaction];
  v23 = [v22 intent];
  v24 = [v23 extensionBundleId];
  v31 = [v30 stringWithFormat:@"Title: %@\nSubtitle: %@\nType: %@\nBundle Identifier for Display: %@\nBundle Identifier for Launch: %@\nDate: %@\nlaunchId: %@\nnanoLaunchId: %@\nExtension Bundle ID: %@\nIntent:\n%@\nResponse:\n%@", v29, v36, v17, v26, v18, v38, v19, v21, v24, v37, v33];

  return v31;
}

- (NSString)subtitle
{
  v3 = [(VCInteractionDonation *)self sourceAppIdentifierForDisplay];
  v4 = [v3 isEqualToString:@"com.apple.mobilenotes"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_subtitle;
  }

  return v5;
}

- (NSDate)date
{
  v2 = [(VCInteractionDonation *)self interaction];
  v3 = [v2 dateInterval];
  v4 = [v3 startDate];

  return v4;
}

- (NSString)sourceAppIdentifierForLaunching
{
  v2 = [(VCInteractionDonation *)self interaction];
  v3 = [v2 intent];
  v4 = [v3 _intents_bundleIdForLaunching];

  return v4;
}

- (NSString)sourceAppIdentifierForDisplay
{
  v2 = [(VCInteractionDonation *)self interaction];
  v3 = [v2 intent];
  v4 = [v3 _intents_bundleIdForDisplay];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:v4->_identifier];
  }

  return v5;
}

- (VCInteractionDonation)initWithEvent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [MEMORY[0x1E6997990] serializedInteraction];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v18 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v18];
    v9 = v18;
    if (v8)
    {
      v10 = [v4 UUID];
      v11 = [v10 UUIDString];
      v12 = [v4 source];
      v13 = [v12 bundleID];
      self = [(VCInteractionDonation *)self initWithIdentifier:v11 sourceAppIdentifier:v13 interaction:v8];

      v14 = self;
    }

    else
    {
      v10 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "[VCInteractionDonation initWithEvent:]";
        v21 = 2112;
        v22 = v4;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed to unarchive interaction data for event: %@, error: %@", buf, 0x20u);
      }

      v14 = 0;
    }
  }

  else
  {
    v9 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 metadata];
      *buf = 136315394;
      v20 = "[VCInteractionDonation initWithEvent:]";
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_DEFAULT, "%s Missing interaction data from event.metadata=%@", buf, 0x16u);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (VCInteractionDonation)initWithIdentifier:(id)a3 sourceAppIdentifier:(id)a4 interaction:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_9:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"VCInteractionDonation.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"sourceAppIdentifier"}];

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_10:
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"VCInteractionDonation.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];

    goto LABEL_11;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"VCInteractionDonation.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_4:
  v12 = 0;
  if (v9 && v10)
  {
    v28.receiver = self;
    v28.super_class = VCInteractionDonation;
    self = [(VCInteractionDonation *)&v28 init];
    if (self)
    {
      v13 = [v9 copy];
      identifier = self->_identifier;
      self->_identifier = v13;

      v15 = [v10 copy];
      sourceAppIdentifier = self->_sourceAppIdentifier;
      self->_sourceAppIdentifier = v15;

      v17 = [v11 copy];
      interaction = self->_interaction;
      self->_interaction = v17;

      v19 = [(INInteraction *)self->_interaction intent];
      v20 = [v19 _title];
      title = self->_title;
      self->_title = v20;

      v22 = [v19 _subtitle];
      subtitle = self->_subtitle;
      self->_subtitle = v22;

      self = self;
      v12 = self;
      goto LABEL_12;
    }

LABEL_11:
    v12 = 0;
  }

LABEL_12:

  return v12;
}

+ (id)timestampDateFormatter
{
  if (timestampDateFormatter_onceToken_15450 != -1)
  {
    dispatch_once(&timestampDateFormatter_onceToken_15450, &__block_literal_global_15451);
  }

  v3 = timestampDateFormatter_dateFormatter_15452;

  return v3;
}

uint64_t __47__VCInteractionDonation_timestampDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = timestampDateFormatter_dateFormatter_15452;
  timestampDateFormatter_dateFormatter_15452 = v0;

  [timestampDateFormatter_dateFormatter_15452 setDateStyle:1];
  v2 = timestampDateFormatter_dateFormatter_15452;

  return [v2 setTimeStyle:1];
}

@end