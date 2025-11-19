@interface SXTangierRepDirectLayerHostProvider
- (id)directLayerHostForRep:(id)a3;
- (void)directLayerHostUpdateAdditionalLayersAboveRepLayers:(id)a3;
- (void)directLayerHostUpdateAdditionalLayersUnderRepLayers:(id)a3;
- (void)directLayerHostUpdateRepOverlayLayers:(id)a3;
@end

@implementation SXTangierRepDirectLayerHostProvider

- (id)directLayerHostForRep:(id)a3
{
  v3 = [a3 info];
  v4 = TSUProtocolCast();

  v5 = [v4 directLayerHost];

  return v5;
}

- (void)directLayerHostUpdateAdditionalLayersUnderRepLayers:(id)a3
{
  v4 = a3;
  underRepsLayerHost = self->_underRepsLayerHost;
  if (underRepsLayerHost)
  {
    v9 = v4;
    v6 = [(CALayer *)underRepsLayerHost sublayers];
    if (v6 == v9)
    {
    }

    else
    {
      v7 = [(CALayer *)self->_underRepsLayerHost sublayers];
      v8 = [v7 isEqual:v9];

      v4 = v9;
      if (v8)
      {
        goto LABEL_7;
      }

      underRepsLayerHost = [(CALayer *)self->_underRepsLayerHost setSublayers:v9];
    }

    v4 = v9;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](underRepsLayerHost, v4);
}

- (void)directLayerHostUpdateAdditionalLayersAboveRepLayers:(id)a3
{
  v4 = a3;
  aboveRepsLayerHost = self->_aboveRepsLayerHost;
  if (aboveRepsLayerHost)
  {
    v9 = v4;
    v6 = [(CALayer *)aboveRepsLayerHost sublayers];
    if (v6 == v9)
    {
    }

    else
    {
      v7 = [(CALayer *)self->_aboveRepsLayerHost sublayers];
      v8 = [v7 isEqual:v9];

      v4 = v9;
      if (v8)
      {
        goto LABEL_7;
      }

      aboveRepsLayerHost = [(CALayer *)self->_aboveRepsLayerHost setSublayers:v9];
    }

    v4 = v9;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](aboveRepsLayerHost, v4);
}

- (void)directLayerHostUpdateRepOverlayLayers:(id)a3
{
  v4 = a3;
  overlayLayerHost = self->_overlayLayerHost;
  if (overlayLayerHost)
  {
    v9 = v4;
    v6 = [(CALayer *)overlayLayerHost sublayers];
    if (v6 == v9)
    {
    }

    else
    {
      v7 = [(CALayer *)self->_overlayLayerHost sublayers];
      v8 = [v7 isEqual:v9];

      v4 = v9;
      if (v8)
      {
        goto LABEL_7;
      }

      overlayLayerHost = [(CALayer *)self->_overlayLayerHost setSublayers:v9];
    }

    v4 = v9;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](overlayLayerHost, v4);
}

@end