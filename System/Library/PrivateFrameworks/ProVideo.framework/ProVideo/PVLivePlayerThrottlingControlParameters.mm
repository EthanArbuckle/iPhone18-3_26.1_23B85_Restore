@interface PVLivePlayerThrottlingControlParameters
+ (id)CreateControllerParameters:(id)a3 :(id)a4 :(id)a5;
- (BOOL)hasNilParameter;
- (BOOL)isEqual:(id)a3;
- (PVLivePlayerThrottlingControlParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)updateNilsFrom:(id)a3;
@end

@implementation PVLivePlayerThrottlingControlParameters

+ (id)CreateControllerParameters:(id)a3 :(id)a4 :(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PVLivePlayerThrottlingControlParameters);
  renderLinkRate = v10->_renderLinkRate;
  v10->_renderLinkRate = v7;
  v12 = v7;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  v5 = [v4 copy];
  v6 = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
  v7 = [v6 copy];
  v8 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
  v9 = [v8 copy];
  v10 = [PVLivePlayerThrottlingControlParameters CreateControllerParameters:v5];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
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

  v8 = v7;
  v9 = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  if (v9 && (-[PVLivePlayerThrottlingControlParameters renderLinkRate](self, "renderLinkRate"), v3 = objc_claimAutoreleasedReturnValue(), -[PVLivePlayerThrottlingControlParameters renderLinkRate](v8, "renderLinkRate"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqual:v4] & 1) != 0) || (-[PVLivePlayerThrottlingControlParameters renderLinkRate](self, "renderLinkRate"), (v11 = objc_claimAutoreleasedReturnValue()) == 0) && (-[PVLivePlayerThrottlingControlParameters renderLinkRate](v8, "renderLinkRate"), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
    if (v12 && (-[PVLivePlayerThrottlingControlParameters playerQueueSize](self, "playerQueueSize"), v23 = objc_claimAutoreleasedReturnValue(), -[PVLivePlayerThrottlingControlParameters playerQueueSize](v8, "playerQueueSize"), v22 = objc_claimAutoreleasedReturnValue(), ([v23 isEqual:v22] & 1) != 0))
    {
      v21 = 0;
    }

    else
    {
      v13 = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
      if (v13)
      {
        v10 = 0;
LABEL_26:

        if (!v12)
        {
LABEL_32:

          goto LABEL_33;
        }

        v17 = v22;
LABEL_31:

        goto LABEL_32;
      }

      v14 = [(PVLivePlayerThrottlingControlParameters *)v8 playerQueueSize];
      if (v14)
      {

        v10 = 0;
        goto LABEL_30;
      }

      v21 = 1;
    }

    v15 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
    if (v15)
    {
      v20 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
      v5 = [(PVLivePlayerThrottlingControlParameters *)v8 playerBypassRenderLink];
      if ([v20 isEqual:v5])
      {
        v10 = 1;
        goto LABEL_24;
      }
    }

    v16 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
    if (v16)
    {

      v10 = 0;
      if (v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v18 = [(PVLivePlayerThrottlingControlParameters *)v8 playerBypassRenderLink];
      v10 = v18 == 0;

      if (v15)
      {
LABEL_24:

        if (v21)
        {
LABEL_25:
          v13 = 0;
          goto LABEL_26;
        }

LABEL_30:
        v17 = v22;
        if (!v12)
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
  if (v9)
  {
  }

LABEL_36:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  v4 = [v3 hash];
  v5 = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
  v6 = [v5 hash];
  v7 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
  v8 = [v7 hash];

  return v6 ^ v4 ^ v8;
}

- (BOOL)hasNilParameter
{
  v3 = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  if (v3)
  {
    v4 = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
    if (v4)
    {
      v5 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
      v6 = v5 == 0;
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

- (void)updateNilsFrom:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];

    if (!v4)
    {
      v5 = [v10 renderLinkRate];
      [(PVLivePlayerThrottlingControlParameters *)self setRenderLinkRate:v5];
    }

    v6 = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];

    if (!v6)
    {
      v7 = [v10 playerQueueSize];
      [(PVLivePlayerThrottlingControlParameters *)self setPlayerQueueSize:v7];
    }

    v8 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];

    if (!v8)
    {
      v9 = [v10 playerBypassRenderLink];
      [(PVLivePlayerThrottlingControlParameters *)self setPlayerBypassRenderLink:v9];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PVLivePlayerThrottlingControlParameters *)self renderLinkRate];
  v5 = [(PVLivePlayerThrottlingControlParameters *)self playerQueueSize];
  v6 = [(PVLivePlayerThrottlingControlParameters *)self playerBypassRenderLink];
  v7 = [v3 stringWithFormat:@"<%p> renderLinkRate %2@ | playerQueueSize %2@ | playerBypassRenderLink %2@", self, v4, v5, v6];

  return v7;
}

@end