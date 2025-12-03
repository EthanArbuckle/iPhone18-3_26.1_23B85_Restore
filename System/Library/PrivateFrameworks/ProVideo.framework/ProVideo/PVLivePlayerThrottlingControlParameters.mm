@interface PVLivePlayerThrottlingControlParameters
+ (id)CreateControllerParameters:(id)parameters :(id)a4 :(id)a5;
- (BOOL)hasNilParameter;
- (BOOL)isEqual:(id)equal;
- (PVLivePlayerThrottlingControlParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)updateNilsFrom:(id)from;
@end

@implementation PVLivePlayerThrottlingControlParameters

+ (id)CreateControllerParameters:(id)parameters :(id)a4 :(id)a5
{
  parametersCopy = parameters;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PVLivePlayerThrottlingControlParameters);
  renderLinkRate = v10->_renderLinkRate;
  v10->_renderLinkRate = parametersCopy;
  v12 = parametersCopy;

  playerQueueSize = v10->_playerQueueSize;
  v10->_playerQueueSize = v8;
  v14 = v8;

  playerBypassRenderLink = v10->_playerBypassRenderLink;
  v10->_playerBypassRenderLink = v9;

  return v10;
}

- (PVLivePlayerThrottlingControlParameters)init
{
  v8.receiver = self;
  v8.super_class = PVLivePlayerThrottlingControlParameters;
  v2 = [(PVLivePlayerThrottlingControlParameters *)&v8 init];
  v3 = v2;
  if (v2)
  {
    renderLinkRate = v2->_renderLinkRate;
    v2->_renderLinkRate = 0;

    playerQueueSize = v3->_playerQueueSize;
    v3->_playerQueueSize = 0;

    playerBypassRenderLink = v3->_playerBypassRenderLink;
    v3->_playerBypassRenderLink = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  renderLinkRate = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  v5 = [renderLinkRate copy];
  playerQueueSize = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
  v7 = [playerQueueSize copy];
  playerBypassRenderLink = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
  v9 = [playerBypassRenderLink copy];
  v10 = [PVLivePlayerThrottlingControlParameters CreateControllerParameters:v5];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_36;
  }

  v8 = equalCopy;
  renderLinkRate = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  if (renderLinkRate && (-[PVLivePlayerThrottlingControlParameters renderLinkRate](self, "renderLinkRate"), v3 = objc_claimAutoreleasedReturnValue(), -[PVLivePlayerThrottlingControlParameters renderLinkRate](v8, "renderLinkRate"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqual:v4] & 1) != 0) || (-[PVLivePlayerThrottlingControlParameters renderLinkRate](self, "renderLinkRate"), (v11 = objc_claimAutoreleasedReturnValue()) == 0) && (-[PVLivePlayerThrottlingControlParameters renderLinkRate](v8, "renderLinkRate"), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    playerQueueSize = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
    if (playerQueueSize && (-[PVLivePlayerThrottlingControlParameters playerQueueSize](self, "playerQueueSize"), v23 = objc_claimAutoreleasedReturnValue(), -[PVLivePlayerThrottlingControlParameters playerQueueSize](v8, "playerQueueSize"), v22 = objc_claimAutoreleasedReturnValue(), ([v23 isEqual:v22] & 1) != 0))
    {
      v21 = 0;
    }

    else
    {
      playerQueueSize2 = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
      if (playerQueueSize2)
      {
        v10 = 0;
LABEL_26:

        if (!playerQueueSize)
        {
LABEL_32:

          goto LABEL_33;
        }

        v17 = v22;
LABEL_31:

        goto LABEL_32;
      }

      playerQueueSize3 = [(PVLivePlayerThrottlingControlParameters *)v8 playerQueueSize];
      if (playerQueueSize3)
      {

        v10 = 0;
        goto LABEL_30;
      }

      v21 = 1;
    }

    playerBypassRenderLink = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
    if (playerBypassRenderLink)
    {
      playerBypassRenderLink2 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
      playerBypassRenderLink3 = [(PVLivePlayerThrottlingControlParameters *)v8 playerBypassRenderLink];
      if ([playerBypassRenderLink2 isEqual:playerBypassRenderLink3])
      {
        v10 = 1;
        goto LABEL_24;
      }
    }

    playerBypassRenderLink4 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
    if (playerBypassRenderLink4)
    {

      v10 = 0;
      if (playerBypassRenderLink)
      {
        goto LABEL_24;
      }
    }

    else
    {
      playerBypassRenderLink5 = [(PVLivePlayerThrottlingControlParameters *)v8 playerBypassRenderLink];
      v10 = playerBypassRenderLink5 == 0;

      if (playerBypassRenderLink)
      {
LABEL_24:

        if (v21)
        {
LABEL_25:
          playerQueueSize2 = 0;
          goto LABEL_26;
        }

LABEL_30:
        v17 = v22;
        if (!playerQueueSize)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if (v21)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  v10 = 0;
LABEL_33:
  if (renderLinkRate)
  {
  }

LABEL_36:
  return v10;
}

- (unint64_t)hash
{
  renderLinkRate = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  v4 = [renderLinkRate hash];
  playerQueueSize = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
  v6 = [playerQueueSize hash];
  playerBypassRenderLink = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
  v8 = [playerBypassRenderLink hash];

  return v6 ^ v4 ^ v8;
}

- (BOOL)hasNilParameter
{
  renderLinkRate = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  if (renderLinkRate)
  {
    playerQueueSize = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
    if (playerQueueSize)
    {
      playerBypassRenderLink = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
      v6 = playerBypassRenderLink == 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)updateNilsFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    renderLinkRate = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];

    if (!renderLinkRate)
    {
      renderLinkRate2 = [fromCopy renderLinkRate];
      [(PVLivePlayerThrottlingControlParameters *)self setRenderLinkRate:renderLinkRate2];
    }

    playerQueueSize = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];

    if (!playerQueueSize)
    {
      playerQueueSize2 = [fromCopy playerQueueSize];
      [(PVLivePlayerThrottlingControlParameters *)self setPlayerQueueSize:playerQueueSize2];
    }

    playerBypassRenderLink = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];

    if (!playerBypassRenderLink)
    {
      playerBypassRenderLink2 = [fromCopy playerBypassRenderLink];
      [(PVLivePlayerThrottlingControlParameters *)self setPlayerBypassRenderLink:playerBypassRenderLink2];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  renderLinkRate = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  playerQueueSize = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
  playerBypassRenderLink = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
  v7 = [v3 stringWithFormat:@"<%p> renderLinkRate %2@ | playerQueueSize %2@ | playerBypassRenderLink %2@", self, renderLinkRate, playerQueueSize, playerBypassRenderLink];

  return v7;
}

@end