@interface VCInteractionDonation
+ (id)timestampDateFormatter;
- (BOOL)isEqual:(id)equal;
- (INShortcut)shortcut;
- (NSDate)date;
- (NSString)fullDescription;
- (NSString)sourceAppIdentifierForDisplay;
- (NSString)sourceAppIdentifierForLaunching;
- (NSString)subtitle;
- (NSString)suggestedPhrase;
- (VCInteractionDonation)initWithEvent:(id)event;
- (VCInteractionDonation)initWithIdentifier:(id)identifier sourceAppIdentifier:(id)appIdentifier interaction:(id)interaction;
- (id)uniqueProperty;
@end

@implementation VCInteractionDonation

- (id)uniqueProperty
{
  sourceAppIdentifierForDisplay = [(VCInteractionDonation *)self sourceAppIdentifierForDisplay];
  if (sourceAppIdentifierForDisplay)
  {
    [(VCInteractionDonation *)self sourceAppIdentifierForDisplay];
  }

  else
  {
    [(VCInteractionDonation *)self sourceAppIdentifier];
  }
  v4 = ;

  v5 = MEMORY[0x1E696AEC0];
  title = [(VCInteractionDonation *)self title];
  subtitle = [(VCInteractionDonation *)self subtitle];
  v8 = [v5 stringWithFormat:@"%@-%@-%@", v4, title, subtitle];

  return v8;
}

- (NSString)suggestedPhrase
{
  interaction = [(VCInteractionDonation *)self interaction];
  intent = [interaction intent];
  suggestedInvocationPhrase = [intent suggestedInvocationPhrase];

  return suggestedInvocationPhrase;
}

- (INShortcut)shortcut
{
  v3 = objc_alloc(MEMORY[0x1E696EA38]);
  interaction = [(VCInteractionDonation *)self interaction];
  intent = [interaction intent];
  v6 = [v3 initWithIntent:intent];

  return v6;
}

- (NSString)fullDescription
{
  timestampDateFormatter = [objc_opt_class() timestampDateFormatter];
  date = [(VCInteractionDonation *)self date];
  v38 = [timestampDateFormatter stringFromDate:date];

  interaction = [(VCInteractionDonation *)self interaction];
  intent = [interaction intent];
  backingStore = [intent backingStore];
  formattedText = [backingStore formattedText];
  v9 = formattedText;
  if (formattedText)
  {
    v10 = formattedText;
  }

  else
  {
    v10 = &stru_1F28FBBB8;
  }

  v37 = v10;

  interaction2 = [(VCInteractionDonation *)self interaction];
  intentResponse = [interaction2 intentResponse];
  backingStore2 = [intentResponse backingStore];
  formattedText2 = [backingStore2 formattedText];
  v15 = formattedText2;
  if (formattedText2)
  {
    v16 = formattedText2;
  }

  else
  {
    v16 = &stru_1F28FBBB8;
  }

  v33 = v16;

  v30 = MEMORY[0x1E696AEC0];
  title = [(VCInteractionDonation *)self title];
  subtitle = [(VCInteractionDonation *)self subtitle];
  interaction3 = [(VCInteractionDonation *)self interaction];
  intent2 = [interaction3 intent];
  _className = [intent2 _className];
  sourceAppIdentifierForDisplay = [(VCInteractionDonation *)self sourceAppIdentifierForDisplay];
  sourceAppIdentifierForLaunching = [(VCInteractionDonation *)self sourceAppIdentifierForLaunching];
  interaction4 = [(VCInteractionDonation *)self interaction];
  intent3 = [interaction4 intent];
  launchId = [intent3 launchId];
  interaction5 = [(VCInteractionDonation *)self interaction];
  intent4 = [interaction5 intent];
  _nanoLaunchId = [intent4 _nanoLaunchId];
  interaction6 = [(VCInteractionDonation *)self interaction];
  intent5 = [interaction6 intent];
  extensionBundleId = [intent5 extensionBundleId];
  v31 = [v30 stringWithFormat:@"Title: %@\nSubtitle: %@\nType: %@\nBundle Identifier for Display: %@\nBundle Identifier for Launch: %@\nDate: %@\nlaunchId: %@\nnanoLaunchId: %@\nExtension Bundle ID: %@\nIntent:\n%@\nResponse:\n%@", title, subtitle, _className, sourceAppIdentifierForDisplay, sourceAppIdentifierForLaunching, v38, launchId, _nanoLaunchId, extensionBundleId, v37, v33];

  return v31;
}

