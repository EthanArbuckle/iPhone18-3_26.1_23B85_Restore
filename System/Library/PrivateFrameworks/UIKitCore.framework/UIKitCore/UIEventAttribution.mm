@interface UIEventAttribution
- (BOOL)isEqual:(id)equal;
- (UIEventAttribution)initWithSourceIdentifier:(uint8_t)sourceIdentifier destinationURL:(NSURL *)destinationURL sourceDescription:(NSString *)sourceDescription purchaser:(NSString *)purchaser;
- (UIEventAttribution)initWithSourceIdentifier:(unsigned __int8)identifier destinationURL:(id)l reportEndpoint:(id)endpoint sourceDescription:(id)description purchaser:(id)purchaser;
- (UIEventAttribution)initWithUISClickAttribution:(id)attribution;
- (id)toUISClickAttribution;
- (unint64_t)hash;
@end

@implementation UIEventAttribution

- (UIEventAttribution)initWithSourceIdentifier:(uint8_t)sourceIdentifier destinationURL:(NSURL *)destinationURL sourceDescription:(NSString *)sourceDescription purchaser:(NSString *)purchaser
{
  v8 = sourceIdentifier;
  v10 = qword_1ED49FBF8;
  v11 = purchaser;
  v12 = sourceDescription;
  v13 = destinationURL;
  if (v10 != -1)
  {
    dispatch_once(&qword_1ED49FBF8, &__block_literal_global_443);
  }

  v14 = [(UIEventAttribution *)self initWithSourceIdentifier:v8 destinationURL:v13 reportEndpoint:_MergedGlobals_1232 sourceDescription:v12 purchaser:v11];

  return v14;
}

- (UIEventAttribution)initWithSourceIdentifier:(unsigned __int8)identifier destinationURL:(id)l reportEndpoint:(id)endpoint sourceDescription:(id)description purchaser:(id)purchaser
{
  lCopy = l;
  endpointCopy = endpoint;
  descriptionCopy = description;
  purchaserCopy = purchaser;
  v27.receiver = self;
  v27.super_class = UIEventAttribution;
  v16 = [(UIEventAttribution *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_sourceIdentifier = identifier;
    v18 = [lCopy copy];
    destinationURL = v17->_destinationURL;
    v17->_destinationURL = v18;

    v20 = [endpointCopy copy];
    reportEndpoint = v17->_reportEndpoint;
    v17->_reportEndpoint = v20;

    if ([descriptionCopy length] > 0x64)
    {
      v22 = [descriptionCopy substringToIndex:100];
    }

    else
    {
      v22 = [descriptionCopy copy];
    }

    sourceDescription = v17->_sourceDescription;
    v17->_sourceDescription = v22;

    if ([purchaserCopy length] > 0x64)
    {
      v24 = [purchaserCopy substringToIndex:100];
    }

    else
    {
      v24 = [purchaserCopy copy];
    }

    purchaser = v17->_purchaser;
    v17->_purchaser = v24;
  }

  return v17;
}

- (UIEventAttribution)initWithUISClickAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    sourceIdentifier = [attributionCopy sourceIdentifier];
    destinationURL = [attributionCopy destinationURL];
    reportEndpoint = [attributionCopy reportEndpoint];
    sourceDescription = [attributionCopy sourceDescription];
    purchaser = [attributionCopy purchaser];

    self = [(UIEventAttribution *)self initWithSourceIdentifier:sourceIdentifier destinationURL:destinationURL reportEndpoint:reportEndpoint sourceDescription:sourceDescription purchaser:purchaser];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)toUISClickAttribution
{
  v3 = +[UIEventAttributionView lastEventMessage];
  v4 = objc_alloc(MEMORY[0x1E69DEBD0]);
  sourceIdentifier = [(UIEventAttribution *)self sourceIdentifier];
  destinationURL = [(UIEventAttribution *)self destinationURL];
  reportEndpoint = [(UIEventAttribution *)self reportEndpoint];
  sourceDescription = [(UIEventAttribution *)self sourceDescription];
  purchaser = [(UIEventAttribution *)self purchaser];
  v10 = [v4 initWithSourceIdentifier:sourceIdentifier destinationURL:destinationURL reportEndpoint:reportEndpoint sourceDescription:sourceDescription purchaser:purchaser eventMessage:v3];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      sourceIdentifier = self->_sourceIdentifier;
      if (sourceIdentifier != [(UIEventAttribution *)v7 sourceIdentifier])
      {
        LOBYTE(v14) = 0;
LABEL_39:

        goto LABEL_40;
      }

      destinationURL = self->_destinationURL;
      destinationURL = [(UIEventAttribution *)v7 destinationURL];
      v11 = destinationURL;
      v12 = destinationURL;
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        LOBYTE(v14) = 0;
        if (!v11 || !v12)
        {
          v18 = v12;
LABEL_36:

LABEL_37:
          goto LABEL_38;
        }

        v15 = [(NSURL *)v11 isEqual:v12];

        if (!v15)
        {
          LOBYTE(v14) = 0;
LABEL_38:

          goto LABEL_39;
        }
      }

      reportEndpoint = self->_reportEndpoint;
      reportEndpoint = [(UIEventAttribution *)v7 reportEndpoint];
      v18 = reportEndpoint;
      v19 = reportEndpoint;
      v11 = v19;
      if (v18 == v19)
      {
      }

      else
      {
        LOBYTE(v14) = 0;
        if (!v18 || !v19)
        {
          p_isa = &v19->super.isa;
LABEL_35:

          goto LABEL_36;
        }

        v14 = [(NSURL *)v18 isEqual:v19];

        if (!v14)
        {
          goto LABEL_37;
        }
      }

      sourceDescription = self->_sourceDescription;
      sourceDescription = [(UIEventAttribution *)v7 sourceDescription];
      p_isa = sourceDescription;
      v23 = sourceDescription;
      v18 = v23;
      if (p_isa == v23)
      {
      }

      else
      {
        LOBYTE(v14) = 0;
        if (!p_isa || !v23)
        {
          v26 = &v23->super.isa;
LABEL_34:

          goto LABEL_35;
        }

        v14 = [(NSString *)p_isa isEqual:v23];

        if (!v14)
        {
          goto LABEL_36;
        }
      }

      purchaser = self->_purchaser;
      purchaser = [(UIEventAttribution *)v7 purchaser];
      v26 = purchaser;
      v27 = purchaser;
      p_isa = v27;
      if (v26 == v27)
      {
        LOBYTE(v14) = 1;
      }

      else
      {
        LOBYTE(v14) = 0;
        if (v26 && v27)
        {
          LOBYTE(v14) = [(NSString *)v26 isEqual:v27];
        }
      }

      goto LABEL_34;
    }

    v29.receiver = self;
    v29.super_class = UIEventAttribution;
    LOBYTE(v14) = [(UIEventAttribution *)&v29 isEqual:equalCopy];
  }

LABEL_40:

  return v14;
}

- (unint64_t)hash
{
  sourceIdentifier = self->_sourceIdentifier;
  v4 = [(NSURL *)self->_destinationURL hash]^ sourceIdentifier;
  v5 = [(NSURL *)self->_reportEndpoint hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_sourceDescription hash];
  return v6 ^ [(NSString *)self->_purchaser hash];
}

@end