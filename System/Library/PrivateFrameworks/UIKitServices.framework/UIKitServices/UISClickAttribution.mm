@interface UISClickAttribution
- (BOOL)isEqual:(id)a3;
- (UISClickAttribution)clickAttributionWithReportEndpoint:(id)a3;
- (UISClickAttribution)initWithCoder:(id)a3;
- (UISClickAttribution)initWithSourceIdentifier:(unsigned __int8)a3 destinationURL:(id)a4 reportEndpoint:(id)a5 sourceDescription:(id)a6 purchaser:(id)a7 eventMessage:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISClickAttribution

- (UISClickAttribution)initWithSourceIdentifier:(unsigned __int8)a3 destinationURL:(id)a4 reportEndpoint:(id)a5 sourceDescription:(id)a6 purchaser:(id)a7 eventMessage:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v32.receiver = self;
  v32.super_class = UISClickAttribution;
  v19 = [(UISClickAttribution *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_sourceIdentifier = a3;
    v21 = [v14 copy];
    destinationURL = v20->_destinationURL;
    v20->_destinationURL = v21;

    v23 = [v15 copy];
    reportEndpoint = v20->_reportEndpoint;
    v20->_reportEndpoint = v23;

    if ([v16 length] > 0x64)
    {
      v25 = [v16 substringToIndex:100];
    }

    else
    {
      v25 = [v16 copy];
    }

    sourceDescription = v20->_sourceDescription;
    v20->_sourceDescription = v25;

    if ([v17 length] > 0x64)
    {
      v27 = [v17 substringToIndex:100];
    }

    else
    {
      v27 = [v17 copy];
    }

    purchaser = v20->_purchaser;
    v20->_purchaser = v27;

    v29 = [v18 copy];
    eventMessage = v20->_eventMessage;
    v20->_eventMessage = v29;
  }

  return v20;
}

- (UISClickAttribution)clickAttributionWithReportEndpoint:(id)a3
{
  v4 = a3;
  v5 = [UISClickAttribution alloc];
  v6 = [(UISClickAttribution *)self sourceIdentifier];
  v7 = [(UISClickAttribution *)self destinationURL];
  v8 = [(UISClickAttribution *)self sourceDescription];
  v9 = [(UISClickAttribution *)self purchaser];
  v10 = [(UISClickAttribution *)self eventMessage];
  v11 = [(UISClickAttribution *)v5 initWithSourceIdentifier:v6 destinationURL:v7 reportEndpoint:v4 sourceDescription:v8 purchaser:v9 eventMessage:v10];

  return v11;
}

- (UISClickAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = UISClickAttribution;
  v5 = [(UISClickAttribution *)&v22 init];
  if (v5)
  {
    v5->_sourceIdentifier = [v4 decodeIntegerForKey:@"SourceIdentifier"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"DestinationURL"];
    destinationURL = v5->_destinationURL;
    v5->_destinationURL = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"ReportEndpoint"];
    reportEndpoint = v5->_reportEndpoint;
    v5->_reportEndpoint = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"SourceDescription"];
    sourceDescription = v5->_sourceDescription;
    v5->_sourceDescription = v13;

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"Purchaser"];
    purchaser = v5->_purchaser;
    v5->_purchaser = v16;

    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"EventMessage"];
    eventMessage = v5->_eventMessage;
    v5->_eventMessage = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceIdentifier = self->_sourceIdentifier;
  v5 = a3;
  [v5 encodeInteger:sourceIdentifier forKey:@"SourceIdentifier"];
  [v5 encodeObject:self->_destinationURL forKey:@"DestinationURL"];
  [v5 encodeObject:self->_reportEndpoint forKey:@"ReportEndpoint"];
  [v5 encodeObject:self->_sourceDescription forKey:@"SourceDescription"];
  [v5 encodeObject:self->_purchaser forKey:@"Purchaser"];
  [v5 encodeObject:self->_eventMessage forKey:@"EventMessage"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      sourceIdentifier = self->_sourceIdentifier;
      if (sourceIdentifier == [(UISClickAttribution *)v7 sourceIdentifier])
      {
        destinationURL = self->_destinationURL;
        v10 = [(UISClickAttribution *)v7 destinationURL];
        if (destinationURL == v10 || [(NSURL *)destinationURL isEqual:v10])
        {
          reportEndpoint = self->_reportEndpoint;
          v12 = [(UISClickAttribution *)v7 reportEndpoint];
          if (reportEndpoint == v12 || [(NSURL *)reportEndpoint isEqual:v12])
          {
            sourceDescription = self->_sourceDescription;
            v14 = [(UISClickAttribution *)v7 sourceDescription];
            if (sourceDescription == v14 || [(NSString *)sourceDescription isEqual:v14])
            {
              purchaser = self->_purchaser;
              v16 = [(UISClickAttribution *)v7 purchaser];
              if (purchaser == v16 || [(NSString *)purchaser isEqual:v16])
              {
                eventMessage = self->_eventMessage;
                v18 = [(UISClickAttribution *)v7 eventMessage];
                if (eventMessage == v18)
                {
                  v19 = 1;
                }

                else
                {
                  v19 = [(BKSHIDEventAuthenticationMessage *)eventMessage isEqual:v18];
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
      v19 = [(UISClickAttribution *)&v21 isEqual:v4];
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