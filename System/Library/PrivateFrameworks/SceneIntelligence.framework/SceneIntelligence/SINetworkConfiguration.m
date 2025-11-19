@interface SINetworkConfiguration
- (SINetworkConfiguration)initWithEventName:(id)a3;
- (SINetworkConfiguration)initWithResources:(id)a3 eventName:(id)a4;
- (id)description;
@end

@implementation SINetworkConfiguration

- (SINetworkConfiguration)initWithEventName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SINetworkResources);
  v6 = [(SINetworkConfiguration *)self initWithResources:v5 eventName:v4];

  return v6;
}

- (SINetworkConfiguration)initWithResources:(id)a3 eventName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SINetworkConfiguration;
  v8 = [(SINetworkConfiguration *)&v19 init];
  v9 = v8;
  if (v8)
  {
    algorithmClassName = v8->_algorithmClassName;
    v8->_algorithmClassName = 0;

    v11 = [MEMORY[0x277CBEB58] set];
    disabledOutputBlobs = v9->_disabledOutputBlobs;
    v9->_disabledOutputBlobs = v11;

    networkMode = v9->_networkMode;
    v9->_networkMode = @"main";

    networkFunction = v9->_networkFunction;
    v9->_networkFunction = @"main";

    v9->_consumeDepth = 0;
    v9->_isReplay = 0;
    v9->_coreAnalyticTimeInterval = 600;
    v9->_coreAnalyticEventName = v7;
    defaultVisualLoggerName = v9->_defaultVisualLoggerName;
    v9->_defaultVisualLoggerName = @"default";

    networkNameExtraPostfix = v9->_networkNameExtraPostfix;
    v9->_networkNameExtraPostfix = 0;

    *&v9->_allowDryRunWithoutModel = 0;
    v9->_engineType = 1;
    v9->_runByE5RT = 1;
    v9->_blendChannelWidthHeight = 0;
    [(SINetworkConfiguration *)v9 setResources:v6];
    v17 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_isReplay)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  v5 = [v3 initWithFormat:@"NetworkName:%@, NetworkMode:%@ IsReplay:%s", self->_networkName, self->_networkMode, v4];

  return v5;
}

@end