- (NSString)subtitle
{
  sourceAppIdentifierForDisplay = [(VCInteractionDonation *)self sourceAppIdentifierForDisplay];
  v4 = [sourceAppIdentifierForDisplay isEqualToString:@"com.apple.mobilenotes"];

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
  interaction = [(VCInteractionDonation *)self interaction];
  dateInterval = [interaction dateInterval];
  startDate = [dateInterval startDate];

  return startDate;
}

- (NSString)sourceAppIdentifierForLaunching
{
  interaction = [(VCInteractionDonation *)self interaction];
  intent = [interaction intent];
  _intents_bundleIdForLaunching = [intent _intents_bundleIdForLaunching];

  return _intents_bundleIdForLaunching;
}

- (NSString)sourceAppIdentifierForDisplay
{
  interaction = [(VCInteractionDonation *)self interaction];
  intent = [interaction intent];
  _intents_bundleIdForDisplay = [intent _intents_bundleIdForDisplay];

  return _intents_bundleIdForDisplay;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:equalCopy->_identifier];
  }

  return v5;
}

- (VCInteractionDonation)initWithEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  metadata = [eventCopy metadata];
  serializedInteraction = [MEMORY[0x1E6997990] serializedInteraction];
  v7 = [metadata objectForKeyedSubscript:serializedInteraction];

  if (v7)
  {
    v18 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v18];
    v9 = v18;
    if (v8)
    {
      uUID = [eventCopy UUID];
      uUIDString = [uUID UUIDString];
      source = [eventCopy source];
      bundleID = [source bundleID];
      self = [(VCInteractionDonation *)self initWithIdentifier:uUIDString sourceAppIdentifier:bundleID interaction:v8];

      selfCopy = self;
    }

    else
    {
      uUID = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(uUID, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "[VCInteractionDonation initWithEvent:]";
        v21 = 2112;
        v22 = eventCopy;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_1B1DE3000, uUID, OS_LOG_TYPE_DEFAULT, "%s Failed to unarchive interaction data for event: %@, error: %@", buf, 0x20u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v9 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      metadata2 = [eventCopy metadata];
      *buf = 136315394;
      v20 = "[VCInteractionDonation initWithEvent:]";
      v21 = 2112;
      v22 = metadata2;
      _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_DEFAULT, "%s Missing interaction data from event.metadata=%@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (VCInteractionDonation)initWithIdentifier:(id)identifier sourceAppIdentifier:(id)appIdentifier interaction:(id)interaction
{
  identifierCopy = identifier;
  appIdentifierCopy = appIdentifier;
  interactionCopy = interaction;
  if (identifierCopy)
  {
    if (appIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCInteractionDonation.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"sourceAppIdentifier"}];

    if (interactionCopy)
    {
      goto LABEL_4;
    }

LABEL_10:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCInteractionDonation.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];

    goto LABEL_11;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCInteractionDonation.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!appIdentifierCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!interactionCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  selfCopy = 0;
  if (identifierCopy && appIdentifierCopy)
  {
    v28.receiver = self;
    v28.super_class = VCInteractionDonation;
    self = [(VCInteractionDonation *)&v28 init];
    if (self)
    {
      v13 = [identifierCopy copy];
      identifier = self->_identifier;
      self->_identifier = v13;

      v15 = [appIdentifierCopy copy];
      sourceAppIdentifier = self->_sourceAppIdentifier;
      self->_sourceAppIdentifier = v15;

      v17 = [interactionCopy copy];
      interaction = self->_interaction;
      self->_interaction = v17;

      intent = [(INInteraction *)self->_interaction intent];
      _title = [intent _title];
      title = self->_title;
      self->_title = _title;

      _subtitle = [intent _subtitle];
      subtitle = self->_subtitle;
      self->_subtitle = _subtitle;

      self = self;
      selfCopy = self;
      goto LABEL_12;
    }

LABEL_11:
    selfCopy = 0;
  }

LABEL_12:

  return selfCopy;
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