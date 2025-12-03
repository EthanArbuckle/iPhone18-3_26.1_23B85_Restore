@interface SXTangierRepDirectLayerHostProvider
- (id)directLayerHostForRep:(id)rep;
- (void)directLayerHostUpdateAdditionalLayersAboveRepLayers:(id)layers;
- (void)directLayerHostUpdateAdditionalLayersUnderRepLayers:(id)layers;
- (void)directLayerHostUpdateRepOverlayLayers:(id)layers;
@end

@implementation SXTangierRepDirectLayerHostProvider

- (id)directLayerHostForRep:(id)rep
{
  info = [rep info];
  v4 = TSUProtocolCast();

  directLayerHost = [v4 directLayerHost];

  return directLayerHost;
}

- (void)directLayerHostUpdateAdditionalLayersUnderRepLayers:(id)layers
{
  layersCopy = layers;
  underRepsLayerHost = self->_underRepsLayerHost;
  if (underRepsLayerHost)
  {
    v9 = layersCopy;
    sublayers = [(CALayer *)underRepsLayerHost sublayers];
    if (sublayers == v9)
    {
    }

    else
    {
      sublayers2 = [(CALayer *)self->_underRepsLayerHost sublayers];
      v8 = [sublayers2 isEqual:v9];

      layersCopy = v9;
      if (v8)
      {
        goto LABEL_7;
      }

      underRepsLayerHost = [(CALayer *)self->_underRepsLayerHost setSublayers:v9];
    }

    layersCopy = v9;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](underRepsLayerHost, layersCopy);
}

- (void)directLayerHostUpdateAdditionalLayersAboveRepLayers:(id)layers
{
  layersCopy = layers;
  aboveRepsLayerHost = self->_aboveRepsLayerHost;
  if (aboveRepsLayerHost)
  {
    v9 = layersCopy;
    sublayers = [(CALayer *)aboveRepsLayerHost sublayers];
    if (sublayers == v9)
    {
    }

    else
    {
      sublayers2 = [(CALayer *)self->_aboveRepsLayerHost sublayers];
      v8 = [sublayers2 isEqual:v9];

      layersCopy = v9;
      if (v8)
      {
        goto LABEL_7;
      }

      aboveRepsLayerHost = [(CALayer *)self->_aboveRepsLayerHost setSublayers:v9];
    }

    layersCopy = v9;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](aboveRepsLayerHost, layersCopy);
}

- (void)directLayerHostUpdateRepOverlayLayers:(id)layers
{
  layersCopy = layers;
  overlayLayerHost = self->_overlayLayerHost;
  if (overlayLayerHost)
  {
    v9 = layersCopy;
    sublayers = [(CALayer *)overlayLayerHost sublayers];
    if (sublayers == v9)
    {
    }

    else
    {
      sublayers2 = [(CALayer *)self->_overlayLayerHost sublayers];
      v8 = [sublayers2 isEqual:v9];

      layersCopy = v9;
      if (v8)
      {
        goto LABEL_7;
      }

      overlayLayerHost = [(CALayer *)self->_overlayLayerHost setSublayers:v9];
    }

    layersCopy = v9;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](overlayLayerHost, layersCopy);
}

@end