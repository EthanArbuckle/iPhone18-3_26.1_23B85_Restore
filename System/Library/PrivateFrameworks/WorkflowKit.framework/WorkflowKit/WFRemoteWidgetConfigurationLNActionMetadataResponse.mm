@interface WFRemoteWidgetConfigurationLNActionMetadataResponse
- (WFRemoteWidgetConfigurationLNActionMetadataResponse)initWithCoder:(id)coder;
- (WFRemoteWidgetConfigurationLNActionMetadataResponse)initWithMetadata:(id)metadata error:(id)error;
- (id)description;
@end

@implementation WFRemoteWidgetConfigurationLNActionMetadataResponse

- (WFRemoteWidgetConfigurationLNActionMetadataResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationLNActionMetadataResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  metadata = [(WFRemoteWidgetConfigurationLNActionMetadataResponse *)self metadata];
  error = [(WFRemoteWidgetConfigurationResponse *)self error];
  v6 = [v3 stringWithFormat:@"metadata: %@, error: %@", metadata, error];

  return v6;
}

- (WFRemoteWidgetConfigurationLNActionMetadataResponse)initWithMetadata:(id)metadata error:(id)error
{
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationLNActionMetadataResponse;
  v8 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metadata, metadata);
    v10 = v9;
  }

  return v9;
}

@end