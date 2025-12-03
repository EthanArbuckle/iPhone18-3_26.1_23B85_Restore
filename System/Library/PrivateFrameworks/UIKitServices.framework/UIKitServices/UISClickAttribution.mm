@interface UISClickAttribution
- (BOOL)isEqual:(id)equal;
- (UISClickAttribution)clickAttributionWithReportEndpoint:(id)endpoint;
- (UISClickAttribution)initWithCoder:(id)coder;
- (UISClickAttribution)initWithSourceIdentifier:(unsigned __int8)identifier destinationURL:(id)l reportEndpoint:(id)endpoint sourceDescription:(id)description purchaser:(id)purchaser eventMessage:(id)message;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISClickAttribution

- (UISClickAttribution)initWithSourceIdentifier:(unsigned __int8)identifier destinationURL:(id)l reportEndpoint:(id)endpoint sourceDescription:(id)description purchaser:(id)purchaser eventMessage:(id)message
{
  lCopy = l;
  endpointCopy = endpoint;
  descriptionCopy = description;
  purchaserCopy = purchaser;
  messageCopy = message;
  v32.receiver = self;
  v32.super_class = UISClickAttribution;
  v19 = [(UISClickAttribution *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_sourceIdentifier = identifier;
    v21 = [lCopy copy];
    destinationURL = v20->_destinationURL;
    v20->_destinationURL = v21;

    v23 = [endpointCopy copy];
    reportEndpoint = v20->_reportEndpoint;
    v20->_reportEndpoint = v23;

    if ([descriptionCopy length] > 0x64)
    {
      v25 = [descriptionCopy substringToIndex:100];
    }

    else
    {
      v25 = [descriptionCopy copy];
    }

    sourceDescription = v20->_sourceDescription;
    v20->_sourceDescription = v25;

    if ([purchaserCopy length] > 0x64)
    {
      v27 = [purchaserCopy substringToIndex:100];
    }

    else
    {
      v27 = [purchaserCopy copy];
    }

    purchaser = v20->_purchaser;
    v20->_purchaser = v27;

    v29 = [messageCopy copy];
    eventMessage = v20->_eventMessage;
    v20->_eventMessage = v29;
  }

  return v20;
}

- (UISClickAttribution)clickAttributionWithReportEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [UISClickAttribution alloc];
  sourceIdentifier = [(UISClickAttribution *)self sourceIdentifier];
  destinationURL = [(UISClickAttribution *)self destinationURL];
  sourceDescription = [(UISClickAttribution *)self sourceDescription];
  purchaser = [(UISClickAttribution *)self purchaser];
  eventMessage = [(UISClickAttribution *)self eventMessage];
  v11 = [(UISClickAttribution *)v5 initWithSourceIdentifier:sourceIdentifier destinationURL:destinationURL reportEndpoint:endpointCopy sourceDescription:sourceDescription purchaser:purchaser eventMessage:eventMessage];

  return v11;
}

- (UISClickAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = UISClickAttribution;
  v5 = [(UISClickAttribution *)&v22 init];
  if (v5)
  {
    v5->_sourceIdentifier = [coderCopy decodeIntegerForKey:@"SourceIdentifier"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"DestinationURL"];
    destinationURL = v5->_destinationURL;
    v5->_destinationURL = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"ReportEndpoint"];
    reportEndpoint = v5->_reportEndpoint;
    v5->_reportEndpoint = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"SourceDescription"];
    sourceDescription = v5->_sourceDescription;
    v5->_sourceDescription = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"Purchaser"];
    purchaser = v5->_purchaser;
    v5->_purchaser = v16;

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"EventMessage"];
    eventMessage = v5->_eventMessage;
    v5->_eventMessage = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceIdentifier = self->_sourceIdentifier;
  coderCopy = coder;
  [coderCopy encodeInteger:sourceIdentifier forKey:@"SourceIdentifier"];
  [coderCopy encodeObject:self->_destinationURL forKey:@"DestinationURL"];
  [coderCopy encodeObject:self->_reportEndpoint forKey:@"ReportEndpoint"];
  [coderCopy encodeObject:self->_sourceDescription forKey:@"SourceDescription"];
  [coderCopy encodeObject:self->_purchaser forKey:@"Purchaser"];
  [coderCopy encodeObject:self->_eventMessage forKey:@"EventMessage"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      sourceIdentifier = self->_sourceIdentifier;
      if (sourceIdentifier == [(UISClickAttribution *)v7 sourceIdentifier])
      {
        destinationURL = self->_destinationURL;
        destinationURL = [(UISClickAttribution *)v7 destinationURL];
        if (destinationURL == destinationURL || [(NSURL *)destinationURL isEqual:destinationURL])
        {
          reportEndpoint = self->_reportEndpoint;
          reportEndpoint = [(UISClickAttribution *)v7 reportEndpoint];
          if (reportEndpoint == reportEndpoint || [(NSURL *)reportEndpoint isEqual:reportEndpoint])
          {
            sourceDescription = self->_sourceDescription;
            sourceDescription = [(UISClickAttribution *)v7 sourceDescription];
            if (sourceDescription == sourceDescription || [(NSString *)sourceDescription isEqual:sourceDescription])
            {
              purchaser = self->_purchaser;
              purchaser = [(UISClickAttribution *)v7 purchaser];
              if (purchaser == purchaser || [(NSString *)purchaser isEqual:purchaser])
              {
                eventMessage = self->_eventMessage;
                eventMessage = [(UISClickAttribution *)v7 eventMessage];
                if (eventMessage == eventMessage)
                {
                  v19 = 1;
                }

                else
                {
                  v19 = [(BKSHIDEventAuthenticationMessage *)eventMessage isEqual:eventMessage];
                }
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v21.receiver = self;
      v21.super_class = UISClickAttribution;
      v19 = [(UISClickAttribution *)&v21 isEqual:equalCopy];
    }
  }

  return v19;
}

- (unint64_t)hash
{
  sourceIdentifier = self->_sourceIdentifier;
  v4 = [(NSURL *)self->_destinationURL hash]^ sourceIdentifier;
  v5 = [(NSURL *)self->_reportEndpoint hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_sourceDescription hash];
  v7 = [(NSString *)self->_purchaser hash];
  return v6 ^ v7 ^ [(BKSHIDEventAuthenticationMessage *)self->_eventMessage hash];
}

@end